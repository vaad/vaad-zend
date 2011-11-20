<?php

class Vaad_Form_Transaction extends ZendX_JQuery_Form {

    public function __construct($options = null) {
        parent::__construct($options);
        $this->setAction($options['action'])->setMethod('post');
        $id = $this->createElement('hidden', 'id');
        $this->addElement($id);
        $submit = new Zend_Form_Element_Submit('submit');
        $this->addElement($submit);
        $back = new Zend_Form_Element_Submit('back');
        $this->addElement($back);
        $save = new Zend_Form_Element_Submit('save');
        $this->addElement($save);
        $delete = new Zend_Form_Element_Submit('delete');
        $this->addElement($delete);
        $bld_id = $this->createElement('hidden', 'bld_id');
        $this->addElement($bld_id);
        $submit = new Zend_Form_Element_Submit('submit');
        $this->addElement($submit);
        $back = new Zend_Form_Element_Submit('back');
        $this->addElement($back);
        $save = new Zend_Form_Element_Submit('save');
        $this->addElement($save);
        $delete = new Zend_Form_Element_Submit('delete');
        $this->addElement($delete);
        $acc_id = $this->createElement('text', 'acc_id', array('placeholder' => 'int4', 'label' => 'acc_id'));
        $this->addElement($acc_id);
        $submit = new Zend_Form_Element_Submit('submit');
        $this->addElement($submit);
        $back = new Zend_Form_Element_Submit('back');
        $this->addElement($back);
        $save = new Zend_Form_Element_Submit('save');
        $this->addElement($save);
        $delete = new Zend_Form_Element_Submit('delete');
        $this->addElement($delete);
        $prj_id = $this->createElement('text', 'prj_id', array('placeholder' => 'int4', 'label' => 'prj_id'));
        $this->addElement($prj_id);
        $submit = new Zend_Form_Element_Submit('submit');
        $this->addElement($submit);
        $back = new Zend_Form_Element_Submit('back');
        $this->addElement($back);
        $save = new Zend_Form_Element_Submit('save');
        $this->addElement($save);
        $delete = new Zend_Form_Element_Submit('delete');
        $this->addElement($delete);
        $trn_date = new ZendX_JQuery_Form_Element_DatePicker('trn_date');
        $trn_date->setJQueryParams(array(
            'dateFormat' => 'dd-mm-yy',
            'timeFormat' => 'hh:mm:ss'
        ));
        $trn_date->setAttrib('size', '10')
                ->setLabel('trn_date')
                ->setValue(date('Y-m-d H:i:s'));
        $this->addElement($trn_date);
        $submit = new Zend_Form_Element_Submit('submit');
        $this->addElement($submit);
        $back = new Zend_Form_Element_Submit('back');
        $this->addElement($back);
        $save = new Zend_Form_Element_Submit('save');
        $this->addElement($save);
        $delete = new Zend_Form_Element_Submit('delete');
        $this->addElement($delete);
        $trn_amount = new Vaad_Form_Element_Currency('trn_amount', array('label' => 'trn_amount'));
        $this->addElement($trn_amount);
        $submit = new Zend_Form_Element_Submit('submit');
        $this->addElement($submit);
        $back = new Zend_Form_Element_Submit('back');
        $this->addElement($back);
        $save = new Zend_Form_Element_Submit('save');
        $this->addElement($save);
        $delete = new Zend_Form_Element_Submit('delete');
        $this->addElement($delete);
        $trn_debit = $this->createElement('text', 'trn_debit', array('placeholder' => 'int4', 'label' => 'trn_debit'));
        $this->addElement($trn_debit);
        $submit = new Zend_Form_Element_Submit('submit');
        $this->addElement($submit);
        $back = new Zend_Form_Element_Submit('back');
        $this->addElement($back);
        $save = new Zend_Form_Element_Submit('save');
        $this->addElement($save);
        $delete = new Zend_Form_Element_Submit('delete');
        $this->addElement($delete);
        $trn_reference = $this->createElement('text', 'trn_reference', array('placeholder' => 'varchar', 'label' => 'trn_reference'));
        $this->addElement($trn_reference);
        $submit = new Zend_Form_Element_Submit('submit');
        $this->addElement($submit);
        $back = new Zend_Form_Element_Submit('back');
        $this->addElement($back);
        $save = new Zend_Form_Element_Submit('save');
        $this->addElement($save);
        $delete = new Zend_Form_Element_Submit('delete');
        $this->addElement($delete);
        $trn_desc = $this->createElement('text', 'trn_desc', array('placeholder' => 'varchar', 'label' => 'trn_desc'));
        $this->addElement($trn_desc);
        $submit = new Zend_Form_Element_Submit('submit');
        $this->addElement($submit);
        $back = new Zend_Form_Element_Submit('back');
        $this->addElement($back);
        $save = new Zend_Form_Element_Submit('save');
        $this->addElement($save);
        $delete = new Zend_Form_Element_Submit('delete');
        $this->addElement($delete);
        $trn_cat = $this->createElement('text', 'trn_cat', array('placeholder' => 'int4', 'label' => 'trn_cat'));
        $this->addElement($trn_cat);
        $submit = new Zend_Form_Element_Submit('submit');
        $this->addElement($submit);
        $back = new Zend_Form_Element_Submit('back');
        $this->addElement($back);
        $save = new Zend_Form_Element_Submit('save');
        $this->addElement($save);
        $delete = new Zend_Form_Element_Submit('delete');
        $this->addElement($delete);
        $id->setDecorators(array('ViewHelper'));
        $bld_id->setDecorators(array('ViewHelper'));
        $submit->setDecorators(array('ViewHelper'));
        $back->setDecorators(array('ViewHelper'));
        $save->setDecorators(array('ViewHelper'));
        $delete->setDecorators(array('ViewHelper'));
        $this->addDisplayGroups(array(
            'right' => array(
                'elements' => array('acc_id', 'prj_id', 'trn_date', 'trn_amount', 'trn_debit'),
            ),
            'left' => array(
                'elements' => array('trn_reference', 'trn_desc', 'trn_cat'),
            ),
            'bottom' => array(
                'elements' => array('id', 'bld_id', 'submit', 'back', 'save', 'delete'),
            ),
        ));

        $this->setDisplayGroupDecorators(array('Description', 'FormElements', 'Fieldset'));
    }

}
