package roboform.runner;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)

@CucumberOptions(
        features = {"src/test/java/roboform/features"},
        glue = "roboform/steps",
        tags= {"@SingleElementTesting, @FormFillingTesting"},
        plugin = {
                "json:target/cucumber.json",
                "html:target/site/cucumber-pretty"
        })
public class RunCucumberTest {

}


