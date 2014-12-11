//
//  TDGeometricFigure.h
//  TDMath
//
//  Created by Robin Hsu on 2014/12/11.
//  Copyright (c) 2014年 TechD. All rights reserved.
//
//  ------------------------------------------------------------------------------------------------
//  ------------------------------------------------------------------------------------------------

#ifndef TDMath_TDGeometricFigure_h
#define TDMath_TDGeometricFigure_h

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>


//  ------------------------------------------------------------------------------------------------
//  ------------------------------------------------------------------------------------------------
/**
 *  @brief convert degrees to radians.
 *  convert degrees to radians.
 *
 *  @param degree           degrees value.
 *
 *  @return                 converted value in radians.
 */
double degreeToRadian( double degree );

//  ------------------------------------------------------------------------------------------------
/**
 *  @brief convert radians to degrees
 *  convert radians to degrees
 *
 *  @param radian           radians value.
 *
 *  @return                 converted value in degrees.
 */
double radianToDegree( double radian );

//  ------------------------------------------------------------------------------------------------
/**
 *  @brief to divide circle into n equal parts
 *  to divide circle into n equal parts
 *
 *  @param aliquotPart      divide value of circle aliguot.
 *
 *  @return                 degrees of aliguot part.
 */
double degreeWithCircleAliquot( int aliquotPart );


//  ------------------------------------------------------------------------------------------------
//  ------------------------------------------------------------------------------------------------
/**
 *  @brief calculate distance between two points.
 *  calculate distance between first point and second point.
 *
 *  @param first            first point.
 *  @param second           second point.
 *
 *  @return                 calculated value for distance.
 */
CGFloat distanceBetweenPoints( CGPoint first, CGPoint second );

//  ------------------------------------------------------------------------------------------------
/**
 *  @brief calculate radian between two points.
 *  calculate radian between first point and second point.
 *
 *  @param first            first point.
 *  @param second           second point.
 *
 *  @return                 calculated value for radians.
 */
CGFloat radianBetweenPoints( CGPoint first, CGPoint second );

//  ------------------------------------------------------------------------------------------------
/**
 *  @brief calculate radian between two lines.
 *  calculate radian between first line and second line.
 *
 *  @param firstStart       start point of first line.
 *  @param firstEnd         end point of first line.
 *  @param secondStart      start point of second line.
 *  @param secondEnd        end point of second line.
 *
 *  @return                 calculated value for radians.
 */
CGFloat radianBetweenLines( CGPoint firstStart, CGPoint firstEnd, CGPoint secondStart, CGPoint secondEnd );


//  ------------------------------------------------------------------------------------------------


#endif

//  ------------------------------------------------------------------------------------------------
//  ------------------------------------------------------------------------------------------------
