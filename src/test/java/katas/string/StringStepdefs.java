package katas.string;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class StringStepdefs {
    String inputString;
    String outputString;


    @Given("I have a string {string}")
    public void iHaveAString(String arg0) {
        this.inputString = arg0;
    }

    @When("I reverse it")
    public void iReverseIt() {
        this.outputString = StringUtilities.reverse(inputString);
    }

    @Then("I get {string}")
    public void iGet(String arg0) {
        System.out.println(this.outputString);
        assert this.outputString.equals(arg0);
    }

    @When("I capitalize the string")
    public void iCapitalizeTheString() {
        this.outputString = StringUtilities.capitalize(inputString);
    }

    @When("I lowercase the string")
    public void iLowercaseTheString() {
        this.outputString = StringUtilities.lowercase(inputString);
    }
}
