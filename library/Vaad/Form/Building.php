<?php

class Vaad_Form_Building extends ZendX_JQuery_Form {

    public function __construct($options = null) {
        parent::__construct($options);
        $this->setAction($options['action'])->setMethod('post');
        $id = $this->createElement('hidden', 'id');
        $this->addElement($id);
        $site_id = $this->createElement('text', 'site_id', array('size' => 17, 'label' => 'site_id'));
        $site_id->setRequired(true);
        $this->addElement($site_id);
        $is_active = $this->createElement('checkbox', 'is_active', array('size' => 17, 'label' => 'is_active'));
        $is_active->setRequired(true);
        $this->addElement($is_active);
        $bld_street = $this->createElement('text', 'bld_street', array('size' => 17, 'label' => 'bld_street'));
        $bld_street->setRequired(true);
        $this->addElement($bld_street);
        $bld_num = $this->createElement('text', 'bld_num', array('size' => 17, 'label' => 'bld_num'));
        $bld_num->setRequired(true);
        $this->addElement($bld_num);
        $bld_city = $this->createElement('text', 'bld_city', array('size' => 17, 'label' => 'bld_city'));
        $bld_city->setRequired(true);
        $this->addElement($bld_city);
        $bld_zip = $this->createElement('text', 'bld_zip', array('size' => 17, 'label' => 'bld_zip'));
        $bld_zip->setRequired(true);
        $this->addElement($bld_zip);
        $bld_num_app = $this->createElement('text', 'bld_num_app', array('size' => 17, 'label' => 'bld_num_app'));
        $bld_num_app->setRequired(true);
        $this->addElement($bld_num_app);
        $bld_min_floor = $this->createElement('text', 'bld_min_floor', array('size' => 17, 'label' => 'bld_min_floor'));
        $bld_min_floor->setRequired(true);
        $this->addElement($bld_min_floor);
        $bld_max_floor = $this->createElement('text', 'bld_max_floor', array('size' => 17, 'label' => 'bld_max_floor'));
        $bld_max_floor->setRequired(true);
        $this->addElement($bld_max_floor);
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
        $save->setDecorators(array('ViewHelper'));
        $back->setDecorators(array('ViewHelper'));
        $repeat->setDecorators(array('ViewHelper'));
        $delete->setDecorators(array('ViewHelper'));
        $this->addDisplayGroups(array(
            'right' => array(
                'elements' => array('site_id', 'is_active', 'bld_street', 'bld_num', 'bld_city'),
            ),
            'left' => array(
                'elements' => array('bld_zip', 'bld_num_app', 'bld_min_floor', 'bld_max_floor'),
            ),
            'bottom' => array(
                'elements' => array('id', 'save', 'back', 'repeat', 'delete', 'confdel'),
            ),
        ));

        $this->setDisplayGroupDecorators(array('Description', 'FormElements', 'Fieldset'));
    }

}
