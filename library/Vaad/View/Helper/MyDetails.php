<?php

class Vaad_View_Helper_MyDetails extends Zend_View_Helper_Abstract {

    public function mydetails() {

        $html = "<div class = 'box can-hide span-4'>"
                . "<div class = 'span-4'><div class='content'>"
        ;

        $auth = Zend_Auth::getInstance();
        if ($auth->hasIdentity()) {
            $identity = $auth->getIdentity();
            $role = strtolower($identity->role);
            $me = $identity->tnt_last_name . ' ' . $identity->tnt_first_name;
            $id = $identity->id;
            $logout = "<a href='/logout'> התנתק</a>";
            $msg = "שלום " . "<a href='/tenants/view/$id'>$me</a>" . " $logout";
            $html = $html . "$msg </div></div></div>";
            return $html;
        }

        $html = $html . "<h4> כניסה למערכת</h4>";
        $html = $html . "<form action=\"/login\" method='post'>"
                //. "<label>כתובת דואר</label>"
                . "<input name='email' type = 'text' placeholder='כתובת מייל' size='15' />"
                //. "<label>סיסמא</label>"
                . " <input  name='password' type = 'password' placeholder='סיסמא' size='15' />"
                . "<input type=\"submit\" name=\"submit\" id=\"submit\" value=\"הכנס\" class=\"submit\" />"
                . " <input type=\"submit\" name=\"register\" id=\"register\" value=\"הרשם\" class=\"submit\" />"
                . "</form>";


        $html = $html . "</div></div></div>";

        return $html;
    }

}

?>