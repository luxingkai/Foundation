//
//  Collections.m
//  Foundation
//
//  Created by tigerfly on 2020/11/24.
//  Copyright © 2020 tigerfly. All rights reserved.
//

#import "Collections.h"

@interface Collections ()

@end

@implementation Collections

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
#pragma mark -- Basic Collections
    
    /*
     NSArray
     NSMutableArray
     NSDictionary
     NSMutableDictionary
     NSSet
     NSMutableSet
     */
    
    /**
     NSArray
     
     A static ordered collection of objects.
     
     NSArray and its subclass NSMutableArray manage ordered
     collections of objects called arrays. NSArray creates
     static arrays, and NSMutableArray creates dynamic arrays.
     You can use arrays when you need an ordered collection
     of objects.
     NSArray is 'totol-free bridged' with its Core Foundation
     counterpart, CFArrayRef. See Toll-Free Bridging for more
     information on toll-free bridging.
     */
    
    
    
    /**
     NSMutableArray
     
     A dynamic ordered collection of objects.
     
     The NSMutableArray class declares the programmatic interface
     to objects that manage a modifiable array of objects. This
     class adds insertion and deletion operations to the
     basic array-handling behavior inherited from NSArray.
     
     NSMutableArray is 'toll-free bridged' with its Core Foundation
     counterpart, CFMutableArrayRef.
     */
    
    /**
     NSDictionary
     
     A static collection of objects associated with unique keys.
     
     The NSDictionary class declares the programmatic interface
     to objects that manage immutable associations of keys and
     values. For example, an interactive form could be represented
     as a dictionary, with the field names as keys, corresponding
     to user-entered values.
     
     Use this class or its subclass NSMutableDictonary when you
     need a convenient and efficient way to retrieve data associated
     with an arbitrary key. NSDictionary creates static dictionaries,
     and NSMutableDictionary creates dynamic dictionaries. (For
     convenience, the term dictionary refers to any instance of one
     of these classes without specifying its exact class membership.)
     
     A key-value pair within a dictionary is called an entry. Each
     entry consists of one object that represents the key and a
     second object that is that key's value. Within a dictionary,
     the keys are unqiue, That is, no two keys in a single dictionary
     are equal (as determined by isEqual:). In general, a key can
     be any object (provided that it conforms to the NSCopying
     protocol -- see below), but note that when using key-value
     coding the key must be a string (see Accessing Object Properties).
     Neither a key nor a value can be nil; if you need to represent
     a null value in a dictionary, you should use NSNull.
     
     NSDictionary is "toll-free bridged" with its Core Foundation
     counterpart, CFDictionaryRef. See Toll-Free Bridging for
     more information on toll-free bridging.
     
     You generally shouldn't need to subclass NSDictionary.
     Custom behavior can usually be achieved through composition
     rather than subclassing.
     
     If you do need to subclass NSDictionary, Take into account
     that it is a Class cluster. Any subclass must override
     the following primitive methods:
     •  initWithObjects:forKeys:count:
     •  count
     •  objectForKey:
     •  keyEnumerator
     The other methods of NSDictionary operate by invoking one
     or more of these primitives. The non-primitive methods provide
     convenient ways of accssing multiple entries at once.
     */
    
    
    /**
     NSMutableDictionary
     
     A dynamic collection of objects associated with unique keys.
     
     The NSMutableDictionary class declares the programmatic interface
     to objects that manage mutable associations of keys and values.
     It adds modification operations to the basic operations it
     inherits from NSDictionary.
     
     NSMutableDictionary is "toll-free bridged" with its Core Foundation
     counterpart, CFMutableDictionaryRef, See Toll-Free Bridging
     for more information on toll-free bridging.
     
     There should typically be little need to subclass NSMutableDictionary.
     If you do need to customize behavior, it is often better to
     consider composition rather than subclassing.
     
     In a subclass, you must override both of its primitive methods:
     •  setObject:forKey:
     •  removeObjectForKey:
     You must also override the primitive methops of the NSDictionary class.
     */
    
    
    /**
     NSSet
     
     A static unordered Collection of unique objects.
     
     The NSSet, NSMutableSet, and NSCountedSet classes declare the
     programmatic interface to an unordered collection of
     objects.
     
     NSSet declares the programmatic interface for static sets
     of distinct objects. You establish a static set's entries
     when it's created, and thereafter the entries can't be modified.
     NSMutableSet, on the other hand, declares a programmatic interface
     for dynamic sets of distinct objects. A dynamic -- or mutable
     -- set allows the addition and deletion of entries at any time,
     automatically allocating memory as needed.
     
     You can use sets as an alternative to arrays when the order of
     elements isn't importand and performance in testing whether
     an object is contained in the set is a consideration -- while
     arrays are ordered, testing for membership is slower than with
     sets.
     
     NSSet is "toll-free bridged" with its Core Foundation counterpart,
     CFSetRef. See Toll-Free Bridging for more information on toll-free
     bridging.
     
     There should be little need of subclassing. If you need to
     customize behavior, it is often better to consider composition
     instead of subclassing.
     
     In a subclass, you must override all of its primitive methods:
     •  count
     •  member:
     •  objectEnumerator
     */
    
    //    NSSet *set = [NSSet setWithObjects:@"1",@"2",@"3",@"5", nil];
    //    NSLog(@"%@",set);
    
    
    /**
     NSMutableSet
     
     A dynamic undordered collection of unique objects.
     
     The NSMutableSet class declares the programmatic interface
     to a mutable, unordered collection of distinct objects.
     
     The NSCountedSet class, which is a concrete subclass of
     NSMutableSet, supports mutable sets that can contain
     multiple instances of the same element. The NSSet class
     supports creating and managing immutable sets.
     
     NSMutableSet is "toll-free bridged" with its Core Foundation
     counterpart, CFMutableSetRef. See Toll-Free Bridging for
     more information.
     
     There should be little need of subclassing. If you need
     to customize behavior, it is often better to consider
     composition instead of subclassing.
     
     In a subclass, you must override both of its primitive
     methods:
     •  addObejct:
     •  removeObject:
     You must also override the primitive methods of the NSSet
     class.
     */
    
    
