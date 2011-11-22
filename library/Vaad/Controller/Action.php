<?php

class Vaad_Controller_Action extends Zend_Controller_Action {

    protected $_page = 1;
    protected $_paginator = null;
    protected $_control = '';
    protected $_action = '';

    private function isVaad() {
        $auth = Zend_Auth::getInstance();
        if ($auth->hasIdentity()) {
            $identity = $auth->getIdentity();
            $role = strtolower($identity->role);
            return ($role != 'tenant');
        }
        return false;
    }

    public function preDispatch() {
        $translator = Zend_Form::getDefaultTranslator();

        $cnt = $this->getRequest()->getControllerName();
        $act = $this->getRequest()->getActionName();
        
        $this->_control = $cnt;
        $this->_action = $act;

        $ucnt = str_replace(' ', '', ucwords(str_replace('_', ' ', $cnt)));
        $this->view->topPageTitle = $translator->_($ucnt);
        $this->view->mainMenuTitle = $translator->_($ucnt);

        $this->view->cntName = $cnt;
        $menu = array(
            'list' => "/$cnt/index",
        );
        if ($this->isVaad() and ($act != 'create')) {
            $menu['new'] = "/$cnt/create";
        }

        $id = $this->getRequest()->getParam('id');
        if ((int) $id > 0) {
            if ($this->isVaad() && ($act != 'edit')) {
                $menu['edit'] = "/$cnt/edit/$id";
            }
            if ($act != 'view')
                $menu['view'] = "/$cnt/view/$id";
        }

        $this->view->menu = $menu;
        $this->view->render('sidebar/actions.phtml');
    }

    protected function getPage() {
        $page = $this->_getParam('page', 0);
        if ($page > 0)
            $this->_page = $page;
        return $this->_page;
        ;
    }

    protected function setPaginator($result, $cnt = 9) {
        $this->_paginator = Zend_Paginator::factory($result);
        $this->_paginator->setItemCountPerPage($cnt);
        $this->_paginator->setCurrentPageNumber($this->getPage());

        $this->view->paginator = $this->_paginator;
    }

}

?>
