package roboform.steps;


import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import roboform.Base.BaseUtils;
import roboform.pages.SingleElementDataProviding;

import static org.junit.Assert.*;

public class SingleElementNegativeTestSteps extends BaseUtils {

    private BaseUtils base;
    private SingleElementDataProviding pageObj;

    public SingleElementNegativeTestSteps(BaseUtils base) {
        this.base = base;
        this.pageObj = new SingleElementDataProviding(this.base.Driver);
    }

    //////////////////////////Initials Name Control//////////////////////
    @Then("Check the Initials name with negative Data for selected value {string} and provide value for the mismatch error {string}")
    public void checkTheInitialsNameWithNegativeDataForSelectedValueAndProvideValueForTheMismatchError(String expectedValue , String errorMessage) {
        String selectedValueOfInitialsName = this.pageObj.getInitialsNameSelectedValue();
        assertNotEquals(errorMessage , expectedValue , selectedValueOfInitialsName);
    }
    ///////////////////////////////////////////////////////////////////


    //////////////////////////Message Text Field//////////////////////
    @Then("Check validation of the message data value length either grater than {string} or less than_Equals to {string} also checking numeric value")
    public void checkValidationOfTheMessageDataValueLengthEitherGraterThanOrLessThan_EqualsToAlsoCheckingNumericValue(String minimumLimit , String maximumLimit) {

        String messageValue = this.pageObj.getMessageTextFieldValue();
        int messageTextLengthCount = messageValue.length();
        int valueOfMaximumLimit = Integer.parseInt(maximumLimit);
        int valueOfMinimumLimit = Integer.parseInt(minimumLimit);

        boolean calculatedValue = ((valueOfMaximumLimit >= messageTextLengthCount) || (valueOfMinimumLimit <= messageTextLengthCount));
        if (!calculatedValue) {
            boolean isStringShouldBeAlphaNumeric = this.pageObj.isHavingNumericValue(messageValue);
            assertTrue("Message value should not be only numeric text" , isStringShouldBeAlphaNumeric);
        } else {
            assertTrue("Message character value length should be either grater than " + maximumLimit + " or less than/equals to " + minimumLimit , calculatedValue);
        }
    }
    //////////////////////////////////////////////////////////////////////


    //////////////////////////////Comment Text Field//////////////////////
    @Then("Check validation of the Comment data value length either grater than {string} or less than_Equals to {string} also checking numeric value")
    public void checkValidationOfTheCommentDataValueLengthEitherGraterThanOrLessThan_EqualsToAlsoCheckingNumericValue(String minimumLimit , String maximumLimit) {

        String commentValue = this.pageObj.getCommentTextFieldValue();
        int commentTextLengthCount = commentValue.length();
        int valueOfMaximumLimit = Integer.parseInt(maximumLimit);
        int valueOfMinimumLimit = Integer.parseInt(minimumLimit);

        boolean calculatedValue = ((valueOfMaximumLimit >= commentTextLengthCount) || (valueOfMinimumLimit <= commentTextLengthCount));
        if (!calculatedValue) {
            boolean isStringShouldBeAlphaNumeric = this.pageObj.isHavingNumericValue(commentValue);
            assertTrue("Comment value should not be only numeric text", isStringShouldBeAlphaNumeric);
        } else {
            assertTrue("Comment character value length should be either grater than " + maximumLimit + " or less than/equals to " + minimumLimit , calculatedValue);
        }

    }
    //////////////////////////////////////////////////////////////////////


    /////////////////////////Your Comment Text Field//////////////////////
    @Then("Check validation of the Your Comment data value length either grater than {string} or less than_Equals to {string} also checking numeric value")
    public void checkValidationOfTheYourCommentDataValueLengthEitherGraterThanOrLessThan_EqualsToAlsoCheckingNumericValue(String minimumLimit , String maximumLimit) {

        String yourCommentValue = this.pageObj.getYourCommentTextFieldValue();
        int yourCommentTextLengthCount = yourCommentValue.length();
        int valueOfMaximumLimit = Integer.parseInt(maximumLimit);
        int valueOfMinimumLimit = Integer.parseInt(minimumLimit);

        boolean calculatedValue = ((valueOfMaximumLimit >= yourCommentTextLengthCount) || (valueOfMinimumLimit <= yourCommentTextLengthCount));
        if (!calculatedValue) {
            boolean isStringShouldBeAlphaNumeric = this.pageObj.isHavingNumericValue(yourCommentValue);
            assertTrue("Your Comment value should not be only numeric text", isStringShouldBeAlphaNumeric);
        } else {
            assertTrue("Your Comment character value length should be either grater than " + maximumLimit + " or less than/equals to " + minimumLimit , calculatedValue);
        }

    }
    //////////////////////////////////////////////////////////////////////


