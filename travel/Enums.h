//
//  Enums.h
//  travel
//
//  Created by Оля Качинская on 28.02.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef enum{
    China,
    India,
    France,
    Norway,
    Korea,
    Australia,
}Contry;

typedef enum{
    car,
    train,
    airplane,
    ship,
}Transport;

typedef enum{
    summer,
    autumn,
    winter,
    spring,
}Season;

typedef enum{
    weekend,
    week,
    month,
    year,
}Time;

@interface Enums : NSObject

@property Contry contry;
@property Transport transport;
@property Season season;
@property Time time;

-(void)SetUpProperties:(Contry)a :(Transport)b :(Season)c :(Time)b;

-(void)DisplayContry:(Contry)a;
-(void)DisplayTransport:(Transport)a;
-(void)DisplaySeason:(Season)a;
-(void)DisplayTime:(Time)a;

-(void)DisplayInfo:(NSString *)string;

@end

NS_ASSUME_NONNULL_END
