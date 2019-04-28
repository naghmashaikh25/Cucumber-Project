package roboform.Base;

import org.openqa.selenium.WebDriver;
import java.text.NumberFormat;
import java.text.ParseException;

public class BaseUtils {

    public WebDriver Driver;

    public boolean isHavingNumericValue(String stringNeedToCheck) {

        try {
            Number number = NumberFormat.getInstance().parse(stringNeedToCheck);
            System.out.println(number);
            return true;
        } catch (ParseException e) {
            return false;
        }
    }
}
