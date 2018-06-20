
#import "RNTone.h"
#import "TGSineWaveToneGenerator.h"
#import "React/RCTLog.h"

@implementation RNTone {
	TGSineWaveToneGenerator *_generator;
}

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()
RCT_EXPORT_METHOD(start)
{
	_generator = [[TGSineWaveToneGenerator alloc] initWithChannels:1];
}
RCT_EXPORT_METHOD(startTone:(NSInteger)frequency)
{
    _generator->_channels[0].frequency = frequency;
    [_generator play];
}

RCT_EXPORT_METHOD(stopTone)
{
    [_generator stop];
}

@end
  