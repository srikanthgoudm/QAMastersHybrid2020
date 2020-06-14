package automationPractice.Pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class MyAccountPage extends BasePage {
    @FindBy(css = ".myaccount-link-list")
    WebElement myAccountLinks;

    public MyAccountPage() {
        PageFactory.initElements(driver,this);
    }

    public boolean isUserOnMyAccountPage() {
        return myAccountLinks.isDisplayed();
    }
}
