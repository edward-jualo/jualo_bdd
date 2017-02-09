Feature: Multiple User Search
        As a user I should able to search for a category
 
 Scenario Outline: I Search for category
        Given I navigate to "https://www.jualo.com/"
        Then I select <category_id> option by index from dropdown having name "category"
        Then I click on element having class "layout_search_submit"
        And I wait for 10 sec
        Then I should see page title as <page_title>
        Then option <category_name> by text from dropdown having id "category" should be selected
        Then I close browser
        
        Examples:
          | category_id | page_title | category_name |
          | 2 | "Alat Musik Bekas & Baru - Jualo" | "Alat Musik " |
          | 5 | "Buku Bekas dan Baru - Jualo" | "Buku " |
          
  