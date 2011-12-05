<?php

class TenantsController extends Vaad_Controller_Action {

    public function init() {
        $this->tbl = new Vaad_DbTable_Tenants();
        $this->select = $this->tbl->select();
        $this->select->order('tnt_app_num');

        $this->form = new Vaad_Form_Tenant();
        $this->_name = 'דייר';
    }

}

