//
//  ParticleSystem+extension.m
// 
//
//  Created by W.Terasa on 30.12.11.
//  Copyright (c) 2011 Wolion Games. All rights reserved.
//
//  This program is free software; you can redistribute it and/or modify
//  it under the terms of the Simplified BSD License.

#import "SXParticleSystem+extension.h"

@implementation SXParticleSystem (extension)

-(void) setTexture:(SPTexture *)texture
{ 
    mTexture = texture; 
}

-(SPTexture*) texture
{return mTexture;}

-(void) setEmitterType:(SXParticleEmitterType)emitterType
{ mEmitterType = emitterType;}
-(SXParticleEmitterType) emitterType
{return mEmitterType;}


-(void) setEmitterX:(float)emitterX
{mEmitterX = emitterX;}    
-(float) emitterX
{
    return mEmitterX;
}
// sourcePosition x (ignored)
-(void) setEmitterY:(float)emitterY
{mEmitterY = emitterY;}           // sourcePosition y (ignored)
-(float) emitterY
{ return mEmitterY;}
-(void) setEmitterXVariance:(float)emitterXVariance
{ mEmitterXVariance = emitterXVariance;}                        // sourcePositionVariance x
-(float) emitterXVariance
{return mEmitterXVariance;}

-(void) setEmitterYVariance:(float)emitterYVariance
{mEmitterYVariance = emitterYVariance;}                        // sourcePositionVariance y
-(float) emitterYVariance
{return mEmitterYVariance;}

// particle configuration
-(void) setMaxNumParticles:(int)maxNumParticles
{mNumParticles = maxNumParticles;}                           // maxParticles
-(int) maxNumParticles
{return mMaxNumParticles;}

-(void) setLifespan:(float)lifespan
{mLifespan = lifespan;}                                // particleLifeSpan
-(float) lifespan
{return mLifespan;}
-(void) setLifespanVariance:(float)lifespanVariance
{mLifespanVariance = lifespanVariance;}                        // particleLifeSpanVariance
-(float) lifespanVariance
{return mLifespanVariance;}
-(void) setStartSize:(float)startSize
{
    mStartSize = startSize/[SPStage contentScaleFactor];
}                               // startParticleSize
-(float) startSize
{return mStartSize;}
-(void) setStartSizeVariance:(float)startSizeVariance
{
    mStartSizeVariance = startSizeVariance/[SPStage contentScaleFactor];
}                       // startParticleSizeVariance
-(float) startSizeVariance
{return mStartSizeVariance;}
-(void) setEndSize:(float)endSize
{mEndSize = endSize/[SPStage contentScaleFactor];}                                 // finishParticleSize
-(float) endSize
{return mEndSize;}
-(void) setEndSizeVariance:(float)endSizeVariance
{mEndSizeVariance = endSizeVariance/[SPStage contentScaleFactor];}                         // finishParticleSize
-(float) endSizeVariance
{return mEndSizeVariance;}
-(void) setEmitAngle:(float)emitAngle
{mEmitAngle = emitAngle;}                               // angle
-(float) emitAngle
{return mEmitAngle;}
-(void) setEmitAngleVariance:(float)emitAngleVariance
{mEmitAngleVariance = emitAngleVariance;}                       // angleVariance
-(float) emitAngleVariance
{return mEmitAngleVariance;}
// [rotation not supported!]


