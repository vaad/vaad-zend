<?php

class BuildingsController extends Vaad_Controller_Action {

    public function init() {
        $this->tbl = new Vaad_DbTable_Buildings();
        $this->select = $this->tbl->select();
        $this->select->where('id>0');
        $this->form = new Vaad_Form_Building();
        $this->_name = 'בניינים';
    }

}

