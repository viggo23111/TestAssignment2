# REFLECTIONS
### 1.1 COMPUTER MOUSE
##### Identify the types of testing you would perform on a computer mouse, to make sure that it is of the highest quality.
- Test the comfort of the mouse to ensure it lays good in the hand
- Testing how many clicks before the mouse breaks, this includes all buttons and the scroll wheel
- Testing how accurate the movement is.
- Testing compatibility with different OS.
- Testing the durability, (drop and impact) - End user tests, ensure that the mouse is liked by the end users
- Testing the battery life if it is a wireless mouse
- Testing the range of the wireless mouse
- Testing the weight of the mouse
- Testing the software that comes with the mouse if any
- Testing the mouse on different surfaces


### 1.2 CATASTROPHIC FAILURE Find a story where a software system defect had a bad outcome. Describe what happened. Can you identify a test that would have prevented it?  
##### What happened?
In 1996, the Ariane 5 rocket, which was part of the Cluster scientific program, carrying four satellites worth $370 million, experienced a catastrophic failure 37 seconds after launch, resulting in the loss of the entire payload. The primary cause of this failure was an integer overflow in the rocket's onboard computer system.
##### How to prevent it?
Could be a unit tests that checks the size of the number that it could receive and if it is too big to be stored in the variable. This would have prevented the overflow error.


# 2 TWO KATAS 

### 2.1 STRING UTILITY
there is a `test/java/katas/string` folder with the `StringStepdefs` class. This class contains the step definitions for the scenarios in the feature file.
And the `test/java/katas/string` folder with the `StringTest` class to run the BDD test.

##### 2.1.1 Reverse String
In the `StringUtility` class, there are a method that takes a string as input and returns the reverse of that string. For example, if the input is "aBc" the output should be "cBa".
In the `test/resources/katas/string` folder, there is a `reverse.feature` file. This file contains a number of scenarios that describe the expected behavior of the reverse method.


##### 2.1.2 Capitalize String
In the `StringUtility` class, there are a method that takes a string as input and returns the capitalized version of that string. For example, if the input is "aBc" the output should be "ABC".
In the `test/resources/katas/string` folder, there is a `capitalize.feature` file. This file contains a number of scenarios that describe the expected behavior of the capitalize method.

##### 2.1.3 Lowercase String
In the `StringUtility` class, there are a method that takes a string as input and returns the lowercase version of that string. For example, if the input is "aBc" the output should be "abc".
In the `test/resources/katas/string` folder, there is a `lowercase.feature` file. This file contains a number of scenarios that describe the expected behavior of the lowercase method.


### 2.2 BOWLING GAME KATA
there is a `test/java/katas/bowling` folder with the `BowlingStepdefs` class. This class contains the step definitions for the scenarios in the feature file.
And the `test/java/katas/bowling` folder with the `BowlingTest` class to run the BDD test.

In the `test/resources/katas/bowling` folder, there is a `bowling.feature` file. This file contains a number of scenarios that describe the expected behavior of the bowling game.
and in the `main/java/katas/bowling` folder, there is a `Game` class. This class contains the methods that calculates the score of the bowling game.


# 3 INVESTIGATION OF TOOLS

### 3.1 JUNIT 5 Investigate JUnit 5 (Jupiter) Explain the following, and how they are useful. 
- **@Tag** is used to categorize tests, which can be useful for categorized test execution

- **@Disabled** is used to disable a test, which is useful if a test is deprecated

- **@RepeatedTest** is used to run a test a specific amount of times.

- **@BeforeAll** is used to run a method before all tests run, which is useful for instantiating an object that is used in multiple tests.

- **@AfterAll** is used to run a method after all tests have run. This can be useful for closing connections.

- **@BeforeEach** is used to run a method before each test, this is useful if the base state of an object is needed for a different test.

- **@AfterEach** after each is used to run a method after each test, this could be useful for resetting a state.

- **@DisplayName** is used to create display names for test methods, which increases readability

- **@Nested** is used to group multiple tests together, so you have your test class and then you can use the @nested annotation on your tests to make them run together when you run the primary test.

- **assumeFalse** this method is used to declare that test only should be executed if a condition is false

- **assumeTrue** this method is used to declare that the test only should be executed if a condition is true, could be used to make sure there is a database connection and only run the test if there is. 



### 3.2 MOCKING FRAMEWORKS 
#### Investigate mocking frameworks for your preferred language. Choose at least two frameworks, and answer the questions. (One could be Mockito, which we saw in class.) 

#### Chosen frameworks: Mockito and JMockit

### What are their similarities?

They support behavior verification, allowing you to check whether the expected interactions with mock objects have occurred during the execution of your code.
They enable you to mock and isolate external dependencies, such as databases, web services, and other classes, to create controlled and predictable test scenarios.


### What are their differences?
Mockito: Mockito cannot mock static methods or final classes out of the box. You would need additional libraries like PowerMock to achieve this.
JMockit: JMockit has built-in support for mocking static methods, final classes, and other challenging scenarios.

Mockito: Mockito uses a more user-friendly and intuitive syntax with a limited number of methods, making it relatively easy to learn and use.

JMockit: JMockit provides a more powerful and flexible API, but it has a steeper learning curve due to its extensive set of features and advanced capabilities.

### Which one would you prefer, if any, and why?
Both mocking frameworks are powerful, but we would choose mockito as it has a larger community, which makes learning and debugging mockito easier. 
