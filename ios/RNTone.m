
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

RCT_EXPORT_METHOD(initWithChannels:(NSInteger)numChannels amplitude:(double)volume)
{
	_generator = [[TGSineWaveToneGenerator alloc] initWithChannels:numChannels amplitude:volume];
}

RCT_EXPORT_METHOD(setChannelFrequencies:(NSArray*)frequencies)
{
	int count = 0;
	// for (NSObject* o in frequencies)
	for (id object in frequencies)
	{
	    _generator->_channels[count].frequency = [object doubleValue];
	    count++;
	}
}

RCT_EXPORT_METHOD(play)
{
    // _generator->_channels[0].frequency = frequency;
    [_generator play];
}

RCT_EXPORT_METHOD(playForDuration:(NSTimeInterval)time) {
	[_generator playForDuration:time];
}

RCT_EXPORT_METHOD(stop)
{
    [_generator stop];
}

@end
  