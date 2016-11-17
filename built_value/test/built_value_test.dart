// Copyright (c) 2016, Google Inc. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:built_value/built_value.dart';
import 'package:test/test.dart';

main() {
  group('EnumClass', () {
    test('can be used in switch', () {
      final yes = YesNoEnum.yes;
      switch (yes) {
        case YesNoEnum.yes:
          break;
        case YesNoEnum.no:
          break;
      }
    });
  });
}

// Note: this is not the right way to use EnumClass!
//
// See https://github.com/google/built_value.dart/tree/master/example
class YesNoEnum extends EnumClass {
  static const YesNoEnum yes = const YesNoEnum._('yes');
  static const YesNoEnum no = const YesNoEnum._('no');

  const YesNoEnum._(String name) : super(name);
}
