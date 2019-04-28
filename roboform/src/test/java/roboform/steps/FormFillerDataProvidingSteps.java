package roboform.steps;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import roboform.Base.BaseUtils;
import roboform.pages.SingleElementDataProviding;

public class FormFillerDataProvidingSteps extends BaseUtils {

    private BaseUtils base;
    private SingleElementDataProviding pageObj;

    public FormFillerDataProvidingSteps(BaseUtils base) {
        this.base = base;
        this.pageObj = new SingleElementDataProviding(this.base.Driver);
    }

    @Given("User on the Form Filler page with URL {string}")
    public void userOnTheFormFillerPageWithURL(String pageURL) {
        base.Driver.navigate().to(pageURL);
    }


    @Then("User should see {string} as Header title in Page")
    public void userShouldSeeAsHeaderTitleInPage(String arg0) {

    }
}
