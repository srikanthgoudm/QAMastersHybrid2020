package automationPractice.StepDefs;

import automationPractice.Pages.AuthenticationPage;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;


public class AuthenticationPageSteps {
    AuthenticationPage authenticationPage = new AuthenticationPage();

    @Then("^I should be on the authentication page$")
    public void verifyAuthenticationPage() {
        Assert.assertTrue(authenticationPage.isUserOnAuthenticationPage());
    }

    @Then("^I should see SignUp panel$")
    public void verifySingUpPanel() {

    }

    @When("^I Enter EmailId as (.*)$")
    public void enterEmail(String string) {

    }

    @When("^I click Create An Account Button$")
    public void selectCreateAccount() {

    }

    @Then("^I Should be on the Registration page$")
    public void verifyRegisterPage() {

    }


    @And("^I should see SignIn panel$")
    public void iShouldSeeSignInPanel() {
        Assert.assertTrue (authenticationPage.isSignInPanelShown());
    }

    @When("^I enter username as (.*), password as (.*)$")
    public void enterCredentials(String email, String password) {
        authenticationPage.enterCredentials(email,password);
    }

    @And("^I click SignIn$")
    public void clickSignIn() {
        authenticationPage.selectSignIn();
    }

    @Then("^I should not be loggedIn$")
    public void iShouldNotBeLoggedIn() {
//        Assert.assertEquals("Login - My Store", driver.getTitle());
        Assert.assertTrue (authenticationPage.isUserOnAuthenticationPage());
    }

    @And("^I should see validation message as (.*)$")
    public void iShouldSeeValidationMessageAs(String message) {
        Assert.assertEquals(message, authenticationPage.getErrorMessage());
    }
}
