<?php

class Vaad_Form_TicketHistor extends ZendX_JQuery_Form {

    public function __construct($options = null) {
        parent::__construct($options);
        $this->setAction($options['action'])->setMethod('post');
        $id = $this->createElement('hidden', 'id');
        $this->addElement($id);
        $tkt_id = $this->createElement('text', 'tkt_id', array('size' => 17, 'label' => 'tkt_id'));
        $tkt_id->setRequired(true);
        $this->addElement($tkt_id);
        $bld_id = $this->createElement('hidden', 'bld_id');
        $this->addElement($bld_id);
        $tnt_id = $this->createElement('text', 'tnt_id', array('size' => 17, 'label' => 'tnt_id'));
        $tnt_id->setRequired(true);
        $this->addElement($tnt_id);
        $tkh_date = new ZendX_JQuery_Form_Element_DatePicker('tkh_date');
        $tkh_date->setJQueryParams(array('dateFormat' => 'dd/mm/yy', 'timeFormat' => 'hh:mm:ss'));
        $tkh_date->setAttrib('size', '10')->setLabel('tkh_date')->setValue(date('d/m/Y H:i:s'));
        $this->addElement($tkh_date);
        $tkh_title = $this->createElement('text', 'tkh_title', array('size' => 17, 'label' => 'tkh_title'));
        $this->addElement($tkh_title);
        $tkh_desc = $this->createElement('text', 'tkh_desc', array('size' => 17, 'label' => 'tkh_desc'));
        $this->addElement($tkh_desc);
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
                'elements' => array('tkt_id', 'tnt_id', 'tkh_date', 'tkh_title'),
            ),
            'left' => array(
                'elements' => array('tkh_desc'),
            ),
            'bottom' => array(
                'elements' => array('id', 'bld_id', 'save', 'back', 'repeat', 'delete', 'confdel'),
            ),
        ));

        $this->setDisplayGroupDecorators(array('Description', 'FormElements', 'Fieldset'));
    }

}
