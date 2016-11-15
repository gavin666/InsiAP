/**
 * @name AceApp
 * @description
 * # AceApp
 *
 * Main module of the application.
 */
var app = angular
  .module('AceApp', [
    'ngAnimate',
    'ngResource',
    'ngSanitize',
    'ngTouch',
	//'angular-loading-bar',
	'oc.lazyLoad',
	'ui.bootstrap',
	'ui.router',
	'ace.directives',
	'ngStorage'	
  ])
  .config(function ($stateProvider, $urlRouterProvider, $ocLazyLoadProvider/**, cfpLoadingBarProvider*/) {
	//cfpLoadingBarProvider.includeSpinner = true;
	
	$urlRouterProvider.otherwise('/dashboard');
	
    $stateProvider
	  .state('dashboard', {
		url: '/dashboard',
		title: 'Dashboard',
		icon: 'fa fa-tachometer',
        
		templateUrl: 'webpage/angular/views/pages/dashboard.html',
		controller: 'DashboardCtrl',
		
		resolve: {
			lazyLoad: ['$ocLazyLoad', function($ocLazyLoad) {
				return $ocLazyLoad.load([{
						name: 'angular-flot',
						serie: true,
						files: ['plug-in/ace-insiap/components/Flot/jquery.flot.js',
						'plug-in/ace-insiap/components/Flot/jquery.flot.pie.js',
						'plug-in/ace-insiap/components/Flot/jquery.flot.resize.js',
						'plug-in/ace-insiap/components/angular-flot/angular-flot.js']
					},
					{
						name: 'easypiechart',
						files: ['plug-in/ace-insiap/components/_mod/easypiechart/angular.easypiechart.js']
					},
					{
						name: 'sparkline',
						files: ['plug-in/ace-insiap/components/jquery.sparkline/index.js']
					},
					{
						name: 'AceApp',
						files: ['webpage/angular/js/controllers/pages/dashboard.js']
					}]);
			}]
		}
      })
	  
	  
	  .state('ui', {
		'abstract': true,
		//url: '/ui',
		title: '客户关系',
		template: '<ui-view/>',
		
		icon: 'fa fa-desktop'
      })
	  .state('ui.typography', {
		url: '/typography',
		title: 'Typography',

		templateUrl: 'webpage/angular/views/pages/typography.html',
		
		resolve: {
			lazyLoad: ['$ocLazyLoad', function($ocLazyLoad) {
				return $ocLazyLoad.load([{
						name: 'prettify',
						files: ['plug-in/ace-insiap/components/_mod/google-code-prettify/prettify.css',	'plug-in/ace-insiap/components/google-code-prettify/src/prettify.js']
					}]);
			}]
		}
      })
	  .state('ui.elements', {
		url: '/elements',
		title: 'Elements',

		templateUrl: 'webpage/angular/views/pages/elements.html',
		controller: 'ElementsCtrl',
		
		resolve: {
			lazyLoad: ['$ocLazyLoad', function($ocLazyLoad) {
				return $ocLazyLoad.load([{
						name: 'bootbox',
						files: ['plug-in/ace-insiap/components/bootbox.js/bootbox.js']
					},
					{
						name: 'easypiechart',
						files: ['plug-in/ace-insiap/components/_mod/easypiechart/angular.easypiechart.js']
					},
					{
						name: 'gritter',
						files: ['plug-in/ace-insiap/components/jquery.gritter/js/jquery.gritter.js']
					},
					{
						serie: true,
						name: 'ui.slider',
						files: ['plug-in/ace-insiap/components/_mod/jquery-ui.custom/jquery-ui.custom.js', 'plug-in/ace-insiap/components/jqueryui-touch-punch/jquery.ui.touch-punch.js', 'plug-in/ace-insiap/components/angular-ui-slider/src/slider.js']
					},
					{
						serie: true,
						name: 'angularSpinner',
						files: ['plug-in/ace-insiap/components/spin.js/spin.js',	'plug-in/ace-insiap/components/spin.js/jquery.spin.js', 'plug-in/ace-insiap/components/angular-spinner/angular-spinner.js']
					},
					{
						name: 'AceApp',
						files: ['webpage/angular/js/controllers/pages/elements.js']
					},
					{
						name: 'AceApp',
						insertBefore: '#main-ace-style',
						files: [
							'plug-in/ace-insiap/components/jquery.gritter/css/jquery.gritter.css',
							'plug-in/ace-insiap/components/_mod/jquery-ui.custom/jquery-ui.custom.css',
							'webpage/angular/css/pages/elements.css'
							]
					}]);
			}]
		}
      })
	  .state('ui.buttons', {
		url: '/buttons',
		title: 'Buttons',

		templateUrl: 'webpage/angular/views/pages/buttons.html',
		controller: 'ButtonsCtrl',
		
		resolve: {
			lazyLoad: ['$ocLazyLoad', function($ocLazyLoad) {
				return $ocLazyLoad.load([
					{
						name: 'AceApp',
						files: ['webpage/angular/js/controllers/pages/buttons.js']
					}]);
			}]
		}
      })
	  .state('ui.content-slider', {
		url: '/content-slider',
		title: 'Content Slider',

		templateUrl: 'webpage/angular/views/pages/content-slider.html',
		controller: 'ContentSliderCtrl',
		resolve: {
			lazyLoad: ['$ocLazyLoad', function($ocLazyLoad) {
				return $ocLazyLoad.load([{
						name: 'ngAside',
						files: ['plug-in/ace-insiap/components/angular-aside/dist/js/angular-aside.js']
					},
					{
						name: 'AceApp',
						files: ['webpage/angular/js/controllers/pages/content-slider.js']
					},
					{
						name: 'AceApp',
						insertBefore: '#main-ace-style',
						files: ['plug-in/ace-insiap/components/angular-aside/dist/css/angular-aside.css']
					}]);
			}]
		}
      })
	  .state('ui.treeview', {
		url: '/treeview',
		title: 'Treeview',

		templateUrl: 'webpage/angular/views/pages/treeview.html',
		controller: 'TreeviewCtrl',
		resolve: {
			lazyLoad: ['$ocLazyLoad', function($ocLazyLoad) {
				return $ocLazyLoad.load([{
						name: 'treeControl',
						files: ['plug-in/ace-insiap/components/angular-tree-control/angular-tree-control.js']
					},
					{
						name: 'AceApp',
						files: ['webpage/angular/js/controllers/pages/treeview.js']
					}]);
			}]
		}
      })
	  .state('ui.nestable-list', {
		url: '/nestable-list',
		title: 'Nestable Lists',

		templateUrl: 'webpage/angular/views/pages/nestable-list.html',
		controller: 'NestableCtrl',
		resolve: {
			lazyLoad: ['$ocLazyLoad', function($ocLazyLoad) {
				return $ocLazyLoad.load([{
						name: 'ngNestable',
						files: ['plug-in/ace-insiap/components/_mod/jquery.nestable/jquery.nestable.js', 'plug-in/ace-insiap/components/angular-nestable/src/angular-nestable.js']
					},
					{
						name: 'AceApp',
						files: ['webpage/angular/js/controllers/pages/nestable.js']
					}]);
			}]
		}
      })


	  
	  .state('table', {
		url: '/table',
		title: '险种百科',
		icon: 'fa fa-list',

		templateUrl: 'webpage/angular/views/pages/table.html',
		controller: 'TableCtrl',
		resolve: {
			lazyLoad: ['$ocLazyLoad', function($ocLazyLoad) {
				return $ocLazyLoad.load([
					{
						serie: true,
						name: 'dataTables',
						files: ['plug-in/ace-insiap/components/datatables/media/js/jquery.dataTables.js', 'plug-in/ace-insiap/components/_mod/datatables/jquery.dataTables.bootstrap.js', 'plug-in/ace-insiap/components/angular-datatables/dist/angular-datatables.js']
					},					
					{
						name: 'AceApp',
						files: ['webpage/angular/js/controllers/pages/table.js']
					}]);
			}]
		}
      })
	  
	  
	  .state('form', {
		'abstract': true,
		//url: '/form',
		title: '建议书',
		template: '<ui-view/>',
		icon: 'fa fa-pencil-square-o'
      })
	  .state('form.form-elements', {
		url: '/form-elements',
		title: 'Form Elements',

		templateUrl: 'webpage/angular/views/pages/form-elements.html',
		controller: 'FormCtrl',
		resolve: {
			lazyLoad: ['$ocLazyLoad', function($ocLazyLoad) {
				return $ocLazyLoad.load([
					{
						serie: true,
						name: 'ui.slider',
						files: ['plug-in/ace-insiap/components/_mod/jquery-ui.custom/jquery-ui.custom.js', 'plug-in/ace-insiap/components/jqueryui-touch-punch/jquery.ui.touch-punch.js', 'plug-in/ace-insiap/components/angular-ui-slider/src/slider.js']
					},
					
					{
						name: 'text_area',
						files: ['plug-in/ace-insiap/components/jquery-inputlimiter/jquery.inputlimiter.js', 'plug-in/ace-insiap/components/angular-elastic/elastic.js']
					},
					
					{
						name: 'mask',
						files: ['plug-in/ace-insiap/components/angular-ui-mask/dist/mask.js']
					},
					
					{
						name: 'chosen',
						files: ['plug-in/ace-insiap/components/chosen/chosen.jquery.js', 'plug-in/ace-insiap/components/angular-chosen-localytics/chosen.js']
					},
					
					{
						name: 'spinner',
						files: ['plug-in/ace-insiap/components/fuelux/js/spinbox.js']
					},

					{
						name: 'datepicker',
						files: ['plug-in/ace-insiap/components/bootstrap-datepicker/dist/js/bootstrap-datepicker.js']
					},
					
					{
						serie: true,
						name: 'daterange',
						files: ['plug-in/ace-insiap/components/moment/moment.js', 'plug-in/ace-insiap/components/bootstrap-daterangepicker/daterangepicker.js', 'plug-in/ace-insiap/components/angular-daterangepicker/js/angular-daterangepicker.js']
					},
					
					{
						name: 'timepicker',
						files: ['plug-in/ace-insiap/components/bootstrap-timepicker/js/bootstrap-timepicker.js']
					},
					
					{
						serie: true,
						name: 'datetimepicker',
						files: ['plug-in/ace-insiap/components/moment/moment.js', 'plug-in/ace-insiap/components/eonasdan-bootstrap-datetimepicker/src/js/bootstrap-datetimepicker.js']
					},
					
					{
						name: 'colorpicker',
						files: ['plug-in/ace-insiap/components/angular-bootstrap-colorpicker/js/bootstrap-colorpicker-module.js', 'plug-in/ace-insiap/components/angular-bootstrap-colorpicker/css/colorpicker.css']
					},
					
					{
						name: 'knob',
						files: ['plug-in/ace-insiap/components/jquery-knob/js/jquery.knob.js', 'plug-in/ace-insiap/components/angular-knob/src/angular-knob.js']
					},
					
					
					{
						serie: true,
						name: 'typeahead',
						files: ['plug-in/ace-insiap/components/typeahead.js/dist/bloodhound.js', 'plug-in/ace-insiap/components/typeahead.js/dist/typeahead.jquery.js', 'plug-in/ace-insiap/components/angular-typeahead/angular-typeahead.js']
					},
					
					{
						name: 'multiselect',
						files: ['plug-in/ace-insiap/components/angular-bootstrap-multiselect/angular-bootstrap-multiselect.js']
					},
					
					{
						name: 'select2',
						files: ['plug-in/ace-insiap/components/ui-select/dist/select.js']
					},
					
					
					{
						name: 'AceApp',
						files: ['webpage/angular/js/controllers/pages/form-elements.js']
					},

					
					{
						name: 'AceApp',
						insertBefore: '#main-ace-style',
						files: [
								'plug-in/ace-insiap/components/chosen/chosen.css',
								'plug-in/ace-insiap/components/_mod/jquery-ui.custom/jquery-ui.custom.css',
								'plug-in/ace-insiap/components/eonasdan-bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.css',
								'plug-in/ace-insiap/components/bootstrap-timepicker/css/bootstrap-timepicker.css',
								'plug-in/ace-insiap/components/bootstrap-datepicker/dist/css/bootstrap-datepicker3.css',
								'plug-in/ace-insiap/components/bootstrap-daterangepicker/daterangepicker.css',
								'plug-in/ace-insiap/components/select2.v3/select2.css'
								]
					}]);
			}]
		}
      })
	  .state('form.form-wizard', {
		url: '/form-wizard',
		title: 'Form Wizard',

		templateUrl: 'webpage/angular/views/pages/form-wizard.html',
		controller: 'WizardCtrl',
		resolve: {
			lazyLoad: ['$ocLazyLoad', function($ocLazyLoad) {
				return $ocLazyLoad.load([{
						name: 'ngMessages',
						files: ['plug-in/ace-insiap/components/angular-messages/angular-messages.js']
					},
					
					{
						name: 'wizard',
						files: ['plug-in/ace-insiap/components/angular-wizard/dist/angular-wizard.js']
					},
					
					{
						name: 'mask',
						files: ['plug-in/ace-insiap/components/angular-ui-mask/dist/mask.js']
					},
					
					{
						name: 'chosen',
						files: ['plug-in/ace-insiap/components/chosen/chosen.jquery.js', 'plug-in/ace-insiap/components/angular-chosen-localytics/chosen.js']
					},
					
					{
						name: 'AceApp',
						files: ['webpage/angular/js/controllers/pages/form-wizard.js']
					},
					{
						name: 'AceApp',
						insertBefore: '#main-ace-style',
						files: ['plug-in/ace-insiap/components/chosen/chosen.css']
					}]);
			}]
		}
		
      })
	  .state('form.wysiwyg', {
		url: '/wysiwyg',
		title: 'Wysiwyg & Markdown',

		templateUrl: 'webpage/angular/views/pages/wysiwyg.html',
		controller: 'WysiwygCtrl',

		resolve: {
			lazyLoad: ['$ocLazyLoad', function($ocLazyLoad) {
				return $ocLazyLoad.load([
					{
						name: 'wysiwyg',
						serie: true,
						files: [
								'plug-in/ace-insiap/components/bootstrap/js/dropdown.js',//for wysiwyg dropdowns
								'plug-in/ace-insiap/components/jquery.hotkeys/index.js',
								'plug-in/ace-insiap/components/_mod/bootstrap-wysiwyg/bootstrap-wysiwyg.js']
					},
					
					{
						name: 'markdown',
						files: ['plug-in/ace-insiap/components/markdown/lib/markdown.js','plug-in/ace-insiap/components/bootstrap-markdown/js/bootstrap-markdown.js']
					},
					
					{
						name: 'AceApp',	
						files: ['webpage/angular/js/controllers/pages/wysiwyg.js']
					}
				]);
			}]
		}	


      })
	  .state('form.dropzone', {
		url: '/dropzone',
		title: 'Dropzone File Upload',

		templateUrl: 'webpage/angular/views/pages/dropzone.html',
		controller: 'DropzoneCtrl',

		resolve: {
			lazyLoad: ['$ocLazyLoad', function($ocLazyLoad) {
				return $ocLazyLoad.load([
					{
						name: 'dropzone',
						serie: true,
						files: ['plug-in/ace-insiap/components/dropzone/dist/dropzone.js', 'plug-in/ace-insiap/components/angular-dropzone/lib/angular-dropzone.js']
					},
					
					{
						name: 'AceApp',	
						files: ['webpage/angular/js/controllers/pages/dropzone.js']
					},
					
					{
						name: 'AceApp',
						insertBefore: '#main-ace-style',
						files: ['plug-in/ace-insiap/components/dropzone/dist/dropzone.css']
					}
				]);
			}]
		}
      })
	  
	  
	  .state('widgets', {
		url: '/widgets',
		title: '公司前台',
		icon: 'fa fa-list-alt',

		templateUrl: 'webpage/angular/views/pages/widgets.html',
		controller: 'WidgetCtrl',
		
		resolve: {
			lazyLoad: ['$ocLazyLoad', function($ocLazyLoad) {
				return $ocLazyLoad.load([
					{
						serie: true,
						name: 'sortable',
						files: ['plug-in/ace-insiap/components/_mod/jquery-ui.custom/jquery-ui.custom.js', 'plug-in/ace-insiap/components/jqueryui-touch-punch/jquery.ui.touch-punch.js']
					},
										
					{
						name: 'AceApp',	
						files: ['webpage/angular/js/controllers/pages/widgets.js']
					}
				]);
			}]
		}
      })
	  
	  .state('calendar', {
		url: '/calendar',
		title: '日程安排',

		templateUrl: 'webpage/angular/views/pages/calendar.html',
		controller: 'CalendarCtrl',
		
		icon: 'fa fa-calendar',
		badge: '<i class="ace-icon fa fa-exclamation-triangle red bigger-130"></i>',
		'badge-class': 'badge-transparent',
		tooltip: '2&nbsp;Important&nbsp;Events',
		'tooltip-class': 'tooltip-error',
		
		resolve: {
			lazyLoad: ['$ocLazyLoad', function($ocLazyLoad) {
				return $ocLazyLoad.load([
					{
						serie: true,
						name: 'calendar',
						files: ['plug-in/ace-insiap/components/moment/moment.js', 'plug-in/ace-insiap/components/fullcalendar/dist/fullcalendar.js', 'plug-in/ace-insiap/components/angular-ui-calendar/src/calendar.js']
					},
					
					{
						serie: true,
						name: 'drag',
						files: ['plug-in/ace-insiap/components/_mod/jquery-ui.custom/jquery-ui.custom.js', 'plug-in/ace-insiap/components/jqueryui-touch-punch/jquery.ui.touch-punch.js', 'plug-in/ace-insiap/components/angular-dragdrop/src/angular-dragdrop.js']
					},			
					
					{
						name: 'bootbox',
						files: ['plug-in/ace-insiap/components/bootbox.js/bootbox.js']
					},
					
					{
						name: 'AceApp',	
						files: ['webpage/angular/js/controllers/pages/calendar.js']
					},
					
					{
						name: 'AceApp',
						insertBefore: '#main-ace-style',
						files: ['plug-in/ace-insiap/components/fullcalendar/dist/fullcalendar.css']
					}
				]);
			}]
		}
      })
	  
	  .state('gallery', {
		url: '/gallery',
		title: '销售工具',
		
		icon: 'fa fa-picture-o',

		templateUrl: 'webpage/angular/views/pages/gallery.html',
		controller: 'GalleryCtrl',
		
		resolve: {
			lazyLoad: ['$ocLazyLoad', function($ocLazyLoad) {
				return $ocLazyLoad.load([
					{
						name: 'gallery',
						files: ['plug-in/ace-insiap/components/jquery-colorbox/jquery.colorbox.js', 'plug-in/ace-insiap/components/angular-colorbox/js/angular-colorbox.js']
					},
					
					{
						name: 'AceApp',	
						files: ['webpage/angular/js/controllers/pages/gallery.js']
					},
					
					{
						name: 'AceApp',
						insertBefore: '#main-ace-style',
						files: ['plug-in/ace-insiap/components/jquery-colorbox/example1/colorbox.css']
					}
				]);
			}]
		}
		
      })

	  .state('more', {
		'abstract': true,
		//url: '/more',
		title: '更多功能',
		template: '<ui-view/>',
		icon: 'fa fa-tag'
      })
	  .state('more.profile', {
		url: '/profile',
		title: '个人中心',

		templateUrl: 'webpage/angular/views/pages/profile.html',
		controller: 'ProfileCtrl',
		
		resolve: {
			lazyLoad: ['$ocLazyLoad', function($ocLazyLoad) {
				return $ocLazyLoad.load([
		
					{
						name: 'datepicker',
						serie: true,
						files: ['plug-in/ace-insiap/components/moment/moment.js', 'plug-in/ace-insiap/components/bootstrap-datepicker/dist/js/bootstrap-datepicker.js']
					},
					
					{
						name: 'spinner',
						files: ['plug-in/ace-insiap/components/fuelux/js/spinbox.js']
					},
					
					{
						serie: true,
						name: 'jquery-ui',
						files: ['plug-in/ace-insiap/components/_mod/jquery-ui.custom/jquery-ui.custom.js', 'plug-in/ace-insiap/components/jqueryui-touch-punch/jquery.ui.touch-punch.js']
					},
					
					{
						name: 'x-editable',	
						serie: true,
						files: ['plug-in/ace-insiap/components/_mod/x-editable/bootstrap-editable.js', 'plug-in/ace-insiap/components/_mod/x-editable/ace-editable.js']
					},
					
					{
						name: 'AceApp',	
						files: ['webpage/angular/js/controllers/pages/profile.js']
					},
					
					{
						name: 'AceApp',
						insertBefore: '#main-ace-style',
						files: ['plug-in/ace-insiap/components/_mod/jquery-ui.custom/jquery-ui.custom.css',
								'plug-in/ace-insiap/components/bootstrap-datepicker/dist/css/bootstrap-datepicker3.css',
								'plug-in/ace-insiap/components/_mod/x-editable/bootstrap-editable.css']
					}
				]);
			}]
		}
      })
	  .state('more.even', {
		'abstract': true,
		  
		title: 'Even More',
		template: '<ui-view/>'

      })
	  
	  .state('more.even.error', {
		url: '/error',
		title: 'Error',
		templateUrl: 'webpage/angular/views/pages/error.html'
      })
	  
	  
	  /**
	  .state('more.inbox', {
		url: '/inbox',
		title: 'Inbox',

		templateUrl: 'webpage/angular/views/pages/inbox.html'
      })
	  .state('more.pricing', {
		url: '/pricing',
		title: 'Pricing',

		templateUrl: 'webpage/angular/views/pages/pricing.html'
      })
	  .state('more.invoice', {
		url: '/invoice',
		title: 'Invoice',

		templateUrl: 'webpage/angular/views/pages/invoice.html'
      })
	  .state('more.timeline', {
		url: '/timeline',
		title: 'Timeline',

		templateUrl: 'webpage/angular/views/pages/timeline.html'
      })
	  
	  
	  .state('other', {
		'abstract': true,
		title: 'Other Pages',
		template: '<ui-view/>',
		icon: 'fa fa-file-o',
		badge: '5', 
		'badge-class': 'badge-primary'
      })
	  .state('other.faq', {
		url: '/faq',
		title: 'FAQ',

		templateUrl: 'webpage/angular/views/pages/faq.html'
      })
	  .state('other.error', {
		url: '/error',
		title: 'Error',

		templateUrl: 'webpage/angular/views/pages/error.html'
      })
	  .state('other.grid', {
		url: '/grid',
		title: 'Grid',

		templateUrl: 'webpage/angular/views/pages/grid.html'
      })
	  .state('other.blank', {
		url: '/blank',
		title: 'Blank',

		templateUrl: 'webpage/angular/views/pages/blank.html'
      })
	  */
  })
  .run(function($rootScope) {

  });
