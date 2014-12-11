//
//  TDGeometricFigure.m
//  TDMath
//
//  Created by Robin Hsu on 2014/12/11.
//  Copyright (c) 2014年 TechD. All rights reserved.
//
//  ------------------------------------------------------------------------------------------------
//  ------------------------------------------------------------------------------------------------

#import "TDGeometricFigure.h"

//  ------------------------------------------------------------------------------------------------
//  ------------------------------------------------------------------------------------------------


//  ------------------------------------------------------------------------------------------------
//  ------------------------------------------------------------------------------------------------
double degreeToRadian( double degree )
{
    return ( degree * M_PI / 180.0f );
}

//  ------------------------------------------------------------------------------------------------
double radianToDegree( double radian )
{
    return ( radian * 180.0f / M_PI );
}

//  ------------------------------------------------------------------------------------------------
double degreeWithCircleAliquot( int aliquotPart )
{
    return ( 360.0f / abs( aliquotPart ) );
}


//  ------------------------------------------------------------------------------------------------
//  ------------------------------------------------------------------------------------------------
CGFloat distanceBetweenPoints( CGPoint first, CGPoint second )
{
    return ( sqrtf( powf( ( second.x - first.x ), 2.0f ) + powf( ( second.y - first.y ), 2.0f ) ) );
}


//  ------------------------------------------------------------------------------------------------
CGFloat radianBetweenPoints( CGPoint first, CGPoint second )
{
    return -( atan2( ( second.y - first.y ), ( second.x - first.x ) ) );
}


//  ------------------------------------------------------------------------------------------------
//  reference : http://goo.gl/x4Gz3N
//  ※ 類似向量 & 和積化差的方式求得夾角.  rads = acos(((a*c) + (b*d)) / ((sqrt(a*a + b*b)) * (sqrt(c*c + d*d))))
CGFloat radianBetweenLines( CGPoint firstStart, CGPoint firstEnd, CGPoint secondStart, CGPoint secondEnd )
{
    CGFloat                         radian;
    CGPoint                         vectorFirst;
    CGPoint                         vectorSecond;
    CGFloat                         scalar;
    CGFloat                         length;
    CGFloat                         fraction;

    vectorFirst                     = CGPointMake( ( firstEnd.x - firstStart.x ), ( firstEnd.y - firstStart.y ) );
    vectorSecond                    = CGPointMake( ( secondEnd.x - secondStart.x ), ( secondEnd.y - secondStart.y ) );

    scalar                          = ( vectorFirst.x * vectorSecond.x ) + ( vectorFirst.y * vectorSecond.y );
    length                          = ( sqrtf( powf( vectorFirst.x,  2.0f ) + powf( vectorFirst.y, 2.0f ) ) ) * ( sqrtf( powf( vectorSecond.x,  2.0f ) + powf( vectorSecond.y, 2.0f ) ) );
    fraction                        = scalar / length;

    fraction                        = ( ( -1 > fraction ) ? -1 : fraction );
    fraction                        = ( ( 1 < fraction ) ? 1 : fraction );

    radian                          = acosf( fraction );
    return radian;
}

//  ------------------------------------------------------------------------------------------------

//  ------------------------------------------------------------------------------------------------
//  ------------------------------------------------------------------------------------------------





