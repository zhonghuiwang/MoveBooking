/**
 * Global variables
 */
"use strict";

var userAgent = navigator.userAgent.toLowerCase(),
		initialDate = new Date(),

		$document = $(document),
		$window = $(window),
		$html = $("html"),

		isDesktop = $html.hasClass("desktop"),
		isIE = userAgent.indexOf("msie") != -1 ? parseInt(userAgent.split("msie")[1]) : userAgent.indexOf("trident") != -1 ? 11 : userAgent.indexOf("edge") != -1 ? 12 : false,
		isSafari = navigator.userAgent.indexOf('Safari') != -1 && navigator.userAgent.indexOf('Chrome') == -1,
		isMobile = /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent),
		isTouch = "ontouchstart" in window,
		onloadCaptchaCallback,
		detailsBlock = document.getElementsByClassName('block-with-details'),
		isNoviBuilder = false,

		plugins = {
			bootstrapDateTimePicker: $("[data-time-picker]"),
			bootstrapModalDialog: $('.modal'),
			bootstrapTooltip: $("[data-toggle='tooltip']"),
			campaignMonitor: $('.campaign-mailform'),
			captcha: $('.recaptcha'),
			checkbox: $("input[type='checkbox']"),
			circleProgress: $(".progress-bar-circle"),
			countDown: $(".countdown"),
			customToggle: $("[data-custom-styles-toggle]"),
			dateCountdown: $('.DateCountdown'),
			isotope: $(".isotope"),
			lightGallery: $("[data-lightgallery='group']"),
			lightGalleryItem: $("[data-lightgallery='item']"),
			lightDynamicGalleryItem: $("[data-lightgallery='dynamic']"),
			mailchimp: $('.mailchimp-mailform'),
			materialParallax: $(".parallax-container"),
			owl: $(".owl-carousel"),
			pageLoader: $(".page-loader"),
			parallaxText: $('.parallax-text'),
			radio: $("input[type='radio']"),
			rdInputLabel: $(".form-label"),
			rdMailForm: $(".rd-mailform"),
			rdNavbar: $(".rd-navbar"),
			regula: $("[data-constraints]"),
			search: $(".rd-search"),
			searchResults: $('.rd-search-results'),
			selectFilter: $(".select-filter"),
			stepper: $("input[type='number']"),
			swiper: $('.swiper-container'),
			maps: $(".google-map-container")
		};

/**
 * @desc Check the element was been scrolled into the view
 * @param {object} elem - jQuery object
 * @return {boolean}
 */
function isScrolledIntoView(elem) {
	if (isNoviBuilder) return true;
	return elem.offset().top + elem.outerHeight() >= $window.scrollTop() && elem.offset().top <= $window.scrollTop() + $window.height();
}

/**
 * @desc Calls a function when element has been scrolled into the view
 * @param {object} element - jQuery object
 * @param {function} func - init function
 */
function lazyInit(element, func) {
	var scrollHandler = function () {
		if ((!element.hasClass('lazy-loaded') && (isScrolledIntoView(element)))) {
			func.call();
			element.addClass('lazy-loaded');
		}
	};

	scrollHandler();
	$window.on('scroll', scrollHandler);
}

// Initialize scripts that require a loaded window
$window.on('load', function () {

	// Material Parallax
	if (plugins.materialParallax.length) {
		if (!isNoviBuilder && !isIE && !isMobile) {
			plugins.materialParallax.parallax();
		} else {
			for (var i = 0; i < plugins.materialParallax.length; i++) {
				var $parallax = $(plugins.materialParallax[i]);

				$parallax.addClass('parallax-disabled');
				$parallax.css({"background-image": 'url(' + $parallax.data("parallax-img") + ')'});
			}
		}
	}
});


/**
 * Initialize All Scripts
 */
