package com.nielsenFunctionalProject;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(

       // tags = { " @dd" },

        //tags = { " @smoke","@debug" }, /*AND*/
        // tags = { "@smoke,@debug" }, /*OR*/
        //tags = { "@functional,@debug","@debug" }, /*AND-OR*/
       monochrome = true,
        features = "src/test/resources/features/DataAuthentication.feature",
        glue = {"com.nielsenFunctionalTest.steps"},
//        dryRun = true,
        //dryRun = false,
        //strict = true,

        plugin={
                "pretty:target/cucumber-test-report/cucumber-pretty.txt",
                "html:target/cucumber-test-report",
                "json:target/cucumber-test-report/cucumber-report.json",
                "junit:target/cucumber-test-report/test-report.xml",
                "json:target/test-report.json"
        }
)

public class nielsenBDDRunner {

}
