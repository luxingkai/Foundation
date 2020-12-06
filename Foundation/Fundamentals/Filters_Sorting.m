//
//  Filters_Sorting.m
//  Foundation
//
//  Created by tigerfly on 2020/11/24.
//  Copyright © 2020 tigerfly. All rights reserved.
//

#import "Filters_Sorting.h"

@interface Filters_Sorting ()

@end

@implementation Filters_Sorting

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/Predicates/AdditionalChapters/Introduction.html#//apple_ref/doc/uid/TP40001789
    
#pragma mark -- NSPredicate
    
    /*
     NSPredicate
     
     A definition of logical conditions used to constrain a
     search either for a fetch or for in-memory filtering.
     
     Predicates represent logical conditions, which you can
     use to filter collections of objects. Although it's
     common to create predicates directly from instances
     of NSComparisonPreicate, NSCompoundPredicate, and
     NSExpresssion, you often create predicates from a
     format string which is parsed by the class methods
     on NSPredicate. Examples of predicate format strings
     include:
     •  Simple comparisons, such as grade == "7" or firstName like
        "Shaffiq"
     •  Case and diacritic insensitive lookups, such as name contains
        [cd] "itroen"
     •  Logical operations, such as (firstName like "Mark") Or
        (lastName like "Adderley")
     •  Temporal range constraints, such as date between {$YESTERDAY, $TOMORROW}.
     •  Relational conditions, such as group.name like "work*"
     •  Aggregate operations, such as @sum.items.price < 1000
     
     You can also create predicates that include variables
     using the evaluate(with:substitutionVariables:) method,
     so that the predicate can be predefined before substituting
     concrete values at runtime.
     */
    
    /**
     Creating a Predicate
     */
//    [NSPredicate predicateWithFormat:<#(nonnull NSString *)#> arguments:<#(va_list)#>]
//    NSPredicate predicateWithFormat:<#(nonnull NSString *)#> argumentArray:<#(nullable NSArray *)#>
//    NSPredicate predicateWithFormat:<#(nonnull NSString *), ...#>
//    NSPredicate predicateWithBlock:<#^BOOL(id  _Nullable evaluatedObject, NSDictionary<NSString *,id> * _Nullable bindings)block#>
//    NSPredicate  predicateWithValue:<#(BOOL)#>
    
    /**
     Evaluating a Predicate
     */
    NSPredicate *predicate = nil;
//    predicate evaluateWithObject:<#(nullable id)#>
//    predicate evaluateWithObject:<#(nullable id)#> substitutionVariables:<#(nullable NSDictionary<NSString *,id> *)#>
//    [predicate allowEvaluation];
    
    
    
#pragma mark -- NSExpression
    
    /**
     NSExpression
     
     An expression for use in a comparison predicate.
     
     Comparison operations in an NSPredicate are based on two expressions,
     as represented by instanaces of the NSExpression class. Expressions are
     created for constant values, key paths, and so on.
     
     Generally, anywhere in the NSExpression class hierarchy where there is
     composite API and subtypes that may only reasonly respond to a subset
     of that API, invoking a method that does not make sense for that subtype
     will cause an exception to be thrown.
     */
    
    /**
     Aggregate Expressions
     
     The aggregate expression allows you to create predicates containing
     expressions that evaluate to collections that contain further expressions.
     The collection may be an NSArray, NSSet, or NSDictionary object.
     
     For example, consider the BETWEEN operator (NSComparisonPredicate.Operator.
     between); its right hand side is a collection containing two elements.
     Using just the OS X v10.4 API, these elements must be constants, as
     there is no way to populate them using variable expressions.
     In OS X v10.4, it is not possible to create a predicate template
     to the effect of date between {$YESTERDAY, $TOMORROW}; instead you
     must create a new predicate each time.
     */
    
    /**
     Subquery Expressions
     
     The NSExpression.ExpressionType.subquery creates a sub-expression,
     evaluation of which returns a subset of a collection of objects.
     It allows you to create sophisticated queries across relationships,
     such as a search for multiple correlated values on the destination
     object of a relationship.
     */
    
    /**
     Set Expressions
     
     The set expressions (NSExpression.ExpressionType.unitSet, NSExpression.
     ExpressionType.intersectSet, and NSExpression.ExpressionType.minusSet)
     combine results in a manner similar to the NSSet methods.
     
     Both sides of these expressions must evaluate to a collection;
     the left-hand side must evaluate to an NSSet object, the right-hand
     side can be any other collection type.
     
     (expression UNION expression)
     (expression INTERSECT expression)
     (expression MINUS expression)
     
     Set expressions are not supporte by Core Data.
     */
    
    /**
     Function Expressions
     
     In OS X v10.4, NSExpression only supports a predefined set of
     functions: sum, count, min, max, and average. These predefined
     functions were accessed in the predicate syntax using custom
     keywords (for example, MAX(1, 5, 10)).
     
     In macOS 10.5 and later, function expressions also support
     arbitrary method invocations. To use this extended functionality,
     you can now use the syntax FUNCTION (receiver, selectorName,
     arguments, ...), for example:
     
     FUNCTION(@"/Developer/Tools/otest", @"lastPathComponent") => @"otest"
     
     All methods must take 0 or more id arguments and return an id
     value, although you can use the CAST expression to convert
     datatypes with lossy string representations (for example,
     CAST(####, "NSDate")). The CAST expression is extended in
     OS X v10.5 to provide support for casting to classes for
     use in creating receivers for funtions expressions.
     
     Note that although Core Data supports evaluation of the
     predefined functions, it does not support the evaluation
     of custom predicate functions in the persistent stores
     (during a fetch).
     */
    
    
    /**
     Initializing an Expression
     */