$document.ready(function () {
	var isNoviBuilder = window.xMode;

	/**
	 * getSwiperHeight
	 * @description  calculate the height of swiper slider basing on data attr
	 */
	function getSwiperHeight(object, attr) {
		var val = object.attr("data-" + attr),
				dim;

		if (!val) {
			return undefined;
		}

		dim = val.match(/(px)|(%)|(vh)$/i);

		if (dim.length) {
			switch (dim[0]) {
				case "px":
					return parseFloat(val);
				case "vh":
					return $(window).height() * (parseFloat(val) / 100);
				case "%":
					return object.width() * (parseFloat(val) / 100);
			}
		} else {
			return undefined;
		}
	}

	/**
	 * toggleSwiperInnerVideos
	 * @description  toggle swiper videos on active slides
	 */
	function toggleSwiperInnerVideos(swiper) {
		var prevSlide = $(swiper.slides[swiper.previousIndex]),
				nextSlide = $(swiper.slides[swiper.activeIndex]),
				videos;

		prevSlide.find("video").each(function () {
			this.pause();
		});

		videos = nextSlide.find("video");
		if (videos.length) {
			videos.get(0).play();
		}
	}
	
	/**
	 * @desc Sets the actual previous index based on the position of the slide in the markup. Should be the most recent action.
	 * @param {object} swiper - swiper instance
	 */
	function setRealPrevious(swiper) {
		let element = swiper.$wrapperEl[0].children[swiper.activeIndex];
		swiper.realPrevious = Array.prototype.indexOf.call(element.parentNode.children, element);
	}
	
	/**
	 * @desc Sets slides background images from attribute 'data-slide-bg'
	 * @param {object} swiper - swiper instance
	 */
	function setBackgrounds(swiper) {
		let swipersBg = swiper.el.querySelectorAll('[data-slide-bg]');
		
		for (let i = 0; i < swipersBg.length; i++) {
			let swiperBg = swipersBg[i];
			swiperBg.style.backgroundImage = 'url(' + swiperBg.getAttribute('data-slide-bg') + ')';
		}
	}
	
	/**
	 * @desc Animate captions on active slides
	 * @param {object} swiper - swiper instance
	 */
	function initCaptionAnimate(swiper) {
		let
			animate = function (caption) {
				return function () {
					let duration;
					if (duration = caption.getAttribute('data-caption-duration')) caption.style.animationDuration = duration + 'ms';
					caption.classList.remove('not-animated');
					caption.classList.add(caption.getAttribute('data-caption-animate'));
					caption.classList.add('animated');
				};
			},
			initializeAnimation = function (captions) {
				for (let i = 0; i < captions.length; i++) {
					let caption = captions[i];
					caption.classList.remove('animated');
					caption.classList.remove(caption.getAttribute('data-caption-animate'));
					caption.classList.add('not-animated');
				}
			},
			finalizeAnimation = function (captions) {
				for (let i = 0; i < captions.length; i++) {
					let caption = captions[i];
					if (caption.getAttribute('data-caption-delay')) {
						setTimeout(animate(caption), Number(caption.getAttribute('data-caption-delay')));
					} else {
						animate(caption)();
					}
				}
			};
		
		// Caption parameters
		swiper.params.caption = {
			animationEvent: 'slideChangeTransitionEnd'
		};
		
		initializeAnimation(swiper.$wrapperEl[0].querySelectorAll('[data-caption-animate]'));
		finalizeAnimation(swiper.$wrapperEl[0].children[swiper.activeIndex].querySelectorAll('[data-caption-animate]'));
		
		if (swiper.params.caption.animationEvent === 'slideChangeTransitionEnd') {
			swiper.on(swiper.params.caption.animationEvent, function () {
				initializeAnimation(swiper.$wrapperEl[0].children[swiper.previousIndex].querySelectorAll('[data-caption-animate]'));
				finalizeAnimation(swiper.$wrapperEl[0].children[swiper.activeIndex].querySelectorAll('[data-caption-animate]'));
			});
		} else {
			swiper.on('slideChangeTransitionEnd', function () {
				initializeAnimation(swiper.$wrapperEl[0].children[swiper.previousIndex].querySelectorAll('[data-caption-animate]'));
			});
			
			swiper.on(swiper.params.caption.animationEvent, function () {
				finalizeAnimation(swiper.$wrapperEl[0].children[swiper.activeIndex].querySelectorAll('[data-caption-animate]'));
			});
		}
	}
	
	// Swiper
	if (plugins.swiper.length) {
		
		for (let i = 0; i < plugins.swiper.length; i++) {
			
			let
				node = plugins.swiper[i],
				params = parseJSON(node.getAttribute('data-swiper')),
				defaults = {
					speed:      1000,
					loop:       true,
					pagination: {
						el:        '.swiper-pagination',
						clickable: true
					},
					navigation: {
						nextEl: '.swiper-button-next',
						prevEl: '.swiper-button-prev'
					},
					autoplay:   {
						delay: 5000
					}
				},
				xMode = {
					autoplay:      false,
					loop:          false,
					simulateTouch: false
				};
			
			params.on = {
				init: function () {
					setBackgrounds(this);
					setRealPrevious(this);
					initCaptionAnimate(this);
					
					// Real Previous Index must be set recent
					this.on('slideChangeTransitionEnd', function () {
						setRealPrevious(this);
					});
				}
			};
			
			new Swiper( node, Util.merge( isNoviBuilder ? [ defaults, params, xMode ] : [ defaults, params ] ) );
		}
	}

	/**
	 * toggleSwiperCaptionAnimation
	 * @description  toggle swiper animations on active slides
	 */
	function toggleSwiperCaptionAnimation(swiper) {
		var prevSlide = $(swiper.container),
				nextSlide = $(swiper.slides[swiper.activeIndex]);

		prevSlide
		.find("[data-caption-animate]")
		.each(function () {
			var $this = $(this);
			$this
			.removeClass("animated")
			.removeClass($this.attr("data-caption-animate"))
			.addClass("not-animated");
		});

		nextSlide
		.find("[data-caption-animate]")
		.each(function () {
			var $this = $(this),
					delay = $this.attr("data-caption-delay");


			if (!isNoviBuilder) {
				setTimeout(function () {
					$this
					.removeClass("not-animated")
					.addClass($this.attr("data-caption-animate"))
					.addClass("animated");
				}, delay ? parseInt(delay) : 0);
			} else {
				$this
				.removeClass("not-animated")
			}
		});
	}

	/**
	 * initSwiperWaypoints
	 * @description  init waypoints on new slides
	 */
	function initSwiperWaypoints(swiper) {
		var prevSlide = $(swiper.container),
				nextSlide = $(swiper.slides[swiper.activeIndex]);

		prevSlide
		.find('[data-custom-styles-scroll-to]')
		.each(function () {
			var $this = $(this);
			initCustomScrollTo($this);
		});

		nextSlide
		.find('[data-custom-styles-scroll-to]')
		.each(function () {
			var $this = $(this);
			initCustomScrollTo($this);
		});
	}

	/**
	 * initSwiperButtonsNina
	 * @description  toggle waypoints on active slides
	 */
	function initSwiperButtonsNina(swiper) {
		var prevSlide = $(swiper.container),
				nextSlide = $(swiper.slides[swiper.activeIndex]);

		prevSlide
		.find('.button-nina')
		.each(function () {
			initNinaButtons(this);
		});

		nextSlide
		.find('.button-nina')
		.each(function () {
			initNinaButtons(this);
		});
	}

	/**
	 * makeParallax
	 * @description  create swiper parallax scrolling effect
	 */
	function makeParallax(el, speed, wrapper, prevScroll) {
		var scrollY = window.scrollY || window.pageYOffset;

		if (prevScroll != scrollY) {
			prevScroll = scrollY;
			el.addClass('no-transition');
			el[0].style['transform'] = 'translate3d(0,' + -scrollY * (1 - speed) + 'px,0)';
			el.height();
			el.removeClass('no-transition');

			if (el.attr('data-fade') === 'true') {
				var bound = el[0].getBoundingClientRect(),
						offsetTop = bound.top * 2 + scrollY,
						sceneHeight = wrapper.outerHeight(),
						sceneDevider = wrapper.offset().top + sceneHeight / 2.0,
						layerDevider = offsetTop + el.outerHeight() / 2.0,
						pos = sceneHeight / 6.0,
						opacity;
				if (sceneDevider + pos > layerDevider && sceneDevider - pos < layerDevider) {
					el[0].style["opacity"] = 1;
				} else {
					if (sceneDevider - pos < layerDevider) {
						opacity = 1 + ((sceneDevider + pos - layerDevider) / sceneHeight / 3.0 * 5);
					} else {
						opacity = 1 - ((sceneDevider - pos - layerDevider) / sceneHeight / 3.0 * 5);
					}
					el[0].style["opacity"] = opacity < 0 ? 0 : opacity > 1 ? 1 : opacity.toFixed(2);
				}
			}
		}

		requestAnimationFrame(function () {
			makeParallax(el, speed, wrapper, prevScroll);
		});
	}

	/**
	 * initCustomScrollTo
	 * @description  init smooth anchor animations
	 */
	function initCustomScrollTo(obj) {
		var $this = $(obj);
		if (!isNoviBuilder) {
			$this.on('click', function (e) {
				e.preventDefault();
				$("body, html").stop().animate({
					scrollTop: $($(this).attr('data-custom-styles-scroll-to')).offset().top
				}, 1000, function () {
					$window.trigger("resize");
				});
			});
		}
	}

	/**
	 * initOwlCarousel
	 * @description  Init owl carousel plugin
	 */
	function initOwlCarousel(c) {
		var
				aliaces = [ '-', '-sm-', '-md-', '-lg-', '-xl-', '-xxl-' ],
				values = [ 0, 576, 768, 992, 1200, 1600 ],
				responsive = {};

		for (var j = 0; j < values.length; j++) {
			responsive[values[j]] = {};
			for (var k = j; k >= -1; k--) {
				if (!responsive[values[j]]["items"] && c.attr("data" + aliaces[k] + "items")) {
					responsive[values[j]]["items"] = k < 0 ? 1 : parseInt(c.attr("data" + aliaces[k] + "items"), 10);
				}
				if (!responsive[values[j]]["stagePadding"] && responsive[values[j]]["stagePadding"] !== 0 && c.attr("data" + aliaces[k] + "stage-padding")) {
					responsive[values[j]]["stagePadding"] = k < 0 ? 0 : parseInt(c.attr("data" + aliaces[k] + "stage-padding"), 10);
				}
				if (!responsive[values[j]]["margin"] && responsive[values[j]]["margin"] !== 0 && c.attr("data" + aliaces[k] + "margin")) {
					responsive[values[j]]["margin"] = k < 0 ? 30 : parseInt(c.attr("data" + aliaces[k] + "margin"), 10);
				}
			}
		}

		// Enable custom-styles pagination
		if (c.attr('data-dots-custom-styles')) {
			c.on("initialized.owl.carousel", function (event) {
				var carousel = $(event.currentTarget),
						customPag = $(carousel.attr("data-dots-custom-styles")),
						active = 0;

				if (carousel.attr('data-active')) {
					active = parseInt(carousel.attr('data-active'), 10);
				}

				carousel.trigger('to.owl.carousel', [active, 300, true]);
				customPag.find("[data-owl-item='" + active + "']").addClass("active");

				customPag.find("[data-owl-item]").on('click', function (e) {
					e.preventDefault();
					carousel.trigger('to.owl.carousel', [parseInt(this.getAttribute("data-owl-item"), 10), 300, true]);
				});

				carousel.on("translate.owl.carousel", function (event) {
					customPag.find(".active").removeClass("active");
					customPag.find("[data-owl-item='" + event.item.index + "']").addClass("active")
				});
			});
		}

		c.on("initialized.owl.carousel", function () {
			initLightGalleryItem(c.find('[data-lightgallery="item"]'), 'lightGallery-in-carousel');
		});

		if (c.attr('data-nav-custom-styles')) {
			c.on("initialized.owl.carousel", function (event) {
				var carousel = $(event.currentTarget),
						customNav = $(carousel.attr("data-nav-custom-styles"));

				// Custom Navigation Events
				customNav.find(".owl-arrow-next").click(function (e) {
					e.preventDefault();
					carousel.trigger('next.owl.carousel');
				});
				customNav.find(".owl-arrow-prev").click(function (e) {
					e.preventDefault();
					carousel.trigger('prev.owl.carousel');
				});
			});
		}

		if (c.attr('data-custom-styles-nav')) {
			c.on("initialized.owl.carousel", function (event) {
				var carousel = $(event.currentTarget),
						customNav = carousel.parent().find('.owl-carousel-widget-nav');
			});
		}

		c.owlCarousel({
			autoplay: isNoviBuilder ? false : c.attr("data-autoplay") === "true",
			loop: isNoviBuilder ? false : c.attr("data-loop") !== "false",
			items: 1,
			center: c.attr("data-center") === "true",
			dotsContainer: c.attr("data-pagination-class") || false,
			navContainer: c.attr("data-navigation-class") || false,
			mouseDrag: isNoviBuilder ? false : c.attr("data-mouse-drag") !== "false",
			nav: c.attr("data-nav") === "true",
			dots: (isNoviBuilder && c.attr("data-nav") !== "true") ? true : c.attr("data-dots") === "true",
			dotsEach: c.attr("data-dots-each") ? parseInt(c.attr("data-dots-each"), 10) : false,
			animateIn: c.attr('data-animation-in') ? c.attr('data-animation-in') : false,
			animateOut: c.attr('data-animation-out') ? c.attr('data-animation-out') : false,
			responsive: responsive,
			navText: c.attr("data-nav-text") ? $.parseJSON(c.attr("data-nav-text")) : [],
			navClass: c.attr("data-nav-class") ? $.parseJSON(c.attr("data-nav-class")) : ['owl-prev', 'owl-next']
		});
	}

	/**
	 * Parallax text
	 * @description  function for parallax text
	 */
	function scrollText($this) {
		var translate = (scrollTop - $($this).data('orig-offset')) / $window.height() * 35;
		$($this).css({transform: 'translate3d(0,' + translate + '%' + ', 0)'});
	}

	/**
	 * initNinaButtons
	 * @description  Make hover effect for nina buttons
	 */
	function initNinaButtons(ninaButtons) {
		for (var i = 0; i < ninaButtons.length; i++) {
			var btn = ninaButtons[i],
					origContent = btn.innerHTML.trim();

			if (!origContent) {
				continue;
			}

			var textNode = Array.prototype.slice.call(ninaButtons[i].childNodes).filter(function (node) {
				return node.nodeType === 3;
			}).pop();
			if (textNode == null) {
				continue;
			}

			var dummy = document.createElement('div');
			btn.replaceChild(dummy, textNode);
			dummy.outerHTML = textNode.textContent.split('').map(function (letter) {
				return "<span>" + letter.trim() + "</span>";
			}).join('');

			Array.prototype.slice.call(btn.childNodes).forEach(function (el, count) {
				el.style.transition = 'opacity .22s ' + 0.03 * count + 's,' + ' transform .22s ' + 0.03 * count + 's' + ', color .22s';
			});

			btn.innerHTML += "<span class='button-original-content'>" + origContent + "</span>";

			var delay = 0.03 * (btn.childElementCount - 1);
			// btn.getElementsByClassName('button-original-content')[0].style.transitionDelay = delay + 's';
			btn.getElementsByClassName('button-original-content')[0].style.transition = 'background .22s, color .22s, transform .22s ' + delay + 's';

			btn.addEventListener('mouseenter', function (e) {
				e.stopPropagation();
			});

			btn.addEventListener('mouseleave', function (e) {
				e.stopPropagation();
			});
		}
	}

	/**
	 * Live Search
	 * @description  create live search results
	 */
	function liveSearch(options) {
		options.live.removeClass('cleared').html();
		options.current++;
		options.spin.addClass('loading');

		$.get(handler, {
			s: decodeURI(options.term),
			liveSearch: options.element.attr('data-search-live'),
			dataType: "html",
			liveCount: options.liveCount,
			filter: options.filter,
			template: options.template
		}, function (data) {
			options.processed++;
			var live = options.live;
			if (options.processed == options.current && !live.hasClass('cleared')) {
				live.find('> #search-results').removeClass('active');
				live.html(data);
				setTimeout(function () {
					live.find('> #search-results').addClass('active');
				}, 50);
			}
			options.spin.parents('.rd-search').find('.input-group-addon').removeClass('loading');
		})
	}

	/**
	 * attachFormValidator
	 * @description  attach form validation to elements
	 */
	function attachFormValidator(elements) {
		for (var i = 0; i < elements.length; i++) {
			var o = $(elements[i]), v;
			o.addClass("form-control-has-validation").after("<span class='form-validation'></span>");
			v = o.parent().find(".form-validation");
			if (v.is(":last-child")) {
				o.addClass("form-control-last-child");
			}
		}

		elements
		.on('input change propertychange blur', function (e) {
			var $this = $(this), results;

			if (e.type != "blur") {
				if (!$this.parent().hasClass("has-error")) {
					return;
				}
			}

			if ($this.parents('.rd-mailform').hasClass('success')) {
				return;
			}

			if ((results = $this.regula('validate')).length) {
				for (i = 0; i < results.length; i++) {
					$this.siblings(".form-validation").text(results[i].message).parent().addClass("has-error")
				}
			} else {
				$this.siblings(".form-validation").text("").parent().removeClass("has-error")
			}
		})
		.regula('bind');

		var regularConstraintsMessages = [
			{
				type: regula.Constraint.Required,
				newMessage: "The text field is required."
			},
			{
				type: regula.Constraint.Email,
				newMessage: "The email is not a valid email."
			},
			{
				type: regula.Constraint.Numeric,
				newMessage: "Only numbers are required"
			},
			{
				type: regula.Constraint.Selected,
				newMessage: "Please choose an option."
			}
		];


		for (var i = 0; i < regularConstraintsMessages.length; i++) {
			var regularConstraint = regularConstraintsMessages[i];

			regula.override({
				constraintType: regularConstraint.type,
				defaultMessage: regularConstraint.newMessage
			});
		}
	}

	/**
	 * isValidated
	 * @description  check if all elemnts pass validation
	 */
	function isValidated(elements, captcha) {
		var results, errors = 0;

		if (elements.length) {
			for (j = 0; j < elements.length; j++) {

				var $input = $(elements[j]);
				if ((results = $input.regula('validate')).length) {
					for (k = 0; k < results.length; k++) {
						errors++;
						$input.siblings(".form-validation").text(results[k].message).parent().addClass("has-error");
					}
				} else {
					$input.siblings(".form-validation").text("").parent().removeClass("has-error")
				}
			}

			if (captcha) {
				if (captcha.length) {
					return validateReCaptcha(captcha) && errors == 0
				}
			}

			return errors == 0;
		}
		return true;
	}

	/**
	 * Init Bootstrap tooltip
	 * @description  calls a function when need to init bootstrap tooltips
	 */
	function initBootstrapTooltip(tooltipPlacement) {
		plugins.bootstrapTooltip.tooltip('dispose');

		if (window.innerWidth < 576) {
			plugins.bootstrapTooltip.tooltip({placement: 'bottom'});
		} else {
			plugins.bootstrapTooltip.tooltip({placement: tooltipPlacement});
		}
	}

	/**
	 * lightGallery
	 * @description Enables lightGallery plugin
	 */
	function initLightGallery(itemsToInit, addClass) {
		if (!isNoviBuilder) {
			$(itemsToInit).lightGallery({
				thumbnail: $(itemsToInit).attr("data-lg-thumbnail") !== "false",
				selector: "[data-lightgallery='item']",
				autoplay: $(itemsToInit).attr("data-lg-autoplay") === "true",
				pause: parseInt($(itemsToInit).attr("data-lg-autoplay-delay")) || 5000,
				addClass: addClass,
				mode: $(itemsToInit).attr("data-lg-animation") || "lg-slide",
				loop: $(itemsToInit).attr("data-lg-loop") !== "false"
			});
		}
	}

	function initDynamicLightGallery(itemsToInit, addClass) {
		if (!isNoviBuilder) {
			$(itemsToInit).on("click", function () {
				$(itemsToInit).lightGallery({
					thumbnail: $(itemsToInit).attr("data-lg-thumbnail") !== "false",
					selector: "[data-lightgallery='item']",
					autoplay: $(itemsToInit).attr("data-lg-autoplay") === "true",
					pause: parseInt($(itemsToInit).attr("data-lg-autoplay-delay")) || 5000,
					addClass: addClass,
					mode: $(itemsToInit).attr("data-lg-animation") || "lg-slide",
					loop: $(itemsToInit).attr("data-lg-loop") !== "false",
					dynamic: true,
					dynamicEl:
							JSON.parse($(itemsToInit).attr("data-lg-dynamic-elements")) || []
				});
			});
		}
	}

	function initLightGalleryItem(itemToInit, addClass) {
		if (!isNoviBuilder) {
			$(itemToInit).lightGallery({
				selector: "this",
				addClass: addClass,
				counter: false,
				youtubePlayerParams: {
					modestbranding: 1,
					showinfo: 0,
					rel: 0,
					controls: 0
				},
				vimeoPlayerParams: {
					byline: 0,
					portrait: 0
				}
			});
		}
	}

	if (plugins.lightGallery.length) {
		for (var i = 0; i < plugins.lightGallery.length; i++) {
			initLightGallery(plugins.lightGallery[i]);
		}
	}

	if (plugins.lightGalleryItem.length) {
		for (var i = 0; i < plugins.lightGalleryItem.length; i++) {
			initLightGalleryItem(plugins.lightGalleryItem[i]);
		}
	}

	if (plugins.lightDynamicGalleryItem.length) {
		for (var i = 0; i < plugins.lightDynamicGalleryItem.length; i++) {
			initDynamicLightGallery(plugins.lightDynamicGalleryItem[i]);
		}
	}

	/**
	 * Copyright Year
	 * @description  Evaluates correct copyright year
	 */
	var o = $(".copyright-year");
	if (o.length) {
		o.text(initialDate.getFullYear());
	}

	/**
	 * Page loader
	 * @description Enables Page loader
	 */
	if (plugins.pageLoader.length > 0) {
		var loader = setTimeout(function () {
			plugins.pageLoader.addClass("loaded");
			plugins.pageLoader.fadeOut(500, function () {
				$(this).remove();
			});

			$window.trigger("resize");
		}, 1000);
	}

	/**
	 * validateReCaptcha
	 * @description  validate google reCaptcha
	 */
	function validateReCaptcha(captcha) {
		var $captchaToken = captcha.find('.g-recaptcha-response').val();

		if ($captchaToken == '') {
			captcha
			.siblings('.form-validation')
			.html('Please, prove that you are not robot.')
			.addClass('active');
			captcha
			.closest('.form-group')
			.addClass('has-error');

			captcha.bind('propertychange', function () {
				var $this = $(this),
						$captchaToken = $this.find('.g-recaptcha-response').val();

				if ($captchaToken != '') {
					$this
					.closest('.form-group')
					.removeClass('has-error');
					$this
					.siblings('.form-validation')
					.removeClass('active')
					.html('');
					$this.unbind('propertychange');
				}
			});

			return false;
		}

		return true;
	}

	/**
	 * onloadCaptchaCallback
	 * @description  init google reCaptcha
	 */
	onloadCaptchaCallback = function () {
		for (i = 0; i < plugins.captcha.length; i++) {
			var $capthcaItem = $(plugins.captcha[i]);

			grecaptcha.render(
					$capthcaItem.attr('id'),
					{
						sitekey: $capthcaItem.attr('data-sitekey'),
						size: $capthcaItem.attr('data-size') ? $capthcaItem.attr('data-size') : 'normal',
						theme: $capthcaItem.attr('data-theme') ? $capthcaItem.attr('data-theme') : 'light',
						callback: function (e) {
							$('.recaptcha').trigger('propertychange');
						}
					}
			);
			$capthcaItem.after("<span class='form-validation'></span>");
		}
	};

	/**
	 * Google ReCaptcha
	 * @description Enables Google ReCaptcha
	 */
	if (plugins.captcha.length) {
		$.getScript("//www.google.com/recaptcha/api.js?onload=onloadCaptchaCallback&render=explicit&hl=en");
	}

	/**
	 * Is Mac os
	 * @description  add additional class on html if mac os.
	 */
	if (navigator.platform.match(/(Mac)/i)) $html.addClass("mac-os");

	/**
	 * Is Safari
	 * @description  add additional class on html if safari.
	 */
	if (isSafari) $html.addClass("safari");

	/**
	 * Bootstrap Tooltips
	 * @description Activate Bootstrap Tooltips
	 */
	if (plugins.bootstrapTooltip.length && !isNoviBuilder) {
		var tooltipPlacement = plugins.bootstrapTooltip.attr('data-placement');
		initBootstrapTooltip(tooltipPlacement);
		$(window).on('resize orientationchange', function () {
			initBootstrapTooltip(tooltipPlacement);
		})
	}

	/**
	 * bootstrapModalDialog
	 * @description Stop video in bootstrapModalDialog
	 */
	if (plugins.bootstrapModalDialog.length > 0) {
		var i = 0;

		for (i = 0; i < plugins.bootstrapModalDialog.length; i++) {
			var modalItem = $(plugins.bootstrapModalDialog[i]);

			modalItem.on('hidden.bs.modal', $.proxy(function () {
				var activeModal = $(this),
						rdVideoInside = activeModal.find('video'),
						youTubeVideoInside = activeModal.find('iframe');

				if (rdVideoInside.length) {
					rdVideoInside[0].pause();
				}

				if (youTubeVideoInside.length) {
					var videoUrl = youTubeVideoInside.attr('src');

					youTubeVideoInside
					.attr('src', '')
					.attr('src', videoUrl);
				}
			}, modalItem))
		}
	}

	/**
	 * Google map function for getting latitude and longitude
	 */
	function getLatLngObject(str, marker, map, callback) {
		var coordinates = {};
		try {
			coordinates = JSON.parse(str);
			callback(new google.maps.LatLng(
					coordinates.lat,
					coordinates.lng
			), marker, map)
		} catch (e) {
			map.geocoder.geocode({'address': str}, function (results, status) {
				if (status === google.maps.GeocoderStatus.OK) {
					var latitude = results[0].geometry.location.lat();
					var longitude = results[0].geometry.location.lng();

					callback(new google.maps.LatLng(
							parseFloat(latitude),
							parseFloat(longitude)
					), marker, map)
				}
			})
		}
	}

	/**
	 * @desc Initialize Google maps
	 */
	function initMaps() {
		var key;

		for (var i = 0; i < plugins.maps.length; i++) {
			if (plugins.maps[i].hasAttribute("data-key")) {
				key = plugins.maps[i].getAttribute("data-key");
				break;
			}
		}

		$.getScript('//maps.google.com/maps/api/js?' + (key ? 'key=' + key + '&' : '') + 'sensor=false&libraries=geometry,places&v=quarterly', function () {
			var head = document.getElementsByTagName('head')[0],
					insertBefore = head.insertBefore;

			head.insertBefore = function (newElement, referenceElement) {
				if (newElement.href && newElement.href.indexOf('//fonts.googleapis.com/css?family=Roboto') !== -1 || newElement.innerHTML.indexOf('gm-style') !== -1) {
					return;
				}
				insertBefore.call(head, newElement, referenceElement);
			};

			var geocoder = new google.maps.Geocoder;
			for (var i = 0; i < plugins.maps.length; i++) {
				var zoom = parseInt(plugins.maps[i].getAttribute("data-zoom")) || 11;
				var styles;
				if (plugins.maps[i].hasAttribute('data-styles')) {
					try {
						styles = JSON.parse(plugins.maps[i].getAttribute("data-styles"));
					} catch (error) {
						styles = [];
					}
				}
				var center = plugins.maps[i].getAttribute("data-center");

				// Initialize map
				var map = new google.maps.Map(plugins.maps[i].querySelectorAll(".google-map")[0], {
					zoom: zoom,
					styles: styles,
					scrollwheel: false,
					center: {lat: 0, lng: 0}
				});
				// Add map object to map node
				plugins.maps[i].map = map;
				plugins.maps[i].geocoder = geocoder;
				plugins.maps[i].keySupported = true;
				plugins.maps[i].google = google;

				// Get Center coordinates from attribute
				getLatLngObject(center, null, plugins.maps[i], function (location, markerElement, mapElement) {
					mapElement.map.setCenter(location);
				})

				// Add markers from google-map-markers array
				var markerItems = plugins.maps[i].querySelectorAll(".google-map-markers li");
				if (markerItems.length) {
					var markers = [];
					for (var j = 0; j < markerItems.length; j++) {
						var markerElement = markerItems[j];
						getLatLngObject(markerElement.getAttribute("data-location"), markerElement, plugins.maps[i], function (location, markerElement, mapElement) {
							var icon = markerElement.getAttribute("data-icon") || mapElement.getAttribute("data-icon");
							var activeIcon = markerElement.getAttribute("data-icon-active") || mapElement.getAttribute("data-icon-active");
							var info = markerElement.getAttribute("data-description") || "";
							var infoWindow = new google.maps.InfoWindow({
								content: info
							});
							markerElement.infoWindow = infoWindow;
							var markerData = {
								position: location,
								map: mapElement.map
							}
							if (icon) {
								markerData.icon = icon;
							}
							var marker = new google.maps.Marker(markerData);
							markerElement.gmarker = marker;
							markers.push({markerElement: markerElement, infoWindow: infoWindow});
							marker.isActive = false;
							// Handle infoWindow close click
							google.maps.event.addListener(infoWindow, 'closeclick', (function (markerElement, mapElement) {
								var markerIcon;
								markerElement.gmarker.isActive = false
								if (markerIcon = markerElement.getAttribute("data-icon") || mapElement.getAttribute("data-icon")) {
									markerElement.gmarker.setIcon(markerIcon);
								}
							}).bind(this, markerElement, mapElement));


							// Set marker active on Click and open infoWindow
							google.maps.event.addListener(marker, 'click', (function (markerElement, mapElement) {
								if (markerElement.infoWindow.getContent().length === 0) return;
								var gMarker, currentMarker = markerElement.gmarker, currentInfoWindow;
								for (var k = 0; k < markers.length; k++) {
									var markerIcon;
									if (markers[k].markerElement === markerElement) {
										currentInfoWindow = markers[k].infoWindow;
									}
									gMarker = markers[k].markerElement.gmarker;
									if (gMarker.isActive && markers[k].markerElement !== markerElement) {
										gMarker.isActive = false;
										if (markerIcon = markers[k].markerElement.getAttribute("data-icon") || mapElement.getAttribute("data-icon")) {
											gMarker.setIcon(markerIcon);
										}
										markers[k].infoWindow.close();
									}
								}

								currentMarker.isActive = !currentMarker.isActive;
								if (currentMarker.isActive) {
									if (markerIcon = markerElement.getAttribute("data-icon-active") || mapElement.getAttribute("data-icon-active")) {
										currentMarker.setIcon(markerIcon);
									}

									currentInfoWindow.open(map, marker);
								} else {
									if (markerIcon = markerElement.getAttribute("data-icon") || mapElement.getAttribute("data-icon")) {
										currentMarker.setIcon(markerIcon);
									}
									currentInfoWindow.close();
								}
							}).bind(this, markerElement, mapElement))
						})
					}
				}
			}
		});
	}

	// Google maps
	if (plugins.maps.length) {
		lazyInit(plugins.maps, initMaps);
	}

	/**
	 * Radio
	 * @description Add custom-styles styling options for input[type="radio"]
	 */
	if (plugins.radio.length) {
		var i;
		for (i = 0; i < plugins.radio.length; i++) {
			var $this = $(plugins.radio[i]);
			$this.addClass("radio-custom-styles").after("<span class='radio-custom-styles-dummy'></span>")
		}
	}

	/**
	 * Checkbox
	 * @description Add custom-styles styling options for input[type="checkbox"]
	 */
	if (plugins.checkbox.length) {
		var i;
		for (i = 0; i < plugins.checkbox.length; i++) {
			var $this = $(plugins.checkbox[i]);
			$this.addClass("checkbox-custom-styles").after("<span class='checkbox-custom-styles-dummy'></span>")
		}
	}

	/**
	 * UI To Top
	 * @description Enables ToTop Button
	 */
	if (isDesktop && !isNoviBuilder) {
		$().UItoTop({
			easingType: 'easeOutQuart',
			containerClass: 'ui-to-top'
		});
	}

	/**
	 * RD Navbar
	 * @description Enables RD Navbar plugin
	 */
	if (plugins.rdNavbar.length) {
		var aliaces, i, j, len, value, values, responsiveNavbar;

		aliaces = ["-", "-sm-", "-md-", "-lg-", "-xl-", "-xxl-"];
		values = [0, 576, 768, 992, 1200, 1600];
		responsiveNavbar = {};

		for (i = j = 0, len = values.length; j < len; i = ++j) {
			value = values[i];
			if (!responsiveNavbar[values[i]]) {
				responsiveNavbar[values[i]] = {};
			}
			if (plugins.rdNavbar.attr('data' + aliaces[i] + 'layout')) {
				responsiveNavbar[values[i]].layout = plugins.rdNavbar.attr('data' + aliaces[i] + 'layout');
			}
			if (plugins.rdNavbar.attr('data' + aliaces[i] + 'device-layout')) {
				responsiveNavbar[values[i]]['deviceLayout'] = plugins.rdNavbar.attr('data' + aliaces[i] + 'device-layout');
			}
			if (plugins.rdNavbar.attr('data' + aliaces[i] + 'hover-on')) {
				responsiveNavbar[values[i]]['focusOnHover'] = plugins.rdNavbar.attr('data' + aliaces[i] + 'hover-on') === 'true';
			}
			if (plugins.rdNavbar.attr('data' + aliaces[i] + 'auto-height')) {
				responsiveNavbar[values[i]]['autoHeight'] = plugins.rdNavbar.attr('data' + aliaces[i] + 'auto-height') === 'true';
			}

			if (isNoviBuilder) {
				responsiveNavbar[values[i]]['stickUp'] = false;
			} else if (plugins.rdNavbar.attr('data' + aliaces[i] + 'stick-up')) {
				responsiveNavbar[values[i]]['stickUp'] = plugins.rdNavbar.attr('data' + aliaces[i] + 'stick-up') === 'true';
			}

			if (plugins.rdNavbar.attr('data' + aliaces[i] + 'stick-up-offset')) {
				responsiveNavbar[values[i]]['stickUpOffset'] = plugins.rdNavbar.attr('data' + aliaces[i] + 'stick-up-offset');
			}
		}


		plugins.rdNavbar.RDNavbar({
			anchorNav: !isNoviBuilder,
			stickUpClone: (plugins.rdNavbar.attr("data-stick-up-clone") && !isNoviBuilder) ? plugins.rdNavbar.attr("data-stick-up-clone") === 'true' : false,
			responsive: responsiveNavbar,
			callbacks: {
				onStuck: function () {
					var navbarSearch = this.$element.find('.rd-search input');

					if (navbarSearch) {
						navbarSearch.val('').trigger('propertychange');
					}
				},
				onDropdownOver: function () {
					return !isNoviBuilder;
				},
				onUnstuck: function () {
					if (this.$clone === null)
						return;

					var navbarSearch = this.$clone.find('.rd-search input');

					if (navbarSearch) {
						navbarSearch.val('').trigger('propertychange');
						navbarSearch.trigger('blur');
					}

				}
			}
		});


		if (plugins.rdNavbar.attr("data-body-class")) {
			document.body.className += ' ' + plugins.rdNavbar.attr("data-body-class");
		}
	}

	/**
	 * RD Search
	 * @description Enables search
	 */
	if (plugins.search.length || plugins.searchResults) {
		var handler = "bat/rd-search.php";
		var defaultTemplate = '<h5 class="search_title"><a target="_top" href="#{href}" class="search_link">#{title}</a></h5>' +
				'<p>...#{token}...</p>' +
				'<p class="match"><em>Terms matched: #{count} - URL: #{href}</em></p>';
		var defaultFilter = '*.html';

		if (plugins.search.length) {

			plugins.search = $('.' + plugins.search[0].className);

			for (i = 0; i < plugins.search.length; i++) {
				var searchItem = $(plugins.search[i]),
						options = {
							element: searchItem,
							filter: (searchItem.attr('data-search-filter')) ? searchItem.attr('data-search-filter') : defaultFilter,
							template: (searchItem.attr('data-search-template')) ? searchItem.attr('data-search-template') : defaultTemplate,
							live: (searchItem.attr('data-search-live')) ? (searchItem.find('.' + searchItem.attr('data-search-live'))) : false,
							liveCount: (searchItem.attr('data-search-live-count')) ? parseInt(searchItem.attr('data-search-live')) : 4,
							current: 0, processed: 0, timer: {}
						};

				if ($('.rd-navbar-search-toggle').length) {
					var toggle = $('.rd-navbar-search-toggle');
					toggle.on('click', function () {
						if (!($(this).hasClass('active'))) {
							searchItem.find('input').val('').trigger('propertychange');
						}
					});
				}

				if (options.live) {
					options.clearHandler = false;

					searchItem.find('input').on("keyup input propertychange", $.proxy(function () {
						var ctx = this;

						this.term = this.element.find('input').val().trim();
						this.spin = this.element.find('.input-group-addon');

						clearTimeout(ctx.timer);

						if (ctx.term.length > 2) {
							ctx.timer = setTimeout(liveSearch(ctx), 200);

							if (ctx.clearHandler == false) {
								ctx.clearHandler = true;

								$("body").on("click", function (e) {
									if ($(e.toElement).parents('.rd-search').length == 0) {
										ctx.live.addClass('cleared').html('');
									}
								})
							}

						} else if (ctx.term.length == 0) {
							ctx.live.addClass('cleared').html('');
						}
					}, options, this));
				}

				searchItem.submit($.proxy(function () {
					$('<input />').attr('type', 'hidden')
					.attr('name', "filter")
					.attr('value', this.filter)
					.appendTo(this.element);
					return true;
				}, options, this))
			}
		}

		if (plugins.searchResults.length) {
			var regExp = /\?.*s=([^&]+)\&filter=([^&]+)/g;
			var match = regExp.exec(location.search);

			if (match != null) {
				$.get(handler, {
					s: decodeURI(match[1]),
					dataType: "html",
					filter: match[2],
					template: defaultTemplate,
					live: ''
				}, function (data) {
					plugins.searchResults.html(data);
				})
			}
		}
	}
	
	/**
	 * Wrapper to eliminate json errors
	 * @param {string} str - JSON string
	 * @returns {object} - parsed or empty object
	 */
	function parseJSON ( str ) {
		try {
			if ( str )  return JSON.parse( str );
			else return {};
		} catch ( error ) {
			console.warn( error );
			return {};
		}
	}

	/**
	 * Owl carousel
	 * @description Enables Owl carousel plugin
	 */
	if (plugins.owl.length) {
		for (var i = 0; i < plugins.owl.length; i++) {
			var c = $(plugins.owl[i]);
			plugins.owl[i].owl = c;

			initOwlCarousel(c);
		}
	}

	/**
	 * RD Input Label
	 * @description Enables RD Input Label Plugin
	 */
	if (plugins.rdInputLabel.length) {
		plugins.rdInputLabel.RDInputLabel();
	}

	/**
	 * Regula
	 * @description Enables Regula plugin
	 */
	if (plugins.regula.length) {
		attachFormValidator(plugins.regula);
	}

	/**
	 * MailChimp Ajax subscription
	 */
	if (plugins.mailchimp.length) {
		$.each(plugins.mailchimp, function (index, form) {
			var $form = $(form),
					$email = $form.find('input[type=email]'),
					$output = $("#" + plugins.mailchimp.attr("data-form-output"));

			// Required by MailChimp
			$form.attr('novalidate', 'true');
			$email.attr('name', 'EMAIL');

			$form.submit(function (e) {
				var data = {},
						url = $form.attr('action').replace('/post?', '/post-json?').concat('&c=?'),
						dataArray = $form.serializeArray();

				$.each(dataArray, function (index, item) {
					data[item.name] = item.value;
				});

				$.ajax({
					data: data,
					url: url,
					dataType: 'jsonp',
					error: function (resp, text) {
						$output.html('Server error: ' + text);

						setTimeout(function () {
							$output.removeClass("active");
						}, 4000);
					},
					success: function (resp) {
						$output.html(resp.msg).addClass('active');

						setTimeout(function () {
							$output.removeClass("active");
						}, 6000);
					},
					beforeSend: function (data) {
						// Stop request if builder or inputs are invalide
						if (isNoviBuilder || !isValidated($form.find('[data-constraints]')))
							return false;

						$output.html('Submitting...').addClass('active');
					}
				});

				return false;
			});
		});
	}

	/**
	 * Campaign Monitor ajax subscription
	 */
	if (plugins.campaignMonitor.length) {
		$.each(plugins.campaignMonitor, function (index, form) {
			var $form = $(form),
					$output = $("#" + plugins.campaignMonitor.attr("data-form-output"));

			$form.submit(function (e) {
				var data = {},
						url = $form.attr('action'),
						dataArray = $form.serializeArray();

				$.each(dataArray, function (index, item) {
					data[item.name] = item.value;
				});

				$.ajax({
					data: data,
					url: url,
					dataType: 'jsonp',
					error: function (resp, text) {
						$output.html('Server error: ' + text);

						setTimeout(function () {
							$output.removeClass("active");
						}, 4000);
					},
					success: function (resp) {
						console.log(resp);

						$output.html(resp.Message).addClass('active');

						setTimeout(function () {
							$output.removeClass("active");
						}, 6000);
					},
					beforeSend: function (data) {
						// Stop request if builder or inputs are invalide
						if (isNoviBuilder || !isValidated($form.find('[data-constraints]')))
							return false;

						$output.html('Submitting...').addClass('active');
					}
				});

				return false;
			});
		});
	}

	/**
	 * RD Mailform
	 * @version      3.2.0
	 */
	if (plugins.rdMailForm.length) {
		var i, j, k,
				msg = {
					'MF000': 'Successfully sent!',
					'MF001': 'Recipients are not set!',
					'MF002': 'Form will not work locally!',
					'MF003': 'Please, define email field in your form!',
					'MF004': 'Please, define type of your form!',
					'MF254': 'Something went wrong with PHPMailer!',
					'MF255': 'Aw, snap! Something went wrong.'
				};

		for (i = 0; i < plugins.rdMailForm.length; i++) {
			var $form = $(plugins.rdMailForm[i]),
					formHasCaptcha = false;

			$form.attr('novalidate', 'novalidate').ajaxForm({
				data: {
					"form-type": $form.attr("data-form-type") || "contact",
					"counter": i
				},
				beforeSubmit: function (arr, $form, options) {
					if (isNoviBuilder)
						return;

					var form = $(plugins.rdMailForm[this.extraData.counter]),
							inputs = form.find("[data-constraints]"),
							output = $("#" + form.attr("data-form-output")),
							captcha = form.find('.recaptcha'),
							captchaFlag = true;

					output.removeClass("active error success");

					if (isValidated(inputs, captcha)) {

						// veify reCaptcha
						if (captcha.length) {
							var captchaToken = captcha.find('.g-recaptcha-response').val(),
									captchaMsg = {
										'CPT001': 'Please, setup you "site key" and "secret key" of reCaptcha',
										'CPT002': 'Something wrong with google reCaptcha'
									};

							formHasCaptcha = true;

							$.ajax({
								method: "POST",
								url: "bat/reCaptcha.php",
								data: {'g-recaptcha-response': captchaToken},
								async: false
							})
							.done(function (responceCode) {
								if (responceCode !== 'CPT000') {
									if (output.hasClass("snackbars")) {
										output.html('<p><span class="icon text-middle mdi mdi-check icon-xxs"></span><span>' + captchaMsg[responceCode] + '</span></p>')

										setTimeout(function () {
											output.removeClass("active");
										}, 3500);

										captchaFlag = false;
									} else {
										output.html(captchaMsg[responceCode]);
									}

									output.addClass("active");
								}
							});
						}

						if (!captchaFlag) {
							return false;
						}

						form.addClass('form-in-process');

						if (output.hasClass("snackbars")) {
							output.html('<p><span class="icon text-middle fa fa-circle-o-notch fa-spin icon-xxs"></span><span>Sending</span></p>');
							output.addClass("active");
						}
					} else {
						return false;
					}
				},
				error: function (result) {
					if (isNoviBuilder)
						return;

					var output = $("#" + $(plugins.rdMailForm[this.extraData.counter]).attr("data-form-output")),
							form = $(plugins.rdMailForm[this.extraData.counter]);

					output.text(msg[result]);
					form.removeClass('form-in-process');

					if (formHasCaptcha) {
						grecaptcha.reset();
					}
				},
				success: function (result) {
					if (isNoviBuilder)
						return;

					var form = $(plugins.rdMailForm[this.extraData.counter]),
							output = $("#" + form.attr("data-form-output")),
							select = form.find('select');

					form
					.addClass('success')
					.removeClass('form-in-process');

					if (formHasCaptcha) {
						grecaptcha.reset();
					}

					result = result.length === 5 ? result : 'MF255';
					output.text(msg[result]);

					if (result === "MF000") {
						if (output.hasClass("snackbars")) {
							output.html('<p><span class="icon text-middle mdi mdi-check icon-xxs"></span><span>' + msg[result] + '</span></p>');
						} else {
							output.addClass("active success");
						}
					} else {
						if (output.hasClass("snackbars")) {
							output.html(' <p class="snackbars-left"><span class="icon icon-xxs mdi mdi-alert-outline text-middle"></span><span>' + msg[result] + '</span></p>');
						} else {
							output.addClass("active error");
						}
					}

					form.clearForm();

					if (select.length) {
						select.select2("val", "");
					}

					form.find('input, textarea').trigger('blur');

					setTimeout(function () {
						output.removeClass("active error success");
						form.removeClass('success');
					}, 3500);
				}
			});
		}
	}

	/**
	 * Custom Toggles
	 */
	if (plugins.customToggle.length) {
		for (i = 0; i < plugins.customToggle.length; i++) {
			var $this = $(plugins.customToggle[i]);

			$this.on('click', $.proxy(function (event) {
				event.preventDefault();
				var $ctx = $(this);
				$($ctx.attr('data-custom-styles-toggle')).add(this).toggleClass('active');
			}, $this));

			if ($this.attr("data-custom-styles-toggle-disable-on-blur") === "true") {
				$("body").on("click", $this, function (e) {
					if (e.target !== e.data[0]
							&& $(e.data.attr('data-custom-styles-toggle')).find($(e.target)).length
							&& e.data.find($(e.target)).length == 0) {
						$(e.data.attr('data-custom-styles-toggle')).add(e.data[0]).removeClass('active');
					}
				})
			}
		}
	}

	/**
	 * TimeCircles
	 * @description  Enable TimeCircles plugin
	 */
	if (plugins.dateCountdown.length) {
		var i;
		for (i = 0; i < plugins.dateCountdown.length; i++) {
			var dateCountdownItem = $(plugins.dateCountdown[i]),
					time = {
						"Days": {
							"text": "Days",
							"show": true,
							color: dateCountdownItem.attr("data-color") ? dateCountdownItem.attr("data-color") : "#f9f9f9"
						},
						"Hours": {
							"text": "Hours",
							"show": true,
							color: dateCountdownItem.attr("data-color") ? dateCountdownItem.attr("data-color") : "#f9f9f9"
						},
						"Minutes": {
							"text": "Minutes",
							"show": true,
							color: dateCountdownItem.attr("data-color") ? dateCountdownItem.attr("data-color") : "#f9f9f9"
						},
						"Seconds": {
							"text": "Seconds",
							"show": true,
							color: dateCountdownItem.attr("data-color") ? dateCountdownItem.attr("data-color") : "#f9f9f9"
						}
					};

			dateCountdownItem.TimeCircles({
				color: dateCountdownItem.attr("data-color") ? dateCountdownItem.attr("data-color") : "rgba(247, 247, 247, 1)",
				animation: "smooth",
				bg_width: dateCountdownItem.attr("data-bg-width") ? dateCountdownItem.attr("data-bg-width") : 0.6,
				circle_bg_color: dateCountdownItem.attr("data-bg") ? dateCountdownItem.attr("data-bg") : "rgba(0, 0, 0, 1)",
				fg_width: dateCountdownItem.attr("data-width") ? dateCountdownItem.attr("data-width") : 0.03
			});

			$(window).on('load resize orientationchange', function () {
				if (window.innerWidth < 479) {
					this.dateCountdownItem.TimeCircles({
						time: {
							"Days": {
								"text": "Days",
								"show": true,
								color: this.dateCountdownItem.attr("data-color") ? this.dateCountdownItem.attr("data-color") : "#f9f9f9"
							},
							"Hours": {
								"text": "Hours",
								"show": true,
								color: this.dateCountdownItem.attr("data-color") ? this.dateCountdownItem.attr("data-color") : "#f9f9f9"
							},
							"Minutes": {
								"text": "Minutes",
								"show": true,
								color: this.dateCountdownItem.attr("data-color") ? this.dateCountdownItem.attr("data-color") : "#f9f9f9"
							},
							Seconds: {
								"text": "Seconds",
								show: false,
								color: this.dateCountdownItem.attr("data-color") ? this.dateCountdownItem.attr("data-color") : "#f9f9f9"
							}
						}
					}).rebuild();
				} else if (window.innerWidth < 767) {
					this.dateCountdownItem.TimeCircles({
						time: {
							"Days": {
								"text": "Days",
								"show": true,
								color: this.dateCountdownItem.attr("data-color") ? this.dateCountdownItem.attr("data-color") : "#f9f9f9"
							},
							"Hours": {
								"text": "Hours",
								"show": true,
								color: this.dateCountdownItem.attr("data-color") ? this.dateCountdownItem.attr("data-color") : "#f9f9f9"
							},
							"Minutes": {
								"text": "Minutes",
								"show": true,
								color: this.dateCountdownItem.attr("data-color") ? this.dateCountdownItem.attr("data-color") : "#f9f9f9"
							},
							Seconds: {
								text: '',
								show: false,
								color: this.dateCountdownItem.attr("data-color") ? this.dateCountdownItem.attr("data-color") : "#f9f9f9"
							}
						}
					}).rebuild();
				} else {
					this.dateCountdownItem.TimeCircles({time: this.time}).rebuild();
				}
			}.bind({dateCountdownItem: dateCountdownItem, time: time}));
		}
	}

	/**
	 * Circle Progress
	 * @description Enable Circle Progress plugin
	 */
	if (plugins.circleProgress.length) {
		for (var i = 0; i < plugins.circleProgress.length; i++) {
			var circleProgressItem = $(plugins.circleProgress[i]);
			$document.on("scroll", $.proxy(function () {
				var $this = $(this);

				if (!$this.hasClass('animated') && isScrolledIntoView($this)) {

					var arrayGradients = $this.attr('data-gradient').split(",");

					$this.circleProgress({
						value: $this.attr('data-value'),
						size: $this.attr('data-size') ? $this.attr('data-size') : 175,
						fill: {gradient: arrayGradients, gradientAngle: Math.PI / 4},
						startAngle: -Math.PI / 4 * 2,
						emptyFill: $this.attr('data-empty-fill') ? $this.attr('data-empty-fill') : "rgb(245,245,245)",
						thickness: $this.attr('data-thickness') ? parseInt($this.attr('data-thickness'), 10) : 10

					}).on('circle-animation-progress', function (event, progress, stepValue) {
						$(this).find('span').text(String(stepValue.toFixed(2)).replace('0.', '').replace('1.', '1'));
					});
					$this.addClass('animated');
				}
			}, circleProgressItem))
			.trigger("scroll");
		}
	}

	/**
	 * Select2
	 * @description Enables select2 plugin
	 */
	if (plugins.selectFilter.length) {
		var i;
		for (i = 0; i < plugins.selectFilter.length; i++) {
			var select = $(plugins.selectFilter[i]);

			select.select2({
				theme: "bootstrap",
				val: null
			}).next().addClass(select.attr("class").match(/(input-sm)|(input-lg)|($)/i).toString().replace(new RegExp(",", 'g'), " "));
		}
	}

	// Bootstrap Date time picker
	if (plugins.bootstrapDateTimePicker.length) {
		for (var i = 0; i < plugins.bootstrapDateTimePicker.length; i++) {
			var
					$dateTimePicker = $(plugins.bootstrapDateTimePicker[i]),
					options = {
						date: $dateTimePicker.attr("data-time-picker") === "date",
						time: $dateTimePicker.attr("data-time-picker") === "time",
						shortTime: true
					};

			if (options.date) {
				options.format = 'dddd DD MMMM YYYY';
				options.minDate = new Date();
			} else if (options.time) {
				options.format = 'HH:mm';
			} else {
				options.format = 'dddd DD MMMM YYYY - HH:mm';
			}

			$dateTimePicker.bootstrapMaterialDatePicker(options);
		}
	}

	/**
	 * Stepper
	 * @description Enables Stepper Plugin
	 */
	if (plugins.stepper.length) {
		plugins.stepper.stepper({
			labels: {
				up: "",
				down: ""
			}
		});
	}

	/**
	 *  Autoshow modal
	 * */
	if (plugins.bootstrapModalDialog.length) {
		plugins.bootstrapModalDialog.each(function (index) {
			var $this = $(plugins.bootstrapModalDialog[index]);
			if ($this.attr('data-autoshow') === 'true') $this.modal('show');
		});
	}

	/**
	 * Parallax text
	 * */
	if (plugins.parallaxText.length && !isNoviBuilder) {
		var scrollTop = $window.scrollTop();

		plugins.parallaxText.each(function () {
			$(this).data('orig-offset', $(this).offset().top);
			scrollText($(this));
		});

		$window.scroll(function () {
			scrollTop = $window.scrollTop();
			plugins.parallaxText.each(function () {
				scrollText($(this));
			});
		});

		$window.on('resize', function () {
			scrollTop = $window.scrollTop();
			plugins.parallaxText.each(function () {
				$(this).data('orig-offset', $(this).offset().top);
				scrollText($(this));
			});
		});
	}

	/**
	 * jQuery Countdown
	 * @description  Enable countdown plugin
	 */
	if (plugins.countDown.length) {
		var i;
		for (i = 0; i < plugins.countDown.length; i++) {

			var countDownItem = plugins.countDown[i],
					d = new Date(),
					time = countDownItem.getAttribute('data-time'),
					type = countDownItem.getAttribute('data-type'), // {until | since}
					format = countDownItem.getAttribute('data-format') ? countDownItem.getAttribute('data-format') : 'YYYY/MM/DD hh:mm:ss',
					expiryText = countDownItem.getAttribute('data-expiry-text') ? countDownItem.getAttribute('data-expiry-text') : 'Countdown finished',
					labels = countDownItem.getAttribute('data-labels') ? countDownItem.getAttribute('data-labels') : '',
					layout = countDownItem.getAttribute('data-layout') ? countDownItem.getAttribute('data-layout') : '{yn} {yl} {on} {ol} {dn} {dl} {hnn}{sep}{mnn}{sep}{snn}',
					settings = [];


			if (labels.length > 0) {
				settings['labels'] = JSON.parse(labels);
			}

			d.setTime(Date.parse(time)).toLocaleString();
			settings[type] = d;
			settings['expiryText'] = expiryText;
			settings['format'] = format;
			settings['alwaysExpire'] = true;
			settings['padZeroes'] = true;
			settings['layout'] = layout;
			settings['onExpiry'] = function () {
				this.classList += ' countdown-expired';
				this.innerHtml = expiryText;
			};

			$(countDownItem).countdown(settings);
		}
	}

	/**
	 * Isotope
	 * @description Enables Isotope plugin
	 */
	if (plugins.isotope.length) {
		var i, isogroup = [];
		$('.isotope-filters-toggle').on('click', function (e){
			e.preventDefault();
			$('.isotope-filters-list').toggleClass('active')
		})
		for (i = 0; i < plugins.isotope.length; i++) {
			var isotopeItem = plugins.isotope[i],
					iso = new Isotope(isotopeItem, {
						itemSelector: '.isotope-item',
						layoutMode: isotopeItem.getAttribute('data-isotope-layout') ? isotopeItem.getAttribute('data-isotope-layout') : 'masonry',
						filter: '*',
						masonry: {
							columnWidth: isotopeItem.getAttribute('data-column-width') ? parseFloat(isotopeItem.getAttribute('data-column-width')) : 0.312
						}
					});

			isogroup.push(iso);
		}

		$(window).on('load', function () {
			setTimeout(function () {
				var i;
				for (i = 0; i < isogroup.length; i++) {
					isogroup[i].element.className += " isotope--loaded";
					isogroup[i].layout();
				}
			}, 600);
		});

		var resizeTimout;

		$("[data-isotope-filter]").on("click", function (e) {
			e.preventDefault();
			var filter = $(this);
			clearTimeout(resizeTimout);
			filter.parents(".isotope-filters").find('.active').removeClass("active");
			filter.addClass("active");
			var iso = $('.isotope[data-isotope-group="' + this.getAttribute("data-isotope-group") + '"]');
			iso.isotope({
				itemSelector: '.isotope-item',
				layoutMode: iso.attr('data-isotope-layout') ? iso.attr('data-isotope-layout') : 'masonry',
				filter: this.getAttribute("data-isotope-filter") == '*' ? '*' : '[data-filter*="' + this.getAttribute("data-isotope-filter") + '"]',
				masonry: {
					columnWidth: isotopeItem.getAttribute('data-column-width') ? parseFloat(isotopeItem.getAttribute('data-column-width')) : 0.312
				}
			});
		}).eq(0).trigger("click")
	}

	function wrap(text, width) {
		text.each(function () {
			var text = d3.select(this);
			if (text.selectAll('tspan').size() > 1) return;

			var words = text.text().split(/\s+/).reverse(),
					word,
					line = [],
					lineNumber = 0,
					lineHeight = 1.2, // ems
					y = text.attr("y"),
					dy = parseFloat(text.attr("dy")),
					tspan = text.text(null).append("tspan").attr("x", 0).attr("y", y).attr("dy", dy + "em");

			while (word = words.pop()) {
				line.push(word);
				tspan.text(line.join(" "));
				if (tspan.node().getComputedTextLength() > width) {
					line.pop();
					tspan.text(line.join(" "));
					line = [word];
					tspan = text.append("tspan").attr("x", 0).attr("y", y).attr("dy", ++lineNumber * lineHeight + dy + "em").text(word);
				}
			}
		});
	}

	/**
	 * WOW
	 * @description Enables Wow animation plugin
	 */
	if (isDesktop && !isNoviBuilder && $html.hasClass("wow-animation") && $(".wow").length) {
		new WOW().init();
	}

	// Adds some loosing functionality to IE browsers (IE Polyfills)
	if (isIE) {
		if (isIE === 12) $html.addClass("ie-edge");
		if (isIE === 11) $html.addClass("ie-11");
		if (isIE < 10) $html.addClass("lt-ie-10");
		if (isIE < 11) $html.addClass("ie-10");
	}

});
