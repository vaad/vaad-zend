<?php

class AuthController extends Zend_Controller_Action {

    public function init() {
        /* Initialize action controller here */
    }

    private function isValid($post) {
        if (empty($post['email']))
            return false;
        if (empty($post['password']))
            return false;
        return true;
    }

    public function indexAction() {
        // action body
    }

    public function loginAction() {
        $this->view->topPageTitle = "כניסה למערכת";
        $errmsg = '';
        if ($this->getRequest()->isPost()) {
            if ($this->isValid($_POST)) {
                $data = $_POST;
                $db = Zend_Db_Table::getDefaultAdapter();
                $bld_id = Zend_Registry::get('bld_id');
                $authAdapter = new Zend_Auth_Adapter_DbTable($db, 'tenants', 'tnt_email', 'tnt_password', "? and (bld_id = $bld_id)");
                $authAdapter->setIdentity($data['email']);
                $authAdapter->setCredential(md5($data['password']));
                $authAdapter->setCredentialTreatment("? and (bld_id = $bld_id)");
                $result = $authAdapter->authenticate();
                if ($result->isValid()) {
                    $uData = $authAdapter->getResultRowObject(
                            array('id', 'tnt_is_active', 'tnt_first_name', 'tnt_last_name', 'tnt_email',
                                'tnt_is_vaad', 'tnt_is_admin'));
                    $isActive = $uData->tnt_is_active;
                    $isActive = true;
                    if ($isActive) {
                        $testSpace = new Zend_Session_Namespace('testSpace');
                        $testSpace->setExpirationSeconds(7 * 24 * 60 * 60);

                        $role = 'tenant';
                        if ($uData->tnt_is_vaad)
                            $role = 'vaad';
                        if ($uData->tnt_is_admin)
                            $role = 'admin';
                        $uData->role = $role;
                        $seconds = 60 * 60 * 24 * 7; // 7 days
                        Zend_Session::rememberMe($seconds);
                        $auth = Zend_Auth::getInstance();
                        $storage = $auth->getStorage();
                        $storage->write($uData);
                        if ($act == 'thankyou') {
                            $cont = 'index';
                            $act = 'index';
                        }
                        return $this->_redirect("/$cont/$act");
                    } else {
                        $errmsg = "מייל או סיסמא אינם נכונים. או שעדיין לא קיבלת הרשאה להיכנס מהוועד.";
                    }
                } else {
                    $errmsg = "מייל או סיסמא אינם נכונים. או שעדיין לא קיבלת הרשאה להיכנס מהוועד.";
                }
            } else {
                $errmsg = "אנא הכנס כתובת מייל וסיסמא תקפים";
            }
            echo $errmsg;
        }
    }

    public function logoutAction() {
        Zend_Auth::getInstance()->ClearIdentity();
        return $this->_redirect("/");
    }

    public function registerAction() {
        // action body
    }

    public function chngpassAction() {
        // action body
    }

}

