package co.com.testing.saucedemo.userinterface;

import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.screenplay.targets.Target;
import org.openqa.selenium.By;


public class LoginPage extends PageObject {


    public static final Target INPUT_USER =
            Target.the("where do we write the user").located(By.id("user-name"));
    public static final Target INPUT_PASSWORD =
            Target.the("where do we write the password").located(By.id("password"));
    public static final Target ENTER_BUTTON =
            Target.the("button to confirm login").located(By.id("login-button"));
}
