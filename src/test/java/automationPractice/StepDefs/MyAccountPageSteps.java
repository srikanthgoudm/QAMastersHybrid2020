package automationPractice.StepDefs;

import automationPractice.Pages.MyAccountPage;
import automationPractice.Utils.Utils;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.junit.Assert;

public class MyAccountPageSteps {
    MyAccountPage myAccountPage = new MyAccountPage();

    @Then("^I Should be loggedIn successfully$")
    public void verifyLogin() {
        Assert.assertEquals("My account - My Store", Utils.getPageTitle());
    }

    @And("I should be on MyAccount page")
    public void iShouldBeOnMyAccountPage() {
        Assert.assertTrue(myAccountPage.isUserOnMyAccountPage());
    }
}