#pragma mark -- Indexes
    
    /*
     NSIndexPath
     NSIndexSet
     NSMutableIndexSet
     */
    
    /**
     NSIndexPath
     
     A list of indexes that together represent the path to
     a specific location in a tree of nested arrays.
     
     Each index in an index path represents the index into
     an array of children from one node in the tree to another,
     deeper, node. For example, the index path 1.4.3.2 specifies
     the path shown in Figure 1.
     file:///Users/tigerfly/Desktop/Foundation/Foundation/indexpath_df7d08bf-e846-4963-bc2c-d81442fce0e8.gif
     
     ⚠️ The UIKit framework adds programming interfaces to the
     NSIndexPath class of the Foundation framework to facilitate
     the identification of rows and sections in UITableView objects
     and the identification of items and sections in UICollectionView
     objects. The API consists of class factory methods and properties
     for accessing the various indexed values. You use the factory
     methods to create an index path for the corresponding table view
     or collection view.
     */
    
    /**
     NSIndexSet
     
     An Immutable collection of unique integer values that represent
     indexes in another collection.
     
     The NSIndexSet class represents an immutable collection of
     unique unsiged integers, known as indexes because of the way
     they are used. This collection is referred to as an index
     set. Indexes must be in the range 0.. NSNotFound -1.
     
     You use index sets in your code to store indexes into some
     other data structure. For example, given an NSArray object,
     you could use an index set to identify a subset of objects
     in that array.
     
     You should not use index sets to store an arbitrary collection
     of integer values because index sets store indexes as sorted
     ranges. This makes them more efficient than storing a collection
     of individual integers. It also means that each index value
     can only appear once in the index set.
     
     The designated initializers of the NSIndexSet class are:
     init, initWithIndexesInRange:, and initWithIndexSet:.
     
     You must not subclass the NSIndexSet class.
     
     The mutable subclass of NSIndexSet is NSMutableIndexSet.
     */
    
    
    /**
     NSMutableIndexSet
     
     A mutable collection of unique integer values that represent
     indexes in another collection.
     
     The NSMutableIndexSet class represents a mutable collection
     of unique unsigned integers, known as indexes becaues of
     the way they are used. This collection is referred to as
     a mutable index set. The inclusive range of valid indexes
     is 0 ... (NSNotFound - 1); trying to use indexes outside
     this range is invalid.
     
     The values in a mutable index set are always sorted, so
     the order in which values are added is irrelevant.
     
     Do not subclass the NSMutableIndexSet class.
     */
    
    
    
