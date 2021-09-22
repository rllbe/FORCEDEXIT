//Reference: https://www.trendmicro.com/en_us/research/21/i/analyzing-pegasus-spywares-zero-click-iphone-exploit-forcedentry.html

#include <substrate.h>

void voidfunc(void) {
    return;
}

%ctor {
    void *symbol = MSFindSymbol(MSGetImageByName("/System/Library/Frameworks/CoreGraphics.framework/CoreGraphics"), "__ZN11JBIG2Stream17readTextRegionSegEjiijPjj");
    if (symbol) MSHookFunction(symbol, (void *)voidfunc, (void **)NULL);
}
