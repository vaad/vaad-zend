<?php

class ProjectsController extends Vaad_Controller_Action {

    public function init() {
        $this->tbl = new Vaad_DbTable_Projects();
        $this->form = new Vaad_Form_Project();
        $this->_name = 'פרוייקט';
    }
    
 
}

