package StepDefinitions;

import Pages.DialogContent;
import Utility.GWD;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class LoginSteps {
    DialogContent dc=new DialogContent();

    @Given("Navigate to Campus")
    public void navigateToCampus() {
        GWD.getDriver().get("https://test.mersys.io/");
    }

    @When("Enter username and password and click login button")
    public void enterUsernameAndPasswordAndClickLoginButton() {
        dc.sendkeysFunc(dc.username, "turkeyts");
        dc.sendkeysFunc(dc.password,"TechnoStudy123");
        dc.clickFunc(dc.loginButton);
    }

    @Then("User should login successfully")
    public void userShouldLoginSuccessfully() {
        dc.verifyContainsTextFunction(dc.txtTechnoStudy,"Techno Study");
    }
}
