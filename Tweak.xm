@interface YTPlayerView
- (void)enableSkipAdWithTime:(double)arg1;
@end

%hook YTPlayerView
- (void)setAdTitle:(id)arg1
{
	%orig;
	[self enableSkipAdWithTime:0];
}
%end