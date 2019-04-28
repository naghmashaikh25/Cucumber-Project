package roboform.steps;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import roboform.Base.BaseUtils;
import roboform.pages.SingleElementDataProviding;

import static org.junit.Assert.*;


public class SingleElementSteps extends BaseUtils {

    private BaseUtils base;
    private SingleElementDataProviding pageObj;

    public SingleElementSteps(BaseUtils base) {
        this.base = base;
        this.pageObj = new SingleElementDataProviding(this.base.Driver);
    }


    @Given("I am on the Form Filler page on URL {string}")
    public void iAmOnThePageOnURL(String pageURL) {
        base.Driver.navigate().to(pageURL);
    }


    @Then("I should see {string} as Header title in Page")
    public void iShouldSeeAsHeaderTitleInPage(String headerTitleValue) {
        String pageHeaderTitleValue = this.pageObj.getHeaderTitle();
        assertEquals("Desired page is not loaded" , headerTitleValue , pageHeaderTitleValue);
    }


    @When("Open Drop down list for selecting Initials Name.")
    public void openDropDownListForSelectingInitialsName() {
        this.pageObj.openTheInitialNameDropDown();
    }


    @When("Select the Initials name from the dropdown list {string}.")
    public void selectTheInitialsNameFromTheDropdownList(String valueOfDropdownItemIndex) {
        this.pageObj.selectIndexOfInitialsNameDropDownList(valueOfDropdownItemIndex);
    }


    @And("Check the Initials name for selected value {string} and provide value for the mismatch error {string}")
    public void checkTheInitialsNameForSelectedValueAndProvideValueForTheMismatchError(String expectedValue , String errorMessage) {
        String selectedValueOfInitialsName = this.pageObj.getInitialsNameSelectedValue();
        if (errorMessage.length() == 0) {
            assertEquals(errorMessage , expectedValue , selectedValueOfInitialsName);
        } else {
            assertNotEquals(errorMessage , expectedValue , selectedValueOfInitialsName);
        }
    }


    @When("Select the Initials name via radio buttons {string}.")
    public void selectTheInitialsNameViaRadioButtons(String valueOfRadioButtonPositionIndex) {
        this.pageObj.selectInitialNameInRadioButtonWithValue(valueOfRadioButtonPositionIndex);
    }


    @And("Click on the clear button")
    public void clickOnTheClearButton() {
        this.pageObj.resetTheForm();
    }


    @When("set {string} to message text field")
    public void setToMessageTextField(String messageTextData) {
        this.pageObj.setMessageTextFieldValue(messageTextData);
    }


    @And("Message data value should be alphanumeric values")
    public void messageDataValueShouldBeAlphanumericValues() {
        String messageValue = this.pageObj.getMessageTextFieldValue();

        if (messageValue.length() != 0) {
            boolean isStringShouldBeAlphaNumeric = !this.pageObj.isHavingNumericValue(messageValue);
            assertTrue("Message value should not be alphabets/ alphanumeric", isStringShouldBeAlphaNumeric);
        }

    }


    @And("Check validation of the message data value between {string} to {string}")
    public void checkValidationOfTheMessageDataValueBetweenTo(String minimumLimit , String maximumLimit) {

        int messageTextLengthCount = this.pageObj.getMessageTextFieldValue().length();
        int valueOfMaximumLimit = Integer.parseInt(maximumLimit);
        int valueOfMinimumLimit = Integer.parseInt(minimumLimit);

        boolean calculatedValue = ((messageTextLengthCount >= valueOfMinimumLimit ) && (messageTextLengthCount < valueOfMaximumLimit)) ;
        assertTrue("Message value should be between" + minimumLimit + "to" + maximumLimit, calculatedValue);
    }


    @When("set {string} to comment text field")
    public void setToCommentTextField(String commentTextData) {
        this.pageObj.setCommentTextFieldValue(commentTextData);
    }

