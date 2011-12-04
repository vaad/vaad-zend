<?php

// Define path to application directory
defined('APPLICATION_PATH')
        || define('APPLICATION_PATH', realpath(dirname(__FILE__) . '/application'));

// Define application environment
defined('APPLICATION_ENV')
        || define('APPLICATION_ENV', (getenv('APPLICATION_ENV') ? getenv('APPLICATION_ENV') : 'production'));

// Ensure library/ is on include_path
set_include_path(implode(PATH_SEPARATOR, array(
            realpath(APPLICATION_PATH . '/library'),
            realpath(APPLICATION_PATH . '/../../ZF/library'),
            get_include_path(),
        )));

/** Zend_Application */
require_once 'Zend/Application.php';

// Create application, bootstrap, and run
$application = new Zend_Application(
                APPLICATION_ENV,
                APPLICATION_PATH . '/configs/application.ini'
);

$db = new Zend_Db_Adapter_Pdo_Pgsql(array(
            'username' => 'mainvaadbait_il_com',
            'password' => 'Eli#Vaadim68',
            'dbname' => 'mainvaadbait_il_com'
        ));

Zend_Db_Table_Abstract::setDefaultAdapter($db);


$tbls = $db->listTables();

function createFile($tbl, $cols) {
	$name = str_replace(' ', '', ucwords(str_replace('_', ' ', $tbl)));
	$tblname = substr($name, 0, -1);
	$file = "<?php\n \n class Vaad_Form_$tblname extends ZendX_JQuery_Form {\n \n public function __construct(\$options = null) {\n parent::__construct(\$options);\n \$this->setAction(\$options['action'])->setMethod('post');\n ";

	foreach ($cols as $col) {
		//var_dump($col); 
		$name = $col['COLUMN_NAME'];
		$type = $col['DATA_TYPE'];
		$nallable = true;
		if (isset($col['NULLABLE'])) {
						$nullable = $col['NULLABLE'];
		}
		$type_orig = $type;
		//$len = $col['LENGTH'];
		$type = 'text';
		if ($type_orig == 'bool') $type = 'checkbox';
		if ($type_orig == 'date') {
			$flds = "\$$name = new ZendX_JQuery_Form_Element_DatePicker('$name');\n";
			$flds = $flds . "\$${name}->setJQueryParams(array( 'dateFormat' => 'dd/mm/yy', 'timeFormat' => 'hh:mm:ss'));\n";
			$flds = $flds . "\$${name}->setAttrib('size', '10') ->setLabel('$name') ->setValue(date('d/m/Y H:i:s'));\n";
		} elseif ($type_orig == 'float8') {
			$flds = "\$$name = new Vaad_Form_Element_Currency('$name', array('size' => 17, 'label' => '$name'));\n";
		} else  {
						if (($name == 'id') or ($name == 'bld_id')) { $type = 'hidden';
										$flds = "\t\$$name = \$this->createElement('$type', '$name');\n";
						} else {
										$flds = "\t\$$name = \$this->createElement('$type', '$name', array('size' => 17, 'label' => '$name'));\n";
										if (! $nullable ) {
														$flds = $flds . "\t\$${name}->setRequired(true);\n";	
										}
						}
		}
		$flds = $flds . "\t\$this->addElement(\$$name);\n";

		$file = $file . $flds;

	}

	$sub = "\n";
	$btns = array('save','back','repeat', 'delete');
	foreach ($btns as $btn) {
		$sub = $sub . "\$$btn = new Zend_Form_Element_Submit('$btn', array('class' => 'button'));\n";
		$sub = $sub . "\$this->addElement(\$$btn);\n";
	}

	$conf = "\$confdel = new Zend_Form_Element_Checkbox('confdel');" . PHP_EOL ;
	$conf = $conf . "\$confdel->setDescription('<span class=\"confdel\">אישור מחיקה</span>')\n";
	$conf = $conf . "->setDecorators(array(\n";
	$conf = $conf . "'ViewHelper',\n";
	$conf = $conf . "array('Description', array('escape' => false, 'tag' => false)),\n";
	$conf = $conf . "'Errors',\n";
	$conf = $conf . "));\n";
	$conf = $conf . "\$this->addElement(\$confdel);\n";

	$file = $file . $conf; 

	$file = $file . $sub;


	$cnt = count($cols) / 2;

	$ii = 0;
	$lefts = array(); $rights = array(); $bottoms = array();
	foreach ($cols as $col) {
		$name = $col['COLUMN_NAME'];
		if (($name == 'id') or ($name == 'bld_id')) {
			$bottoms[] = "'$name'";
		} else {
			if ($ii < $cnt) $rights[] = "'$name'"; else $lefts[] = "'$name'";
			$ii++;
		}
	}

	foreach ($btns as $btn) {
		$bottoms[] = "'$btn'";
	}

	foreach ($bottoms as $btn) {
		$b = preg_replace("[\']" , "", $btn);
		$file = $file . "\$${b}->setDecorators(array('ViewHelper'));\n";
	}

$bottoms[] = "'confdel'";
	$left = implode(',', $lefts);
	$right = implode(',', $rights);
	$bottom = implode(',', $bottoms);

	$fldset = "\$this->addDisplayGroups(array(\n 'right' => array(\n 'elements' => array($right),\n),\n 'left' => array(\n 'elements' => array($left),\n),\n 'bottom' => array(\n 'elements' => array($bottom),\n),\n));\n ";

	$fldset_decor = "\n\$this->setDisplayGroupDecorators(array('Description', 'FormElements', 'Fieldset'));";
	$file = $file . $fldset . $fldset_decor . "\t\n}\n}\n";

	$filename = "../vaad/library/Vaad/Form/$tblname.php";

	$handle = fopen($filename, "w");
	fwrite($handle, $file);
	//echo $file;
	echo "\n$filename\n";
}

$reqtbl = $argv[1] or '';
foreach ($tbls as $tbl) {
	$cols = $db->describeTable($tbl);
	if ($tbl == $reqtbl) createFile($tbl, $cols);
}

