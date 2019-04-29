@SingleElementNegativeTesting
Feature: Testing of Single Elements with Invalid data providing
  We need to Demonstrate for selecting
  Each and every element of the Form
  and to show the ability to play around with them

  Background: User navigate to the page of Form Filler
    Given I am on the Form Filler page on URL "https://www.roboform.com/filling-test-custom-fields"
    Then I should see "Form Filler: Test Form - Custom Fields" as Header title in Page


    Scenario Outline: Selecting Initials Name from dropdown list item for checking with invalid data
      When Open Drop down list for selecting Initials Name.
      And  Select the Initials name from the dropdown list "<dropdown indexing for Initial Name>".
      Then Check the Initials name with negative Data for selected value "<expected value>" and provide value for the mismatch error "<if not match then Message>"
      When Click on the clear button
      Then Data in all filed should be empty

      Examples:
        |dropdown indexing for Initial Name|expected value  |if not match then Message    |
        |0                                 |M               |Selected item is not matched |
        |1                                 |Rs              |Selected item is not matched |
        |2                                 |R               |Selected item is not matched |


    Scenario Outline: Insert invalid data to Message text field
      When set "<message text value>" to message text field
      Then Check validation of the message data value length either grater than "256" or less than_Equals to "0" also checking numeric value
      When Click on the clear button
      Then Data in all filed should be empty

      Examples:
      |message text value                                                                                                                                                                                                                                                             |
      |This value should be less than 256 characters This value should be less than 256 charactersThis value should be less than 256 charactersThis value should be less than 256 charactersThis value should be less than 256 charactersThis value should be less than 256 characters|
      |                                                                                                                                                                                                                                                                               |
      |123134                                                                                                                                                                                                                                                                         |


    Scenario Outline: Insert invalid data to Comment text field
      When set "<comment text value>" to comment text field
      Then Check validation of the Comment data value length either grater than "256" or less than_Equals to "0" also checking numeric value
      When Click on the clear button
      Then Data in all filed should be empty

      Examples:
        |comment text value   |
        |                     |
        |123                  |


    Scenario Outline: Insert invalid data to Your Comment text field
      When set "<your comment text value>" to your comment text field
      Then Check validation of the Your Comment data value length either grater than "256" or less than_Equals to "0" also checking numeric value
      When Click on the clear button
      Then Data in all filed should be empty

      Examples:
        |your comment text value     |
        |                            |
        |123134.4                    |


    Scenario Outline: Insert invalid data to Say It here text field
      When set "<say it here text value>" to say It here text field
      Then Check validation of the Say It here data value length either grater than "256" or less than_Equals to "0" also checking numeric value
      When Click on the clear button
      Then Data in all filed should be empty

      Examples:
        |say it here text value     |
        |                           |
        |123134.4                   |


    Scenario Outline: Insert invalid data to Resume text Area
      When set "<Resume text value>" to Resume text Area
      Then Resume text field should not have either any string value or may be only numeric values
      When Click on the clear button
      Then Data in all filed should be empty

    Examples:
      |Resume text value  |
      |                   |
      |123134.4           |


    Scenario Outline: Selecting Marital Status from dropdown list item for checking with invalid data
      When  Open Drop down list for selecting Marital Status.
      And   Select the Marital Status from the dropdown list "<drop down indexing>".
      Then  Check the selected Marital Status with negative Data for selected value "<expected value>" and provide value for the mismatch error "<if not match then Message>"
      When  Click on the clear button
      Then  Data in all filed should be empty

    Examples:
      |drop down indexing |expected value  |if not match then Message    |
      |0                  |(Status)        |Selected item is not matched |
      |1                  |Marri ed        |Selected item is not matched |
      |2                  |Si ngle         |Selected item is not matched |
      |3                  |Di orced        |Selected item is not matched |
      |4                  |Wiw             |Selected item is not matched |


      #I not know the nature of the this field so I can not put the check accordingly
    Scenario: Insert data to Attitude text field data for the Negative test


    Scenario Outline: Insert data to My ID text field
      When set "<My Id Text Value>" to My ID text field
      Then My ID text field should not have any string value
      When Click on the clear button
      Then Data in all filed should be empty

      Examples:
        |My Id Text Value   |
        |                   |


    Scenario Outline: Selecting My Income from dropdown list item for checking with invalid data
      When Open Drop down list for selecting My Income.
      And  Select the My Income from the dropdown list "<drop down indexing>".
      Then Check My Income with negative Data for selected value "<expected value>" and provide value for the mismatch error "<if not match then Message>"
      When  Click on the clear button
      Then  Data in all filed should be empty


      Examples:
        |drop down indexing |expected value     |if not match then Message     |
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


