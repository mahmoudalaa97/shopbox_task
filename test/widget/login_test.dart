import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopbox_task/ui/screens/login_screen.dart';

main() {
  testWidgets("test login crdintiols ", (WidgetTester tester) async {
    await tester.pumpWidget(Scaffold());
    var textFiled=find.byType(TextFormField);
    expect(textFiled, findsOneWidget);
  });
}
