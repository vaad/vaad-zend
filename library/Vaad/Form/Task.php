<?php
 
 class Vaad_Form_Task extends ZendX_JQuery_Form {
 
 public function __construct($options = null) {
 parent::__construct($options);
 $this->setAction($options['action'])->setMethod('post');
 	$id = $this->createElement('hidden', 'id');
	$this->addElement($id);
	$bld_id = $this->createElement('hidden', 'bld_id');
	$this->addElement($bld_id);
	$tnt_id = $this->createElement('text', 'tnt_id', array('size' => 17, 'label' => 'tnt_id'));
	$tnt_id->setRequired(true);
	$this->addElement($tnt_id);
	$tsk_title = $this->createElement('text', 'tsk_title', array('size' => 17, 'label' => 'tsk_title'));
	$tsk_title->setRequired(true);
	$this->addElement($tsk_title);
	$tsk_details = $this->createElement('text', 'tsk_details', array('size' => 17, 'label' => 'tsk_details'));
	$tsk_details->setRequired(true);
	$this->addElement($tsk_details);
$tsk_duedate = new ZendX_JQuery_Form_Element_DatePicker('tsk_duedate');
$tsk_duedate->setJQueryParams(array( 'dateFormat' => 'dd.mm.yy', 'timeFormat' => 'hh:mm:ss'));
$tsk_duedate->setAttrib('size', '10') ->setLabel('tsk_duedate') ->setValue(date('d.m.Y H:i:s'));
	$this->addElement($tsk_duedate);
	$tsk_status = $this->createElement('text', 'tsk_status', array('size' => 17, 'label' => 'tsk_status'));
	$this->addElement($tsk_status);
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
 'elements' => array('tnt_id','tsk_title','tsk_details','tsk_duedate'),
),
 'left' => array(
 'elements' => array('tsk_status'),
),
 'bottom' => array(
 'elements' => array('id','bld_id','save','back','repeat','delete'),
),
));
 
$this->setDisplayGroupDecorators(array('Description', 'FormElements', 'Fieldset'));	
}
}
