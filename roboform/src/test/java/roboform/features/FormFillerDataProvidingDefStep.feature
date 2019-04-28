@AllElementsTogetherTesting
Feature: Testing of All Element's data providing
  we fill the form with applying some validations
  and at the end of the scenario we reset the form


  Background: User navigate to Form Filler page
    Given User on the Form Filler page with URL "https://www.roboform.com/filling-test-custom-fields"
    Then User should see "Form Filler: Test Form - Custom Fields" as Header title in Page

  Scenario Outline: Filling the form with wrong data in all fields
    When Open Drop down list for selecting Initials Name.
    And  Select the Initials name from the dropdown list "<dropdown indexing for Initials Name>".
    And  Check the Initials name for selected value "<Initials Name expected value>" and provide value for the mismatch error "<if Initials Name not match then Message>"
    And  Select the Initials name via radio buttons "<Initials Name radio Button position indexing>".
    And  set "This value need to set the message text field" to message text field
    And  Message data value should be alphanumeric values
    And  Check validation of the message data value between "0" to "256"
    And  set "Comment text field will have brief information of the this Form" to comment text field
    And  Comment data value should be alphanumeric values
    And  Check validation of the Comment data value between "0" to "256"
    And  set "your comment text field will have brief information about you" to your comment text field
    And  Your Comment data value should be alphanumeric values
    And  Check validation of the Your Comment data value between "0" to "256"
    And  set "say It here about your thoughts" to say It here text field
    And  Say It here data value should be alphanumeric values
    And  Check validation of the Say It here data value between "0" to "256"
    And  set "insert data of resume" to Resume text Area
    And  set "<value of selection Age Limit>" to mark and unmark the age limit
    And  set "<value of selection of Advertise on Home Page>" to mark and unmark Advertise on home page
    And  Select the Marital Status in Radio button "<Marital Status radio Button position indexing>".
    And  Open Drop down list for selecting Marital Status.
    And  Select the Marital Status from the dropdown list "<Marital Status drop down indexing>".
    And  Check the selected value "<Marital Status expected value>" and provide value for the mismatch error "<if Marital Status not match then Message>"
    And  set "Attitude value" to Attitude text field
    And  set "qwerty98765" to My ID text field
    And  Open Drop down list for selecting My Income.
    And  Select the My Income from the dropdown list "<My Income drop down indexing>".
    And  Check My Income selected value "<My Income expected value>" and provide value for the mismatch error "<if My Income not match then Message>"
    And  Select Annual Salary in Radio buttons "<Annual Salary radio Button position indexing>".
    Then Click on the clear button

      #Here we have apply only few of the wrong data test there are more position test data sets
    Examples:
      |dropdown indexing for Initials Name	|Initials Name expected value	|if Initials Name not match then Message	|Initials Name radio Button position indexing	|value of selection Age Limit	|value of selection of Advertise on Home Page	|Marital Status radio Button position indexing	|Marital Status drop down indexing	|Marital Status expected value	|if Marital Status not match then Message	|My Income drop down indexing	|My Income expected value	|if My Income not match then Message	|Annual Salary radio Button position indexing|
      |0                                    |M                              |Selected item is not matched               |1                                              |0                              |1                                              |2                                              |4                                  |(Status)                       |Selected item is not matched               |3                              |$15,010 - $19,999          |Selected item is not matched           |1                                           |
      |1                                    |Rs                             |Selected item is not matched               |2                                              |1                              |0                                              |3                                              |2                                  |Marri ed                       |Selected item is not matched               |6                              |$63,000 - $79,999          |Selected item is not matched           |2                                           |
      |2                                    |R                              |Selected item is not matched               |3                                              |0                              |1                                              |4                                              |0                                  |Si ngle                        |Selected item is not matched               |10                             |$510,040 - $999,999        |Selected item is not matched           |3                                           |



  Scenario Outline: Filling the form with all the data
    When Open Drop down list for selecting Initials Name.
    And  Select the Initials name from the dropdown list "<dropdown indexing for Initials Name>".
    And  Check the Initials name for selected value "<Initials Name expected value>" and provide value for the mismatch error "<if Initials Name not match then Message>"
    And  Select the Initials name via radio buttons "<Initials Name radio Button position indexing>".
    And  set "This value need to set the message text field" to message text field
    And  Message data value should be alphanumeric values
    And  Check validation of the message data value between "0" to "256"
    And  set "Comment text field will have brief information of the this Form" to comment text field
    And  Comment data value should be alphanumeric values
    And  Check validation of the Comment data value between "0" to "256"
    And  set "your comment text field will have brief information about you" to your comment text field
    And  Your Comment data value should be alphanumeric values
    And  Check validation of the Your Comment data value between "0" to "256"
    And  set "say It here about your thoughts" to say It here text field
    And  Say It here data value should be alphanumeric values
    And  Check validation of the Say It here data value between "0" to "256"
    And  set "insert data of resume" to Resume text Area
    And  set "<value of selection Age Limit>" to mark and unmark the age limit
    And  set "<value of selection of Advertise on Home Page>" to mark and unmark Advertise on home page
    And  Select the Marital Status in Radio button "<Marital Status radio Button position indexing>".
    And  Open Drop down list for selecting Marital Status.
    And  Select the Marital Status from the dropdown list "<Marital Status drop down indexing>".
    And  Check the selected value "<Marital Status expected value>" and provide value for the mismatch error "<if Marital Status not match then Message>"
    And  set "Attitude value" to Attitude text field
    And  set "qwerty98765" to My ID text field
    And  Open Drop down list for selecting My Income.
    And  Select the My Income from the dropdown list "<My Income drop down indexing>".
    And  Check My Income selected value "<My Income expected value>" and provide value for the mismatch error "<if My Income not match then Message>"
    And  Select Annual Salary in Radio buttons "<Annual Salary radio Button position indexing>".
    Then Click on the clear button

    #Here we have apply only few of the data test there are more position test data sets
    #there are number(3*4*2*4*5*12*3) possible combination of with the data of selection
    Examples:
      |dropdown indexing for Initials Name	|Initials Name expected value	|if Initials Name not match then Message	|Initials Name radio Button position indexing	|value of selection Age Limit	|value of selection of Advertise on Home Page	|Marital Status radio Button position indexing	|Marital Status drop down indexing	|Marital Status expected value	|if Marital Status not match then Message	|My Income drop down indexing	|My Income expected value	|if My Income not match then Message	|Annual Salary radio Button position indexing|
      |0	    |Mr	|	|1	|0	|0	|1	|0	|(Select Status)	|	|0	|Choose One	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|0	|(Select Status)	|	|1	|$0 - $11,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|0	|(Select Status)	|	|2	|$12,000 - $14,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|0	|(Select Status)	|	|3	|$15,000 - $19,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|0	|(Select Status)	|	|4	|$20,000 - $39,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|0	|(Select Status)	|	|5	|$40,000 - $59,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|0	|(Select Status)	|	|6	|$60,000 - $79,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|0	|(Select Status)	|	|7	|$80,000 - $99,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|0	|(Select Status)	|	|8	|$100,000 - $199,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|0	|(Select Status)	|	|9	|$200,000 - $499,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|0	|(Select Status)	|	|10	|$500,000 - $999,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|0	|(Select Status)	|	|11	|>$1,000,000	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|0	|(Select Status)	|	|0	|Choose One	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|0	|(Select Status)	|	|1	|$0 - $11,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|0	|(Select Status)	|	|2	|$12,000 - $14,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|0	|(Select Status)	|	|3	|$15,000 - $19,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|0	|(Select Status)	|	|4	|$20,000 - $39,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|0	|(Select Status)	|	|5	|$40,000 - $59,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|0	|(Select Status)	|	|6	|$60,000 - $79,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|0	|(Select Status)	|	|7	|$80,000 - $99,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|0	|(Select Status)	|	|8	|$100,000 - $199,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|0	|(Select Status)	|	|9	|$200,000 - $499,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|0	|(Select Status)	|	|10	|$500,000 - $999,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|0	|(Select Status)	|	|11	|>$1,000,000	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|0	|(Select Status)	|	|0	|Choose One	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|0	|(Select Status)	|	|1	|$0 - $11,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|0	|(Select Status)	|	|2	|$12,000 - $14,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|0	|(Select Status)	|	|3	|$15,000 - $19,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|0	|(Select Status)	|	|4	|$20,000 - $39,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|0	|(Select Status)	|	|5	|$40,000 - $59,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|0	|(Select Status)	|	|6	|$60,000 - $79,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|0	|(Select Status)	|	|7	|$80,000 - $99,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|0	|(Select Status)	|	|8	|$100,000 - $199,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|0	|(Select Status)	|	|9	|$200,000 - $499,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|0	|(Select Status)	|	|10	|$500,000 - $999,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|0	|(Select Status)	|	|11	|>$1,000,000	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|1	|Married	|	|0	|Choose One	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|1	|Married	|	|1	|$0 - $11,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|1	|Married	|	|2	|$12,000 - $14,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|1	|Married	|	|3	|$15,000 - $19,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|1	|Married	|	|4	|$20,000 - $39,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|1	|Married	|	|5	|$40,000 - $59,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|1	|Married	|	|6	|$60,000 - $79,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|1	|Married	|	|7	|$80,000 - $99,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|1	|Married	|	|8	|$100,000 - $199,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|1	|Married	|	|9	|$200,000 - $499,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|1	|Married	|	|10	|$500,000 - $999,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|1	|Married	|	|11	|>$1,000,000	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|1	|Married	|	|0	|Choose One	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|1	|Married	|	|1	|$0 - $11,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|1	|Married	|	|2	|$12,000 - $14,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|1	|Married	|	|3	|$15,000 - $19,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|1	|Married	|	|4	|$20,000 - $39,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|1	|Married	|	|5	|$40,000 - $59,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|1	|Married	|	|6	|$60,000 - $79,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|1	|Married	|	|7	|$80,000 - $99,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|1	|Married	|	|8	|$100,000 - $199,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|1	|Married	|	|9	|$200,000 - $499,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|1	|Married	|	|10	|$500,000 - $999,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|1	|Married	|	|11	|>$1,000,000	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|1	|Married	|	|0	|Choose One	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|1	|Married	|	|1	|$0 - $11,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|1	|Married	|	|2	|$12,000 - $14,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|1	|Married	|	|3	|$15,000 - $19,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|1	|Married	|	|4	|$20,000 - $39,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|1	|Married	|	|5	|$40,000 - $59,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|1	|Married	|	|6	|$60,000 - $79,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|1	|Married	|	|7	|$80,000 - $99,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|1	|Married	|	|8	|$100,000 - $199,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|1	|Married	|	|9	|$200,000 - $499,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|1	|Married	|	|10	|$500,000 - $999,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|1	|Married	|	|11	|>$1,000,000	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|1	|Single	|	|0	|Choose One	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|2	|Single	|	|1	|$0 - $11,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|2	|Single	|	|2	|$12,000 - $14,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|2	|Single	|	|3	|$15,000 - $19,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|2	|Single	|	|4	|$20,000 - $39,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|2	|Single	|	|5	|$40,000 - $59,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|2	|Single	|	|6	|$60,000 - $79,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|2	|Single	|	|7	|$80,000 - $99,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|2	|Single	|	|8	|$100,000 - $199,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|2	|Single	|	|9	|$200,000 - $499,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|2	|Single	|	|10	|$500,000 - $999,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|2	|Single	|	|11	|>$1,000,000	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|2	|Single	|	|0	|Choose One	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|2	|Single	|	|1	|$0 - $11,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|2	|Single	|	|2	|$12,000 - $14,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|2	|Single	|	|3	|$15,000 - $19,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|2	|Single	|	|4	|$20,000 - $39,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|2	|Single	|	|5	|$40,000 - $59,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|2	|Single	|	|6	|$60,000 - $79,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|2	|Single	|	|7	|$80,000 - $99,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|2	|Single	|	|8	|$100,000 - $199,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|2	|Single	|	|9	|$200,000 - $499,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|2	|Single	|	|10	|$500,000 - $999,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|2	|Single	|	|11	|>$1,000,000	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|2	|Single	|	|0	|Choose One	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|2	|Single	|	|1	|$0 - $11,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|2	|Single	|	|2	|$12,000 - $14,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|2	|Single	|	|3	|$15,000 - $19,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|2	|Single	|	|4	|$20,000 - $39,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|2	|Single	|	|5	|$40,000 - $59,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|2	|Single	|	|6	|$60,000 - $79,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|2	|Single	|	|7	|$80,000 - $99,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|2	|Single	|	|8	|$100,000 - $199,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|2	|Single	|	|9	|$200,000 - $499,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|2	|Single	|	|10	|$500,000 - $999,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|2	|Single	|	|11	|>$1,000,000	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|3	|Divorced	|	|0	|Choose One	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|3	|Divorced	|	|1	|$0 - $11,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|3	|Divorced	|	|2	|$12,000 - $14,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|3	|Divorced	|	|3	|$15,000 - $19,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|3	|Divorced	|	|4	|$20,000 - $39,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|3	|Divorced	|	|5	|$40,000 - $59,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|3	|Divorced	|	|6	|$60,000 - $79,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|3	|Divorced	|	|7	|$80,000 - $99,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|3	|Divorced	|	|8	|$100,000 - $199,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|3	|Divorced	|	|9	|$200,000 - $499,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|3	|Divorced	|	|10	|$500,000 - $999,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|3	|Divorced	|	|11	|>$1,000,000	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|3	|Divorced	|	|0	|Choose One	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|3	|Divorced	|	|1	|$0 - $11,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|3	|Divorced	|	|2	|$12,000 - $14,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|3	|Divorced	|	|3	|$15,000 - $19,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|3	|Divorced	|	|4	|$20,000 - $39,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|3	|Divorced	|	|5	|$40,000 - $59,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|3	|Divorced	|	|6	|$60,000 - $79,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|3	|Divorced	|	|7	|$80,000 - $99,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|3	|Divorced	|	|8	|$100,000 - $199,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|3	|Divorced	|	|9	|$200,000 - $499,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|3	|Divorced	|	|10	|$500,000 - $999,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|3	|Divorced	|	|11	|>$1,000,000	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|3	|Divorced	|	|0	|Choose One	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|3	|Divorced	|	|1	|$0 - $11,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|3	|Divorced	|	|2	|$12,000 - $14,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|3	|Divorced	|	|3	|$15,000 - $19,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|3	|Divorced	|	|4	|$20,000 - $39,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|3	|Divorced	|	|5	|$40,000 - $59,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|3	|Divorced	|	|6	|$60,000 - $79,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|3	|Divorced	|	|7	|$80,000 - $99,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|3	|Divorced	|	|8	|$100,000 - $199,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|3	|Divorced	|	|9	|$200,000 - $499,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|3	|Divorced	|	|10	|$500,000 - $999,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|3	|Divorced	|	|11	|>$1,000,000	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|4	|Widow	|	|0	|Choose One	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|4	|Widow	|	|1	|$0 - $11,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|4	|Widow	|	|2	|$12,000 - $14,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|4	|Widow	|	|3	|$15,000 - $19,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|4	|Widow	|	|4	|$20,000 - $39,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|4	|Widow	|	|5	|$40,000 - $59,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|4	|Widow	|	|6	|$60,000 - $79,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|4	|Widow	|	|7	|$80,000 - $99,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|4	|Widow	|	|8	|$100,000 - $199,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|4	|Widow	|	|9	|$200,000 - $499,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|4	|Widow	|	|10	|$500,000 - $999,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|4	|Widow	|	|11	|>$1,000,000	|	|1|
      |0	|Mr	|	|1	|0	|0	|1	|4	|Widow	|	|0	|Choose One	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|4	|Widow	|	|1	|$0 - $11,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|4	|Widow	|	|2	|$12,000 - $14,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|4	|Widow	|	|3	|$15,000 - $19,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|4	|Widow	|	|4	|$20,000 - $39,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|4	|Widow	|	|5	|$40,000 - $59,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|4	|Widow	|	|6	|$60,000 - $79,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|4	|Widow	|	|7	|$80,000 - $99,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|4	|Widow	|	|8	|$100,000 - $199,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|4	|Widow	|	|9	|$200,000 - $499,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|4	|Widow	|	|10	|$500,000 - $999,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|4	|Widow	|	|11	|>$1,000,000	|	|2|
      |0	|Mr	|	|1	|0	|0	|1	|4	|Widow	|	|0	|Choose One	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|4	|Widow	|	|1	|$0 - $11,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|4	|Widow	|	|2	|$12,000 - $14,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|4	|Widow	|	|3	|$15,000 - $19,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|4	|Widow	|	|4	|$20,000 - $39,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|4	|Widow	|	|5	|$40,000 - $59,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|4	|Widow	|	|6	|$60,000 - $79,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|4	|Widow	|	|7	|$80,000 - $99,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|4	|Widow	|	|8	|$100,000 - $199,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|4	|Widow	|	|9	|$200,000 - $499,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|4	|Widow	|	|10	|$500,000 - $999,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|1	|4	|Widow	|	|11	|>$1,000,000	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|0	|(Select Status)	|	|0	|Choose One	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|0	|(Select Status)	|	|1	|$0 - $11,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|0	|(Select Status)	|	|2	|$12,000 - $14,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|0	|(Select Status)	|	|3	|$15,000 - $19,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|0	|(Select Status)	|	|4	|$20,000 - $39,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|0	|(Select Status)	|	|5	|$40,000 - $59,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|0	|(Select Status)	|	|6	|$60,000 - $79,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|0	|(Select Status)	|	|7	|$80,000 - $99,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|0	|(Select Status)	|	|8	|$100,000 - $199,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|0	|(Select Status)	|	|9	|$200,000 - $499,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|0	|(Select Status)	|	|10	|$500,000 - $999,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|0	|(Select Status)	|	|11	|>$1,000,000	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|0	|(Select Status)	|	|0	|Choose One	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|0	|(Select Status)	|	|1	|$0 - $11,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|0	|(Select Status)	|	|2	|$12,000 - $14,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|0	|(Select Status)	|	|3	|$15,000 - $19,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|0	|(Select Status)	|	|4	|$20,000 - $39,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|0	|(Select Status)	|	|5	|$40,000 - $59,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|0	|(Select Status)	|	|6	|$60,000 - $79,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|0	|(Select Status)	|	|7	|$80,000 - $99,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|0	|(Select Status)	|	|8	|$100,000 - $199,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|0	|(Select Status)	|	|9	|$200,000 - $499,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|0	|(Select Status)	|	|10	|$500,000 - $999,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|0	|(Select Status)	|	|11	|>$1,000,000	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|0	|(Select Status)	|	|0	|Choose One	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|0	|(Select Status)	|	|1	|$0 - $11,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|0	|(Select Status)	|	|2	|$12,000 - $14,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|0	|(Select Status)	|	|3	|$15,000 - $19,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|0	|(Select Status)	|	|4	|$20,000 - $39,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|0	|(Select Status)	|	|5	|$40,000 - $59,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|0	|(Select Status)	|	|6	|$60,000 - $79,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|0	|(Select Status)	|	|7	|$80,000 - $99,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|0	|(Select Status)	|	|8	|$100,000 - $199,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|0	|(Select Status)	|	|9	|$200,000 - $499,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|0	|(Select Status)	|	|10	|$500,000 - $999,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|0	|(Select Status)	|	|11	|>$1,000,000	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|1	|Married	|	|0	|Choose One	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|1	|Married	|	|1	|$0 - $11,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|1	|Married	|	|2	|$12,000 - $14,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|1	|Married	|	|3	|$15,000 - $19,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|1	|Married	|	|4	|$20,000 - $39,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|1	|Married	|	|5	|$40,000 - $59,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|1	|Married	|	|6	|$60,000 - $79,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|1	|Married	|	|7	|$80,000 - $99,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|1	|Married	|	|8	|$100,000 - $199,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|1	|Married	|	|9	|$200,000 - $499,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|1	|Married	|	|10	|$500,000 - $999,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|1	|Married	|	|11	|>$1,000,000	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|1	|Married	|	|0	|Choose One	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|1	|Married	|	|1	|$0 - $11,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|1	|Married	|	|2	|$12,000 - $14,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|1	|Married	|	|3	|$15,000 - $19,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|1	|Married	|	|4	|$20,000 - $39,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|1	|Married	|	|5	|$40,000 - $59,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|1	|Married	|	|6	|$60,000 - $79,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|1	|Married	|	|7	|$80,000 - $99,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|1	|Married	|	|8	|$100,000 - $199,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|1	|Married	|	|9	|$200,000 - $499,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|1	|Married	|	|10	|$500,000 - $999,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|1	|Married	|	|11	|>$1,000,000	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|1	|Married	|	|0	|Choose One	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|1	|Married	|	|1	|$0 - $11,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|1	|Married	|	|2	|$12,000 - $14,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|1	|Married	|	|3	|$15,000 - $19,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|1	|Married	|	|4	|$20,000 - $39,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|1	|Married	|	|5	|$40,000 - $59,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|1	|Married	|	|6	|$60,000 - $79,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|1	|Married	|	|7	|$80,000 - $99,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|1	|Married	|	|8	|$100,000 - $199,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|1	|Married	|	|9	|$200,000 - $499,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|1	|Married	|	|10	|$500,000 - $999,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|1	|Married	|	|11	|>$1,000,000	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|1	|Single	|	|0	|Choose One	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|2	|Single	|	|1	|$0 - $11,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|2	|Single	|	|2	|$12,000 - $14,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|2	|Single	|	|3	|$15,000 - $19,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|2	|Single	|	|4	|$20,000 - $39,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|2	|Single	|	|5	|$40,000 - $59,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|2	|Single	|	|6	|$60,000 - $79,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|2	|Single	|	|7	|$80,000 - $99,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|2	|Single	|	|8	|$100,000 - $199,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|2	|Single	|	|9	|$200,000 - $499,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|2	|Single	|	|10	|$500,000 - $999,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|2	|Single	|	|11	|>$1,000,000	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|2	|Single	|	|0	|Choose One	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|2	|Single	|	|1	|$0 - $11,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|2	|Single	|	|2	|$12,000 - $14,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|2	|Single	|	|3	|$15,000 - $19,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|2	|Single	|	|4	|$20,000 - $39,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|2	|Single	|	|5	|$40,000 - $59,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|2	|Single	|	|6	|$60,000 - $79,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|2	|Single	|	|7	|$80,000 - $99,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|2	|Single	|	|8	|$100,000 - $199,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|2	|Single	|	|9	|$200,000 - $499,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|2	|Single	|	|10	|$500,000 - $999,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|2	|Single	|	|11	|>$1,000,000	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|2	|Single	|	|0	|Choose One	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|2	|Single	|	|1	|$0 - $11,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|2	|Single	|	|2	|$12,000 - $14,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|2	|Single	|	|3	|$15,000 - $19,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|2	|Single	|	|4	|$20,000 - $39,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|2	|Single	|	|5	|$40,000 - $59,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|2	|Single	|	|6	|$60,000 - $79,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|2	|Single	|	|7	|$80,000 - $99,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|2	|Single	|	|8	|$100,000 - $199,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|2	|Single	|	|9	|$200,000 - $499,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|2	|Single	|	|10	|$500,000 - $999,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|2	|Single	|	|11	|>$1,000,000	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|3	|Divorced	|	|0	|Choose One	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|3	|Divorced	|	|1	|$0 - $11,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|3	|Divorced	|	|2	|$12,000 - $14,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|3	|Divorced	|	|3	|$15,000 - $19,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|3	|Divorced	|	|4	|$20,000 - $39,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|3	|Divorced	|	|5	|$40,000 - $59,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|3	|Divorced	|	|6	|$60,000 - $79,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|3	|Divorced	|	|7	|$80,000 - $99,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|3	|Divorced	|	|8	|$100,000 - $199,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|3	|Divorced	|	|9	|$200,000 - $499,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|3	|Divorced	|	|10	|$500,000 - $999,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|3	|Divorced	|	|11	|>$1,000,000	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|3	|Divorced	|	|0	|Choose One	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|3	|Divorced	|	|1	|$0 - $11,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|3	|Divorced	|	|2	|$12,000 - $14,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|3	|Divorced	|	|3	|$15,000 - $19,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|3	|Divorced	|	|4	|$20,000 - $39,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|3	|Divorced	|	|5	|$40,000 - $59,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|3	|Divorced	|	|6	|$60,000 - $79,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|3	|Divorced	|	|7	|$80,000 - $99,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|3	|Divorced	|	|8	|$100,000 - $199,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|3	|Divorced	|	|9	|$200,000 - $499,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|3	|Divorced	|	|10	|$500,000 - $999,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|3	|Divorced	|	|11	|>$1,000,000	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|3	|Divorced	|	|0	|Choose One	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|3	|Divorced	|	|1	|$0 - $11,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|3	|Divorced	|	|2	|$12,000 - $14,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|3	|Divorced	|	|3	|$15,000 - $19,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|3	|Divorced	|	|4	|$20,000 - $39,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|3	|Divorced	|	|5	|$40,000 - $59,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|3	|Divorced	|	|6	|$60,000 - $79,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|3	|Divorced	|	|7	|$80,000 - $99,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|3	|Divorced	|	|8	|$100,000 - $199,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|3	|Divorced	|	|9	|$200,000 - $499,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|3	|Divorced	|	|10	|$500,000 - $999,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|3	|Divorced	|	|11	|>$1,000,000	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|4	|Widow	|	|0	|Choose One	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|4	|Widow	|	|1	|$0 - $11,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|4	|Widow	|	|2	|$12,000 - $14,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|4	|Widow	|	|3	|$15,000 - $19,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|4	|Widow	|	|4	|$20,000 - $39,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|4	|Widow	|	|5	|$40,000 - $59,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|4	|Widow	|	|6	|$60,000 - $79,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|4	|Widow	|	|7	|$80,000 - $99,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|4	|Widow	|	|8	|$100,000 - $199,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|4	|Widow	|	|9	|$200,000 - $499,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|4	|Widow	|	|10	|$500,000 - $999,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|4	|Widow	|	|11	|>$1,000,000	|	|1|
      |0	|Mr	|	|1	|0	|0	|2	|4	|Widow	|	|0	|Choose One	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|4	|Widow	|	|1	|$0 - $11,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|4	|Widow	|	|2	|$12,000 - $14,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|4	|Widow	|	|3	|$15,000 - $19,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|4	|Widow	|	|4	|$20,000 - $39,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|4	|Widow	|	|5	|$40,000 - $59,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|4	|Widow	|	|6	|$60,000 - $79,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|4	|Widow	|	|7	|$80,000 - $99,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|4	|Widow	|	|8	|$100,000 - $199,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|4	|Widow	|	|9	|$200,000 - $499,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|4	|Widow	|	|10	|$500,000 - $999,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|4	|Widow	|	|11	|>$1,000,000	|	|2|
      |0	|Mr	|	|1	|0	|0	|2	|4	|Widow	|	|0	|Choose One	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|4	|Widow	|	|1	|$0 - $11,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|4	|Widow	|	|2	|$12,000 - $14,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|4	|Widow	|	|3	|$15,000 - $19,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|4	|Widow	|	|4	|$20,000 - $39,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|4	|Widow	|	|5	|$40,000 - $59,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|4	|Widow	|	|6	|$60,000 - $79,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|4	|Widow	|	|7	|$80,000 - $99,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|4	|Widow	|	|8	|$100,000 - $199,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|4	|Widow	|	|9	|$200,000 - $499,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|4	|Widow	|	|10	|$500,000 - $999,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|2	|4	|Widow	|	|11	|>$1,000,000	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|0	|(Select Status)	|	|0	|Choose One	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|0	|(Select Status)	|	|1	|$0 - $11,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|0	|(Select Status)	|	|2	|$12,000 - $14,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|0	|(Select Status)	|	|3	|$15,000 - $19,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|0	|(Select Status)	|	|4	|$20,000 - $39,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|0	|(Select Status)	|	|5	|$40,000 - $59,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|0	|(Select Status)	|	|6	|$60,000 - $79,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|0	|(Select Status)	|	|7	|$80,000 - $99,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|0	|(Select Status)	|	|8	|$100,000 - $199,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|0	|(Select Status)	|	|9	|$200,000 - $499,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|0	|(Select Status)	|	|10	|$500,000 - $999,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|0	|(Select Status)	|	|11	|>$1,000,000	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|0	|(Select Status)	|	|0	|Choose One	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|0	|(Select Status)	|	|1	|$0 - $11,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|0	|(Select Status)	|	|2	|$12,000 - $14,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|0	|(Select Status)	|	|3	|$15,000 - $19,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|0	|(Select Status)	|	|4	|$20,000 - $39,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|0	|(Select Status)	|	|5	|$40,000 - $59,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|0	|(Select Status)	|	|6	|$60,000 - $79,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|0	|(Select Status)	|	|7	|$80,000 - $99,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|0	|(Select Status)	|	|8	|$100,000 - $199,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|0	|(Select Status)	|	|9	|$200,000 - $499,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|0	|(Select Status)	|	|10	|$500,000 - $999,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|0	|(Select Status)	|	|11	|>$1,000,000	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|0	|(Select Status)	|	|0	|Choose One	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|0	|(Select Status)	|	|1	|$0 - $11,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|0	|(Select Status)	|	|2	|$12,000 - $14,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|0	|(Select Status)	|	|3	|$15,000 - $19,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|0	|(Select Status)	|	|4	|$20,000 - $39,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|0	|(Select Status)	|	|5	|$40,000 - $59,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|0	|(Select Status)	|	|6	|$60,000 - $79,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|0	|(Select Status)	|	|7	|$80,000 - $99,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|0	|(Select Status)	|	|8	|$100,000 - $199,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|0	|(Select Status)	|	|9	|$200,000 - $499,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|0	|(Select Status)	|	|10	|$500,000 - $999,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|0	|(Select Status)	|	|11	|>$1,000,000	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|1	|Married	|	|0	|Choose One	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|1	|Married	|	|1	|$0 - $11,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|1	|Married	|	|2	|$12,000 - $14,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|1	|Married	|	|3	|$15,000 - $19,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|1	|Married	|	|4	|$20,000 - $39,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|1	|Married	|	|5	|$40,000 - $59,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|1	|Married	|	|6	|$60,000 - $79,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|1	|Married	|	|7	|$80,000 - $99,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|1	|Married	|	|8	|$100,000 - $199,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|1	|Married	|	|9	|$200,000 - $499,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|1	|Married	|	|10	|$500,000 - $999,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|1	|Married	|	|11	|>$1,000,000	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|1	|Married	|	|0	|Choose One	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|1	|Married	|	|1	|$0 - $11,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|1	|Married	|	|2	|$12,000 - $14,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|1	|Married	|	|3	|$15,000 - $19,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|1	|Married	|	|4	|$20,000 - $39,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|1	|Married	|	|5	|$40,000 - $59,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|1	|Married	|	|6	|$60,000 - $79,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|1	|Married	|	|7	|$80,000 - $99,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|1	|Married	|	|8	|$100,000 - $199,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|1	|Married	|	|9	|$200,000 - $499,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|1	|Married	|	|10	|$500,000 - $999,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|1	|Married	|	|11	|>$1,000,000	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|1	|Married	|	|0	|Choose One	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|1	|Married	|	|1	|$0 - $11,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|1	|Married	|	|2	|$12,000 - $14,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|1	|Married	|	|3	|$15,000 - $19,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|1	|Married	|	|4	|$20,000 - $39,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|1	|Married	|	|5	|$40,000 - $59,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|1	|Married	|	|6	|$60,000 - $79,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|1	|Married	|	|7	|$80,000 - $99,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|1	|Married	|	|8	|$100,000 - $199,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|1	|Married	|	|9	|$200,000 - $499,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|1	|Married	|	|10	|$500,000 - $999,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|1	|Married	|	|11	|>$1,000,000	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|1	|Single	|	|0	|Choose One	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|2	|Single	|	|1	|$0 - $11,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|2	|Single	|	|2	|$12,000 - $14,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|2	|Single	|	|3	|$15,000 - $19,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|2	|Single	|	|4	|$20,000 - $39,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|2	|Single	|	|5	|$40,000 - $59,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|2	|Single	|	|6	|$60,000 - $79,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|2	|Single	|	|7	|$80,000 - $99,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|2	|Single	|	|8	|$100,000 - $199,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|2	|Single	|	|9	|$200,000 - $499,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|2	|Single	|	|10	|$500,000 - $999,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|2	|Single	|	|11	|>$1,000,000	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|2	|Single	|	|0	|Choose One	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|2	|Single	|	|1	|$0 - $11,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|2	|Single	|	|2	|$12,000 - $14,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|2	|Single	|	|3	|$15,000 - $19,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|2	|Single	|	|4	|$20,000 - $39,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|2	|Single	|	|5	|$40,000 - $59,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|2	|Single	|	|6	|$60,000 - $79,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|2	|Single	|	|7	|$80,000 - $99,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|2	|Single	|	|8	|$100,000 - $199,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|2	|Single	|	|9	|$200,000 - $499,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|2	|Single	|	|10	|$500,000 - $999,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|2	|Single	|	|11	|>$1,000,000	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|2	|Single	|	|0	|Choose One	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|2	|Single	|	|1	|$0 - $11,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|2	|Single	|	|2	|$12,000 - $14,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|2	|Single	|	|3	|$15,000 - $19,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|2	|Single	|	|4	|$20,000 - $39,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|2	|Single	|	|5	|$40,000 - $59,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|2	|Single	|	|6	|$60,000 - $79,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|2	|Single	|	|7	|$80,000 - $99,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|2	|Single	|	|8	|$100,000 - $199,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|2	|Single	|	|9	|$200,000 - $499,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|2	|Single	|	|10	|$500,000 - $999,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|2	|Single	|	|11	|>$1,000,000	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|3	|Divorced	|	|0	|Choose One	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|3	|Divorced	|	|1	|$0 - $11,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|3	|Divorced	|	|2	|$12,000 - $14,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|3	|Divorced	|	|3	|$15,000 - $19,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|3	|Divorced	|	|4	|$20,000 - $39,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|3	|Divorced	|	|5	|$40,000 - $59,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|3	|Divorced	|	|6	|$60,000 - $79,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|3	|Divorced	|	|7	|$80,000 - $99,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|3	|Divorced	|	|8	|$100,000 - $199,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|3	|Divorced	|	|9	|$200,000 - $499,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|3	|Divorced	|	|10	|$500,000 - $999,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|3	|Divorced	|	|11	|>$1,000,000	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|3	|Divorced	|	|0	|Choose One	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|3	|Divorced	|	|1	|$0 - $11,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|3	|Divorced	|	|2	|$12,000 - $14,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|3	|Divorced	|	|3	|$15,000 - $19,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|3	|Divorced	|	|4	|$20,000 - $39,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|3	|Divorced	|	|5	|$40,000 - $59,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|3	|Divorced	|	|6	|$60,000 - $79,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|3	|Divorced	|	|7	|$80,000 - $99,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|3	|Divorced	|	|8	|$100,000 - $199,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|3	|Divorced	|	|9	|$200,000 - $499,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|3	|Divorced	|	|10	|$500,000 - $999,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|3	|Divorced	|	|11	|>$1,000,000	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|3	|Divorced	|	|0	|Choose One	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|3	|Divorced	|	|1	|$0 - $11,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|3	|Divorced	|	|2	|$12,000 - $14,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|3	|Divorced	|	|3	|$15,000 - $19,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|3	|Divorced	|	|4	|$20,000 - $39,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|3	|Divorced	|	|5	|$40,000 - $59,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|3	|Divorced	|	|6	|$60,000 - $79,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|3	|Divorced	|	|7	|$80,000 - $99,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|3	|Divorced	|	|8	|$100,000 - $199,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|3	|Divorced	|	|9	|$200,000 - $499,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|3	|Divorced	|	|10	|$500,000 - $999,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|3	|Divorced	|	|11	|>$1,000,000	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|4	|Widow	|	|0	|Choose One	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|4	|Widow	|	|1	|$0 - $11,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|4	|Widow	|	|2	|$12,000 - $14,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|4	|Widow	|	|3	|$15,000 - $19,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|4	|Widow	|	|4	|$20,000 - $39,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|4	|Widow	|	|5	|$40,000 - $59,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|4	|Widow	|	|6	|$60,000 - $79,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|4	|Widow	|	|7	|$80,000 - $99,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|4	|Widow	|	|8	|$100,000 - $199,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|4	|Widow	|	|9	|$200,000 - $499,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|4	|Widow	|	|10	|$500,000 - $999,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|4	|Widow	|	|11	|>$1,000,000	|	|1|
      |0	|Mr	|	|1	|0	|0	|3	|4	|Widow	|	|0	|Choose One	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|4	|Widow	|	|1	|$0 - $11,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|4	|Widow	|	|2	|$12,000 - $14,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|4	|Widow	|	|3	|$15,000 - $19,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|4	|Widow	|	|4	|$20,000 - $39,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|4	|Widow	|	|5	|$40,000 - $59,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|4	|Widow	|	|6	|$60,000 - $79,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|4	|Widow	|	|7	|$80,000 - $99,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|4	|Widow	|	|8	|$100,000 - $199,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|4	|Widow	|	|9	|$200,000 - $499,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|4	|Widow	|	|10	|$500,000 - $999,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|4	|Widow	|	|11	|>$1,000,000	|	|2|
      |0	|Mr	|	|1	|0	|0	|3	|4	|Widow	|	|0	|Choose One	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|4	|Widow	|	|1	|$0 - $11,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|4	|Widow	|	|2	|$12,000 - $14,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|4	|Widow	|	|3	|$15,000 - $19,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|4	|Widow	|	|4	|$20,000 - $39,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|4	|Widow	|	|5	|$40,000 - $59,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|4	|Widow	|	|6	|$60,000 - $79,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|4	|Widow	|	|7	|$80,000 - $99,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|4	|Widow	|	|8	|$100,000 - $199,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|4	|Widow	|	|9	|$200,000 - $499,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|4	|Widow	|	|10	|$500,000 - $999,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|3	|4	|Widow	|	|11	|>$1,000,000	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|0	|(Select Status)	|	|0	|Choose One	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|0	|(Select Status)	|	|1	|$0 - $11,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|0	|(Select Status)	|	|2	|$12,000 - $14,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|0	|(Select Status)	|	|3	|$15,000 - $19,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|0	|(Select Status)	|	|4	|$20,000 - $39,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|0	|(Select Status)	|	|5	|$40,000 - $59,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|0	|(Select Status)	|	|6	|$60,000 - $79,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|0	|(Select Status)	|	|7	|$80,000 - $99,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|0	|(Select Status)	|	|8	|$100,000 - $199,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|0	|(Select Status)	|	|9	|$200,000 - $499,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|0	|(Select Status)	|	|10	|$500,000 - $999,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|0	|(Select Status)	|	|11	|>$1,000,000	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|0	|(Select Status)	|	|0	|Choose One	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|0	|(Select Status)	|	|1	|$0 - $11,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|0	|(Select Status)	|	|2	|$12,000 - $14,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|0	|(Select Status)	|	|3	|$15,000 - $19,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|0	|(Select Status)	|	|4	|$20,000 - $39,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|0	|(Select Status)	|	|5	|$40,000 - $59,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|0	|(Select Status)	|	|6	|$60,000 - $79,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|0	|(Select Status)	|	|7	|$80,000 - $99,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|0	|(Select Status)	|	|8	|$100,000 - $199,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|0	|(Select Status)	|	|9	|$200,000 - $499,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|0	|(Select Status)	|	|10	|$500,000 - $999,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|0	|(Select Status)	|	|11	|>$1,000,000	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|0	|(Select Status)	|	|0	|Choose One	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|0	|(Select Status)	|	|1	|$0 - $11,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|0	|(Select Status)	|	|2	|$12,000 - $14,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|0	|(Select Status)	|	|3	|$15,000 - $19,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|0	|(Select Status)	|	|4	|$20,000 - $39,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|0	|(Select Status)	|	|5	|$40,000 - $59,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|0	|(Select Status)	|	|6	|$60,000 - $79,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|0	|(Select Status)	|	|7	|$80,000 - $99,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|0	|(Select Status)	|	|8	|$100,000 - $199,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|0	|(Select Status)	|	|9	|$200,000 - $499,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|0	|(Select Status)	|	|10	|$500,000 - $999,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|0	|(Select Status)	|	|11	|>$1,000,000	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|1	|Married	|	|0	|Choose One	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|1	|Married	|	|1	|$0 - $11,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|1	|Married	|	|2	|$12,000 - $14,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|1	|Married	|	|3	|$15,000 - $19,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|1	|Married	|	|4	|$20,000 - $39,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|1	|Married	|	|5	|$40,000 - $59,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|1	|Married	|	|6	|$60,000 - $79,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|1	|Married	|	|7	|$80,000 - $99,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|1	|Married	|	|8	|$100,000 - $199,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|1	|Married	|	|9	|$200,000 - $499,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|1	|Married	|	|10	|$500,000 - $999,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|1	|Married	|	|11	|>$1,000,000	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|1	|Married	|	|0	|Choose One	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|1	|Married	|	|1	|$0 - $11,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|1	|Married	|	|2	|$12,000 - $14,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|1	|Married	|	|3	|$15,000 - $19,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|1	|Married	|	|4	|$20,000 - $39,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|1	|Married	|	|5	|$40,000 - $59,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|1	|Married	|	|6	|$60,000 - $79,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|1	|Married	|	|7	|$80,000 - $99,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|1	|Married	|	|8	|$100,000 - $199,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|1	|Married	|	|9	|$200,000 - $499,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|1	|Married	|	|10	|$500,000 - $999,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|1	|Married	|	|11	|>$1,000,000	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|1	|Married	|	|0	|Choose One	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|1	|Married	|	|1	|$0 - $11,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|1	|Married	|	|2	|$12,000 - $14,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|1	|Married	|	|3	|$15,000 - $19,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|1	|Married	|	|4	|$20,000 - $39,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|1	|Married	|	|5	|$40,000 - $59,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|1	|Married	|	|6	|$60,000 - $79,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|1	|Married	|	|7	|$80,000 - $99,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|1	|Married	|	|8	|$100,000 - $199,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|1	|Married	|	|9	|$200,000 - $499,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|1	|Married	|	|10	|$500,000 - $999,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|1	|Married	|	|11	|>$1,000,000	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|1	|Single	|	|0	|Choose One	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|2	|Single	|	|1	|$0 - $11,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|2	|Single	|	|2	|$12,000 - $14,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|2	|Single	|	|3	|$15,000 - $19,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|2	|Single	|	|4	|$20,000 - $39,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|2	|Single	|	|5	|$40,000 - $59,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|2	|Single	|	|6	|$60,000 - $79,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|2	|Single	|	|7	|$80,000 - $99,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|2	|Single	|	|8	|$100,000 - $199,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|2	|Single	|	|9	|$200,000 - $499,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|2	|Single	|	|10	|$500,000 - $999,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|2	|Single	|	|11	|>$1,000,000	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|2	|Single	|	|0	|Choose One	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|2	|Single	|	|1	|$0 - $11,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|2	|Single	|	|2	|$12,000 - $14,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|2	|Single	|	|3	|$15,000 - $19,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|2	|Single	|	|4	|$20,000 - $39,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|2	|Single	|	|5	|$40,000 - $59,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|2	|Single	|	|6	|$60,000 - $79,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|2	|Single	|	|7	|$80,000 - $99,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|2	|Single	|	|8	|$100,000 - $199,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|2	|Single	|	|9	|$200,000 - $499,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|2	|Single	|	|10	|$500,000 - $999,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|2	|Single	|	|11	|>$1,000,000	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|2	|Single	|	|0	|Choose One	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|2	|Single	|	|1	|$0 - $11,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|2	|Single	|	|2	|$12,000 - $14,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|2	|Single	|	|3	|$15,000 - $19,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|2	|Single	|	|4	|$20,000 - $39,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|2	|Single	|	|5	|$40,000 - $59,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|2	|Single	|	|6	|$60,000 - $79,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|2	|Single	|	|7	|$80,000 - $99,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|2	|Single	|	|8	|$100,000 - $199,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|2	|Single	|	|9	|$200,000 - $499,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|2	|Single	|	|10	|$500,000 - $999,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|2	|Single	|	|11	|>$1,000,000	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|3	|Divorced	|	|0	|Choose One	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|3	|Divorced	|	|1	|$0 - $11,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|3	|Divorced	|	|2	|$12,000 - $14,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|3	|Divorced	|	|3	|$15,000 - $19,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|3	|Divorced	|	|4	|$20,000 - $39,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|3	|Divorced	|	|5	|$40,000 - $59,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|3	|Divorced	|	|6	|$60,000 - $79,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|3	|Divorced	|	|7	|$80,000 - $99,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|3	|Divorced	|	|8	|$100,000 - $199,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|3	|Divorced	|	|9	|$200,000 - $499,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|3	|Divorced	|	|10	|$500,000 - $999,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|3	|Divorced	|	|11	|>$1,000,000	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|3	|Divorced	|	|0	|Choose One	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|3	|Divorced	|	|1	|$0 - $11,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|3	|Divorced	|	|2	|$12,000 - $14,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|3	|Divorced	|	|3	|$15,000 - $19,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|3	|Divorced	|	|4	|$20,000 - $39,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|3	|Divorced	|	|5	|$40,000 - $59,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|3	|Divorced	|	|6	|$60,000 - $79,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|3	|Divorced	|	|7	|$80,000 - $99,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|3	|Divorced	|	|8	|$100,000 - $199,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|3	|Divorced	|	|9	|$200,000 - $499,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|3	|Divorced	|	|10	|$500,000 - $999,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|3	|Divorced	|	|11	|>$1,000,000	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|3	|Divorced	|	|0	|Choose One	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|3	|Divorced	|	|1	|$0 - $11,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|3	|Divorced	|	|2	|$12,000 - $14,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|3	|Divorced	|	|3	|$15,000 - $19,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|3	|Divorced	|	|4	|$20,000 - $39,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|3	|Divorced	|	|5	|$40,000 - $59,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|3	|Divorced	|	|6	|$60,000 - $79,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|3	|Divorced	|	|7	|$80,000 - $99,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|3	|Divorced	|	|8	|$100,000 - $199,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|3	|Divorced	|	|9	|$200,000 - $499,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|3	|Divorced	|	|10	|$500,000 - $999,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|3	|Divorced	|	|11	|>$1,000,000	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|4	|Widow	|	|0	|Choose One	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|4	|Widow	|	|1	|$0 - $11,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|4	|Widow	|	|2	|$12,000 - $14,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|4	|Widow	|	|3	|$15,000 - $19,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|4	|Widow	|	|4	|$20,000 - $39,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|4	|Widow	|	|5	|$40,000 - $59,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|4	|Widow	|	|6	|$60,000 - $79,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|4	|Widow	|	|7	|$80,000 - $99,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|4	|Widow	|	|8	|$100,000 - $199,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|4	|Widow	|	|9	|$200,000 - $499,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|4	|Widow	|	|10	|$500,000 - $999,999	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|4	|Widow	|	|11	|>$1,000,000	|	|1|
      |0	|Mr	|	|1	|0	|0	|4	|4	|Widow	|	|0	|Choose One	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|4	|Widow	|	|1	|$0 - $11,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|4	|Widow	|	|2	|$12,000 - $14,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|4	|Widow	|	|3	|$15,000 - $19,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|4	|Widow	|	|4	|$20,000 - $39,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|4	|Widow	|	|5	|$40,000 - $59,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|4	|Widow	|	|6	|$60,000 - $79,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|4	|Widow	|	|7	|$80,000 - $99,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|4	|Widow	|	|8	|$100,000 - $199,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|4	|Widow	|	|9	|$200,000 - $499,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|4	|Widow	|	|10	|$500,000 - $999,999	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|4	|Widow	|	|11	|>$1,000,000	|	|2|
      |0	|Mr	|	|1	|0	|0	|4	|4	|Widow	|	|0	|Choose One	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|4	|Widow	|	|1	|$0 - $11,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|4	|Widow	|	|2	|$12,000 - $14,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|4	|Widow	|	|3	|$15,000 - $19,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|4	|Widow	|	|4	|$20,000 - $39,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|4	|Widow	|	|5	|$40,000 - $59,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|4	|Widow	|	|6	|$60,000 - $79,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|4	|Widow	|	|7	|$80,000 - $99,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|4	|Widow	|	|8	|$100,000 - $199,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|4	|Widow	|	|9	|$200,000 - $499,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|4	|Widow	|	|10	|$500,000 - $999,999	|	|3|
      |0	|Mr	|	|1	|0	|0	|4	|4	|Widow	|	|11	|>$1,000,000	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|0	|(Select Status)	|	|0	|Choose One	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|0	|(Select Status)	|	|1	|$0 - $11,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|0	|(Select Status)	|	|2	|$12,000 - $14,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|0	|(Select Status)	|	|3	|$15,000 - $19,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|0	|(Select Status)	|	|4	|$20,000 - $39,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|0	|(Select Status)	|	|5	|$40,000 - $59,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|0	|(Select Status)	|	|6	|$60,000 - $79,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|0	|(Select Status)	|	|7	|$80,000 - $99,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|0	|(Select Status)	|	|8	|$100,000 - $199,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|0	|(Select Status)	|	|9	|$200,000 - $499,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|0	|(Select Status)	|	|10	|$500,000 - $999,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|0	|(Select Status)	|	|11	|>$1,000,000	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|0	|(Select Status)	|	|0	|Choose One	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|0	|(Select Status)	|	|1	|$0 - $11,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|0	|(Select Status)	|	|2	|$12,000 - $14,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|0	|(Select Status)	|	|3	|$15,000 - $19,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|0	|(Select Status)	|	|4	|$20,000 - $39,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|0	|(Select Status)	|	|5	|$40,000 - $59,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|0	|(Select Status)	|	|6	|$60,000 - $79,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|0	|(Select Status)	|	|7	|$80,000 - $99,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|0	|(Select Status)	|	|8	|$100,000 - $199,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|0	|(Select Status)	|	|9	|$200,000 - $499,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|0	|(Select Status)	|	|10	|$500,000 - $999,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|0	|(Select Status)	|	|11	|>$1,000,000	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|0	|(Select Status)	|	|0	|Choose One	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|0	|(Select Status)	|	|1	|$0 - $11,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|0	|(Select Status)	|	|2	|$12,000 - $14,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|0	|(Select Status)	|	|3	|$15,000 - $19,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|0	|(Select Status)	|	|4	|$20,000 - $39,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|0	|(Select Status)	|	|5	|$40,000 - $59,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|0	|(Select Status)	|	|6	|$60,000 - $79,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|0	|(Select Status)	|	|7	|$80,000 - $99,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|0	|(Select Status)	|	|8	|$100,000 - $199,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|0	|(Select Status)	|	|9	|$200,000 - $499,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|0	|(Select Status)	|	|10	|$500,000 - $999,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|0	|(Select Status)	|	|11	|>$1,000,000	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|1	|Married	|	|0	|Choose One	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|1	|Married	|	|1	|$0 - $11,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|1	|Married	|	|2	|$12,000 - $14,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|1	|Married	|	|3	|$15,000 - $19,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|1	|Married	|	|4	|$20,000 - $39,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|1	|Married	|	|5	|$40,000 - $59,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|1	|Married	|	|6	|$60,000 - $79,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|1	|Married	|	|7	|$80,000 - $99,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|1	|Married	|	|8	|$100,000 - $199,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|1	|Married	|	|9	|$200,000 - $499,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|1	|Married	|	|10	|$500,000 - $999,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|1	|Married	|	|11	|>$1,000,000	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|1	|Married	|	|0	|Choose One	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|1	|Married	|	|1	|$0 - $11,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|1	|Married	|	|2	|$12,000 - $14,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|1	|Married	|	|3	|$15,000 - $19,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|1	|Married	|	|4	|$20,000 - $39,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|1	|Married	|	|5	|$40,000 - $59,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|1	|Married	|	|6	|$60,000 - $79,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|1	|Married	|	|7	|$80,000 - $99,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|1	|Married	|	|8	|$100,000 - $199,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|1	|Married	|	|9	|$200,000 - $499,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|1	|Married	|	|10	|$500,000 - $999,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|1	|Married	|	|11	|>$1,000,000	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|1	|Married	|	|0	|Choose One	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|1	|Married	|	|1	|$0 - $11,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|1	|Married	|	|2	|$12,000 - $14,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|1	|Married	|	|3	|$15,000 - $19,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|1	|Married	|	|4	|$20,000 - $39,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|1	|Married	|	|5	|$40,000 - $59,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|1	|Married	|	|6	|$60,000 - $79,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|1	|Married	|	|7	|$80,000 - $99,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|1	|Married	|	|8	|$100,000 - $199,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|1	|Married	|	|9	|$200,000 - $499,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|1	|Married	|	|10	|$500,000 - $999,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|1	|Married	|	|11	|>$1,000,000	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|1	|Single	|	|0	|Choose One	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|2	|Single	|	|1	|$0 - $11,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|2	|Single	|	|2	|$12,000 - $14,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|2	|Single	|	|3	|$15,000 - $19,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|2	|Single	|	|4	|$20,000 - $39,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|2	|Single	|	|5	|$40,000 - $59,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|2	|Single	|	|6	|$60,000 - $79,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|2	|Single	|	|7	|$80,000 - $99,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|2	|Single	|	|8	|$100,000 - $199,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|2	|Single	|	|9	|$200,000 - $499,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|2	|Single	|	|10	|$500,000 - $999,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|2	|Single	|	|11	|>$1,000,000	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|2	|Single	|	|0	|Choose One	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|2	|Single	|	|1	|$0 - $11,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|2	|Single	|	|2	|$12,000 - $14,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|2	|Single	|	|3	|$15,000 - $19,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|2	|Single	|	|4	|$20,000 - $39,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|2	|Single	|	|5	|$40,000 - $59,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|2	|Single	|	|6	|$60,000 - $79,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|2	|Single	|	|7	|$80,000 - $99,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|2	|Single	|	|8	|$100,000 - $199,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|2	|Single	|	|9	|$200,000 - $499,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|2	|Single	|	|10	|$500,000 - $999,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|2	|Single	|	|11	|>$1,000,000	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|2	|Single	|	|0	|Choose One	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|2	|Single	|	|1	|$0 - $11,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|2	|Single	|	|2	|$12,000 - $14,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|2	|Single	|	|3	|$15,000 - $19,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|2	|Single	|	|4	|$20,000 - $39,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|2	|Single	|	|5	|$40,000 - $59,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|2	|Single	|	|6	|$60,000 - $79,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|2	|Single	|	|7	|$80,000 - $99,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|2	|Single	|	|8	|$100,000 - $199,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|2	|Single	|	|9	|$200,000 - $499,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|2	|Single	|	|10	|$500,000 - $999,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|2	|Single	|	|11	|>$1,000,000	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|3	|Divorced	|	|0	|Choose One	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|3	|Divorced	|	|1	|$0 - $11,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|3	|Divorced	|	|2	|$12,000 - $14,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|3	|Divorced	|	|3	|$15,000 - $19,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|3	|Divorced	|	|4	|$20,000 - $39,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|3	|Divorced	|	|5	|$40,000 - $59,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|3	|Divorced	|	|6	|$60,000 - $79,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|3	|Divorced	|	|7	|$80,000 - $99,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|3	|Divorced	|	|8	|$100,000 - $199,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|3	|Divorced	|	|9	|$200,000 - $499,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|3	|Divorced	|	|10	|$500,000 - $999,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|3	|Divorced	|	|11	|>$1,000,000	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|3	|Divorced	|	|0	|Choose One	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|3	|Divorced	|	|1	|$0 - $11,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|3	|Divorced	|	|2	|$12,000 - $14,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|3	|Divorced	|	|3	|$15,000 - $19,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|3	|Divorced	|	|4	|$20,000 - $39,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|3	|Divorced	|	|5	|$40,000 - $59,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|3	|Divorced	|	|6	|$60,000 - $79,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|3	|Divorced	|	|7	|$80,000 - $99,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|3	|Divorced	|	|8	|$100,000 - $199,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|3	|Divorced	|	|9	|$200,000 - $499,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|3	|Divorced	|	|10	|$500,000 - $999,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|3	|Divorced	|	|11	|>$1,000,000	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|3	|Divorced	|	|0	|Choose One	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|3	|Divorced	|	|1	|$0 - $11,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|3	|Divorced	|	|2	|$12,000 - $14,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|3	|Divorced	|	|3	|$15,000 - $19,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|3	|Divorced	|	|4	|$20,000 - $39,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|3	|Divorced	|	|5	|$40,000 - $59,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|3	|Divorced	|	|6	|$60,000 - $79,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|3	|Divorced	|	|7	|$80,000 - $99,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|3	|Divorced	|	|8	|$100,000 - $199,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|3	|Divorced	|	|9	|$200,000 - $499,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|3	|Divorced	|	|10	|$500,000 - $999,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|3	|Divorced	|	|11	|>$1,000,000	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|4	|Widow	|	|0	|Choose One	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|4	|Widow	|	|1	|$0 - $11,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|4	|Widow	|	|2	|$12,000 - $14,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|4	|Widow	|	|3	|$15,000 - $19,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|4	|Widow	|	|4	|$20,000 - $39,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|4	|Widow	|	|5	|$40,000 - $59,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|4	|Widow	|	|6	|$60,000 - $79,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|4	|Widow	|	|7	|$80,000 - $99,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|4	|Widow	|	|8	|$100,000 - $199,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|4	|Widow	|	|9	|$200,000 - $499,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|4	|Widow	|	|10	|$500,000 - $999,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|4	|Widow	|	|11	|>$1,000,000	|	|1|
      |0	|Mr	|	|1	|0	|1	|1	|4	|Widow	|	|0	|Choose One	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|4	|Widow	|	|1	|$0 - $11,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|4	|Widow	|	|2	|$12,000 - $14,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|4	|Widow	|	|3	|$15,000 - $19,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|4	|Widow	|	|4	|$20,000 - $39,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|4	|Widow	|	|5	|$40,000 - $59,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|4	|Widow	|	|6	|$60,000 - $79,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|4	|Widow	|	|7	|$80,000 - $99,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|4	|Widow	|	|8	|$100,000 - $199,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|4	|Widow	|	|9	|$200,000 - $499,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|4	|Widow	|	|10	|$500,000 - $999,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|4	|Widow	|	|11	|>$1,000,000	|	|2|
      |0	|Mr	|	|1	|0	|1	|1	|4	|Widow	|	|0	|Choose One	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|4	|Widow	|	|1	|$0 - $11,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|4	|Widow	|	|2	|$12,000 - $14,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|4	|Widow	|	|3	|$15,000 - $19,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|4	|Widow	|	|4	|$20,000 - $39,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|4	|Widow	|	|5	|$40,000 - $59,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|4	|Widow	|	|6	|$60,000 - $79,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|4	|Widow	|	|7	|$80,000 - $99,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|4	|Widow	|	|8	|$100,000 - $199,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|4	|Widow	|	|9	|$200,000 - $499,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|4	|Widow	|	|10	|$500,000 - $999,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|1	|4	|Widow	|	|11	|>$1,000,000	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|0	|(Select Status)	|	|0	|Choose One	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|0	|(Select Status)	|	|1	|$0 - $11,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|0	|(Select Status)	|	|2	|$12,000 - $14,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|0	|(Select Status)	|	|3	|$15,000 - $19,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|0	|(Select Status)	|	|4	|$20,000 - $39,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|0	|(Select Status)	|	|5	|$40,000 - $59,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|0	|(Select Status)	|	|6	|$60,000 - $79,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|0	|(Select Status)	|	|7	|$80,000 - $99,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|0	|(Select Status)	|	|8	|$100,000 - $199,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|0	|(Select Status)	|	|9	|$200,000 - $499,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|0	|(Select Status)	|	|10	|$500,000 - $999,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|0	|(Select Status)	|	|11	|>$1,000,000	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|0	|(Select Status)	|	|0	|Choose One	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|0	|(Select Status)	|	|1	|$0 - $11,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|0	|(Select Status)	|	|2	|$12,000 - $14,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|0	|(Select Status)	|	|3	|$15,000 - $19,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|0	|(Select Status)	|	|4	|$20,000 - $39,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|0	|(Select Status)	|	|5	|$40,000 - $59,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|0	|(Select Status)	|	|6	|$60,000 - $79,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|0	|(Select Status)	|	|7	|$80,000 - $99,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|0	|(Select Status)	|	|8	|$100,000 - $199,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|0	|(Select Status)	|	|9	|$200,000 - $499,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|0	|(Select Status)	|	|10	|$500,000 - $999,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|0	|(Select Status)	|	|11	|>$1,000,000	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|0	|(Select Status)	|	|0	|Choose One	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|0	|(Select Status)	|	|1	|$0 - $11,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|0	|(Select Status)	|	|2	|$12,000 - $14,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|0	|(Select Status)	|	|3	|$15,000 - $19,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|0	|(Select Status)	|	|4	|$20,000 - $39,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|0	|(Select Status)	|	|5	|$40,000 - $59,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|0	|(Select Status)	|	|6	|$60,000 - $79,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|0	|(Select Status)	|	|7	|$80,000 - $99,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|0	|(Select Status)	|	|8	|$100,000 - $199,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|0	|(Select Status)	|	|9	|$200,000 - $499,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|0	|(Select Status)	|	|10	|$500,000 - $999,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|0	|(Select Status)	|	|11	|>$1,000,000	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|1	|Married	|	|0	|Choose One	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|1	|Married	|	|1	|$0 - $11,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|1	|Married	|	|2	|$12,000 - $14,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|1	|Married	|	|3	|$15,000 - $19,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|1	|Married	|	|4	|$20,000 - $39,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|1	|Married	|	|5	|$40,000 - $59,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|1	|Married	|	|6	|$60,000 - $79,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|1	|Married	|	|7	|$80,000 - $99,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|1	|Married	|	|8	|$100,000 - $199,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|1	|Married	|	|9	|$200,000 - $499,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|1	|Married	|	|10	|$500,000 - $999,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|1	|Married	|	|11	|>$1,000,000	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|1	|Married	|	|0	|Choose One	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|1	|Married	|	|1	|$0 - $11,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|1	|Married	|	|2	|$12,000 - $14,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|1	|Married	|	|3	|$15,000 - $19,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|1	|Married	|	|4	|$20,000 - $39,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|1	|Married	|	|5	|$40,000 - $59,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|1	|Married	|	|6	|$60,000 - $79,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|1	|Married	|	|7	|$80,000 - $99,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|1	|Married	|	|8	|$100,000 - $199,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|1	|Married	|	|9	|$200,000 - $499,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|1	|Married	|	|10	|$500,000 - $999,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|1	|Married	|	|11	|>$1,000,000	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|1	|Married	|	|0	|Choose One	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|1	|Married	|	|1	|$0 - $11,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|1	|Married	|	|2	|$12,000 - $14,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|1	|Married	|	|3	|$15,000 - $19,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|1	|Married	|	|4	|$20,000 - $39,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|1	|Married	|	|5	|$40,000 - $59,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|1	|Married	|	|6	|$60,000 - $79,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|1	|Married	|	|7	|$80,000 - $99,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|1	|Married	|	|8	|$100,000 - $199,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|1	|Married	|	|9	|$200,000 - $499,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|1	|Married	|	|10	|$500,000 - $999,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|1	|Married	|	|11	|>$1,000,000	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|1	|Single	|	|0	|Choose One	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|2	|Single	|	|1	|$0 - $11,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|2	|Single	|	|2	|$12,000 - $14,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|2	|Single	|	|3	|$15,000 - $19,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|2	|Single	|	|4	|$20,000 - $39,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|2	|Single	|	|5	|$40,000 - $59,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|2	|Single	|	|6	|$60,000 - $79,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|2	|Single	|	|7	|$80,000 - $99,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|2	|Single	|	|8	|$100,000 - $199,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|2	|Single	|	|9	|$200,000 - $499,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|2	|Single	|	|10	|$500,000 - $999,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|2	|Single	|	|11	|>$1,000,000	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|2	|Single	|	|0	|Choose One	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|2	|Single	|	|1	|$0 - $11,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|2	|Single	|	|2	|$12,000 - $14,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|2	|Single	|	|3	|$15,000 - $19,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|2	|Single	|	|4	|$20,000 - $39,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|2	|Single	|	|5	|$40,000 - $59,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|2	|Single	|	|6	|$60,000 - $79,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|2	|Single	|	|7	|$80,000 - $99,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|2	|Single	|	|8	|$100,000 - $199,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|2	|Single	|	|9	|$200,000 - $499,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|2	|Single	|	|10	|$500,000 - $999,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|2	|Single	|	|11	|>$1,000,000	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|2	|Single	|	|0	|Choose One	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|2	|Single	|	|1	|$0 - $11,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|2	|Single	|	|2	|$12,000 - $14,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|2	|Single	|	|3	|$15,000 - $19,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|2	|Single	|	|4	|$20,000 - $39,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|2	|Single	|	|5	|$40,000 - $59,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|2	|Single	|	|6	|$60,000 - $79,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|2	|Single	|	|7	|$80,000 - $99,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|2	|Single	|	|8	|$100,000 - $199,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|2	|Single	|	|9	|$200,000 - $499,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|2	|Single	|	|10	|$500,000 - $999,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|2	|Single	|	|11	|>$1,000,000	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|3	|Divorced	|	|0	|Choose One	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|3	|Divorced	|	|1	|$0 - $11,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|3	|Divorced	|	|2	|$12,000 - $14,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|3	|Divorced	|	|3	|$15,000 - $19,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|3	|Divorced	|	|4	|$20,000 - $39,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|3	|Divorced	|	|5	|$40,000 - $59,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|3	|Divorced	|	|6	|$60,000 - $79,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|3	|Divorced	|	|7	|$80,000 - $99,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|3	|Divorced	|	|8	|$100,000 - $199,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|3	|Divorced	|	|9	|$200,000 - $499,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|3	|Divorced	|	|10	|$500,000 - $999,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|3	|Divorced	|	|11	|>$1,000,000	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|3	|Divorced	|	|0	|Choose One	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|3	|Divorced	|	|1	|$0 - $11,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|3	|Divorced	|	|2	|$12,000 - $14,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|3	|Divorced	|	|3	|$15,000 - $19,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|3	|Divorced	|	|4	|$20,000 - $39,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|3	|Divorced	|	|5	|$40,000 - $59,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|3	|Divorced	|	|6	|$60,000 - $79,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|3	|Divorced	|	|7	|$80,000 - $99,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|3	|Divorced	|	|8	|$100,000 - $199,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|3	|Divorced	|	|9	|$200,000 - $499,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|3	|Divorced	|	|10	|$500,000 - $999,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|3	|Divorced	|	|11	|>$1,000,000	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|3	|Divorced	|	|0	|Choose One	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|3	|Divorced	|	|1	|$0 - $11,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|3	|Divorced	|	|2	|$12,000 - $14,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|3	|Divorced	|	|3	|$15,000 - $19,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|3	|Divorced	|	|4	|$20,000 - $39,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|3	|Divorced	|	|5	|$40,000 - $59,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|3	|Divorced	|	|6	|$60,000 - $79,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|3	|Divorced	|	|7	|$80,000 - $99,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|3	|Divorced	|	|8	|$100,000 - $199,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|3	|Divorced	|	|9	|$200,000 - $499,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|3	|Divorced	|	|10	|$500,000 - $999,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|3	|Divorced	|	|11	|>$1,000,000	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|4	|Widow	|	|0	|Choose One	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|4	|Widow	|	|1	|$0 - $11,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|4	|Widow	|	|2	|$12,000 - $14,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|4	|Widow	|	|3	|$15,000 - $19,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|4	|Widow	|	|4	|$20,000 - $39,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|4	|Widow	|	|5	|$40,000 - $59,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|4	|Widow	|	|6	|$60,000 - $79,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|4	|Widow	|	|7	|$80,000 - $99,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|4	|Widow	|	|8	|$100,000 - $199,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|4	|Widow	|	|9	|$200,000 - $499,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|4	|Widow	|	|10	|$500,000 - $999,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|4	|Widow	|	|11	|>$1,000,000	|	|1|
      |0	|Mr	|	|1	|0	|1	|2	|4	|Widow	|	|0	|Choose One	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|4	|Widow	|	|1	|$0 - $11,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|4	|Widow	|	|2	|$12,000 - $14,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|4	|Widow	|	|3	|$15,000 - $19,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|4	|Widow	|	|4	|$20,000 - $39,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|4	|Widow	|	|5	|$40,000 - $59,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|4	|Widow	|	|6	|$60,000 - $79,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|4	|Widow	|	|7	|$80,000 - $99,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|4	|Widow	|	|8	|$100,000 - $199,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|4	|Widow	|	|9	|$200,000 - $499,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|4	|Widow	|	|10	|$500,000 - $999,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|4	|Widow	|	|11	|>$1,000,000	|	|2|
      |0	|Mr	|	|1	|0	|1	|2	|4	|Widow	|	|0	|Choose One	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|4	|Widow	|	|1	|$0 - $11,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|4	|Widow	|	|2	|$12,000 - $14,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|4	|Widow	|	|3	|$15,000 - $19,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|4	|Widow	|	|4	|$20,000 - $39,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|4	|Widow	|	|5	|$40,000 - $59,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|4	|Widow	|	|6	|$60,000 - $79,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|4	|Widow	|	|7	|$80,000 - $99,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|4	|Widow	|	|8	|$100,000 - $199,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|4	|Widow	|	|9	|$200,000 - $499,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|4	|Widow	|	|10	|$500,000 - $999,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|2	|4	|Widow	|	|11	|>$1,000,000	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|0	|(Select Status)	|	|0	|Choose One	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|0	|(Select Status)	|	|1	|$0 - $11,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|0	|(Select Status)	|	|2	|$12,000 - $14,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|0	|(Select Status)	|	|3	|$15,000 - $19,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|0	|(Select Status)	|	|4	|$20,000 - $39,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|0	|(Select Status)	|	|5	|$40,000 - $59,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|0	|(Select Status)	|	|6	|$60,000 - $79,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|0	|(Select Status)	|	|7	|$80,000 - $99,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|0	|(Select Status)	|	|8	|$100,000 - $199,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|0	|(Select Status)	|	|9	|$200,000 - $499,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|0	|(Select Status)	|	|10	|$500,000 - $999,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|0	|(Select Status)	|	|11	|>$1,000,000	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|0	|(Select Status)	|	|0	|Choose One	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|0	|(Select Status)	|	|1	|$0 - $11,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|0	|(Select Status)	|	|2	|$12,000 - $14,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|0	|(Select Status)	|	|3	|$15,000 - $19,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|0	|(Select Status)	|	|4	|$20,000 - $39,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|0	|(Select Status)	|	|5	|$40,000 - $59,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|0	|(Select Status)	|	|6	|$60,000 - $79,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|0	|(Select Status)	|	|7	|$80,000 - $99,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|0	|(Select Status)	|	|8	|$100,000 - $199,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|0	|(Select Status)	|	|9	|$200,000 - $499,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|0	|(Select Status)	|	|10	|$500,000 - $999,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|0	|(Select Status)	|	|11	|>$1,000,000	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|0	|(Select Status)	|	|0	|Choose One	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|0	|(Select Status)	|	|1	|$0 - $11,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|0	|(Select Status)	|	|2	|$12,000 - $14,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|0	|(Select Status)	|	|3	|$15,000 - $19,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|0	|(Select Status)	|	|4	|$20,000 - $39,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|0	|(Select Status)	|	|5	|$40,000 - $59,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|0	|(Select Status)	|	|6	|$60,000 - $79,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|0	|(Select Status)	|	|7	|$80,000 - $99,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|0	|(Select Status)	|	|8	|$100,000 - $199,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|0	|(Select Status)	|	|9	|$200,000 - $499,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|0	|(Select Status)	|	|10	|$500,000 - $999,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|0	|(Select Status)	|	|11	|>$1,000,000	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|1	|Married	|	|0	|Choose One	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|1	|Married	|	|1	|$0 - $11,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|1	|Married	|	|2	|$12,000 - $14,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|1	|Married	|	|3	|$15,000 - $19,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|1	|Married	|	|4	|$20,000 - $39,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|1	|Married	|	|5	|$40,000 - $59,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|1	|Married	|	|6	|$60,000 - $79,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|1	|Married	|	|7	|$80,000 - $99,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|1	|Married	|	|8	|$100,000 - $199,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|1	|Married	|	|9	|$200,000 - $499,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|1	|Married	|	|10	|$500,000 - $999,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|1	|Married	|	|11	|>$1,000,000	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|1	|Married	|	|0	|Choose One	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|1	|Married	|	|1	|$0 - $11,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|1	|Married	|	|2	|$12,000 - $14,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|1	|Married	|	|3	|$15,000 - $19,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|1	|Married	|	|4	|$20,000 - $39,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|1	|Married	|	|5	|$40,000 - $59,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|1	|Married	|	|6	|$60,000 - $79,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|1	|Married	|	|7	|$80,000 - $99,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|1	|Married	|	|8	|$100,000 - $199,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|1	|Married	|	|9	|$200,000 - $499,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|1	|Married	|	|10	|$500,000 - $999,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|1	|Married	|	|11	|>$1,000,000	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|1	|Married	|	|0	|Choose One	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|1	|Married	|	|1	|$0 - $11,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|1	|Married	|	|2	|$12,000 - $14,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|1	|Married	|	|3	|$15,000 - $19,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|1	|Married	|	|4	|$20,000 - $39,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|1	|Married	|	|5	|$40,000 - $59,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|1	|Married	|	|6	|$60,000 - $79,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|1	|Married	|	|7	|$80,000 - $99,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|1	|Married	|	|8	|$100,000 - $199,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|1	|Married	|	|9	|$200,000 - $499,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|1	|Married	|	|10	|$500,000 - $999,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|1	|Married	|	|11	|>$1,000,000	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|1	|Single	|	|0	|Choose One	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|2	|Single	|	|1	|$0 - $11,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|2	|Single	|	|2	|$12,000 - $14,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|2	|Single	|	|3	|$15,000 - $19,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|2	|Single	|	|4	|$20,000 - $39,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|2	|Single	|	|5	|$40,000 - $59,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|2	|Single	|	|6	|$60,000 - $79,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|2	|Single	|	|7	|$80,000 - $99,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|2	|Single	|	|8	|$100,000 - $199,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|2	|Single	|	|9	|$200,000 - $499,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|2	|Single	|	|10	|$500,000 - $999,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|2	|Single	|	|11	|>$1,000,000	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|2	|Single	|	|0	|Choose One	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|2	|Single	|	|1	|$0 - $11,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|2	|Single	|	|2	|$12,000 - $14,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|2	|Single	|	|3	|$15,000 - $19,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|2	|Single	|	|4	|$20,000 - $39,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|2	|Single	|	|5	|$40,000 - $59,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|2	|Single	|	|6	|$60,000 - $79,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|2	|Single	|	|7	|$80,000 - $99,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|2	|Single	|	|8	|$100,000 - $199,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|2	|Single	|	|9	|$200,000 - $499,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|2	|Single	|	|10	|$500,000 - $999,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|2	|Single	|	|11	|>$1,000,000	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|2	|Single	|	|0	|Choose One	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|2	|Single	|	|1	|$0 - $11,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|2	|Single	|	|2	|$12,000 - $14,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|2	|Single	|	|3	|$15,000 - $19,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|2	|Single	|	|4	|$20,000 - $39,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|2	|Single	|	|5	|$40,000 - $59,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|2	|Single	|	|6	|$60,000 - $79,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|2	|Single	|	|7	|$80,000 - $99,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|2	|Single	|	|8	|$100,000 - $199,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|2	|Single	|	|9	|$200,000 - $499,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|2	|Single	|	|10	|$500,000 - $999,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|2	|Single	|	|11	|>$1,000,000	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|3	|Divorced	|	|0	|Choose One	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|3	|Divorced	|	|1	|$0 - $11,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|3	|Divorced	|	|2	|$12,000 - $14,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|3	|Divorced	|	|3	|$15,000 - $19,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|3	|Divorced	|	|4	|$20,000 - $39,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|3	|Divorced	|	|5	|$40,000 - $59,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|3	|Divorced	|	|6	|$60,000 - $79,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|3	|Divorced	|	|7	|$80,000 - $99,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|3	|Divorced	|	|8	|$100,000 - $199,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|3	|Divorced	|	|9	|$200,000 - $499,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|3	|Divorced	|	|10	|$500,000 - $999,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|3	|Divorced	|	|11	|>$1,000,000	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|3	|Divorced	|	|0	|Choose One	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|3	|Divorced	|	|1	|$0 - $11,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|3	|Divorced	|	|2	|$12,000 - $14,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|3	|Divorced	|	|3	|$15,000 - $19,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|3	|Divorced	|	|4	|$20,000 - $39,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|3	|Divorced	|	|5	|$40,000 - $59,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|3	|Divorced	|	|6	|$60,000 - $79,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|3	|Divorced	|	|7	|$80,000 - $99,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|3	|Divorced	|	|8	|$100,000 - $199,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|3	|Divorced	|	|9	|$200,000 - $499,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|3	|Divorced	|	|10	|$500,000 - $999,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|3	|Divorced	|	|11	|>$1,000,000	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|3	|Divorced	|	|0	|Choose One	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|3	|Divorced	|	|1	|$0 - $11,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|3	|Divorced	|	|2	|$12,000 - $14,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|3	|Divorced	|	|3	|$15,000 - $19,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|3	|Divorced	|	|4	|$20,000 - $39,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|3	|Divorced	|	|5	|$40,000 - $59,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|3	|Divorced	|	|6	|$60,000 - $79,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|3	|Divorced	|	|7	|$80,000 - $99,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|3	|Divorced	|	|8	|$100,000 - $199,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|3	|Divorced	|	|9	|$200,000 - $499,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|3	|Divorced	|	|10	|$500,000 - $999,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|3	|Divorced	|	|11	|>$1,000,000	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|4	|Widow	|	|0	|Choose One	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|4	|Widow	|	|1	|$0 - $11,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|4	|Widow	|	|2	|$12,000 - $14,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|4	|Widow	|	|3	|$15,000 - $19,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|4	|Widow	|	|4	|$20,000 - $39,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|4	|Widow	|	|5	|$40,000 - $59,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|4	|Widow	|	|6	|$60,000 - $79,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|4	|Widow	|	|7	|$80,000 - $99,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|4	|Widow	|	|8	|$100,000 - $199,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|4	|Widow	|	|9	|$200,000 - $499,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|4	|Widow	|	|10	|$500,000 - $999,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|4	|Widow	|	|11	|>$1,000,000	|	|1|
      |0	|Mr	|	|1	|0	|1	|3	|4	|Widow	|	|0	|Choose One	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|4	|Widow	|	|1	|$0 - $11,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|4	|Widow	|	|2	|$12,000 - $14,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|4	|Widow	|	|3	|$15,000 - $19,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|4	|Widow	|	|4	|$20,000 - $39,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|4	|Widow	|	|5	|$40,000 - $59,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|4	|Widow	|	|6	|$60,000 - $79,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|4	|Widow	|	|7	|$80,000 - $99,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|4	|Widow	|	|8	|$100,000 - $199,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|4	|Widow	|	|9	|$200,000 - $499,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|4	|Widow	|	|10	|$500,000 - $999,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|4	|Widow	|	|11	|>$1,000,000	|	|2|
      |0	|Mr	|	|1	|0	|1	|3	|4	|Widow	|	|0	|Choose One	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|4	|Widow	|	|1	|$0 - $11,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|4	|Widow	|	|2	|$12,000 - $14,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|4	|Widow	|	|3	|$15,000 - $19,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|4	|Widow	|	|4	|$20,000 - $39,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|4	|Widow	|	|5	|$40,000 - $59,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|4	|Widow	|	|6	|$60,000 - $79,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|4	|Widow	|	|7	|$80,000 - $99,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|4	|Widow	|	|8	|$100,000 - $199,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|4	|Widow	|	|9	|$200,000 - $499,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|4	|Widow	|	|10	|$500,000 - $999,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|3	|4	|Widow	|	|11	|>$1,000,000	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|0	|(Select Status)	|	|0	|Choose One	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|0	|(Select Status)	|	|1	|$0 - $11,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|0	|(Select Status)	|	|2	|$12,000 - $14,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|0	|(Select Status)	|	|3	|$15,000 - $19,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|0	|(Select Status)	|	|4	|$20,000 - $39,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|0	|(Select Status)	|	|5	|$40,000 - $59,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|0	|(Select Status)	|	|6	|$60,000 - $79,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|0	|(Select Status)	|	|7	|$80,000 - $99,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|0	|(Select Status)	|	|8	|$100,000 - $199,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|0	|(Select Status)	|	|9	|$200,000 - $499,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|0	|(Select Status)	|	|10	|$500,000 - $999,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|0	|(Select Status)	|	|11	|>$1,000,000	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|0	|(Select Status)	|	|0	|Choose One	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|0	|(Select Status)	|	|1	|$0 - $11,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|0	|(Select Status)	|	|2	|$12,000 - $14,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|0	|(Select Status)	|	|3	|$15,000 - $19,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|0	|(Select Status)	|	|4	|$20,000 - $39,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|0	|(Select Status)	|	|5	|$40,000 - $59,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|0	|(Select Status)	|	|6	|$60,000 - $79,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|0	|(Select Status)	|	|7	|$80,000 - $99,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|0	|(Select Status)	|	|8	|$100,000 - $199,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|0	|(Select Status)	|	|9	|$200,000 - $499,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|0	|(Select Status)	|	|10	|$500,000 - $999,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|0	|(Select Status)	|	|11	|>$1,000,000	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|0	|(Select Status)	|	|0	|Choose One	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|0	|(Select Status)	|	|1	|$0 - $11,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|0	|(Select Status)	|	|2	|$12,000 - $14,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|0	|(Select Status)	|	|3	|$15,000 - $19,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|0	|(Select Status)	|	|4	|$20,000 - $39,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|0	|(Select Status)	|	|5	|$40,000 - $59,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|0	|(Select Status)	|	|6	|$60,000 - $79,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|0	|(Select Status)	|	|7	|$80,000 - $99,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|0	|(Select Status)	|	|8	|$100,000 - $199,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|0	|(Select Status)	|	|9	|$200,000 - $499,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|0	|(Select Status)	|	|10	|$500,000 - $999,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|0	|(Select Status)	|	|11	|>$1,000,000	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|1	|Married	|	|0	|Choose One	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|1	|Married	|	|1	|$0 - $11,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|1	|Married	|	|2	|$12,000 - $14,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|1	|Married	|	|3	|$15,000 - $19,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|1	|Married	|	|4	|$20,000 - $39,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|1	|Married	|	|5	|$40,000 - $59,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|1	|Married	|	|6	|$60,000 - $79,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|1	|Married	|	|7	|$80,000 - $99,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|1	|Married	|	|8	|$100,000 - $199,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|1	|Married	|	|9	|$200,000 - $499,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|1	|Married	|	|10	|$500,000 - $999,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|1	|Married	|	|11	|>$1,000,000	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|1	|Married	|	|0	|Choose One	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|1	|Married	|	|1	|$0 - $11,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|1	|Married	|	|2	|$12,000 - $14,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|1	|Married	|	|3	|$15,000 - $19,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|1	|Married	|	|4	|$20,000 - $39,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|1	|Married	|	|5	|$40,000 - $59,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|1	|Married	|	|6	|$60,000 - $79,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|1	|Married	|	|7	|$80,000 - $99,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|1	|Married	|	|8	|$100,000 - $199,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|1	|Married	|	|9	|$200,000 - $499,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|1	|Married	|	|10	|$500,000 - $999,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|1	|Married	|	|11	|>$1,000,000	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|1	|Married	|	|0	|Choose One	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|1	|Married	|	|1	|$0 - $11,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|1	|Married	|	|2	|$12,000 - $14,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|1	|Married	|	|3	|$15,000 - $19,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|1	|Married	|	|4	|$20,000 - $39,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|1	|Married	|	|5	|$40,000 - $59,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|1	|Married	|	|6	|$60,000 - $79,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|1	|Married	|	|7	|$80,000 - $99,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|1	|Married	|	|8	|$100,000 - $199,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|1	|Married	|	|9	|$200,000 - $499,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|1	|Married	|	|10	|$500,000 - $999,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|1	|Married	|	|11	|>$1,000,000	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|1	|Single	|	|0	|Choose One	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|2	|Single	|	|1	|$0 - $11,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|2	|Single	|	|2	|$12,000 - $14,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|2	|Single	|	|3	|$15,000 - $19,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|2	|Single	|	|4	|$20,000 - $39,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|2	|Single	|	|5	|$40,000 - $59,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|2	|Single	|	|6	|$60,000 - $79,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|2	|Single	|	|7	|$80,000 - $99,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|2	|Single	|	|8	|$100,000 - $199,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|2	|Single	|	|9	|$200,000 - $499,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|2	|Single	|	|10	|$500,000 - $999,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|2	|Single	|	|11	|>$1,000,000	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|2	|Single	|	|0	|Choose One	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|2	|Single	|	|1	|$0 - $11,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|2	|Single	|	|2	|$12,000 - $14,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|2	|Single	|	|3	|$15,000 - $19,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|2	|Single	|	|4	|$20,000 - $39,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|2	|Single	|	|5	|$40,000 - $59,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|2	|Single	|	|6	|$60,000 - $79,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|2	|Single	|	|7	|$80,000 - $99,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|2	|Single	|	|8	|$100,000 - $199,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|2	|Single	|	|9	|$200,000 - $499,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|2	|Single	|	|10	|$500,000 - $999,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|2	|Single	|	|11	|>$1,000,000	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|2	|Single	|	|0	|Choose One	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|2	|Single	|	|1	|$0 - $11,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|2	|Single	|	|2	|$12,000 - $14,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|2	|Single	|	|3	|$15,000 - $19,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|2	|Single	|	|4	|$20,000 - $39,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|2	|Single	|	|5	|$40,000 - $59,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|2	|Single	|	|6	|$60,000 - $79,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|2	|Single	|	|7	|$80,000 - $99,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|2	|Single	|	|8	|$100,000 - $199,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|2	|Single	|	|9	|$200,000 - $499,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|2	|Single	|	|10	|$500,000 - $999,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|2	|Single	|	|11	|>$1,000,000	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|3	|Divorced	|	|0	|Choose One	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|3	|Divorced	|	|1	|$0 - $11,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|3	|Divorced	|	|2	|$12,000 - $14,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|3	|Divorced	|	|3	|$15,000 - $19,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|3	|Divorced	|	|4	|$20,000 - $39,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|3	|Divorced	|	|5	|$40,000 - $59,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|3	|Divorced	|	|6	|$60,000 - $79,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|3	|Divorced	|	|7	|$80,000 - $99,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|3	|Divorced	|	|8	|$100,000 - $199,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|3	|Divorced	|	|9	|$200,000 - $499,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|3	|Divorced	|	|10	|$500,000 - $999,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|3	|Divorced	|	|11	|>$1,000,000	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|3	|Divorced	|	|0	|Choose One	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|3	|Divorced	|	|1	|$0 - $11,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|3	|Divorced	|	|2	|$12,000 - $14,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|3	|Divorced	|	|3	|$15,000 - $19,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|3	|Divorced	|	|4	|$20,000 - $39,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|3	|Divorced	|	|5	|$40,000 - $59,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|3	|Divorced	|	|6	|$60,000 - $79,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|3	|Divorced	|	|7	|$80,000 - $99,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|3	|Divorced	|	|8	|$100,000 - $199,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|3	|Divorced	|	|9	|$200,000 - $499,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|3	|Divorced	|	|10	|$500,000 - $999,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|3	|Divorced	|	|11	|>$1,000,000	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|3	|Divorced	|	|0	|Choose One	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|3	|Divorced	|	|1	|$0 - $11,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|3	|Divorced	|	|2	|$12,000 - $14,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|3	|Divorced	|	|3	|$15,000 - $19,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|3	|Divorced	|	|4	|$20,000 - $39,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|3	|Divorced	|	|5	|$40,000 - $59,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|3	|Divorced	|	|6	|$60,000 - $79,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|3	|Divorced	|	|7	|$80,000 - $99,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|3	|Divorced	|	|8	|$100,000 - $199,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|3	|Divorced	|	|9	|$200,000 - $499,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|3	|Divorced	|	|10	|$500,000 - $999,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|3	|Divorced	|	|11	|>$1,000,000	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|4	|Widow	|	|0	|Choose One	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|4	|Widow	|	|1	|$0 - $11,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|4	|Widow	|	|2	|$12,000 - $14,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|4	|Widow	|	|3	|$15,000 - $19,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|4	|Widow	|	|4	|$20,000 - $39,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|4	|Widow	|	|5	|$40,000 - $59,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|4	|Widow	|	|6	|$60,000 - $79,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|4	|Widow	|	|7	|$80,000 - $99,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|4	|Widow	|	|8	|$100,000 - $199,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|4	|Widow	|	|9	|$200,000 - $499,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|4	|Widow	|	|10	|$500,000 - $999,999	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|4	|Widow	|	|11	|>$1,000,000	|	|1|
      |0	|Mr	|	|1	|0	|1	|4	|4	|Widow	|	|0	|Choose One	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|4	|Widow	|	|1	|$0 - $11,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|4	|Widow	|	|2	|$12,000 - $14,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|4	|Widow	|	|3	|$15,000 - $19,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|4	|Widow	|	|4	|$20,000 - $39,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|4	|Widow	|	|5	|$40,000 - $59,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|4	|Widow	|	|6	|$60,000 - $79,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|4	|Widow	|	|7	|$80,000 - $99,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|4	|Widow	|	|8	|$100,000 - $199,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|4	|Widow	|	|9	|$200,000 - $499,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|4	|Widow	|	|10	|$500,000 - $999,999	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|4	|Widow	|	|11	|>$1,000,000	|	|2|
      |0	|Mr	|	|1	|0	|1	|4	|4	|Widow	|	|0	|Choose One	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|4	|Widow	|	|1	|$0 - $11,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|4	|Widow	|	|2	|$12,000 - $14,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|4	|Widow	|	|3	|$15,000 - $19,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|4	|Widow	|	|4	|$20,000 - $39,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|4	|Widow	|	|5	|$40,000 - $59,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|4	|Widow	|	|6	|$60,000 - $79,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|4	|Widow	|	|7	|$80,000 - $99,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|4	|Widow	|	|8	|$100,000 - $199,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|4	|Widow	|	|9	|$200,000 - $499,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|4	|Widow	|	|10	|$500,000 - $999,999	|	|3|
      |0	|Mr	|	|1	|0	|1	|4	|4	|Widow	|	|11	|>$1,000,000	|	|3|
