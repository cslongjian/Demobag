//
//  Atom.h
//  OC_Demo
//
//  Created by Supwin_mbp002 on 15/10/24.
//  Copyright © 2015年 chenlongjian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Atom : NSObject

/*
 @property (特性) 属性的类型 属性的名称；
 常用属性特性
 nonatomic    -----   使用该特性可以在多线程并发的情况中，将访问器设置为非原子性的，因而能够提供不同的结果。如果不设置该特性，访问器就会拥有原子性，赋值和返回结果完全同步。
 
 assign       -----   通过该特性可以在不使用copy和retain特性的情况下，使属性的设置器方法执行简单的赋值操作，这个特性是默认设置的
 
 retain       -----   在赋值时，输入值会被发送一条保留消息，而上一个值会被发送一条释放消息
 
 copy         -----   在赋值时，输入值会被发送一条新消息的副本，而上一个值会被发送一条释放消息。
 
 strong       -----   当属性使用ARC内存管理功能时，该特性等效与retain特性
 
 weak         -----   当属性使用ARC内存管理功能时，该特性的作用与assign特性类似，但如果引用对象被释放了，属性的值会被设置为nil
 
 readwrite    -----   使用该特性时，属性可以被读取和写入，而且必须实现getter和setter方法。这个是默认设置
 
 readonly     -----   使用该特性时，会将属性设置为只读，必须实现getter方法。
 
 getter = getterName 
 setter = setterName  重置读取器的名称
 
 */
@property (readonly) NSUInteger protons;
@property (readonly) NSUInteger neutrons;
@property (readonly) NSUInteger electrons;
@property (readonly) NSString *chemicalElement;

- (NSUInteger) massNumber;


@end
