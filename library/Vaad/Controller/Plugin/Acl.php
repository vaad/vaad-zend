<?php

class Vaad_Controller_Plugin_Acl extends Zend_Controller_Plugin_Abstract {

    public function preDispatch(Zend_Controller_Request_Abstract $request) {
        $acl = new Zend_Acl;
        $acl->addRole(new Zend_Acl_Role('guest'));
        $acl->addRole(new Zend_Acl_Role('tenant'), 'guest');
        $acl->addRole(new Zend_Acl_Role('vaad'), 'tenant');
        $acl->addRole(new Zend_Acl_Role('admin'), 'vaad');

        $acl->add(new Zend_Acl_Resource('index'));
        $acl->add(new Zend_Acl_Resource('error'));
        $acl->add(new Zend_Acl_Resource('help'));
        $acl->add(new Zend_Acl_Resource('tenants'));
        $acl->add(new Zend_Acl_Resource('tickets'));
        $acl->add(new Zend_Acl_Resource('posts'));
        $acl->add(new Zend_Acl_Resource('contacts'));
        $acl->add(new Zend_Acl_Resource('projects'));
        $acl->add(new Zend_Acl_Resource('polls'));
        $acl->add(new Zend_Acl_Resource('ads'));
        $acl->add(new Zend_Acl_Resource('login'));
        $acl->add(new Zend_Acl_Resource('logout'));
        $acl->add(new Zend_Acl_Resource('admin'));
        $acl->add(new Zend_Acl_Resource('auth'));
        $acl->add(new Zend_Acl_Resource('vaad'));
        $acl->add(new Zend_Acl_Resource('tenant'));
        $acl->add(new Zend_Acl_Resource('tasks'));
        $acl->add(new Zend_Acl_Resource('forums'));
        $acl->add(new Zend_Acl_Resource('transactions'));
        $acl->add(new Zend_Acl_Resource('incomes'));      
        $acl->add(new Zend_Acl_Resource('send'));
        $acl->add(new Zend_Acl_Resource('accounts'));

        $acl->allow('guest', 'auth', array('login', 'thankyou'));
        $acl->allow('guest', 'auth', array('register'));
        $acl->allow('guest', 'index', array('contact'));
        $acl->allow('guest', 'help', array('index', 'test'));
        $acl->allow('guest', 'index', array('index'));
        $acl->allow('guest', 'posts', array('view'));
        $acl->allow('guest', 'posts', array('author'));

        $acl->allow('tenant', 'auth', array('logout'));
        $acl->allow('tenant', 'tenants', array('index', 'view', 'astable'));
        $acl->allow('tenant', 'tickets', array('index', 'edit', 'view', 'add'));
        $acl->allow('tenant', 'contacts', array('index', 'view', 'astable'));
        $acl->allow('tenant', 'posts', array('index'));
        $acl->allow('tenant', 'projects', array('index', 'view'));
        $acl->allow('tenant', 'polls', array('index', 'vote'));
        $acl->allow('tenant', 'ads', array('index', 'add', 'view', 'edit_mine'));
        $acl->allow('tenant', 'send', null);
        $acl->allow('tenant', 'forums', array('index', 'add', 'view', 'edit_mine'));
        $acl->allow('tenant', 'tasks', array('index', 'add', 'view', 'edit_mine'));

        $acl->allow('vaad', 'tenants', null);
        $acl->allow('vaad', 'tickets', null);
        $acl->allow('vaad', 'tickets', null);
        $acl->allow('vaad', 'tickets', null);
        $acl->allow('vaad', 'contacts', null);
        $acl->allow('vaad', 'posts', null);
        $acl->allow('vaad', 'projects', null);
        $acl->allow('vaad', 'polls', null);
        $acl->allow('vaad', 'ads', null);
        $acl->allow('vaad', 'transactions', null);
        $acl->allow('vaad', 'incomes', null);
        $acl->allow('vaad', 'accounts', null);

        $acl->allow('vaad', 'admin', null); // Vaad can do admin process


        $acl->allow('admin', null); // Admin can do anything


        $auth = Zend_Auth::getInstance();
        if ($auth->hasIdentity()) {
            $identity = $auth->getIdentity();
            //if (!isset($identity->role)) $identity->role = 'guest';
            $role = strtolower($identity->role);
        } else {
            $role = 'guest';
        }

        $controller = $request->controller;
        $action = $request->action;
        Zend_Registry::set('controller', ucfirst($controller));
        Zend_Registry::set('action', ucfirst($action));
        $all = $acl->isAllowed($role, $controller, $action);
        Zend_Registry::set('IsAllow', $all);


        /*
          $this->getResponse()
          ->appendBody("<p> [$role] [$all] [$controller] [$action]</p>\n");
          foreach ($_POST as $k => $v) {
          $this->getResponse()
          ->appendBody("<p> [$k] [$v] [$role] </p>\n");
          }
         */
        if (!$acl->isAllowed($role, $controller, $action)) {
            if ($role == 'guest') {

                $testSpace = new Zend_Session_Namespace('testSpace');
                $testSpace->__set('controller', $controller);
                $testSpace->__set('action', $action);
                $request->setControllerName('auth');
                $request->setActionName('login');
            } else {
                $request->setControllerName('error');
                $request->setActionName('noauth');
            }
        }
    }

    public function postDispatch(Zend_Controller_Request_Abstract $request) {
        
    }

}

?>
