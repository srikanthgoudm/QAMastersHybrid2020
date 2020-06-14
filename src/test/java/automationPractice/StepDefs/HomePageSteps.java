package automationPractice.StepDefs;

import automationPractice.Pages.HomePage;
import automationPractice.Utils.Utils;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import org.junit.Assert;


public class HomePageSteps {
    HomePage homePage = new HomePage();

    @Given("^I am on the homepage$")
    public void iAmOnHomePage() {
        Assert.assertTrue(homePage.isUserOnHomePage());
    }

    @When("^I select SignIn link$")
    public void selectSignInLink() {
        Utils.waitForPageLoad();
        homePage.gotoAuthenticationPage();
        //test case is executing very fast, its not waiting for the web element to perform the action
        // we need to use web driver explicit wait
    }
}