    @And("Comment data value should be alphanumeric values")
    public void commentDataValueShouldBeAlphanumericValues() {
        String commentValue = this.pageObj.getCommentTextFieldValue();

        if (commentValue .length() != 0) {
            boolean isStringShouldBeAlphaNumeric = !this.pageObj.isHavingNumericValue(commentValue );
            assertTrue("Message value should not be alphabets/ alphanumeric", isStringShouldBeAlphaNumeric);
        }

    }

    @And("Check validation of the Comment data value between {string} to {string}")
    public void checkValidationOfTheCommentDataValueBetweenTo(String minimumLimit , String maximumLimit) {

        int commentTextLengthCount = this.pageObj.getCommentTextFieldValue().length();
        int valueOfMinimumLimit = Integer.parseInt(minimumLimit);
        int valueOfMaximumLimit = Integer.parseInt(maximumLimit);

        boolean calculatedValue = ((commentTextLengthCount >= valueOfMinimumLimit ) && (commentTextLengthCount < valueOfMaximumLimit)) ;
        assertTrue("Comment text value should be between" + minimumLimit + "to" + maximumLimit, calculatedValue);

    }


    @When("set {string} to your comment text field")
    public void setToYourCommentTextField(String yourCommentTextData) {
        this.pageObj.setYourCommentTextFieldValue(yourCommentTextData);
    }


    @And("Your Comment data value should be alphanumeric values")
    public void yourCommentDataValueShouldBeAlphanumericValues() {
        String yourCommentValue = this.pageObj.getYourCommentTextFieldValue();

        if (yourCommentValue .length() != 0) {
            boolean isStringShouldBeAlphaNumeric = !this.pageObj.isHavingNumericValue(yourCommentValue);
            assertTrue("Message value should not be alphabets/ alphanumeric", isStringShouldBeAlphaNumeric);
        }

    }


    @And("Check validation of the Your Comment data value between {string} to {string}")
    public void checkValidationOfTheYourCommentDataValueBetweenTo(String minimumLimit , String maximumLimit) {

        int youCommentTextLengthCount = this.pageObj.getYourCommentTextFieldValue().length();
        int valueOfMinimumLimit = Integer.parseInt(minimumLimit);
        int valueOfMaximumLimit = Integer.parseInt(maximumLimit);

        boolean calculatedValue = ((youCommentTextLengthCount >= valueOfMinimumLimit ) && (youCommentTextLengthCount < valueOfMaximumLimit)) ;
        assertTrue("Comment text value should be between" + minimumLimit + "to" + maximumLimit, calculatedValue);

    }


    @When("set {string} to say It here text field")
    public void setToSayItHereTextField(String sayItHereTextData) {
        this.pageObj.setYourCommentTextFieldValue(sayItHereTextData);
    }


    @And("Say It here data value should be alphanumeric values")
    public void sayItHereDataValueShouldBeAlphanumericValues() {
        String sayItHereValue = this.pageObj.getSayItHereTextFieldValue();

        if (sayItHereValue  .length() != 0) {
            boolean isStringShouldBeAlphaNumeric = !this.pageObj.isHavingNumericValue(sayItHereValue);
            assertTrue("Message value should not be alphabets/ alphanumeric", isStringShouldBeAlphaNumeric);
        }

    }


    @And("Check validation of the Say It here data value between {string} to {string}")
    public void checkValidationOfTheSayItHereDataValueBetweenTo(String minimumLimit , String maximumLimit) {

        int sayItHereTextLengthCount = this.pageObj.getSayItHereTextFieldValue().length();
        int valueOfMinimumLimit = Integer.parseInt(minimumLimit);
        int valueOfMaximumLimit = Integer.parseInt(maximumLimit);

        boolean calculatedValue = ((sayItHereTextLengthCount >= valueOfMinimumLimit ) && (sayItHereTextLengthCount < valueOfMaximumLimit));
        assertTrue("Comment text value should be between" + minimumLimit + "to" + maximumLimit, calculatedValue);
    }


