//
//  Enums.m
//  travel
//
//  Created by Оля Качинская on 28.02.2021.
//

#import "Enums.h"

@implementation Enums

- (void)SetUpProperties:(Contry)a :(Transport)b :(Season)c :(Time)d
{
        [self setContry:a];
        [self setTransport:b];
        [self setSeason:c];
        [self setTime:d];
}

-(void)DisplayContry:(Contry)a
{
    switch (a) {
        case China:
            NSLog(@"China");
            break;
        case India:
            NSLog(@"India");
            break;
        case France:
            NSLog(@"France");
            break;
        case Norway:
            NSLog(@"Norway");
            break;
        case Korea:
            NSLog(@"Korea");
            break;
        case Australia:
            NSLog(@"Australia");
            break;
        default:
            NSLog(@"Contry not found");
            break;
    }

}
-(void)DisplayTransport:(Transport)a{
    switch (a) {
        case car:
            NSLog(@"car");
            break;
        case train:
            NSLog(@"train");
            break;
        case airplane:
            NSLog(@"airplane");
            break;
        case ship:
            NSLog(@"ship");
            break;
        default:
            NSLog(@"Transport not found");
            break;
    }
}

-(void)DisplaySeason:(Season)a
{
    switch (a) {
        case summer:
            NSLog(@"summer");
            break;
        case autumn:
            NSLog(@"autumn");
            break;
        case winter:
            NSLog(@"winter");
            break;
        case spring:
            NSLog(@"spring");
            break;
        default:
            NSLog(@"Saeson not found");
            break;
    }
}

-(void)DisplayTime:(Time)a
{
    switch (a) {
        case weekend:
            NSLog(@"weekend");
            break;
        case week:
            NSLog(@"week");
            break;
        case month:
            NSLog(@"week");
            break;
        case year:
            NSLog(@"year");
            break;
        default:
            NSLog(@"Time not found");
            break;
    }
}

-(void)DisplayInfo:(NSString *)string
{
    NSLog(@"%@",string);
    [self DisplayContry:[self contry]];
    [self DisplayTransport:[self transport]];
    [self DisplaySeason:[self season]];
    [self DisplayTime:[self time]];
    NSLog(@"\n");
}

@end
