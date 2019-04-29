package roboform.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.Select;
import roboform.Base.BaseUtils;

public class SingleElementDataProviding extends BaseUtils {


    private static final String initialNameRadioButton_XPATH = "/html/body/div[2]/div/div/div[1]/form/div[2]/div[2]/input[%s]";
    private static final String maritalStatusRadioButton_XPATH = "/html/body/div[2]/div/div/div[1]/form/div[10]/div[2]/input[%s]";
    private static final String annualSalaryRadioButton_XPATH = "/html/body/div[2]/div/div/div[1]/form/div[15]/div[2]/input[%s]";

    private WebDriver driver;

    public SingleElementDataProviding(WebDriver driver) {
        PageFactory.initElements(driver, this);
        this.driver = driver;
    }

    @FindBy(how = How.XPATH, using = "/html/body/div[2]/div/div/div[1]/h1")
    private WebElement formHeader;


    //This method will return the Page Header Title
    public String getHeaderTitle() {
        return this.formHeader.getText();
    }

    @FindBy(how = How.XPATH, using = "/html/body/div[2]/div/div/div[1]/form/div[1]/div[2]/select")
    private WebElement initialNameDropDown;

    //This method click on the initials name dropdown list
    public void openTheInitialNameDropDown() {
//        initialNameDropDown.click();
        Actions actions = new Actions(driver);
        actions.moveToElement(initialNameDropDown).click().build().perform();
    }


    //This method will select the item from the dropdown list for selecting Initials Name.
    //Here we are using Selected by index because at some point either change the value of dropdown items
    //or using the localized string then index values are help ful instead of String value
    public void selectIndexOfInitialsNameDropDownList(String value) {
        Select dropdown = new Select(driver.findElement(By.xpath("/html/body/div[2]/div/div/div[1]/form/div[1]/div[2]/select")));
        dropdown.selectByIndex(Integer.parseInt(value));
//        dropdown.selectByValue(value);
    }


    public String getInitialsNameSelectedValue() {
        Select dropdown = new Select(driver.findElement(By.xpath("/html/body/div[2]/div/div/div[1]/form/div[1]/div[2]/select")));
        return dropdown.getFirstSelectedOption().getText().trim();
    }


    public void selectInitialNameInRadioButtonWithValue(String valueOfRadioButtonPositionIndex) {
        String fullXpath = String.format(initialNameRadioButton_XPATH, valueOfRadioButtonPositionIndex);
        WebElement element = this.driver.findElement(By.xpath(fullXpath));
        Actions actions = new Actions(driver);
        actions.moveToElement(element).click().build().perform();

    }
    public boolean valueForInitialsNameRadioIsSelected() {

        for (int indexValue = 1; indexValue < 5; indexValue++) {
            String fullXpath = String.format(initialNameRadioButton_XPATH, indexValue);
            if (this.driver.findElement(By.xpath(fullXpath)).isSelected()){
                return true;
            }
        }

        return false;
    }



    @FindBy(how = How.XPATH, using = "/html/body/div[2]/div/div/div[1]/form/div[3]/div[2]/input")
    private WebElement messageTextField;

    public void setMessageTextFieldValue(String messageTextData) {
        messageTextField.sendKeys(messageTextData);
    }
    public String getMessageTextFieldValue() {
        return messageTextField.getAttribute("value");
    }


    @FindBy(how = How.XPATH, using = "/html/body/div[2]/div/div/div[1]/form/div[4]/div[2]/input")
    private WebElement commentsTextField;

    public void setCommentTextFieldValue(String commentTextData) {
        commentsTextField.sendKeys(commentTextData);
    }
    public String getCommentTextFieldValue() {
        return commentsTextField.getAttribute("value");
    }


    @FindBy(how = How.XPATH, using = "/html/body/div[2]/div/div/div[1]/form/div[5]/div[2]/input")
    private WebElement yourCommentsTextField;

