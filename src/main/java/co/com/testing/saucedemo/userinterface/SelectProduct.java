package co.com.testing.saucedemo.userinterface;

import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.screenplay.targets.Target;
import org.openqa.selenium.By;

public class SelectProduct extends PageObject {

    public static final Target BUTTON_PROD =
            Target.the("seleccionar Sauce Labs Backpack")
                    .located(By.id("item_4_title_link"));

    public static final Target BUTTON_ADD_TO_CART =
            Target.the("agrega el producto al carrito")
                    .located(By.id("add-to-cart-sauce-labs-backpack"));

    public static final Target BUTTON_GO =
            Target.the("da click para ingresar al carrito")
                    .located(By.xpath("//a[@class='shopping_cart_link']"));

    public static final Target SELECT_CHECKOUT =
            Target.the("da click para buscar el curso")
                    .located(By.id("checkout"));


    // INGRESAMOS LOS DATOS AGREGAR AL CARRITO
    public static final Target FIRTS_NAME =
            Target.the("ingresamos el nombre").located(By.id("first-name"));


    public static final Target LAST_NAME =
            Target.the("ingresamos el apellido").located(By.id("last-name"));

    public static final Target POSTAL_CODE =
            Target.the("ingresamos el codigo postal").located(By.id("postal-code"));
    public static final Target BUTTON_CONTINUE =
            Target.the("click en el boton continuar").located(By.id("continue"));
    public static final Target BUTTON_FINISH =
            Target.the("click en el boton finalizar").located(By.id("finish"));

    public static final Target NAME_PRODUCT =
            Target.the("da click comparar producto")
                    .located(By.xpath("//h2[contains(text(), 'THANK YOU FOR YOUR ORDER')]"));


}
