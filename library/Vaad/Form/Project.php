<?php

class Vaad_Form_Project extends ZendX_JQuery_Form {

    public function __construct($options = null) {
        parent::__construct($options);
        $this->setAction($options['action'])->setMethod('post');
        $id = $this->createElement('hidden', 'id');
        $this->addElement($id);
        $bld_id = $this->createElement('hidden', 'bld_id');
        $this->addElement($bld_id);
        $prj_title = $this->createElement('text', 'prj_title', array('size' => 17, 'label' => 'prj_title'));
        $this->addElement($prj_title);
        $prj_desc = $this->createElement('text', 'prj_desc', array('size' => 17, 'label' => 'prj_desc'));
        $this->addElement($prj_desc);
        $prj_approx_cost = new Vaad_Form_Element_Currency('prj_approx_cost', array('size' => 17, 'label' => 'prj_approx_cost'));
        $this->addElement($prj_approx_cost);
        $prj_actual_cost = new Vaad_Form_Element_Currency('prj_actual_cost', array('size' => 17, 'label' => 'prj_actual_cost'));
        $this->addElement($prj_actual_cost);
        $prj_approx_start_date = new ZendX_JQuery_Form_Element_DatePicker('prj_approx_start_date');
        $prj_approx_start_date->setJQueryParams(array('dateFormat' => 'dd/mm/yy', 'timeFormat' => 'hh:mm:ss'));
        $prj_approx_start_date->setAttrib('size', '10')->setLabel('prj_approx_start_date')->setValue(date('d/m/Y H:i:s'));
        $this->addElement($prj_approx_start_date);
        $prj_actual_start_date = new ZendX_JQuery_Form_Element_DatePicker('prj_actual_start_date');
        $prj_actual_start_date->setJQueryParams(array('dateFormat' => 'dd/mm/yy', 'timeFormat' => 'hh:mm:ss'));
        $prj_actual_start_date->setAttrib('size', '10')->setLabel('prj_actual_start_date')->setValue(date('d/m/Y H:i:s'));
        $this->addElement($prj_actual_start_date);
        $prj_approx_end_date = new ZendX_JQuery_Form_Element_DatePicker('prj_approx_end_date');
        $prj_approx_end_date->setJQueryParams(array('dateFormat' => 'dd/mm/yy', 'timeFormat' => 'hh:mm:ss'));
        $prj_approx_end_date->setAttrib('size', '10')->setLabel('prj_approx_end_date')->setValue(date('d/m/Y H:i:s'));
        $this->addElement($prj_approx_end_date);
        $prj_actual_end_date = new ZendX_JQuery_Form_Element_DatePicker('prj_actual_end_date');
        $prj_actual_end_date->setJQueryParams(array('dateFormat' => 'dd/mm/yy', 'timeFormat' => 'hh:mm:ss'));
        $prj_actual_end_date->setAttrib('size', '10')->setLabel('prj_actual_end_date')->setValue(date('d/m/Y H:i:s'));
        $this->addElement($prj_actual_end_date);
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
                'elements' => array('prj_title', 'prj_desc', 'prj_approx_cost', 'prj_actual_cost',),
            ),
            'left' => array(
                'elements' => array('prj_approx_start_date', 'prj_actual_start_date', 'prj_approx_end_date', 'prj_actual_end_date'),
            ),
            'bottom' => array(
                'elements' => array('id', 'bld_id', 'save', 'back', 'repeat', 'delete', 'confdel'),
            ),
        ));

        $this->setDisplayGroupDecorators(array('Description', 'FormElements', 'Fieldset'));
    }

}
