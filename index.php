<?php
error_reporting(E_ALL);
ini_set("display_errors", 1);


// Define path to application directory
defined('APPLICATION_PATH')
|| define('APPLICATION_PATH', realpath(dirname(__FILE__) . '/application'));

// Define application environment
defined('APPLICATION_ENV')
|| define('APPLICATION_ENV', (getenv('APPLICATION_ENV') ? getenv('APPLICATION_ENV') : 'development'));

// Ensure library/ is on include_path
set_include_path(implode(PATH_SEPARATOR, array(
        realpath(APPLICATION_PATH . '/library'),
        realpath(APPLICATION_PATH . '/../ZF/library'),
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
$_ENV['TMP'] = $_SERVER['DOCUMENT_ROOT'] . '/tmp';

if (isset($_REQUEST['params'])) {
  $file = $_REQUEST['params'] . '.php';
  include_once $file;
}

Zend_Registry::set('site_id', 1);
Zend_Registry::set('bld_id', 1);


$application->bootstrap()
  ->run();