//    NSExpression expressionWithFormat:<#(nonnull NSString *)#> argumentArray:<#(nonnull NSArray *)#>
//    NSExpression expressionWithFormat:<#(nonnull NSString *), ...#>
//    [NSExpression alloc] initWithExpressionType:<#(NSExpressionType)#>

    /**
     Creating an Expression for a Value
     */
//    NSExpression expressionForConstantValue:<#(nullable id)#>
//    NSExpression expressionForEvaluatedObject
//    NSExpression expressionForKeyPath:<#(nonnull NSString *)#>
//    NSExpression expressionForVariable:<#(nonnull NSString *)#>
//    NSExpression expressionForAnyKey
    
    /**
     Creating a Collection Expression
     */
//    NSExpression expressionForAggregate:<#(nonnull NSArray<NSExpression *> *)#>
//    NSExpression expressionForUnionSet:<#(nonnull NSExpression *)#> with:<#(nonnull NSExpression *)#>
//    NSExpression expressionForIntersectSet:<#(nonnull NSExpression *)#> with:<#(nonnull NSExpression *)#>
//    NSExpression expressionForUnionSet:<#(nonnull NSExpression *)#> with:<#(nonnull NSExpression *)#>
    
    /**
     Creating a Subquery
     */
//    NSExpression expressionForSubquery:<#(nonnull NSExpression *)#> usingIteratorVariable:<#(nonnull NSString *)#> predicate:<#(nonnull NSPredicate *)#>
    
    /**
     Creating an Expression Using Blocks
     */
//    NSExpression expressionForBlock:<#^id _Nonnull(id  _Nullable evaluatedObject, NSArray<NSExpression *> * _Nonnull expressions, NSMutableDictionary * _Nullable context)block#> arguments:<#(nullable NSArray<NSExpression *> *)#>
    
    /**
     Creating an Expression for a Function
     */
//    NSExpression expressionForFunction:<#(nonnull NSString *)#> arguments:<#(nonnull NSArray *)#>
//    NSExpression expressionForFunction:<#(nonnull NSExpression *)#> selectorName:<#(nonnull NSString *)#> arguments:<#(nullable NSArray *)#>
    
    /**
     Getting Information About an Expression
     */
    
    /**
     Evaluating an Expression
     */
//    [NSExpression alloc] expressionValueWithObject:<#(nullable id)#> context:<#(nullable NSMutableDictionary *)#>
//    [[NSExpression alloc] allowEvaluation];
    
    /**
     Accessing the Expression Block
     */
//    NSExpression expressionForBlock:<#^id _Nonnull(id  _Nullable evaluatedObject, NSArray<NSExpression *> * _Nonnull expressions, NSMutableDictionary * _Nullable context)block#> arguments:<#(nullable NSArray<NSExpression *> *)#>
    
    
#pragma mark -- NSComparisonPredicate
    
    /*
     A specialized predicate that you use to compare expressions.
     
     You use compression predicates to compare the resuls of
     two expressions. You create a comparison predicate with an
     operator, a left expression, and a right expression. You
     represent the expressions using instances of the NSExpression
     class. When you evaluate the predicate, it returns as a
     BOOL value the result of invoking the operator with the
     results of evaluating the expressions.
     */
    
    /**
     Creating Compression Predicates
     */
//    [NSComparisonPredicate alloc] initWithLeftExpression:<#(nonnull NSExpression *)#> rightExpression:<#(nonnull NSExpression *)#> customSelector:<#(nonnull SEL)#>
//    [NSComparisonPredicate alloc] initWithLeftExpression:<#(nonnull NSExpression *)#> rightExpression:<#(nonnull NSExpression *)#> modifier:<#(NSComparisonPredicateModifier)#> type:<#(NSPredicateOperatorType)#> options:<#(NSComparisonPredicateOptions)#>
    
    /**
     Getting Information About a Comparison Predicate
     */
    NSComparisonPredicate *comparisonPredicate = nil;
//    comparisonPredicate.comparisonPredicateModifier
//    comparisonPredicate.customSelector
//    comparisonPredicate.rightExpression
//    comparisonPredicate.leftExpression
//    comparisonPredicate.options
//    comparisonPredicate.predicateOperatorType
    
    
#pragma mark -- NSCompoundPredicate
    
    /**
     A specialize predicate that evaluates logical combinations
     of other predicates.
     
     Use NSCompoundPredicate to create an AND or OR compound
     predicate of zero or more other predicates, or the NOT of
     a single predicate. For the logical AND and OR operations:
     •  An AND predicate with no subpredicates evaluates to true.
     •  An OR predicate with no subpredicates evaluates to false.
     •  A compound predicate with one or more subpredicates evaluates
        to the truth of its subpredicates.
     
     */
    
    /**
     Constructors
     */
//    [NSCompoundPredicate alloc] initWithType:<#(NSCompoundPredicateType)#> subpredicates:<#(nonnull NSArray<NSPredicate *> *)#>
//    [NSCompoundPredicate notPredicateWithSubpredicate:<#(nonnull NSPredicate *)#>
//    NSCompoundPredicate orPredicateWithSubpredicates:<#(nonnull NSArray<NSPredicate *> *)#>
    
    /**
     Getting Information About a Compound Predicate
     */
    NSCompoundPredicate *compoundPredicate = nil;
//    compoundPredicate.compoundPredicateType
//    compoundPredicate.subpredicates
    
    
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