    //////////////////////////Say It Here Text Field//////////////////////

    @Then("Check validation of the Say It here data value length either grater than {string} or less than_Equals to {string} also checking numeric value")
    public void checkValidationOfTheSayItHereDataValueLengthEitherGraterThanOrLessThan_EqualsToAlsoCheckingNumericValue(String minimumLimit , String maximumLimit) {

        String sayItHereValue = this.pageObj.getSayItHereTextFieldValue();
        int sayItHereLengthCount = sayItHereValue.length();
        int valueOfMaximumLimit = Integer.parseInt(maximumLimit);
        int valueOfMinimumLimit = Integer.parseInt(minimumLimit);

        boolean calculatedValue = ((valueOfMaximumLimit >= sayItHereLengthCount) || (valueOfMinimumLimit <= sayItHereLengthCount));
        if (!calculatedValue) {
            boolean isStringShouldBeAlphaNumeric = this.pageObj.isHavingNumericValue(sayItHereValue);
            assertTrue("Say It Here value should not be only numeric text", isStringShouldBeAlphaNumeric);
        } else {
            assertTrue("Say It Here character value length should be either grater than " + maximumLimit + " or less than/equals to " + minimumLimit , calculatedValue);
        }

    }
    /////////////////////////////////////////////////////////////////


    //////////////////////////Resume Text Area//////////////////////
    @Then("Resume text field should not have either any string value or may be only numeric values")
    public void resumeTextFieldShouldNotHaveEitherAnyStringValueOrMayBeOnlyNumericValues() {

        String resumeValue = this.pageObj.getSayItHereTextFieldValue();

        if (resumeValue.length() != 0) {
            boolean isStringShouldBeAlphaNumeric = !this.pageObj.isHavingNumericValue(resumeValue);
            assertTrue("Say It Here value should not be only numeric text", isStringShouldBeAlphaNumeric);
        } else {
            assertTrue("Resume value is empty", (resumeValue.length() == 0));
        }

    }
    /////////////////////////////////////////////////////////////////


    //////////////////////////Marital Status DropDown//////////////////////
    @Then("Check the selected Marital Status with negative Data for selected value {string} and provide value for the mismatch error {string}")
    public void checkTheSelectedMaritalStatusWithNegativeDataForSelectedValueAndProvideValueForTheMismatchError(String expectedValue , String errorMessage) {
        String selectedValueOfMaritalStatus = this.pageObj.getMaritalStatusSelectedValue();
        assertNotEquals(errorMessage , expectedValue , selectedValueOfMaritalStatus);
    }
    /////////////////////////////////////////////////////////////////


    //////////////////////////Say It Here Field//////////////////////
    @Then("My ID text field should not have any string value")
    public void myIDTextFieldShouldNotHaveAnyStringValue() {
        assertTrue("My ID value should empty", (this.pageObj.getMyIDTextFieldValue().length() == 0));
    }
    /////////////////////////////////////////////////////////////////


    //////////////////////////My Inccome DropDown//////////////////////
    @Then("Check My Income with negative Data for selected value {string} and provide value for the mismatch error {string}")
    public void checkMyIncomeWithNegativeDataForSelectedValueAndProvideValueForTheMismatchError(String expectedValue , String errorMessage) {
        String selectedValueOfMyIncome = this.pageObj.getIncomeSelectedValue();
        assertNotEquals(errorMessage , expectedValue , selectedValueOfMyIncome);
    }
    /////////////////////////////////////////////////////////////////



}
