<?php

class Vaad_Form_Tenant extends ZendX_JQuery_Form {

    public function __construct($options = null) {
        parent::__construct($options);
        $this->setAction($options['action'])->setMethod('post');
        $id = $this->createElement('hidden', 'id');
        $this->addElement($id);
        $bld_id = $this->createElement('hidden', 'bld_id');
        $this->addElement($bld_id);
        $tnt_is_active = $this->createElement('checkbox', 'tnt_is_active', array('size' => 17, 'label' => 'tnt_is_active'));
        $this->addElement($tnt_is_active);
        $tnt_app_num = $this->createElement('select', 'tnt_app_num', array('size' => 1, 'label' => 'tnt_app_num'));
        $tbl = new Vaad_DbTable_Appartments();
        $rows = $tbl->fetchAll();
        foreach ($rows as $row) {
            $tnt_app_num->addMultiOption($row->id, $row->app_num);
        }
        $tnt_app_num->setRequired(true);
        $this->addElement($tnt_app_num);
        $tnt_first_name = $this->createElement('text', 'tnt_first_name', array('size' => 17, 'label' => 'tnt_first_name'));
        $tnt_first_name->setRequired(true);
        $this->addElement($tnt_first_name);
        $tnt_last_name = $this->createElement('text', 'tnt_last_name', array('size' => 17, 'label' => 'tnt_last_name'));
        $tnt_last_name->setRequired(true);
        $this->addElement($tnt_last_name);
        $tnt_birthday = new ZendX_JQuery_Form_Element_DatePicker('tnt_birthday');
        $tnt_birthday->setJQueryParams(array('dateFormat' => 'dd/mm/yy', 'timeFormat' => 'hh:mm:ss'));
        $tnt_birthday->setAttrib('size', '10')->setLabel('tnt_birthday')->setValue(date('d/m/Y H:i:s'));
        $this->addElement($tnt_birthday);
        $tnt_email = $this->createElement('text', 'tnt_email', array('size' => 17, 'label' => 'tnt_email'));
        $this->addElement($tnt_email);
        $tnt_app_phone = $this->createElement('text', 'tnt_app_phone', array('size' => 17, 'label' => 'tnt_app_phone'));
        $this->addElement($tnt_app_phone);
        $tnt_picture = $this->createElement('text', 'tnt_picture', array('size' => 17, 'label' => 'tnt_picture'));
        $this->addElement($tnt_picture);
        $tnt_mobile = $this->createElement('text', 'tnt_mobile', array('size' => 17, 'label' => 'tnt_mobile'));
        $this->addElement($tnt_mobile);
        $tnt_entry_date = new ZendX_JQuery_Form_Element_DatePicker('tnt_entry_date');
        $tnt_entry_date->setJQueryParams(array('dateFormat' => 'dd/mm/yy', 'timeFormat' => 'hh:mm:ss'));
        $tnt_entry_date->setAttrib('size', '10')->setLabel('tnt_entry_date')->setValue(date('d/m/Y H:i:s'));
        $this->addElement($tnt_entry_date);
        $tnt_prev_debt = new Vaad_Form_Element_Currency('tnt_prev_debt', array('size' => 17, 'label' => 'tnt_prev_debt'));
        $this->addElement($tnt_prev_debt);
        $tnt_occupation = $this->createElement('text', 'tnt_occupation', array('size' => 17, 'label' => 'tnt_occupation'));
        $this->addElement($tnt_occupation);
        $tnt_is_vaad = $this->createElement('checkbox', 'tnt_is_vaad', array('size' => 17, 'label' => 'tnt_is_vaad'));
        $this->addElement($tnt_is_vaad);
        $tnt_is_owner = $this->createElement('checkbox', 'tnt_is_owner', array('size' => 17, 'label' => 'tnt_is_owner'));
        $this->addElement($tnt_is_owner);
        $tnt_is_nbrhd_vaad = $this->createElement('checkbox', 'tnt_is_nbrhd_vaad', array('size' => 17, 'label' => 'tnt_is_nbrhd_vaad'));
        $this->addElement($tnt_is_nbrhd_vaad);
        $confdel = new Zend_Form_Element_Checkbox('confdel');
        $confdel->setDescription('<span class="confdel">אישור מחיקה</span>')
                ->setDecorators(array(
                    'ViewHelper',
                    array('Description', array('escape' => false, 'tag' => false)),
                    'Errors',
                ));
        $this->addElement($confdel);

        $save = new Zend_Form_Element_Submit('save', array('class' => 'button'));
        $this->addElement($save);
        $back = new Zend_Form_Element_Submit('back', array('class' => 'button'));
        $this->addElement($back);
        $repeat = new Zend_Form_Element_Submit('repeat', array('class' => 'button'));
        $this->addElement($repeat);
        $delete = new Zend_Form_Element_Submit('delete', array('class' => 'button'));
        $this->addElement($delete);
        $id->setDecorators(array('ViewHelper'));
        $bld_id->setDecorators(array('ViewHelper'));
        $save->setDecorators(array('ViewHelper'));
        $back->setDecorators(array('ViewHelper'));
        $repeat->setDecorators(array('ViewHelper'));
        $delete->setDecorators(array('ViewHelper'));
        $this->addDisplayGroups(array(
            'right' => array(
                'elements' => array('tnt_is_active', 'tnt_app_num', 'tnt_first_name', 'tnt_last_name',  'tnt_birthday', 'tnt_email', 'tnt_app_phone', 'tnt_picture', 'tnt_mobile', 'tnt_entry_date'),
            ),
            'left' => array(
                'elements' => array('tnt_prev_debt', 'tnt_occupation', 'tnt_is_vaad', 'tnt_is_owner',  'tnt_is_nbrhd_vaad'),
            ),
            'bottom' => array(
                'elements' => array('id', 'bld_id', 'save', 'back', 'repeat', 'delete', 'confdel'),
            ),
        ));

        $this->setDisplayGroupDecorators(array('Description', 'FormElements', 'Fieldset'));
    }

}