// gravity configuration
-(void) setSpeed:(float)speed
{mSpeed = speed;}                                   // speed
-(float) speed
{return mSpeed;}
-(void) setSpeedVariance:(float)speedVariance
{mSpeedVariance = speedVariance;}                           // speedVariance
-(float) speedVariance
{return mSpeedVariance;}
-(void) setGravityX:(float)gravityX
{mGravityX = gravityX;}                              // gravity x
-(float) gravityX
{return mGravityX;}
-(void) setGravityY:(float)gravityY
{mGravityY = gravityY;}                             // gravity y
-(float) gravityY
{return mGravityY;}
-(void) setRadialAcceleration:(float)radialAcceleration
{mRadialAcceleration = radialAcceleration;}                      // radialAcceleration
-(float) radialAcceleration
{return mRadialAcceleration;}
-(void) setRadialAccelerationVariance:(float)radialAccelerationVariance
{mRadialAccelerationVariance = radialAccelerationVariance;}              // radialAccelerationVariance
-(float) radialAccelerationVariance
{return mRadialAccelerationVariance;}
-(void) setTangentialAcceleration:(float)tangentialAcceleration
{mTangentialAcceleration = tangentialAcceleration;}                  // tangentialAcceleration
-(float) tangentialAcceleration
{return mTangentialAcceleration;}
-(void) setTangentialAccelerationVariance:(float)tangentialAccelerationVariance
{mTangentialAccelerationVariance = tangentialAccelerationVariance;}          // tangentialAccelerationVariance
-(float) tangentialAccelerationVariance
{return mTangentialAccelerationVariance;}
// radial configuration 
-(void) setMaxRadius:(float)maxRadius
{mMaxRadius = maxRadius;}                               // maxRadius
-(float) maxRadius
{return mMaxRadius;}
-(void) setMaxRadiusVariance:(float)maxRadiusVariance
{mMaxRadiusVariance = maxRadiusVariance;}
// maxRadiusVariance
-(float) maxRadiusVariance
{return mMaxRadiusVariance;}
-(void) setMinRadius:(float)minRadius
{mMinRadius = minRadius;}                               // minRadius
-(float) minRadius
{return mMinRadius;}
-(void) setRotatePerSecond:(float)rotatePerSecond
{mRotatePerSecond = rotatePerSecond;}                         // rotatePerSecond
-(float) rotatePerSecond
{return mRotatePerSecond;}
-(void) setRotatePerSecondVariance:(float)rotatePerSecondVariance
{mRotatePerSecondVariance = rotatePerSecondVariance;}                 // rotatePerSecondVariance
-(float) rotatePerSecondVariance
{return mRotatePerSecondVariance;}

-(void) setBlendFuncSource:(int)blendFuncSource
{mBlendFuncSource = blendFuncSource;}
-(int) blendFuncSource
{return mBlendFuncSource;}
-(void) setBlendFuncDestination:(int)blendFuncDestination
{mBlendFuncDestination = blendFuncDestination;}
-(int) blendFuncDestination
{return mBlendFuncDestination;}
    // rotatePerSecondVariance

-(void) setStartColorRed:(float) red
{
    SXColor4f color = mStartColor;
    color.red   = red;
    mStartColor =  color;
}

-(void) setEndColorRed:(float) red
{
    SXColor4f color = mEndColor;
    color.red   = red;
    mEndColor =  color;
}

-(void) setStartColorBlue:(float) blue
{
    SXColor4f color = mStartColor;
    color.blue   = blue;
    mStartColor =  color;
}

-(void) setEndColorBlue:(float) blue
{
    SXColor4f color = mEndColor;
    color.blue   = blue;
    mEndColor =  color;
}

-(void) setStartColorGreen:(float) green
{
    SXColor4f color = mStartColor;
    color.green   = green;
    mStartColor =  color;
}

-(void) setEndColorGreen:(float) green
{
    SXColor4f color = mEndColor;
    color.green   = green;
    mEndColor =  color;
}

-(float) startColorRed
{
   return mStartColor.red;
}
-(float) startColorBlue
{
    return mStartColor.blue;
}
-(float) startColorGreen
{
    return mStartColor.green;
}
-(float) endColorRed
{
    return mEndColor.red;
}
-(float) endColorBlue
{
    return mEndColor.blue;
}
-(float) endColorGreen
{
    return mEndColor.green;
}

-(void) setStartColorR:(float)red G:(float)green B:(float)blue
{
    SXColor4f color = mStartColor;
    color.red   = red;
    color.green   = green;
    color.blue   = blue;
    mStartColor =  color;
}

-(void) setEndColorR:(float)red G:(float)green B:(float)blue
{
    SXColor4f color = mEndColor;
    color.red   = red;
    color.green   = green;
    color.blue   = blue;
    mEndColor =  color;
}

