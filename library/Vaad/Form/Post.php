<?php
 
 class Vaad_Form_Post extends ZendX_JQuery_Form {
 
 public function __construct($options = null) {
 parent::__construct($options);
 $this->setAction($options['action'])->setMethod('post');
 	$id = $this->createElement('hidden', 'id');
	$this->addElement($id);
	$bld_id = $this->createElement('hidden', 'bld_id');
	$this->addElement($bld_id);
	$author_id = $this->createElement('text', 'author_id', array('size' => 17, 'label' => 'author_id'));
	$author_id->setRequired(true);
	$this->addElement($author_id);
	$pst_status = $this->createElement('text', 'pst_status', array('size' => 17, 'label' => 'pst_status'));
	$pst_status->setRequired(true);
	$this->addElement($pst_status);
	$title = $this->createElement('text', 'title', array('size' => 17, 'label' => 'title'));
	$title->setRequired(true);
	$this->addElement($title);
	$content_txt = $this->createElement('text', 'content_txt', array('size' => 17, 'label' => 'content_txt'));
	$content_txt->setRequired(true);
	$this->addElement($content_txt);
	$pst_picture = $this->createElement('text', 'pst_picture', array('size' => 17, 'label' => 'pst_picture'));
	$this->addElement($pst_picture);
	$create_time = $this->createElement('text', 'create_time', array('size' => 17, 'label' => 'create_time'));
	$this->addElement($create_time);
	$update_time = $this->createElement('text', 'update_time', array('size' => 17, 'label' => 'update_time'));
	$this->addElement($update_time);
	$forum_id = $this->createElement('text', 'forum_id', array('size' => 17, 'label' => 'forum_id'));
	$this->addElement($forum_id);
	$adding_comments = $this->createElement('checkbox', 'adding_comments', array('size' => 17, 'label' => 'adding_comments'));
	$adding_comments->setRequired(true);
	$this->addElement($adding_comments);
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
 'elements' => array('author_id','pst_status','title','content_txt','pst_picture','create_time'),
),
 'left' => array(
 'elements' => array('update_time','forum_id','adding_comments'),
),
 'bottom' => array(
 'elements' => array('id','bld_id','save','back','repeat','delete','confdel'),
),
));
 
$this->setDisplayGroupDecorators(array('Description', 'FormElements', 'Fieldset'));	
}
}
