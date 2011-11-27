<?php

class Vaad_Form_Transaction extends ZendX_JQuery_Form {

    public function __construct($options = null) {
        parent::__construct($options);
        $this->setAction($options['action'])->setMethod('post');
        $id = $this->createElement('hidden', 'id');
        $this->addElement($id);
        $bld_id = $this->createElement('hidden', 'bld_id');
        $this->addElement($bld_id);
        $acc_id = $this->createElement('text', 'acc_id', array('size' => 17, 'label' => 'acc_id'));
        $acc_id->setRequired(true);
        $this->addElement($acc_id);
        $prj_id = $this->createElement('text', 'prj_id', array('size' => 17, 'label' => 'prj_id'));
        $prj_id->setRequired(true);
        $this->addElement($prj_id);
        $trn_date = new ZendX_JQuery_Form_Element_DatePicker('trn_date');
        $trn_date->setJQueryParams(array('dateFormat' => 'dd/mm/yy', 'timeFormat' => 'hh:mm:ss'));
        $trn_date->setAttrib('size', '10')->setLabel('trn_date')->setValue(date('d/m/Y H:i:s'));
        $this->addElement($trn_date);
        $trn_amount = new Vaad_Form_Element_Currency('trn_amount', array('size' => 17, 'label' => 'trn_amount'));
        $this->addElement($trn_amount);
        $trn_debit = $this->createElement('text', 'trn_debit', array('size' => 17, 'label' => 'trn_debit'));
        $this->addElement($trn_debit);
        $trn_reference = $this->createElement('text', 'trn_reference', array('size' => 17, 'label' => 'trn_reference'));
        $this->addElement($trn_reference);
        $trn_desc = $this->createElement('text', 'trn_desc', array('size' => 17, 'label' => 'trn_desc'));
        $this->addElement($trn_desc);
        $trn_cat = $this->createElement('text', 'trn_cat', array('size' => 17, 'label' => 'trn_cat'));
        $this->addElement($trn_cat);
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
                'elements' => array('acc_id', 'prj_id', 'trn_date', 'trn_amount', 'trn_debit'),
            ),
            'left' => array(
                'elements' => array('trn_reference', 'trn_desc', 'trn_cat'),
            ),
            'bottom' => array(
                'elements' => array('id', 'bld_id', 'save', 'back', 'repeat', 'delete', 'confdel'),
            ),
        ));

        $this->setDisplayGroupDecorators(array('Description', 'FormElements', 'Fieldset'));
    }

}
