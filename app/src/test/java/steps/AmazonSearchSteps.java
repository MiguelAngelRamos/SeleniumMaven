package steps;

import org.junit.Assert;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import pages.AmazonSearchPage;

public class AmazonSearchSteps {
  
  AmazonSearchPage amazon = new AmazonSearchPage();

  @Given("^the user navigate to www.amazon.com$")
  public void navigateToAmazonWebSite() {
    amazon.navigateToAmazon();
  }
  @And("^searches for (.+)$")
  public void enterSearchCriteriaAmazonWebSite(String criteria) {
    amazon.enterSearchCriteria(criteria);
    amazon.clickSearchAmazon();
  }
  @And("^navigates to the page number (.+)$")
  public void navigateToSecondPage(String pageNumber) {
    amazon.goToPage2(pageNumber);
  }

  @And("^selects the thrid item$")
  public void selectsThirdItem() {
    amazon.pick3rdItem();
  }

  @Then("^the user is able to add it to the cart$")
  public void itemCanBeAddedToTheCard() {
    amazon.addToCard();
    Assert.assertEquals("Agregado al carrito", amazon.addedToCartMessage());
  }
}