#pragma mark -- Specialized Sets
    
    /*
     NSCountedSet
     NSOrderedSet
     NSMutableOrderedSet
     */
    
    /**
     NSCountedSet
     
     A mutable, unordered collection of distinct objects that
     may appear more than once in the collection.
     
     Each distinct object inserted into an NSCountedSet object
     has a counter associated with it. NSCountedSet keeps track
     of the number of times objects are inserted and requires
     that objects be removed the same number of times. Thus,
     there is only one instance of an object in an NSSet object
     even if the object has been added to the set multiple times.
     The count method defined by the superclass NSSet has special
     significance, it returns the number of distinct objects,
     not the total number of times objects are represented in
     the set. The NSSet and NSMutableSet classes are provided
     for static and dynamic sets, respectively, whose elements
     are distinct.
     
     While NSCountedSet and CFBagRef are not toll-free bridged,
     they provide similar functionality.
     
     Because NSCountedSet is not a class cluster, it does not
     have primitive methods that provide the basis for its
     implementation. In general, there should be little need
     for subclassing.
     
     If you subclass NSCountedSet, you must override any method
     of which you want to change the behavior.
     
     If you change the primitive behavior of an NSCountedSet,
     for instance if you change how objects are stored, you
     must override all of the affected methods. These include:
     •  addObject:
     •  removeObject:
     •  objectEnumerator
     •  countForObject:
     
     if you change the primitive behavior, you must also override
     the primitive methods of NSSet and NSMutableSet.
     */
    
    
    /**
     NSOrderedSet
     
     A static, ordered collection of unique objects.
     
     NSOrderedSet declares the programmatic interface for
     static sets of distinct objects. You establish a static
     set's entries when it's created, and thereafter the entries
     can't be modified. NSMutableOrderedSet, on the other hand,
     declares programmatic interface for dynamic sets of distinct
     objects. A dynamic -- or mutable  -- set allows the addition
     and deletion of entries at any time, automatically allocating
     memory as needed.
     
     You can use ordered sets as an alternative to arrays when the
     order of elements is important and performance in testing
     whether an object is contained in the set is a consideration
     -- testing for membership of an array is slower than testing
     for membership of a set.
     */
    
    
    /**
     NSMutableOrderedSet
     
     A dynamic, ordered collection of unique objects.
     
     NSMutableOrderedSet objects are not like C arrays. That is,
     even though you may specify a size when yoou create a mutable
     ordered set, the specified size is regarded as a "hint"; the
     actual size of the set is still 0. This means that you cannot
     insert an object at an index greater than the current count
     of an set. For example, if a set contains two objects, its
     size is 2, so you can add objects at indices 0, 1, or 2.
     Index 3 is illegal and out of bounds; if you try to add an
     object at index 3 (when the size of the array is 2),
     NSMutableOrderedSet raises an exception.
     */
    
    
#pragma mark -- Purgeable Collections
    
    /*
     NSCache
     NSPurgeableData
     */
    
    /**
     NSCache
     
     A mutable collection you use to temporarily store
     transient key-value pairs that are subject to
     eviction when resources are low.
     
     Cache objects differ from other mutable collections
     in a few ways:
     •  The NSCache class incorporates various auto-eviction
     policie, which ensure that a cache doesn't use too
     much of the system's memory. If memory is needed
     by other applications, These policies remove some
     items from the cache, minimizing its memory footprint.
     •  You can add, remove, and query items in the cache
     from different threads without having to lock
     the cache yourself.
     •  Unlike an NSMutableDictionary object, a cache does
     not copy the key objects that are put into it.
     
     You typically use NSCache objects to temporarily store
     objects with transient data that are expensive to
     create. Reusing these objects can provide performance
     benefits, because their values do not have to be
     recalculated. However, the objects are not critical
     to the application and can be discarded if memory is
     tight. If discarded, their values will have to be
     recomputed again when needed.
     
     Objects that have subcomponents that can be discarded
     when not being used can adopt the NSDiscardableContent
     protocol to improve cache eviction behavior. By default,
     NSDiscardableContent objects in a cache are
     automatically removed if their content is discarded,
     although this automatic removal policy can be changed.
     If an NSDiscardableContent object is put into the cache,
     the cache calls discardContentIfPossible on it upon its
     removal.
     */
    
    
    /**
     NSPurgeableData
     
     A mutable data object containing bytes that can be
     discarded when they're no longer needed.
     
     NSPurgeableData objects inherit their creation
     methods from their superclass, NSMutableData while
     providing a default implementation of the
     NSDiscardableContent protocol.
     
     All NSPurgeableData objects begin "accessed” to ensure
     that they are not instantly discarded. The
     beginContentAccess method marks the object’s bytes
     as “accessed,” thus protecting them from being discarded,
     and must be called before accessing the object, or
     else an exception will be raised. This method returns
     YES if the bytes have not been discarded and if they
     have been successfully marked as “accessed”. Any
     method that directly or indirectly accesses these bytes
     or their length when they are not “accessed” will raise
     an exception. When you are done with the data, call
     endContentAccess to allow them to be discarded in order
     to quickly free up memory.
     
     You may use these objects by themselves, and do not
     necessarily have to use them in conjunction with
     NSCache to get the purging behavior. The NSCache class
     incorporates a caching mechanism with some auto-removal
     policies to ensure that its memory footprint does not
     get too large.
     
     NSPurgeableData objects should not be used as keys in
     hashing-based collections, because the value of the
     bytes pointer can change after every mutation of the data.
     */
    
    
