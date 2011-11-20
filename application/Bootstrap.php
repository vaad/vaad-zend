<?php

class Bootstrap extends Zend_Application_Bootstrap_Bootstrap {

    protected function _initjQuery() {
        $this->bootstrap('view');
        $view = $this->getResource('view'); //get the view object
        //add the jquery view helper path into your project
        //jquery lib includes here (default loads from google CDN)
        $view->jQuery()->enable()//enable jquery ; ->setCdnSsl(true) if need to load from ssl location
                ->setVersion('1.6.4')//jQuery version, automatically 1.5 = 1.5.latest
                ->setUiVersion('1.8.14')//jQuery UI version, automatically 1.8 = 1.8.latest
                ->addStylesheet('/css/sunny/jquery-ui-1.8.16.custom.css')//add the css
                ->uiEnable(); //enable ui

        return $view;
    }

    protected function _initTranslate() {
        date_default_timezone_set('Asia/Jerusalem');
        // We use the Swedish locale as an example
        $locale = new Zend_Locale('he_IL');
        Zend_Registry::set('Zend_Locale', $locale);

        // Create Session block and save the locale
        $session = new Zend_Session_Namespace('session');
        $langLocale = isset($session->lang) ? $session->lang : $locale;


        $translate = new Zend_Translate(
                        array(
                            'adapter' => 'array',
                            'content' => APPLICATION_PATH . DIRECTORY_SEPARATOR . 'languages/he.php',
                            'locale' => 'he_IL',
                            'delimiter' => ';',
                            'disableNotices' => false,
                            'scan' => Zend_Translate::LOCALE_DIRECTORY
                        )
        );


        //$translate->setLocale($langLocale); // Use this if you only want to load the translation matching current locale, experiment.
        // Save it for later
        $registry = Zend_Registry::getInstance();
        $registry->set('Zend_Translate', $translate);
    }

    public function _initMyAutoloading() {
        //Zend_Controller_Action_HelperBroker::addPath(
        //        APPLICATION_PATH . '/controllers/Helper');

        $autoloader = Zend_Loader_Autoloader::getInstance();
        $autoloader->registerNamespace('Vaad_');
        $front = Zend_Controller_Front::getInstance();
        $front->registerPlugin(new Vaad_Controller_Plugin_Acl());
        //$front->registerPlugin(new Vaad_Controller_Plugin_DevelopmentBar());

        $this->bootstrap('view');
        $view = $this->getResource('view'); //get the view object


        $view->addHelperPath("ZendX/JQuery/View/Helper", "ZendX_JQuery_View_Helper");

        $view->addHelperPath("Vaad/View/Helper", "Vaad_View_Helper");


        $view->HeadTitle('וועד בית');
        $view->headTitle()->setSeparator('::');
    }

    public function _initRoutes() {
        $frontController = Zend_Controller_Front::getInstance();
        $router = $frontController->getRouter();

        $route = new Zend_Controller_Router_Route_Static('login', array('controller' => 'auth', 'action' => 'login'));
        $router->addRoute('login', $route);

        $route = new Zend_Controller_Router_Route_Static('logout', array('controller' => 'auth', 'action' => 'logout'));
        $router->addRoute('logout', $route);

        $route = new Zend_Controller_Router_Route_Static('register', array('controller' => 'auth', 'action' => 'register'));
        $router->addRoute('register', $route);

        $route = new Zend_Controller_Router_Route_Static('contact', array('controller' => 'index', 'action' => 'contact'));
        $router->addRoute('contact', $route);

        $route = new Zend_Controller_Router_Route(
                        ':controller/:action/:id',
                        array(
                            'controller' => ':controller',
                            'action' => ':action',
                        ),
                        array(
                            'id' => '\d+'
                        )
        );
        $router->addRoute('tenantsid', $route);

        $route = new Zend_Controller_Router_Route(
                        'send/to/:mailto',
                        array(
                            'controller' => 'send',
                            'action' => 'index',
                        ),
                        array(
                            'mailto' => '[^\@]+\@.*'
                        )
        );
        $router->addRoute('sendto', $route);
    }

    protected function _initMenu() {
        $this->bootstrap('layout');
        $layout = $this->getResource('layout');
        $view = $layout->getView();
        $config = new Zend_Config_Xml(APPLICATION_PATH . '/configs/mainmenu.xml', 'nav');
        $mainmenu = new Zend_Navigation($config);
        $view->navigation($mainmenu);
    }

}

