@Amazon
Feature: Test Amazon search functionality

@Cart
Scenario Outline: As a customer when I search for product, I want to see if the thrid option on the second page is available for purchase and can be added to the card

Given the user navigate to www.amazon.com
And searches for <Product>
And navigates to the page number 2
And selects the thrid item
Then the user is able to add it to the cart

Examples:
|Product|
|nintendo|