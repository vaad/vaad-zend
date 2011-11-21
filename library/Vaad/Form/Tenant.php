<?php

class Vaad_Form_Tenant extends ZendX_JQuery_Form {

    public function __construct($options = null) {
        parent::__construct($options);
        $this->setAction($options['action'])->setMethod('post');
        $id = new Zend_Form_Element_Hidden('id');

        $bld_id = new Zend_Form_Element_Hidden('bld_id');

        $tnt_is_active = new Zend_Form_Element_Checkbox('tnt_is_active');
        $tnt_is_active->setLabel('tnt_is_active')
                ->setOptions(array('size' => '1'));

        $tnt_app_num = new Zend_Form_Element_Text('tnt_app_num');
        $tnt_app_num->setLabel('tnt_app_num')
                ->setOptions(array('size' => '5'))
                ->setRequired(true);

        $tnt_first_name = new Zend_Form_Element_Text('tnt_first_name');
        $tnt_first_name->setLabel('tnt_first_name')
                ->setOptions(array('size' => '12'))
                ->setRequired(true);

        $tnt_last_name = new Zend_Form_Element_Text('tnt_last_name');
        $tnt_last_name->setLabel('tnt_last_name')
                ->setOptions(array('size' => '12'))
                ->setRequired(true);

        $tnt_password = new Zend_Form_Element_Text('tnt_password');
        $tnt_password->setLabel('tnt_password')
                ->setOptions(array('size' => '12'));

        $tnt_birthday = new ZendX_JQuery_Form_Element_DatePicker('tnt_birthday');
        $tnt_birthday->setJQueryParam('dateFormat', 'dd.mm.yy');

        $tnt_birthday->setLabel('tnt_birthday')
                ->setOptions(array('size' => '10'));

        $tnt_email = new Zend_Form_Element_Text('tnt_email');
        $tnt_email->setLabel('tnt_email')
                ->setOptions(array('size' => '12'));

        $tnt_app_phone = new Zend_Form_Element_Text('tnt_app_phone');
        $tnt_app_phone->setLabel('tnt_app_phone')
                ->setOptions(array('size' => '12'));

        $tnt_picture = new Zend_Form_Element_Text('tnt_picture');
        $tnt_picture->setLabel('tnt_picture')
                ->setOptions(array('size' => '12'));

        $tnt_mobile = new Zend_Form_Element_Text('tnt_mobile');
        $tnt_mobile->setLabel('tnt_mobile')
                ->setOptions(array('size' => '12'));

        $tnt_entry_date = new ZendX_JQuery_Form_Element_DatePicker('tnt_entry_date');
        $tnt_entry_date->setJQueryParam('dateFormat', 'dd.mm.yy');
        ;
        $tnt_entry_date->setLabel('tnt_entry_date')
                ->setOptions(array('size' => '10'));

        $tnt_prev_debt = new Zend_Form_Element_Text('tnt_prev_debt');
        $tnt_prev_debt->setLabel('tnt_prev_debt')
                ->setOptions(array('size' => '10'));

        $tnt_occupation = new Zend_Form_Element_Text('tnt_occupation');
        $tnt_occupation->setLabel('tnt_occupation')
                ->setOptions(array('size' => '12'));

        $tnt_is_vaad = new Zend_Form_Element_Checkbox('tnt_is_vaad');
        $tnt_is_vaad->setLabel('tnt_is_vaad')
                ->setOptions(array('size' => '1'));

        $tnt_is_owner = new Zend_Form_Element_Checkbox('tnt_is_owner');
        $tnt_is_owner->setLabel('tnt_is_owner')
                ->setOptions(array('size' => '1'));

        $tnt_is_site_vaad = new Zend_Form_Element_Checkbox('tnt_is_site_vaad');
        $tnt_is_site_vaad->setLabel('tnt_is_site_vaad')
                ->setOptions(array('size' => '1'));

        $tnt_is_nbrhd_vaad = new Zend_Form_Element_Checkbox('tnt_is_nbrhd_vaad');
        $tnt_is_nbrhd_vaad->setLabel('tnt_is_nbrhd_vaad')
                ->setOptions(array('size' => '1'));

        $tnt_is_city_vaad = new Zend_Form_Element_Checkbox('tnt_is_city_vaad');
        $tnt_is_city_vaad->setLabel('tnt_is_city_vaad')
                ->setOptions(array('size' => '1'));

        $tnt_is_admin = new Zend_Form_Element_Checkbox('tnt_is_admin');
        $tnt_is_admin->setLabel('tnt_is_admin')
                ->setOptions(array('size' => '1'));

        $submit = $this->createElement('submit', 'submit', array(
            'label' => 'save', 'class' => 'submit'));
        $back = $this->createElement('submit', 'back', array(
            'label' => 'back', 'class' => 'submit'));
        $this->addElement($id)
                ->addElement($bld_id)
                ->addElement($tnt_is_active)
                ->addElement($tnt_app_num)
                ->addElement($tnt_first_name)
                ->addElement($tnt_last_name)
                ->addElement($tnt_password)
                ->addElement($tnt_birthday)
                ->addElement($tnt_email)
                ->addElement($tnt_app_phone)
                ->addElement($tnt_picture)
                ->addElement($tnt_mobile)
                ->addElement($tnt_entry_date)
                ->addElement($tnt_prev_debt)
                ->addElement($tnt_occupation)
                ->addElement($tnt_is_vaad)
                ->addElement($tnt_is_owner)
                ->addElement($back)
                ->addElement($submit);

        $this->addDisplayGroups(array(
            'right' => array(
                'elements' => array('tnt_is_active', 'tnt_app_num', 'tnt_first_name', 'tnt_last_name', 'tnt_password', 'tnt_birthday', 'tnt_email', 'tnt_app_phone', 'tnt_picture'),
            ),
            'left' => array(
                'elements' => array('tnt_mobile', 'tnt_entry_date', 'tnt_prev_debt', 'tnt_occupation', 'tnt_is_vaad', 'tnt_is_owner','tnt_is_city_vaad'),
            ),
            'bottom' => array(
                'elements' => array('submit', 'back', 'id', 'bld_id'),
            )
        ));

        $this->setDisplayGroupDecorators(array('Description', 'FormElements', 'Fieldset'));
    }

}
