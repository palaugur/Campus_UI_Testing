Feature: Document Types Functionality

  Background:
    Given Navigate to Campus
    When Enter username and password and click login button
    Then User should login successfully

    And Click on the element in LeftNav
      | setup         |
      | parameters    |
      | documentTypes |

  Scenario Outline: Adding Document Types

    And Click on the element in Dialog
      | addButton |

    And User sending the keys in Dialog Content
      | nameInput   | <docName>     |
      | description | <description> |

    And Click on the element in Dialog
      | stageInDocTypes     |
      | studentRegistration |
      | employment          |

    And Click key on the keyboard
      | <keyName> |

    And Click on the element in Dialog
      | saveButton |

    Then Success message should be displayed

    Examples:
      | docName       | description        | keyName |
      | John Wick5789 | This is a document | ESC     |


  Scenario Outline: Editing Document Types

    And User edit item on Dialog Content
      | <searchInput> |
      | <docName>     |


    Then Success message should be displayed

    Examples:
      | searchInput   | docName      |
      | John Wick5789 | Ben Wick5789 |

  Scenario Outline: Deleting Document Types

    And User delete item from Dialog Content
      | <searchInput> |

    Then Success message should be displayed

    Examples:
      | searchInput  |
      | Ben Wick5789 |

  Scenario Outline: Accessing Deleting Document Types

    And User sending the keys in Dialog Content
      | searchInput | <searchInput> |
    And Click on the element in Dialog
      | searchButton |
    Then No data message should be displayed

    Examples:
      | searchInput  |
      | Ben Wick5789 |