//
//  BNFDefinitionOfCocoaPreicates.m
//  Foundation
//
//  Created by tigerfly on 2020/12/1.
//  Copyright © 2020 tigerfly. All rights reserved.
//

#import "BNFDefinitionOfCocoaPreicates.h"

@interface BNFDefinitionOfCocoaPreicates ()

@end

@implementation BNFDefinitionOfCocoaPreicates

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    /**
     NSPredicate

     NSPredicate ::= NSComparisonPredicate | NSCompoundPredicate
     | "(" NSPredicate ")" | TRUEPREDICATE | FALSEPREDICATE
     */
    
    /**
     NSCompoundPredicate
     
     NSCompoundPredicate ::= NSPredicate "AND" NSPredicate
     | NSPredicate "OR" NSPredicate
     | "NOT" NSPredicate
     */
    
    /**
     NSComparisonPredicate
     
     NSComparisonPredicate ::= expression operation expression
     | aggregate_qualifier NSComparisonPredicate
     */
    
    /**
     Operations
     
     CONTAINS and IN serve both as aggregate operators and
     string operators, depending on the types of their arguments.

     operation ::= "=" | "!=" | "<" | ">" | "<=" | ">="
         | BETWEEN
         | aggregate_operations [ "[" string_options "]" ]
      
     aggregate_operations ::= CONTAINS | IN | string_operations
      
     string_operations ::= BEGINSWITH | ENDSWITH | LIKE | MATCHES
      
     string_options ::= c | d | cd
     */
    
    /**
     Aggregate Qualifier

     aggregate_qualifier ::= ANY | ALL | NONE | SOME
     */
    
    
    /**
     Expression
     
     expression ::= "(" expression ")"
        | binary_expression
        | function_expression
        | assignment_expression
        | index_expression
        | keypath_expression
        | value_expression
     */
    
    /**
     Value Expression

     value_expression ::= literal_value | literal_aggregate
     */
    
    /**
     Literal Value

     literal_value ::= string_value
     | numeric_value
     | predicate_argument
     | predicate_variable
     | NULL
     | TRUE
     | FALSE
     | SELF
     */
    
    /**
     String Value
     
     string_value ::= "text" | 'text'
     */
    
    
    /**
     Predicate Argument

     predicate_argument ::= "%" format_argument
     */
    
    
    /**
     Format Argument

     format_argument ::= "@" | "%" | "K"
     printf style conversion character
     */
    
    /**
     Predicate Variable

     predicate_variable ::= "$" identifier
     */
    
    /**
     Keypath Expression

     keypath_expression ::= identifier | "@" identifier
     | expression "." expression
     */
    
    /**
     Literal Aggregate

     literal_aggregate ::= "{" [ expression [ "," expression ... ] ] "}"
     */
    
    /**
     Index Expression

     index_expression ::= array_expression "[" integer_expression "]"
     | dictionary_expression   "[" expression "]"
     | aggregate_expression "[" FIRST "]"
     | aggregate_expression "[" LAST "]"
     | aggregate_expression "[" SIZE "]"
     */
    
    /**
     Aggregate Expression
     aggregate_expression ::= array_expression | dictionary_expression
     */
    
    /**
     Assignment Expression

     assignment_expression ::= predicate_variable ":=" expression
     */
    
    /**
     Binary Expression
     binary_expression ::= expression binary_operator expression
     | "-" expression
     */
    
    /**
     Binary Operator

     binary_operator ::= "+" | "-" | "*" | "/" | "**"
     */
    
    /**
     Function Expression

     function_expression ::= function_name "("
     [ expression [ "," expression ... ] ] ")"
     */
    
    /**
     Function Name
     
     function_name ::= "sum" | "count" | "min" | "max"
     | "average" | "median" | "mode" | "stddev"
     | "sqrt" | "log" | "ln" | "exp"
     | "floor" | "ceiling" | "abs" | "trunc"
     | "random" | "randomn" | "now"
     */

    /**
     Array Expression

     array_expression ::= any expression that evaluates to an NSArray object
     */

    /**
     Dictionary Expression

     dictionary_expression ::= any expression that evaluates to
     an NSDictionary object
     */
    
    /**
     Integer Expression

     integer_expression ::= any expression that evaluates to an integral value
     */
    
    /**
     Numeric Value
     numeric_value ::= C style numeric constant
     */
    
    /**
     Identifier
     
     identifier ::= C style identifier | "#" reserved_word
     */
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
