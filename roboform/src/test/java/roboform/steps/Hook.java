package roboform.steps;

import cucumber.api.java.After;
import cucumber.api.java.Before;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import roboform.Base.BaseUtils;

import java.util.concurrent.TimeUnit;

public class Hook extends BaseUtils {

    private  BaseUtils base;

    public Hook(BaseUtils base) {
        this.base = base;
    }

    @Before
    public void InitializeTest() {

        String osName = System.getProperty("os.name").toLowerCase();
        String driverPath = "";
        if (osName.contains("mac")) {
            driverPath = System.getProperty("user.dir")+"/drivers/chromedriver";
        } else {
            driverPath = System.getProperty("user.dir")+"\\drivers\\chromedriver.exe";
        }

        ChromeOptions options = new ChromeOptions();

        //To Hide the info-bar from the browser
        options.addArguments("disable-infobars");

        //Uncomment below line for headless testing enviroment
//        options.addArguments("headless");

        System.setProperty("webdriver.chrome.driver", driverPath);
        base.Driver = new ChromeDriver(options);
        base.Driver.manage().timeouts().pageLoadTimeout(60, TimeUnit.SECONDS);
        base.Driver.manage().timeouts().implicitlyWait(60, TimeUnit.SECONDS);
        base.Driver.manage().timeouts().setScriptTimeout(80, TimeUnit.SECONDS);

    }

    @After
    public void TearDownTest() {
        base.Driver.quit();
    }


}
