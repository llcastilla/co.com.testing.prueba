package co.com.testing.saucedemo.tasks;

import co.com.testing.saucedemo.userinterface.SelectProduct;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
import net.serenitybdd.screenplay.actions.Click;
import net.serenitybdd.screenplay.actions.Enter;

public class Select implements Task {
    private String strFirstName;
    private String strLastName;

    private String strPostalCode;

    public Select(String strFirstName, String strLastName, String strPostalCode) {
        this.strFirstName = strFirstName;
        this.strLastName = strLastName;
        this.strPostalCode = strPostalCode;
    }

    public static Select the(String strFirstName, String strLastName, String strPostalCode) {
        return Tasks.instrumented(Select.class, strFirstName, strLastName, strPostalCode);
    }


    @Override
    public <T extends Actor> void performAs(T actor) {
        actor.attemptsTo(Click.on(SelectProduct.BUTTON_PROD),
                Click.on(SelectProduct.BUTTON_ADD_TO_CART),
                Click.on(SelectProduct.BUTTON_GO),
                Click.on(SelectProduct.SELECT_CHECKOUT),
                Enter.theValue(strFirstName).into(SelectProduct.FIRTS_NAME),
                Enter.theValue(strLastName).into(SelectProduct.LAST_NAME),
                Enter.theValue(strPostalCode).into(SelectProduct.POSTAL_CODE),
                Click.on(SelectProduct.BUTTON_CONTINUE),
                Click.on(SelectProduct.BUTTON_FINISH)


        );
    }
}
