/*

 SQL NUMBER FUNCTIONS

 This is Chapter: Eight, in which I am going to learn about SQL - Nymber Functions, which enable you to perform mathematical operations.
 
The contents:
	    1. Rounding Function
        - ROUND
     2. Absolute Value Function
        - ABS

*/

/*
--------------------------------------
              ROUND
--------------------------------------
*/

-- Demonstrate rounding a number to different decimal places
SELECT 
    3.516 AS original_number,
    ROUND(3.516, 2) AS round_2,
    ROUND(3.516, 1) AS round_1,
    ROUND(3.516, 0) AS round_0

/*
--------------------------------------
              ABSOLUTE
--------------------------------------
*/

-- Demonstrate absolute value function
SELECT 
    -10 AS original_number,
    ABS(-10) AS absolute_value_negative,
    ABS(10) AS absolute_value_positive
