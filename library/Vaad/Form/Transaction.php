<?php

class Vaad_Form_Transaction extends ZendX_JQuery_Form {

    public function __construct($options = null) {
        parent::__construct($options);
        $this->setAction($options['action'])->setMethod('post');
        $id = $this->createElement('hidden', 'id');
        $this->addElement($id);
        $bld_id = $this->createElement('hidden', 'bld_id');
        $this->addElement($bld_id);
        $acc_id = $this->createElement('select', 'acc_id', array('size' => 1, 'label' => 'acc_id'));
        
        $acc_tbl = new Vaad_DbTable_Accounts();
        $acc_rows = $acc_tbl->fetchAll();
        foreach ($acc_rows as $row) {
            $acc_id->addMultiOption($row->id, $row->acc_remarks);
        }
        
        $acc_id->setRequired(true);
        $this->addElement($acc_id);
        
        $prj_id = $this->createElement('select', 'prj_id', array('size' => 17, 'label' => 'prj_id','size' => 1));
        $prj_tbl = new Vaad_DbTable_Projects();
        $prj_rows = $prj_tbl->getAll();
        foreach ($prj_rows as $row) {
            $prj_id->addMultiOption($row->id, $row->prj_title);
        }
        
        $prj_id->setRequired(true);
        $this->addElement($prj_id);
        $trn_date = new ZendX_JQuery_Form_Element_DatePicker('trn_date');
        $trn_date->setJQueryParams(array('dateFormat' => 'dd/mm/yy', 'timeFormat' => 'hh:mm:ss'));
        $trn_date->setAttrib('size', '10')->setLabel('trn_date')->setValue(date('d/m/Y H:i:s'));
        $this->addElement($trn_date);
        $trn_amount = new Vaad_Form_Element_Currency('trn_amount', array('size' => 17, 'label' => 'trn_amount'));
        $this->addElement($trn_amount);
        $trn_debit = $this->createElement('select', 'trn_debit', array('size' => 1, 'label' => 'trn_debit'));
        $trn_debit->addMultiOption(-1,'הוצאה');
        $trn_debit->addMultiOption(1,'הכנסה');
        $this->addElement($trn_debit);
        $trn_reference = $this->createElement('text', 'trn_reference', array('size' => 17, 'label' => 'trn_reference'));
        $this->addElement($trn_reference);
        $trn_desc = $this->createElement('text', 'trn_desc', array('size' => 25, 'label' => 'trn_desc'));
        $this->addElement($trn_desc);
        
        $trn_cat = $this->createElement('select', 'trn_cat', array('size' => 17, 'label' => 'trn_cat','size'=>1));
        $cat_tbl = new Vaad_DbTable_TrnCatCodes();
        $rows = $cat_tbl->fetchAll();
        foreach ($rows as $row) {
            $trn_cat->addMultiOption($row->id, $row->code_desc);
        }   
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
                'elements' => array('trn_date','trn_desc','acc_id', 'prj_id', 'trn_cat'),
            ),
            'left' => array(
                'elements' => array('trn_debit', 'trn_amount', 'trn_reference'),
            ),
            'bottom' => array(
                'elements' => array('id', 'bld_id', 'save', 'back', 'repeat', 'delete', 'confdel'),
            ),
        ));

        $this->setDisplayGroupDecorators(array('Description', 'FormElements', 'Fieldset'));
    }

}
