package com.nielsenFunctionalTest.hook;

import com.nielsenFunctionalTest.utils.WebElementUtils;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class StepBase extends WebElementUtils {

    protected String loadDataFromPropertiesFile(String string,String fileName) {
        final String file = System.getProperty("user.dir") + "/src/main/resources/" + fileName;
        Properties prop = new Properties();
        InputStream input;
        try {
            input = new FileInputStream(file);
            // load a properties file
            prop.load(input);
            return prop.getProperty(string);
        } catch (IOException ex) {
            ex.printStackTrace();
        }
        return "";
    }
}
