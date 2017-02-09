Feature: User Login
        As a user I should able to login into Jualo production.
 
 Scenario: I login with valid credential
        Given I navigate to "https://www.jualo.com/"
        Then I click on element having xpath "/html/body/div[2]/div/div/div/div/div[2]/div[1]/a"
        And I wait for 1 sec
        Then I enter "jualodev1@gmail.com" into input field having id "user_email"
        Then I enter "Johnny55" into input field having id "user_password"
        Then I click on element having name "commit"
        And I wait for 1 sec
        Then element having class "alert" should have partial text as "Anda berhasil sign in."
        Then I close browser
        
        
        