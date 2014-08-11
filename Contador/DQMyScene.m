//
//  DQMyScene.m
//  Contador
//
//  Created by LEONARDO DE SOUSA MENDES on 11/08/14.
//  Copyright (c) 2014 LEONARDO DE SOUSA MENDES. All rights reserved.
//

#import "DQMyScene.h"

@implementation DQMyScene

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        self.contador=[[DQContadorGeiger alloc]initContadorNivelRadicao:0];
        
        [self.contador setPosition:CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame))];
        
        [self addChild:self.contador];
    }
    return self;
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    CGPoint posicaoToque=[[touches anyObject]locationInNode:self];
    
    SKNode *nodeTocado=[self nodeAtPoint:posicaoToque];
    
    if ([nodeTocado.name isEqualToString:@"Contador"]) {
        [self.contador aumentarNivelPerigo];
    }
}

@end
