package co.com.testing.saucedemo.runners;


import cucumber.api.CucumberOptions;
import cucumber.api.SnippetType;
import net.serenitybdd.cucumber.CucumberWithSerenity;
import org.junit.runner.RunWith;

@RunWith(CucumberWithSerenity.class)
@CucumberOptions (
        features = "src/test/resources/features/sauceDemo.feature",
        tags = "@stories",
        glue = "co.com.testing.saucedemo.stepdefinitions",
        snippets = SnippetType.CAMELCASE)

public class RunnerTags {
}

