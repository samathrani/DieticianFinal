package stepDefinition;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
public class AfterLogin 
{
	@Given("User is on the Dietician website")
	public void user_is_on_the_dietician_website() {
	 
		System.out.println("Dietician website is open");
	  
	}

	@When("User logged in successfully to the Dietician website")
	public void user_logged_in_successfully_to_the_dietician_website() {
	    
		System.out.println("logged in successfully ");
	    
	}

	@Then("User can see the {string} on header menu")
	public void user_can_see_the_on_header_menu(String string) {
	   
		System.out.println("Home button on header menu");
	   
	}

	@Then("User can see the {string} tab from the header menu")
	public void user_can_see_the_tab_from_the_header_menu(String string) {
	    // Write code here that turns the phrase above into concrete actions
		System.out.println("New patient tab is visible");
	    
	}

}