    public void setYourCommentTextFieldValue(String yourCommentTextData) {
        yourCommentsTextField.sendKeys(yourCommentTextData);
    }
    public String getYourCommentTextFieldValue() {
        return yourCommentsTextField.getAttribute("value");
    }


    @FindBy(how = How.XPATH, using = "/html/body/div[2]/div/div/div[1]/form/div[6]/div[2]/input")
    private WebElement sayItHereTextField;

    public void setSayItHereTextFieldValue(String sayItHereTextData) {
        sayItHereTextField.sendKeys(sayItHereTextData);
    }
    public String getSayItHereTextFieldValue() {
        return sayItHereTextField.getAttribute("value");
    }

    @FindBy(how = How.XPATH, using = "/html/body/div[2]/div/div/div[1]/form/div[7]/div[2]/textarea")
    private WebElement resumeTextArea;

    public void setResumeTextAreaValue(String resumeData) {
        resumeTextArea.sendKeys(resumeData);
    }
    public String getResumeTextAreaValue() {
        return resumeTextArea.getAttribute("value");
    }

    @FindBy(how = How.XPATH, using = "/html/body/div[2]/div/div/div[1]/form/div[8]/div[2]/input")
    private WebElement areYouOver17CheckButton;

    public void setChangeTheAgeLimitOnCheckbox(String valueForMarkAgeLimit) {

        int valueOfAgeLimitMarking = Integer.parseInt(valueForMarkAgeLimit);

        if ((valueOfAgeLimitMarking == 1 && !areYouOver17CheckButton.isSelected()) ||
                (valueOfAgeLimitMarking == 0 && areYouOver17CheckButton.isSelected())) {
//            areYouOver17CheckButton.click();
            Actions actions = new Actions(driver);
            actions.moveToElement(areYouOver17CheckButton).click().build().perform();
        }

    }
    public boolean valueForAgeLimitIsCheckMarked() {
        return areYouOver17CheckButton.isSelected();
    }


    @FindBy(how = How.XPATH, using = "/html/body/div[2]/div/div/div[1]/form/div[9]/div[2]/input")
    private WebElement advertiseHomePageCheckButton;

    public void setChangeTheAdvertiseHomePageCheckbox(String valueForMarkAdvertiseOnHome) {

        int valueOfAdvertiseOnHomeMarking = Integer.parseInt(valueForMarkAdvertiseOnHome);

        if ((valueOfAdvertiseOnHomeMarking == 1 && !advertiseHomePageCheckButton.isSelected()) ||
                (valueOfAdvertiseOnHomeMarking == 0 && advertiseHomePageCheckButton.isSelected())) {
//            advertiseHomePageCheckButton.click();
            Actions actions = new Actions(driver);
            actions.moveToElement(advertiseHomePageCheckButton).click().build().perform();

        }
    }
    public boolean valueForHomePageAdvertiseIsCheckMarked() {
        return advertiseHomePageCheckButton.isSelected();
    }


    public void selectMaritalStatusInRadioButtonWithValue(String valueOfRadioButtonPositionIndex) {
        String fullXpathOfMaritalStatus = String.format(maritalStatusRadioButton_XPATH, valueOfRadioButtonPositionIndex);
        WebElement element = this.driver.findElement(By.xpath(fullXpathOfMaritalStatus));
        Actions actions = new Actions(driver);
        actions.moveToElement(element).click().build().perform();
    }
    public boolean valueForMaritalStatusRadioIsSelected() {

        for (int indexValue = 1; indexValue < 5; indexValue++) {
            String fullXpath = String.format(maritalStatusRadioButton_XPATH , indexValue);
            if (this.driver.findElement(By.xpath(fullXpath)).isSelected()){
                return true;
            }
        }
        return false;
    }


    @FindBy(how = How.XPATH, using = "/html/body/div[2]/div/div/div[1]/form/div[11]/div[2]/select")
    private WebElement maritalStatusDropDown;

