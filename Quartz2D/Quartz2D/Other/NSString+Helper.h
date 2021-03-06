//
//  NSString+Helper.h
//  HaveFace
//
//  Created by CGM on 15/11/18.
//  Copyright © 2015年 CGM. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import <Foundation/Foundation.h>

@interface NSString (Helper)

/**
 *
 *   BOOL 判断0-9的纯数字字符串
 *
 *  @return Yes为0-9数字，no 不是
 */

-(BOOL)isNumber;

/**
 *判断由数字和26个英文字母或下划线组成的字符串
 *
 */
-(BOOL)isNumAndword;

/**
 *  判断是否为正确的邮箱
 *
 *  @return 返回YES为正确的邮箱，NO为不是邮箱
 */
- (BOOL)isValidateEmail;

/**
 *  判断是否为正确的手机号
 *
 *  @return 返回YES为手机号，NO为不是手机号
 */
- (BOOL)checkTel;

/**
 *  清空字符串中的空白字符
 *
 *  @return 清空空白字符串之后的字符串
 */
- (NSString *)trimString;

/**
 *  是否空字符串
 *
 *  @return 如果字符串为nil或者长度为0返回YES
 */
- (BOOL)isEmptyString;

/**
 *  返回沙盒中的文件路径
 *
 *  @return 返回当前字符串对应在沙盒中的完整文件路径
 */
+ (NSString *)stringWithDocumentsPath:(NSString *)path;

/**
 *  写入系统偏好
 *
 *  @param key 写入键值
 */
- (void)saveToNSDefaultsWithKey:(NSString *)key;

/**
 *  一串字符在固定宽度下，正常显示所需要的高度
 *
 *  @param string：文本内容
 *  @param width：每一行的宽度
 *  @param 字体大小
 */
+ (CGFloat)autoHeightWithString:(NSString *)string
                        Width:(CGFloat)width
                         Font:(NSInteger)font;

/**
 *  一串字符在一行中正常显示所需要的宽度
 *
 *  @param string：文本内容
 *  @param 字体大小
 */
+ (CGFloat)autoWidthWithString:(NSString *)string
                         Font:(NSInteger)font;
//下划线文字
+ (NSAttributedString *)makeDeleteLine:(NSString *)string;

//返回带换行符的字符串
+ (NSString *)StringHaveNextLine:(NSArray *)array;

/**
 *     dic 转json字符串
 */

// 将JSON串转化为字典或者数组
+ (id)toArrayOrNSDictionary:(NSData *)jsonData;


+(NSString *)NSdictionaryTurnJson:(NSMutableDictionary *)dic;

/**
 *      json 转dic字符串
 */
+ (NSDictionary *)dictionaryWithJsonString:(NSString *)jsonString ;

//过滤特殊字符
+(NSString*)RemoveSpecialCharacter: (NSString *)str;
/*
 *获取汉字拼音的首字母, 返回的字母是大写形式, 例如: @"俺妹", 返回 @"A".
 *如果字符串开头不是汉字, 而是字母, 则直接返回该字母, 例如: @"b彩票", 返回 @"B".
 *如果字符串开头不是汉字和字母, 则直接返回 @"#", 例如: @"&哈哈", 返回 @"#".
 *字符串开头有特殊字符(空格,换行)不影响判定, 例如@"       a啦啦啦", 返回 @"A".
 */
- (NSString *)getFirstLetter;

/**
 *  NSArray 转 Json
 */
+(NSString *)NSArrayTurnJson:(NSMutableArray *)arr;

/**获取当前时间*/
+ (NSString *)currentDate;

+ (NSString *)getCurrenTime;

+ (NSString *)getCurrenNumTime;

/**是否有网*/
+ (Boolean)haveNet;

/** 是否是第一次使用这个版本*/
+ (BOOL)isNewFeature;
/**获取AppVersion*/
+(NSString*)getAppVersion;

/**获取AppName*/
+(NSString*)getAppName;

@end
