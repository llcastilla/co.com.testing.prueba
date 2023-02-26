package co.com.testing.saucedemo.stepdefinitions;

import co.com.testing.saucedemo.model.SauceDemoData;
import co.com.testing.saucedemo.questions.Answer;
import co.com.testing.saucedemo.tasks.Login;
import co.com.testing.saucedemo.tasks.OpenUp;
import co.com.testing.saucedemo.tasks.Select;
import cucumber.api.java.Before;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import net.serenitybdd.screenplay.GivenWhenThen;
import net.serenitybdd.screenplay.actors.OnStage;
import net.serenitybdd.screenplay.actors.OnlineCast;

import java.util.List;


public class SauceDemoStepDefintions {

    @Before

    public void setStages() {
        OnStage.setTheStage(new OnlineCast());
    }


    @Given("^que Brandon quiere aprender automatización con saucedemo$")
    public void queBrandonQuiereAprenderAutomatizaciónConSaucedemo(List<SauceDemoData> sauceDemoData) throws Exception {
        OnStage.theActorCalled("Brandon").wasAbleTo(OpenUp.thePage(), (Login.OnThePage(sauceDemoData.get(0).getStrUser(), sauceDemoData.get(0).getStrPassword())));
    }

    @When("^busca el producto que quiere comprar$")
    public void buscaElProductoQueQuiereComprar(List<SauceDemoData> sauceDemoData) throws Exception {
        OnStage.theActorInTheSpotlight().attemptsTo(Select.the(sauceDemoData.get(0).getStrFirstName(), sauceDemoData.get(0).getStrLastName(), sauceDemoData.get(0).getStrPostalCode()));
    }

    @Then("^finaliza la compra$")
    public void finalizaLaCompra(List<SauceDemoData> sauceDemoData) throws Exception {
        OnStage.theActorInTheSpotlight().should(GivenWhenThen.seeThat(Answer.toThe(sauceDemoData.get(0).getStrProduct())));
    }

}
