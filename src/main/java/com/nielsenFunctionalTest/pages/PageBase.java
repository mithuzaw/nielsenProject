package com.nielsenFunctionalTest.pages;

import com.nielsenFunctionalTest.utils.WebElementUtils;
import org.testng.Assert;

public class PageBase extends WebElementUtils {

    public PageBase(){
        super();
    }

    public void verifyPageTitle(String expectedTitle){
        String title = driver.getTitle();
        Assert.assertEquals(expectedTitle,title);
    }
}
