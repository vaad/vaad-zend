<?php

class Vaad_Form_Ticket extends ZendX_JQuery_Form {

    public function __construct($options = null) {
        parent::__construct($options);
        $this->setAction($options['action'])->setMethod('post');
        $id = $this->createElement('hidden', 'id');
        $this->addElement($id);
        $bld_id = $this->createElement('hidden', 'bld_id');
        $this->addElement($bld_id);
        $tnt_id = $this->createElement('select', 'tnt_id', array('size' => 1, 'label' => 'tnt_id'));
        $tbl = new Vaad_DbTable_Tenants();
        $rows = $tbl->fetchAll();
        foreach ($rows as $row) {
            $tnt_id->addMultiOption($row->id, $row->tnt_last_name . ' ' . $row->tnt_first_name);
        }
        $tnt_id->setRequired(true);
        $this->addElement($tnt_id);

        $tkt_status = $this->createElement('select', 'tkt_status', array('size' => 1, 'label' => 'tkt_status'));
        $tbl = new Vaad_DbTable_TktCodes();
        $rows = $tbl->fetchAll();
        foreach ($rows as $row) {
            $tkt_status->addMultiOption($row->id, $row->code_desc);
        }

        $this->addElement($tkt_status);
        $tkt_opendate = new ZendX_JQuery_Form_Element_DatePicker('tkt_opendate');
        
            $tkt_opendate->setJQueryParams(array('dateFormat' => 'dd/mm/yy', 'timeFormat' => 'hh:mm:ss'));
        $tkt_opendate->setAttrib('size', '10')->setLabel('tkt_opendate')->setValue(date('d/m/Y H:i:s'));
        
        $this->addElement($tkt_opendate);
        $tkt_title = $this->createElement('text', 'tkt_title', array('size' => 17, 'label' => 'tkt_title'));
        $tkt_title->setRequired(true);
        $this->addElement($tkt_title);
        $tkt_eta = new ZendX_JQuery_Form_Element_DatePicker('tkt_eta');
        $tkt_eta->setJQueryParams(array('dateFormat' => 'dd/mm/yy', 'timeFormat' => 'hh:mm:ss'));
        $tkt_eta->setAttrib('size', '10')->setLabel('tkt_eta')->setValue(date('d/m/Y H:i:s'));
        $this->addElement($tkt_eta);
        $tkt_closedate = $this->createElement('text', 'tkt_closedate', array('size' => 17, 'label' => 'tkt_closedate'));
        $this->addElement($tkt_closedate);
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
                'elements' => array('tkt_title', 'tnt_id', 'tkt_status',),
            ),
            'left' => array(
                'elements' => array('tkt_opendate', 'tkt_eta', 'tkt_closedate'),
            ),
            'bottom' => array(
                'elements' => array('id', 'bld_id', 'save', 'back', 'repeat', 'delete'),
            ),
        ));

        $this->setDisplayGroupDecorators(array('Description', 'FormElements', 'Fieldset'));
    }

}
