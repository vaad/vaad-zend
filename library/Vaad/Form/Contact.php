<?php

class Vaad_Form_Contact extends ZendX_JQuery_Form {

    public function __construct($options = null) {
        parent::__construct($options);
        $this->setAction($options['action'])->setMethod('post');
        $id = $this->createElement('hidden', 'id');
        $this->addElement($id);
        $bld_id = $this->createElement('hidden', 'bld_id');
        $this->addElement($bld_id);
        $cnt_first_name = $this->createElement('text', 'cnt_first_name', array('size' => 17, 'label' => 'cnt_first_name'));
        $this->addElement($cnt_first_name);
        $cnt_last_name = $this->createElement('text', 'cnt_last_name', array('size' => 17, 'label' => 'cnt_last_name'));
        $this->addElement($cnt_last_name);
        $cnt_phone1 = $this->createElement('text', 'cnt_phone1', array('size' => 17, 'label' => 'cnt_phone1'));
        $this->addElement($cnt_phone1);
        $cnt_phone2 = $this->createElement('text', 'cnt_phone2', array('size' => 17, 'label' => 'cnt_phone2'));
        $this->addElement($cnt_phone2);
        $cnt_address = $this->createElement('text', 'cnt_address', array('size' => 17, 'label' => 'cnt_address'));
        $this->addElement($cnt_address);
        $cnt_remarks = $this->createElement('text', 'cnt_remarks', array('size' => 17, 'label' => 'cnt_remarks'));
        $this->addElement($cnt_remarks);

        $cnt_type = $this->createElement('select', 'cnt_type', array('size' => 1, 'label' => 'cnt_type'));
        $tbl = new Vaad_DbTable_ContactCodes();
        $rows = $tbl->fetchAll();
        foreach ($rows as $row) {
            $cnt_type->addMultiOption($row->id, $row->code_desc);
        }
        $this->addElement($cnt_type);

        $cnt_email = $this->createElement('text', 'cnt_email', array('size' => 17, 'label' => 'cnt_email'));
        $this->addElement($cnt_email);
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
                'elements' => array('cnt_first_name', 'cnt_last_name', 'cnt_phone1', 'cnt_phone2', 'cnt_address'),
            ),
            'left' => array(
                'elements' => array('cnt_remarks', 'cnt_type', 'cnt_email'),
            ),
            'bottom' => array(
                'elements' => array('id', 'bld_id', 'save', 'back', 'repeat', 'delete'),
            ),
        ));

        $this->setDisplayGroupDecorators(array('Description', 'FormElements', 'Fieldset'));
    }

}
