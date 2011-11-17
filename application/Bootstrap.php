<?php

class Bootstrap extends Zend_Application_Bootstrap_Bootstrap {

    protected function _initjQuery() {
        $this->bootstrap('view');
        $view = $this->getResource('view'); //get the view object
        //add the jquery view helper path into your project
        //jquery lib includes here (default loads from google CDN)
        $view->jQuery()->enable()//enable jquery ; ->setCdnSsl(true) if need to load from ssl location
                //->setVersion('1.6.4')//jQuery version, automatically 1.5 = 1.5.latest
                //->setUiVersion('1.8.14')//jQuery UI version, automatically 1.8 = 1.8.latest
                //->addStylesheet('/css/custom-theme/jquery-ui-1.8.14.custom.css')//add the css
                ->uiEnable(); //enable ui

        return $view;
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
                        ':controller/add/',
                        array(
                            'controller' => ':controller',
                            'action' => 'add'
                        )
        );

        $route = new Zend_Controller_Router_Route(
                        ':controller/:action/:id',
                        array(
                            'controller' => ':controller',
                            'action' => ':action'
                        ),
                        array(
                            'id' => '\d+'
                        )
        );
        $router->addRoute('tenantsid', $route);
    }

}

