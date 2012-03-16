//
//  SXParticleSystem+extension.h
//  
//
//  Created by W.Terasa on 30.12.11.
//  Copyright (c) 2011 Wolion Games. All rights reserved.
//
//  This program is free software; you can redistribute it and/or modify
//  it under the terms of the Simplified BSD License.

#import "SXParticleSystem.h"

inline static SXColor4f convertToSXColor4f(uint color,char alpha)
{
    SXColor4f result;
    
    
    result.red =  (double) SP_COLOR_PART_RED(color)/255.0;
    result.green = (double)  SP_COLOR_PART_GREEN(color)/255.0;
    result.blue =  (double) SP_COLOR_PART_BLUE(color)/255.0;
    result.alpha = (double) alpha/255.0;
    
    return result;
}

@interface SXParticleSystem (extension)

@property (nonatomic,retain) SPTexture *texture;

// color
@property (nonatomic,assign) SXColor4f startColor;                          // startColor
@property (nonatomic,assign) SXColor4f startColorVariance;                  // startColorVariance
@property (nonatomic,assign) SXColor4f endColor;                            // finishColor
@property (nonatomic,assign) SXColor4f endColorVariance;                    // finishColorVariance


// emitter configuration
@property (nonatomic,assign) SXParticleEmitterType emitterType;             // emitterType
@property (nonatomic,assign) float emitterX;                                // sourcePosition x (ignored)
@property (nonatomic,assign) float emitterY;                                // sourcePosition y (ignored)
@property (nonatomic,assign) float emitterXVariance;                        // sourcePositionVariance x
@property (nonatomic,assign) float emitterYVariance;                        // sourcePositionVariance y

// particle configuration
@property (nonatomic,assign) int maxNumParticles;                           // maxParticles
@property (nonatomic,assign) float lifespan;                                // particleLifeSpan
@property (nonatomic,assign) float lifespanVariance;                        // particleLifeSpanVariance
@property (nonatomic,assign) float startSize;                               // startParticleSize
@property (nonatomic,assign) float startSizeVariance;                       // startParticleSizeVariance
@property (nonatomic,assign) float endSize;                                 // finishParticleSize
@property (nonatomic,assign) float endSizeVariance;                         // finishParticleSize
@property (nonatomic,assign) float emitAngle;                               // angle
@property (nonatomic,assign) float emitAngleVariance;                       // angleVariance
// [rotation not supported!]

// gravity configuration
@property (nonatomic,assign) float speed;                                   // speed
@property (nonatomic,assign) float speedVariance;                           // speedVariance
@property (nonatomic,assign) float gravityX;                                // gravity x
@property (nonatomic,assign) float gravityY;                                // gravity y
@property (nonatomic,assign) float radialAcceleration;                      // radialAcceleration
@property (nonatomic,assign) float radialAccelerationVariance;              // radialAccelerationVariance
@property (nonatomic,assign) float tangentialAcceleration;                  // tangentialAcceleration
@property (nonatomic,assign) float tangentialAccelerationVariance;          // tangentialAccelerationVariance

// radial configuration 
@property (nonatomic,assign) float maxRadius;                               // maxRadius
@property (nonatomic,assign) float maxRadiusVariance;                       // maxRadiusVariance
@property (nonatomic,assign) float minRadius;                               // minRadius
@property (nonatomic,assign) float rotatePerSecond;                         // rotatePerSecond
@property (nonatomic,assign) float rotatePerSecondVariance;                 // rotatePerSecondVariance

@property (nonatomic,assign) int blendFuncSource;                           // blendFuncSource
@property (nonatomic,assign) int blendFuncDestination;                      // blendFuncDestination

@property (nonatomic,assign) float startColorRed;
@property (nonatomic,assign) float startColorBlue;
@property (nonatomic,assign) float startColorGreen;
@property (nonatomic,assign) float endColorRed;
@property (nonatomic,assign) float endColorBlue;
@property (nonatomic,assign) float endColorGreen;


- (id) initWithTexture:(SPTexture *)texture numParticles:(int) numParticles;
+ (id)particleSystemWithTexture:(SPTexture *)texture numParticles:(int)numParticles;

-(void) setStartColorR:(float)red G:(float)green B:(float)blue;
-(void) setEndColorR:(float)red G:(float)green B:(float)blue;

@end
