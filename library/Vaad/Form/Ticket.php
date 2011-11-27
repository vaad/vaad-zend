<?php
 
 class Vaad_Form_Ticket extends ZendX_JQuery_Form {
 
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
	$tkt_status = $this->createElement('text', 'tkt_status', array('size' => 17, 'label' => 'tkt_status'));
	$this->addElement($tkt_status);
	$tkt_opendate = $this->createElement('text', 'tkt_opendate', array('size' => 17, 'label' => 'tkt_opendate'));
	$this->addElement($tkt_opendate);
	$tkt_title = $this->createElement('text', 'tkt_title', array('size' => 17, 'label' => 'tkt_title'));
	$tkt_title->setRequired(true);
	$this->addElement($tkt_title);
$tkt_eta = new ZendX_JQuery_Form_Element_DatePicker('tkt_eta');
$tkt_eta->setJQueryParams(array( 'dateFormat' => 'dd/mm/yy', 'timeFormat' => 'hh:mm:ss'));
$tkt_eta->setAttrib('size', '10') ->setLabel('tkt_eta') ->setValue(date('d/m/Y H:i:s'));
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
 'elements' => array('tnt_id','tkt_status','tkt_opendate','tkt_title'),
),
 'left' => array(
 'elements' => array('tkt_eta','tkt_closedate'),
),
 'bottom' => array(
 'elements' => array('id','bld_id','save','back','repeat','delete'),
),
));
 
$this->setDisplayGroupDecorators(array('Description', 'FormElements', 'Fieldset'));	
}
}