    //This method click on the Marital Status dropdown list
    public void openTheMaritalStatusDropDown() {
//        maritalStatusDropDown.click();
        Actions actions = new Actions(driver);
        actions.moveToElement(maritalStatusDropDown).click().build().perform();
    }

    //This method will select the item from the dropdown list for selecting Initials Name.
    //Here we are using Selected by index because at some point either change the value of dropdown items
    //or using the localized string then index values are help ful instead of String value
    public void selectIndexOfMaritalStatusDropDownList(String value) {
        Select dropdown = new Select(driver.findElement(By.xpath("/html/body/div[2]/div/div/div[1]/form/div[11]/div[2]/select")));
        dropdown.selectByIndex(Integer.parseInt(value));
    }

    public String getMaritalStatusSelectedValue() {
        Select dropdown = new Select(driver.findElement(By.xpath("/html/body/div[2]/div/div/div[1]/form/div[11]/div[2]/select")));
        return dropdown.getFirstSelectedOption().getText().trim();
    }


    @FindBy(how = How.XPATH, using = "/html/body/div[2]/div/div/div[1]/form/div[12]/div[2]/input")
    private WebElement attitudeTextField;

    public void setAttitudeTextFieldValue(String attitudeTextData) {
        attitudeTextField.sendKeys(attitudeTextData);
    }
    public String getAttitudeTextFieldValue() {
        return attitudeTextField.getAttribute("value");
    }

    @FindBy(how = How.XPATH, using = "/html/body/div[2]/div/div/div[1]/form/div[13]/div[2]/input")
    private WebElement myIDTextField;

    public void setMyIDTextFieldValue(String myIDTextData) {
        myIDTextField.sendKeys(myIDTextData);
    }
    public String getMyIDTextFieldValue() {
        return myIDTextField.getAttribute("value");
    }

    @FindBy(how = How.XPATH, using = "/html/body/div[2]/div/div/div[1]/form/div[14]/div[2]/select")
    private WebElement incomeDropDown;

    //This method click on Income dropdown list
    public void openIncomeDropDown() {
//        incomeDropDown.click();
        Actions actions = new Actions(driver);
        actions.moveToElement(incomeDropDown).click().build().perform();
    }

    //This method will select the item from the dropdown list for selecting Initials Name.
    //Here we are using Selected by index because at some point either change the value of dropdown items
    //or using the localized string then index values are help ful instead of String value
    public void selectIndexOfIncomeDropDownList(String value) {
        Select dropdown = new Select(driver.findElement(By.xpath("/html/body/div[2]/div/div/div[1]/form/div[14]/div[2]/select")));
        dropdown.selectByIndex(Integer.parseInt(value));
    }

    public String getIncomeSelectedValue() {
        Select dropdown = new Select(driver.findElement(By.xpath("/html/body/div[2]/div/div/div[1]/form/div[14]/div[2]/select")));
        return dropdown.getFirstSelectedOption().getText().trim();
    }


    public void selectAnnualSalaryInRadioButtonWithValue(String valueOfRadioButtonPositionIndex) {
        String fullXpathOfAnnualSalary = String.format(annualSalaryRadioButton_XPATH, valueOfRadioButtonPositionIndex);
//        this.driver.findElement(By.xpath(fullXpathOfAnnualSalary)).click();
        WebElement element = this.driver.findElement(By.xpath(fullXpathOfAnnualSalary));
        Actions actions = new Actions(driver);
        actions.moveToElement(element).click().build().perform();
    }
    public boolean valueForAnnualSalaryRadioIsSelected() {

        for (int indexValue = 1; indexValue < 5; indexValue++) {
            String fullXpath = String.format(annualSalaryRadioButton_XPATH , indexValue);
            if (this.driver.findElement(By.xpath(fullXpath)).isSelected()){
                return true;
            }
        }
        return false;
    }


    @FindBy(how = How.XPATH, using = "/html/body/div[2]/div/div/div[1]/form/input[2]")
    public WebElement resetButton;

    public void resetTheForm() {
        resetButton.submit();
    }



}













