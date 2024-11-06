import 'package:flutter_test/flutter_test.dart';
import 'package:cv_responsive/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('LanguageServiceTest -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