#pragma mark -- Pointer Collections
    
    /*
     NSPointerArray
     NSMapTable
     NSHashTable
     */
    
    /**
     NSPointerArray
     
     A collection similar to an array, but with a broader
     range of available memory semantics.
     
     The pointer array class is modeled after NSArray,
     but can also hold nil values. You can insert or remove
     nil values which contribute to the array's count.
     
     A pointer array can be initialized to maintain strong
     or weak references to objects, or according to any of
     the memory or personality options defined by
     NSPointerFunctionsOptions.
     
     The NSCopying and NSCoding protocols are applicable only
     when a pointer array is initialized to maintain strong
     or weak references to objects.
     
     When enumerating a pointer array with NSFastEnumeration
     using for...in, the loop will yield any nil values
     present in the array. See Fast Enumeration Makes It
     Easy to Enumerate a Collection in Programming with
     Objective-C for more information.
     
     NSPointerArray is not suitable for subclassing.
     */
    
    
    /**
     NSMapTable
     
     A collection similar to a dictionary, but with a
     broader range of available memory semantics.
     
     The map table is modeled after NSDictionary with the
     following differences:
     
     Keys and/or values are optionally held “weakly” such
     that entries are removed when one of the objects is
     reclaimed.
     
     Its keys or values may be copied on input or may use
     pointer identity for equality and hashing.
     
     It can contain arbitrary pointers (its contents are
     not constrained to being objects).
     
     You can configure an NSMapTable instance to operate
     on arbitrary pointers and not just objects, although
     typically you are encouraged to use the C function
     API for void * pointers. The object-based API (such
     as setObject:forKey:) will not work for non-object
     
     
     When configuring map tables, note that only the
     options listed in NSMapTableOptions guarantee that
     the rest of the API will work correctly—including
     copying, archiving, and fast enumeration. While
     other NSPointerFunctions options are used for certain
     configurations, such as to hold arbitrary pointers,
     not all combinations of the options are valid. With
     some combinations the map table may not work correctly,
     or may not even be initialized correctly.
     */
    
    
    /**
     NSHashTable

     A collection similar to a set, but with broader range
     of available memory semantics.

     The hash table is modeled after NSSet with the following
     differences:
     •  It can hold weak references to its members.
     •  Its members may be copied on input or may use pointer
        identity for equality and hashing.
     •  It can contain arbitrary pointers (its members are
        not constrained to being objects).

     You can configure an NSHashTable instance to operate
     on arbitrary pointers and not just objects, although
     typically you are encouraged to use the C function API
     for void * pointers. The object-based API (such as addObject:)
     will not work for non-object pointers without type-casting.

     Because of its options, NSHashTable is not a set because
     it can behave differently (for example, if pointer
     equality is specified two isEqual: strings will both
     be entered).

     When configuring hash tables, note that only the
     options listed in NSHashTableOptions guarantee that
     the rest of the API will work correctly—including
     copying, archiving, and fast enumeration. While other
     NSPointerFunctions options are used for certain
     configurations, such as to hold arbitrary pointers,
     not all combinations of the options are valid. With
     some combinations the hash table may not work correctly,
     or may not even be initialized correctly.
     
     NSHashTable is not suitable for subclassing.
     */
    
    
#pragma mark -- Iteraction
    
    /*
     NSEnumerator
     NSFastEnumeration
     NSEnumerationOptions
     NSSortOptions
     */
    
    /**
     NSEnumerator
     
     An abstract class whose subclasses enumerate
     collections of objects, such as arrays and dictionaries.

     All creation methods are defined in the collection
     classes—such as NSArray, NSSet, and NSDictionary—which
     provide special NSEnumerator objects with which to
     enumerate their contents. For example, NSArray has two
     methods that return an NSEnumerator object: objectEnumerator
     and reverseObjectEnumerator. NSDictionary also has two
     methods that return an NSEnumerator object: keyEnumerator
     and objectEnumerator. These methods let you enumerate the
     contents of a dictionary by key or by value, respectively.

     You send nextObject repeatedly to a newly created
     NSEnumerator object to have it return the next object
     in the original collection. When the collection is
     exhausted, nil is returned. You cannot “reset” an
     enumerator after it has exhausted its collection. To
     enumerate a collection again, you need a new enumerator.

     The enumerator subclasses used by NSArray, NSDictionary,
     and NSSet retain the collection during enumeration.
     When the enumeration is exhausted, the collection is
     released.
     
     ⚠️ In Objective-C, it is not safe to modify a mutable
     collection while enumerating through it. Some
     enumerators may currently allow enumeration of a
     collection that is modified, but this behavior is not
     guaranteed to be supported in the future.
     */
    
    
    /**
     NSFastEnumeration
     
     A protocol that objects adopt to support fast enumeration.
     
     The abstract class NSEnumerator provides a convenience
     implementation that uses nextObject to return items one at a time.
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
