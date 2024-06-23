import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_unit_test_app/provider/done_module_provider.dart';

void main() {
  // Single testing
  test("should contain new item when module complete", () {
    // arrange
    var doneModuleProvider = DoneModuleProvider();
    var testModuleName = 'Test Module';

    // act
    doneModuleProvider.complete(testModuleName);

    // assert
    var result = doneModuleProvider.doneModuleList.contains(testModuleName);
    expect(result, true);
  });

  // Group testing
  group(
    "Provider testing",
    () {
      test("should contain new item when module complete", () {
        // arrange
        var doneModuleProvider = DoneModuleProvider();
        var testModuleName = 'Test Module';

        // act
        doneModuleProvider.complete(testModuleName);

        // assert
        var result = doneModuleProvider.doneModuleList.contains(testModuleName);
        expect(result, true);
      });

      test(
        'Another test case',
        () {},
      );
    },
  );
}
