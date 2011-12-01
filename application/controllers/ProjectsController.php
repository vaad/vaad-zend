<?php

class ProjectsController extends Vaad_Controller_Action {

    public function init() {
        $this->tbl = new Vaad_DbTable_Projects();
        $this->select = $this->tbl->select();
        $this->select->order('prj_title');
        $this->select->where("id>0");
        $this->select->where("bld_id=" . Zend_Registry::get('bld_id'));
        $this->form = new Vaad_Form_Project();
        $this->_name = 'פרוייקט';
    }
    
 
}

