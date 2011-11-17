<?php

class Vaad_Controller_Action extends Zend_Controller_Action {

    protected $_page = 1;
    protected $_paginator = null;
    
    protected function getPage() {
        $page = $this->_getParam('page', 0);
        if ($page > 0)
            $this->_page = $page;
        return $this->_page;
        ;
    }

    protected function setPaginator($result,$cnt=9) {
        $this->_paginator = Zend_Paginator::factory($result);
        $this->_paginator->setItemCountPerPage($cnt);
        $this->_paginator->setCurrentPageNumber($this->getPage());

        $this->view->paginator = $this->_paginator;
    }

}

?>
