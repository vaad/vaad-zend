<?php

class Vaad_Form_Income extends ZendX_JQuery_Form {

    public function __construct($options = null) {
        parent::__construct($options);
        $this->setAction($options['action'])->setMethod('post');
        $id = $this->createElement('hidden', 'id');
        $this->addElement($id);
        $bld_id = $this->createElement('hidden', 'bld_id');
        $this->addElement($bld_id);
        
        $prj_id = $this->createElement('select', 'prj_id', array('size' => 1, 'label' => 'prj_id'));
        $prj_tbl = new Vaad_DbTable_Projects();
        $prj_rows = $prj_tbl->getAll();
        foreach ($prj_rows as $row) {
            $prj_id->addMultiOption($row->id, $row->prj_title);
        }
        $prj_id->setRequired(true);
        
        $this->addElement($prj_id);
        $inc_date = new ZendX_JQuery_Form_Element_DatePicker('inc_date');
        $inc_date->setJQueryParams(array('dateFormat' => 'dd/mm/yy', 'timeFormat' => 'hh:mm:ss'));
        $inc_date->setAttrib('size', '10')->setLabel('inc_date')->setValue(date('d/m/Y H:i:s'));
        $this->addElement($inc_date);
        $inc_until_date = new ZendX_JQuery_Form_Element_DatePicker('inc_until_date');
        $inc_until_date->setJQueryParams(array('dateFormat' => 'dd/mm/yy', 'timeFormat' => 'hh:mm:ss'));
        $inc_until_date->setAttrib('size', '10')->setLabel('inc_until_date')->setValue(date('d/m/Y H:i:s'));
        $this->addElement($inc_until_date);
        $inc_amount = new Vaad_Form_Element_Currency('inc_amount', array('size' => 17, 'label' => 'inc_amount'));
        $this->addElement($inc_amount);
        //$inc_paid = $this->createElement('checkbox', 'inc_paid', array('size' => 17, 'label' => 'inc_paid'));
        //$this->addElement($inc_paid);
        $inc_branch = $this->createElement('text', 'inc_branch', array('size' => 7, 'label' => 'inc_branch'));
        $this->addElement($inc_branch);
        $inc_chk_no = $this->createElement('text', 'inc_chk_no', array('size' => 7, 'label' => 'inc_chk_no'));
        $this->addElement($inc_chk_no);
        $inc_chk_date = new ZendX_JQuery_Form_Element_DatePicker('inc_chk_date');
        $inc_chk_date->setJQueryParams(array('dateFormat' => 'dd/mm/yy', 'timeFormat' => 'hh:mm:ss'));
        $inc_chk_date->setAttrib('size', '10')->setLabel('inc_chk_date')->setValue(date('d/m/Y H:i:s'));
        $this->addElement($inc_chk_date);
        
        $inc_apt_num = $this->createElement('select', 'inc_apt_num', array('size' => 1, 'label' => 'inc_apt_num'));
        $tbl = new Vaad_DbTable_Appartments();
        $rows = $tbl->fetchAll();
        foreach ($rows as $row) {
           $inc_apt_num->addMultiOption($row->id, $row->app_num); 
        }
        $this->addElement($inc_apt_num);
        
        $inc_bank = $this->createElement('select', 'inc_bank', array('size' => 1, 'label' => 'inc_bank'));

        $bnk_tbl = new Vaad_DbTable_BankCodes();
        $rows = $bnk_tbl->fetchAll();
        foreach ($rows as $row) {
            $inc_bank->addMultiOption($row->id, $row->code_desc);
        }
        $inc_bank->setRequired(true);
        $this->addElement($inc_bank);
        $save = new Zend_Form_Element_Submit('save');
        $this->addElement($save);
        $back = new Zend_Form_Element_Submit('back');
        $this->addElement($back);
        $repeat = new Zend_Form_Element_Submit('repeat');
        $this->addElement($repeat);
        $delete = new Zend_Form_Element_Submit('delete');
        $this->addElement($delete);
        $id->setDecorators(array('ViewHelper'));
        $bld_id->setDecorators(array('ViewHelper'));
        $save->setDecorators(array('ViewHelper'));
        $back->setDecorators(array('ViewHelper'));
        $repeat->setDecorators(array('ViewHelper'));
        $delete->setDecorators(array('ViewHelper'));
        $this->addDisplayGroups(array(
            'right' => array(
                'elements' => array('prj_id','inc_apt_num', 'inc_date', 'inc_until_date', ),
            ),
            'left' => array(
                'elements' => array('inc_amount', 'inc_chk_date','inc_bank', 'inc_branch', 'inc_chk_no' ),
            ),
            'bottom' => array(
                'elements' => array('id', 'bld_id', 'save', 'back', 'repeat', 'delete'),
            ),
        ));

        $this->setDisplayGroupDecorators(array('Description', 'FormElements', 'Fieldset'));
    }

}
