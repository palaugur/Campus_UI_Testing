Feature: Subject Categories Functionality

  Background:
    Given Navigate to Campus
    When Enter username and password and click login button
    Then User should login successfully

    And Click on the element in LeftNav
      | education         |
      | setupInSubjectCat |
      | subjectCategories |

  Scenario Outline: Add Subject Categories

    And Click on the element in Dialog
      | addButton |

    And User sending the keys in Dialog Content
      | nameInput | <catName> |
      | codeInput | <codeInput>    |

    And Click on the element in Dialog
      | saveButton |

    Then Success message should be displayed

    Examples:
      | catName  | codeInput   |
      | John Wick5789 | 123465 |

  Scenario Outline: Add Already Exist Subject Categories

    And Click on the element in Dialog
      | addButton |

    And User sending the keys in Dialog Content
      | nameInput | <catName> |
      | codeInput | <codeInput>    |

    And Click on the element in Dialog
      | saveButton |

    Then Already Exist message should be displayed

    Examples:
      | catName  | codeInput   |
      | John Wick5789 | 123465 |

  Scenario Outline: Edit Subject Categories

    And User edit item on Dialog Content
      | <searchInput> |
      | <catName>     |

    Then Success message should be displayed

    Examples:
      | searchInput | catName  |
      | John Wick5789    | Ben Wick5789 |

  Scenario Outline: Delete Subject Categories

    And User delete item from Dialog Content
      | <searchInput> |

    Then Success message should be displayed

    Examples:
      | searchInput |
      | Ben Wick5789   |

  Scenario Outline: Accessing Deleted Subject Categories

    And User sending the keys in Dialog Content
      | searchInput | <searchInput> |
    And Click on the element in Dialog
      | searchButton |
    Then No data message should be displayed

    Examples:
      | searchInput |
      | Ben Wick5789   |