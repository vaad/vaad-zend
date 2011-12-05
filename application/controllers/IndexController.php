<?php

class IndexController extends Zend_Controller_Action {

    public function init() {
        $this->view->headTitle('לובי');
    }

    public function indexAction() {
        $tbl = new Vaad_DbTable_Posts();
        $select = $tbl->select()
                ->order('update_time Desc')
                //->where("'bld_id' = " . Zend_Registry::get('bld_id'))
                ;
        
        $rows = $tbl->fetchAll($select);
        
        $this->view->posts = $rows;
        
    }

}

