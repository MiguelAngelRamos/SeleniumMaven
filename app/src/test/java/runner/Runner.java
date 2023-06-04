package runner;
//* Este es un archivo de configuración de cucumber */


import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;


@RunWith(Cucumber.class)
@CucumberOptions(
  features = "src/test/resources/features",
  glue = "steps",
  // tags = "@List"
  // tags = "@Test"
  // tags = {"@Grid"}
  // tags = "@Mercado"
  tags ="@Amazon"
  // tags = "@Google"
)
public class Runner {

  // @AfterClass
  // public static void cleanDriver() {
  //   BasePage.closeBrowser();
  // }
  
}
