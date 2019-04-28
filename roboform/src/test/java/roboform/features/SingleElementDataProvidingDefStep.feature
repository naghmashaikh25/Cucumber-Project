@SingleElementTesting
Feature: Testing of Single Element data providing
  We need to Demonstrate for selecting
  Each and every element of the Form
  and to show the ability to play around with them

  Background: User navigate to the page of Form Filler
    Given I am on the Form Filler page on URL "https://www.roboform.com/filling-test-custom-fields"
    Then I should see "Form Filler: Test Form - Custom Fields" as Header title in Page


    Scenario Outline: Selecting Initials Name from dropdown list item
      When Open Drop down list for selecting Initials Name.
      And  Select the Initials name from the dropdown list "<dropdown indexing for Initial Name>".
      And  Check the Initials name for selected value "<expected value>" and provide value for the mismatch error "<if not match then Message>"
      And  Click on the clear button

    Examples:
      |dropdown indexing for Initial Name|expected value  |if not match then Message    |
      |0                                 |Mr              |                             |
      |1                                 |Mrs             |                             |
      |2                                 |Dr              |                             |
      |0                                 |M               |Selected item is not matched |
      |1                                 |Rs              |Selected item is not matched |
      |2                                 |R               |Selected item is not matched |


    Scenario Outline: Selecting Initials Name via radio buttons
      When Select the Initials name via radio buttons "<radio Button position indexing>".
      And Click on the clear button

      Examples:
        |radio Button position indexing |
        |1                              |
        |2                              |
        |3                              |
        |4                              |


    Scenario: Insert data to Message text field
      When set "This value need to set the message text field" to message text field
#      When set "123134.4" to message text field
      And Message data value should be alphanumeric values
      And Check validation of the message data value between "0" to "256"
      And Click on the clear button


    Scenario: Insert data to Comment text field
      When set "Comment text field will have brief information of the this Form" to comment text field
      And Comment data value should be alphanumeric values
      And Check validation of the Comment data value between "0" to "256"
      And Click on the clear button


    Scenario: Insert data to Your Comment text field
      When set "your comment text field will have brief information about you" to your comment text field
      And Your Comment data value should be alphanumeric values
      And Check validation of the Your Comment data value between "0" to "256"
      And Click on the clear button


    Scenario: Insert data to Say It here text field
      When set "say It here about your thoughts" to say It here text field
      And Say It here data value should be alphanumeric values
      And Check validation of the Say It here data value between "0" to "256"
      And Click on the clear button


    Scenario: Insert data to Resume text Area
      When set "insert data of resume" to Resume text Area
       And Click on the clear button


    Scenario Outline: Mark and Unmark for the Age over 18
      When set "<value of selection Age Limit>" to mark and unmark the age limit
      And Click on the clear button

      Examples:
        |value of selection Age Limit |
        |0                            |
        |1                            |


    Scenario Outline: Mark and Unmark for Advertise on home page
      When set "<value of selection of Advertise on Home Page>" to mark and unmark Advertise on home page
      And Click on the clear button

      Examples:
        |value of selection of Advertise on Home Page |
        |0                                            |
        |1                                            |


    Scenario Outline: Selecting Marital Status Radio via radio button
    When Select the Marital Status in Radio button "<radio Button position indexing>".
    And Click on the clear button

    Examples:
      |radio Button position indexing |
      |1                              |
      |2                              |
      |3                              |
      |4                              |


    Scenario Outline: Selecting Marital Status from dropdown list item
    When Open Drop down list for selecting Marital Status.
    And  Select the Marital Status from the dropdown list "<drop down indexing>".
    And  Check the selected value "<expected value>" and provide value for the mismatch error "<if not match then Message>"
    And  Click on the clear button

    Examples:
      |drop down indexing |expected value  |if not match then Message    |
      |0                  |(Select Status) |                             |
      |1                  |Married         |                             |
      |2                  |Single          |                             |
      |3                  |Divorced        |                             |
      |4                  |Widow           |                             |
      |0                  |(Status)        |Selected item is not matched |
      |1                  |Marri ed        |Selected item is not matched |
      |2                  |Si ngle         |Selected item is not matched |
      |3                  |Di orced        |Selected item is not matched |
      |4                  |Wiw             |Selected item is not matched |


    Scenario: Insert data to Attitude text field
      When set "Attitude value" to Attitude text field
      And Click on the clear button


    Scenario: Insert data to My ID text field
      When set "qwerty98765" to My ID text field
      And Click on the clear button


    Scenario Outline: Selecting My Income from dropdown list item
      When Open Drop down list for selecting My Income.
      And  Select the My Income from the dropdown list "<drop down indexing>".
      And  Check My Income selected value "<expected value>" and provide value for the mismatch error "<if not match then Message>"
      And  Click on the clear button

      Examples:
        |drop down indexing |expected value     |if not match then Message     |
        |0                  |Choose One         |                              |
        |1                  |$0 - $11,999       |                              |
        |2                  |$12,000 - $14,999  |                              |
        |3                  |$15,000 - $19,999  |                              |
        |4                  |$20,000 - $39,999  |                              |
        |5                  |$40,000 - $59,999  |                              |
        |6                  |$60,000 - $79,999  |                              |
        |7                  |$80,000 - $99,999  |                              |
        |8                  |$100,000 - $199,999|                              |
        |9                  |$200,000 - $499,999|                              |
        |10                 |$500,000 - $999,999|                              |
        |11                 |>$1,000,000        |                              |
        |0                  |One                |Selected item is not matched  |
        |1                  |$0 - $01,999       |Selected item is not matched  |
        |2                  |$12,001 - $14,999  |Selected item is not matched  |
        |3                  |$15,010 - $19,999  |Selected item is not matched  |
        |4                  |$21,000 - $39,999  |Selected item is not matched  |
        |5                  |$41,000 - $59,999  |Selected item is not matched  |
        |6                  |$63,000 - $79,999  |Selected item is not matched  |
        |7                  |$86,000 - $99,999  |Selected item is not matched  |
        |8                  |$180,700 - $199,999|Selected item is not matched  |
        |9                  |$230,600 - $499,999|Selected item is not matched  |
        |10                 |$510,040 - $999,999|Selected item is not matched  |
        |11                 |>$100,000          |Selected item is not matched  |


    Scenario Outline: Selecting Annual Salary Radio via radio buttons
      When Select Annual Salary in Radio buttons "<radio Button position indexing>".
      And Click on the clear button

      Examples:
      |radio Button position indexing |
      |1                              |
      |2                              |
      |3                              |

