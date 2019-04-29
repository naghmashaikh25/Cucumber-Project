package roboform.steps;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import cucumber.api.java.en_scouse.An;
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


    @And("Select the Initials name from the dropdown list {string}.")
    public void selectTheInitialsNameFromTheDropdownList(String valueOfDropdownItemIndex) {
        this.pageObj.selectIndexOfInitialsNameDropDownList(valueOfDropdownItemIndex);
    }


    @Then("Check the Initials name for selected value {string} and provide value for the mismatch error {string}")
    public void checkTheInitialsNameForSelectedValueAndProvideValueForTheMismatchError(String expectedValue , String errorMessage) {
        String selectedValueOfInitialsName = this.pageObj.getInitialsNameSelectedValue();
        if (errorMessage.length() == 0) {
            assertEquals(errorMessage , expectedValue , selectedValueOfInitialsName);
        } else {
            assertNotEquals(errorMessage , expectedValue , selectedValueOfInitialsName);
        }
    }

    @When("Click on the clear button")
    public void clickOnTheClearButton() {
        this.pageObj.resetTheForm();
    }


    @When("Select the Initials name via radio buttons {string}.")
    public void selectTheInitialsNameViaRadioButtons(String valueOfRadioButtonPositionIndex) {
        this.pageObj.selectInitialNameInRadioButtonWithValue(valueOfRadioButtonPositionIndex);
    }


    @When("set {string} to message text field")
    public void setToMessageTextField(String messageTextData) {
        this.pageObj.setMessageTextFieldValue(messageTextData);
    }


    @Then("Check the Message text value existence otherwise then the error {string}")
    public void checkTheMessageTextValueExistenceOtherwiseThenTheError(String errorText) {
        String messageValue = this.pageObj.getMessageTextFieldValue();
        assertNotEquals("The value get from the Message text field is empty", messageValue.length(), 0);
    }


    @And("Message data value should not be only numeric values")
    public void messageDataValueShouldNotBeOnlyNumericValues() {
        String messageValue = this.pageObj.getMessageTextFieldValue();

        if (messageValue.length() != 0) {
            boolean isStringShouldBeAlphaNumeric = !this.pageObj.isHavingNumericValue(messageValue);
            assertTrue("Message value should not be only numeric text", isStringShouldBeAlphaNumeric);
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


    @Then("Check the Comment text value existence otherwise then the error {string}")
    public void checkTheCommentTextValueExistenceOtherwiseThenTheError(String errorText) {
        String commentValue = this.pageObj.getCommentTextFieldValue();
        assertNotEquals("The value get from the Comment text field is empty", commentValue.length(), 0);
    }


    @And("Comment data value should not be only numeric values")
    public void commentDataValueShouldNotBeOnlyNumericValues() {
        String commentValue = this.pageObj.getCommentTextFieldValue();

        if (commentValue.length() != 0) {
            boolean isStringShouldBeAlphaNumeric = !this.pageObj.isHavingNumericValue(commentValue );
            assertTrue("Message value should not be only numeric text", isStringShouldBeAlphaNumeric);
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


    @Then("Check the your comment text value existence otherwise then the error {string}")
    public void checkTheYourCommentTextValueExistenceOtherwiseThenTheError(String errorText) {
        String yourCommentValue = this.pageObj.getYourCommentTextFieldValue();
        assertNotEquals("The value get from the Your Comment text field is empty", yourCommentValue.length(), 0);
    }


    @And("Your Comment data value should not be only numeric values")
    public void yourCommentDataValueShouldNotBeOnlyNumericValues() {
        String yourCommentValue = this.pageObj.getYourCommentTextFieldValue();

        if (yourCommentValue.length() != 0) {
            boolean isStringShouldBeAlphaNumeric = !this.pageObj.isHavingNumericValue(yourCommentValue);
            assertTrue("Message value should not be only numeric text", isStringShouldBeAlphaNumeric);
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
        this.pageObj.setSayItHereTextFieldValue(sayItHereTextData);
    }


    @Then("Check the say It here text value existence otherwise then the error {string}")
    public void checkTheSayItHereTextValueExistenceOtherwiseThenTheError(String errorText) {
        String sayItHereValue = this.pageObj.getSayItHereTextFieldValue();
        assertNotEquals("The value get from the Your Comment text field is empty", sayItHereValue.length(), 0);
    }


    @And("Say It here data value should not be only numeric values")
    public void sayItHereDataValueShouldNotBeOnlyNumericValues() {
        String sayItHereValue = this.pageObj.getSayItHereTextFieldValue();

        if (sayItHereValue.length() != 0) {
            boolean isStringShouldBeAlphaNumeric = !this.pageObj.isHavingNumericValue(sayItHereValue);
            assertTrue("Message value should not be only numeric text", isStringShouldBeAlphaNumeric);
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


    @Then("Check the Resume text value existence otherwise then the error {string}")
    public void checkTheResumeTextValueExistenceOtherwiseThenTheError(String errorText) {
        String resumeTextValue = this.pageObj.getResumeTextAreaValue();
        assertNotEquals("The value get from the Resume text Area is empty", resumeTextValue.length(), 0);
    }

    @And("Resume text field should have some string value")
    public void resumeTextFieldShouldHaveSomeStringValue() {
        assertNotNull("Resume filed should be empty", this.pageObj.getResumeTextAreaValue());
    }

    @And("Resume text data value should not be only numeric values")
    public void resumeTextDataValueShouldNotBeOnlyNumericValues() {
        String sayItHereValue = this.pageObj.getResumeTextAreaValue();

        if (sayItHereValue.length() != 0) {
            boolean isStringShouldBeAlphaNumeric = !this.pageObj.isHavingNumericValue(sayItHereValue);
            assertTrue("Resume text value should not be only numeric text", isStringShouldBeAlphaNumeric);
        }

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


    @And("Select the Marital Status from the dropdown list {string}.")
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


    @Then("check for the MY ID value should not be empty")
    public void checkForTheMYIDValueShouldNotBeEmpty() {
        assertNotEquals("My ID is empty which is not good in this form", this.pageObj.getMyIDTextFieldValue().length(), 0);
    }


    @When("Open Drop down list for selecting My Income.")
    public void openDropDownListForSelectingMyIncome() {
        this.pageObj.openIncomeDropDown();
    }


    @And("Select the My Income from the dropdown list {string}.")
    public void selectTheMyIncomeFromTheDropdownList(String valueOfDropdownItemIndex) {
        this.pageObj.selectIndexOfIncomeDropDownList(valueOfDropdownItemIndex);
    }


    @Then("Check My Income selected value {string} and provide value for the mismatch error {string}")
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


    @Then("Data in all filed should be empty")
    public void dataInAllFiledShouldBeEmpty() {

        //Here we are checking the Initials Name value is reset or not to the first value of the Drop down control for Initials Name
//        String initialsNameValue = this.pageObj.getInitialsNameSelectedValue();
//        assertEquals("after Reset Form: \"Initials Name\" is not set to first value of its \"DropDown List\" ", "Mr", initialsNameValue);


        //Here we are checking the Initials Name value is reset or not to Radio buttons control for Initials Name
//        assertFalse("after Reset Form: \"Initials Name\" is not set to one of \"Radio buttons\"", this.pageObj.valueForInitialsNameRadioIsSelected());


        //Here we are checking the Message Text field value is reset to empty or not to in Message Text field control
        String messageValue = this.pageObj.getMessageTextFieldValue();
        assertTrue("after Reset Form: \"Message Text field\" is not set to empty value", (messageValue.length() == 0));


        //Here we are checking the Message Text field value is reset to empty or not to in Comments Text field control
        String commentsValue = this.pageObj.getCommentTextFieldValue();
        assertTrue("after Reset Form: \"Comments Text field\" is not set to empty value", (commentsValue.length() == 0));


        //Here we are checking the Your Comments Text field value is reset to empty or not to in Your Comments Text field control
        String yourCommentsValue = this.pageObj.getYourCommentTextFieldValue();
        assertTrue("after Reset Form: Your \"Comments Text field\" is not set to empty value", (yourCommentsValue.length() == 0));


        //Here we are checking the Say It Here Text field value is reset to empty or not to in Say It Here Text field control
        String sayItHereValue = this.pageObj.getSayItHereTextFieldValue();
        assertTrue("after Reset Form: \"Say It Here Text field\" is not set to empty value", (sayItHereValue.length() == 0));


        //Here we are checking the Resume Text Area value is reset to empty or not to in Resume Text Area control
        String resumeValue = this.pageObj.getResumeTextAreaValue();
        assertTrue("after Reset Form: \"Resume Text Area\" is not set to empty value", (resumeValue.length() == 0));


        //Here we are checking the Attitude Text Field value is reset to empty or not to in Attitude Text Field control
        String attitudeValue = this.pageObj.getAttitudeTextFieldValue();
        assertTrue("after Reset Form: \"Attitude Text Field\" is not set to empty value", (attitudeValue.length() == 0));


        //Here we are checking the My ID Text Field value is reset to empty or not to in My ID Text Field control
        String myIDValue = this.pageObj.getMyIDTextFieldValue();
        assertTrue("after Reset Form: \"My ID Text Field\" is not set to empty value", (myIDValue.length() == 0));


        //Here we are checking the The Age limit value is reset or not to Check box control for The Age limit
        assertFalse("after Reset Form: \"The Age limit\" is not set to one of \"Check box\"", this.pageObj.valueForAgeLimitIsCheckMarked());


        //Here we are checking the Home Page Advertise value is reset or not to Check box control for Home Page Advertise
        assertFalse("after Reset Form: \"Home Page Advertise\" is not set to one of \"Check box\"", this.pageObj.valueForHomePageAdvertiseIsCheckMarked());


        //Here we are checking the Marital Status value is reset or not to Radio buttons control for Marital Status
//        assertFalse("after Reset Form: \"Marital Status\" is not set to one of \"Radio buttons\"", this.pageObj.valueForMaritalStatusRadioIsSelected());


        //Here we are checking the Marital Status value is reset or not to the first value of the Drop down control for Marital Status
//        String maritalStatusValue = this.pageObj.getMaritalStatusSelectedValue();
//        assertEquals("after Reset Form: \"Marital Status\" is not set to first value of its \"DropDown List\"", "(Select Status)", maritalStatusValue);


        //Here we are checking the Income value is reset or not to the first value of the Drop down control for Income
//        String incomeValue = this.pageObj.getIncomeSelectedValue();
//        assertEquals("after Reset Form: \"Income\" is not set to first value of its \"DropDown List\"", "Choose One", incomeValue );


        //Here we are checking the Annual Salary value is reset or not to Radio buttons control for Annual Salary
//        assertFalse("after Reset Form: \"Annual Salary\" is not set to one of \"Radio buttons\"", this.pageObj.valueForAnnualSalaryRadioIsSelected());


    }
}
