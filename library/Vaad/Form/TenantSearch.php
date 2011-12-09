<?php

class Vaad_Form_TenantSearch extends ZendX_JQuery_Form {

    public function __construct($options = null) {
        parent::__construct($options);

        $this->setAttrib('class', 'action_search');
        $this->setAction($options['action'])->setMethod('post');
        $tnt_app_num = $this->createElement('select', 'tnt_app_num', array('size' => 1, 'label' => 'tnt_app_num'));
        $tnt_app_num->addMultiOption(0, 'כל הדירות');
        $tbl = new Vaad_DbTable_Appartments();
        $rows = $tbl->fetchAll();
        foreach ($rows as $row) {
            $tnt_app_num->addMultiOption($row->id, $row->app_num);
        }
        $tnt_app_num->setRequired(true);
        $this->addElement($tnt_app_num);
        $tnt_first_name = $this->createElement('text', 'tnt_first_name', array('size' => 10, 'label' => 'tnt_first_name'));
        $tnt_first_name->setRequired(true);
        $this->addElement($tnt_first_name);
        $tnt_last_name = $this->createElement('text', 'tnt_last_name', array('size' => 10, 'label' => 'tnt_last_name'));
        $tnt_last_name->setRequired(true);
        $this->addElement($tnt_last_name);

        $search = new Zend_Form_Element_Submit('search', array('class' => 'button'));
        $this->addElement($search);
        $search->setDecorators(array('ViewHelper'));
    }

}
