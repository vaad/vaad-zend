<?php

class TenantsController extends Vaad_Controller_Action {

    public function init() {
        $this->tbl = new Vaad_DbTable_Tenants();
        $this->form = new Vaad_Form_Tenant();
        $this->_name = 'דייר';
    }
    
 
}

