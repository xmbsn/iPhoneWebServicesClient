// Copyright 2008 Cyrus Najmabadi
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#import "UtilitiesTests.h"

#import "Utilities.h"

@implementation UtilitiesTests

- (void) testRightShiftFunctions {
  STAssertEquals((1UL << 31) >> 31, 1UL, nil);
  STAssertEquals((1 << 31) >> 31, -1, nil);
  STAssertEquals((1ULL << 63) >> 63, 1ULL, nil);
  STAssertEquals((1LL << 63) >> 63, -1LL, nil);

  STAssertEquals(logicalRightShift32((1 << 31), 31), 1, nil);
  STAssertEquals(logicalRightShift64((1LL << 63), 63), 1LL, nil);
}

@end
