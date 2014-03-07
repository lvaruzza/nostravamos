//
//  NosGenerator.m
//  Nostravamos
//
//  Created by Leonardo Varuzza on 3/6/14.
//  Copyright (c) 2014 Leonardo Varuzza. All rights reserved.
//

#import "NosGenerator.h"

@implementation NosGenerator
{
    NSArray *foi_um;
    NSArray *que;
}
-(id)init {
    foi_um=@[@"monge",@"subgerente",@"sábio",@"idiota",
             @"palhaço",@"almocreve",@"nefelibata",@"burro",
             @"porteiro",@"jerimum",@"pipoqueiro",@"atravessador"];
    que=@[@"comia rosquinhas",
          @"se parecia com cabra",
          @"comia grama",
          @"amava os Beatles",
          @"andava de pedalinho",
          @"foi defenestrado",
          @"gostava de pedras",
          @"estudava geografia",
          @"se fingia de morto",
          @"comia abobrinha",
          @"imitava um pato",
          @"cobrava pedágio",
          @"jogava peteca",
          @"obedecia ordens",
          @"acreditava em biscoitos da sorte",
          @"viu a banda passar",
          @"geranciava abelhas"];
    return self;
}

-(NSString*) randGet:(NSArray*)ar {
    int x=arc4random() % [ar count];
    return [ar objectAtIndex: x];
}

-(NSString*)generate {
    return [NSString stringWithFormat:@"Em uma vida passada você foi um %@ que %@",
            [self randGet:foi_um],
            [self randGet:que]];
}

@end