-(void) setStartColor:(SXColor4f)startColor
{
    mStartColor = startColor;
}
-(void) setStartColorVariance:(SXColor4f)startColorVariance
{
    mStartColorVariance = startColorVariance;
}
-(void) setEndColor:(SXColor4f)endColor
{
    mEndColor = endColor;
}
-(void) setEndColorVariance:(SXColor4f)endColorVariance
{
    mEndColorVariance = endColorVariance;
}

-(SXColor4f) startColor
{
    return mStartColor;
}

-(SXColor4f) startColorVariance
{
    return mStartColorVariance;

}

-(SXColor4f) endColor
{
    return mEndColor;
}

-(SXColor4f) endColorVariance
{
    return mEndColorVariance;

}

-(id) initWithTexture:(SPTexture *)texture numParticles:(int)numParticles
{
    self = [super init];
    if (self)
    {
        mTexture = texture;
        mMaxNumParticles = numParticles;
        mParticles = malloc(sizeof(SXParticle) * mMaxNumParticles);
        mPointSprites = malloc(sizeof(SXPointSprite) * mMaxNumParticles);
        
        mScaleFactor = 1.0f;
        
        if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
        {
        	// on iPhone low res the particles are doubled in size, i don't know why 
        	// so the scalefactor is set to 0.5
            if ([SPStage contentScaleFactor]==1)  // nicht Retina
                mScaleFactor = 0.5;
        }
        else
        {
        	// iPad incl. Retina iPad
            mScaleFactor = [SPStage contentScaleFactor];
        }


    }
    return self;
}

+ (id)particleSystemWithTexture:(SPTexture *)texture numParticles:(int)numParticles
{
    return [[self alloc] initWithTexture:texture numParticles:numParticles];
}

-(id) copyWithZone:(NSZone*) zone
{
    SXParticleSystem* newParticleSystem = [[[self class] allocWithZone:zone] initWithTexture:mTexture numParticles:mMaxNumParticles];
    newParticleSystem.startColor = mStartColor;
    newParticleSystem.startColorVariance = mStartColorVariance;
    newParticleSystem.endColor = mEndColor;
    newParticleSystem.endColorVariance = mEndColorVariance;
    newParticleSystem.emitterType = mEmitterType;
    newParticleSystem.emitterX = mEmitterX;
    newParticleSystem.emitterXVariance = mEmitterXVariance;
    newParticleSystem.emitterY = mEmitterY;
    newParticleSystem.emitterYVariance = mEmitterYVariance;
    newParticleSystem.lifespan = mLifespan;
    newParticleSystem.lifespanVariance = mLifespanVariance;
    newParticleSystem.startSize = mStartSize;
    newParticleSystem.startSizeVariance = mStartSizeVariance;
    newParticleSystem.endSize = mEndSize;
    newParticleSystem.endSizeVariance = mEndSizeVariance;
    newParticleSystem.emitAngle = mEmitAngle;
    newParticleSystem.emitAngleVariance = mEmitAngleVariance;
    newParticleSystem.speed = mSpeed;
    newParticleSystem.speedVariance = mSpeedVariance;
    newParticleSystem.gravityX = mGravityX;
    newParticleSystem.gravityY = mGravityY;
    newParticleSystem.radialAcceleration = mRadialAcceleration;
    newParticleSystem.radialAccelerationVariance = mRadialAccelerationVariance;
    newParticleSystem.tangentialAcceleration = mTangentialAcceleration;
    newParticleSystem.tangentialAccelerationVariance = mTangentialAccelerationVariance;
    newParticleSystem.maxRadius = mMaxRadius;
    newParticleSystem.maxRadiusVariance = mMaxRadiusVariance;
    newParticleSystem.minRadius = mMinRadius;
    newParticleSystem.rotatePerSecond = mRotatePerSecond;
    newParticleSystem.rotatePerSecondVariance = mRotatePerSecondVariance;
    newParticleSystem.blendFuncSource = mBlendFuncSource;
    newParticleSystem.blendFuncDestination = mBlendFuncDestination;
    
    return newParticleSystem;
}

@end