    @When("set {string} to Resume text Area")
    public void setToResumeTextArea(String resumeTextData) {
        this.pageObj.setResumeTextAreaValue(resumeTextData);
    }


    @When("Select the Marital Status in Radio button {string}.")
    public void selectTheMaritalStatusInRadioButton(String valueOfRadioButtonPositionIndex) {
        this.pageObj.selectMaritalStatusInRadioButtonWithValue(valueOfRadioButtonPositionIndex);
    }


    @When("set {string} to mark and unmark the age limit")
    public void setToMarkAndUnmarkTheAgeLimit(String valueForMarkAgeLimit) {
        this.pageObj.setChangeTheAgeLimitOnCheckbox(valueForMarkAgeLimit);
    }


    @When("set {string} to mark and unmark Advertise on home page")
    public void setToMarkAndUnmarkAdvertiseOnHomePage(String valueForMarkAdvertiseOnHome) {
        this.pageObj.setChangeTheAdvertiseHomePageCheckbox(valueForMarkAdvertiseOnHome);
    }


    @When("Open Drop down list for selecting Marital Status.")
    public void openDropDownListForSelectingMaritalStatus() {
        this.pageObj.openTheMaritalStatusDropDown();
    }


    @Then("Select the Marital Status from the dropdown list {string}.")
    public void selectTheMaritalStatusFromTheDropdownList(String valueOfDropdownItemIndex) {
        this.pageObj.selectIndexOfMaritalStatusDropDownList(valueOfDropdownItemIndex);
    }


    @Then("Check the selected value {string} and provide value for the mismatch error {string}")
    public void checkTheSelectedValueAndProvideValueForTheMismatchError(String expectedValue , String errorMessage) {
        String selectedValueOfMaritalStatus = this.pageObj.getMaritalStatusSelectedValue();

        //here we are checking that if error message is empty then apply assert for expected value should be matched
        //With ui element value
        if (errorMessage.length() == 0) {
            assertEquals(errorMessage , expectedValue , selectedValueOfMaritalStatus);
        } else {
            assertNotEquals(errorMessage , expectedValue , selectedValueOfMaritalStatus);
        }
    }


    @When("set {string} to Attitude text field")
    public void setToAttitudeTextField(String attitudeValue) {
        this.pageObj.setAttitudeTextFieldValue(attitudeValue);
    }


    @When("set {string} to My ID text field")
    public void setToMyIDTextField(String myIDValue) {
        this.pageObj.setMyIDTextFieldValue(myIDValue);
    }


    @When("Open Drop down list for selecting My Income.")
    public void openDropDownListForSelectingMyIncome() {
        this.pageObj.openIncomeDropDown();
    }


    @Then("Select the My Income from the dropdown list {string}.")
    public void selectTheMyIncomeFromTheDropdownList(String valueOfDropdownItemIndex) {
        this.pageObj.selectIndexOfIncomeDropDownList(valueOfDropdownItemIndex);
    }


    @And("Check My Income selected value {string} and provide value for the mismatch error {string}")
    public void checkMyIncomeSelectedValueAndProvideValueForTheMismatchError(String expectedValue , String errorMessage) {
        String selectedValueOfMyIncome = this.pageObj.getIncomeSelectedValue();
        if (errorMessage.length() == 0) {
            assertEquals(errorMessage , expectedValue , selectedValueOfMyIncome);
        } else {
            assertNotEquals(errorMessage , expectedValue , selectedValueOfMyIncome);
        }
    }


    @When("Select Annual Salary in Radio buttons {string}.")
    public void selectAnnualSalaryInRadioButtons(String valueOfRadioButtonPositionIndex) {
        this.pageObj.selectAnnualSalaryInRadioButtonWithValue(valueOfRadioButtonPositionIndex);
    }


}
