import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_example/main.dart' as app;
import 'package:form_example/view_page.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('input data', () { 
testWidgets('Form submission and navigation test', (WidgetTester tester) async {
    app.main();
    await tester.pumpAndSettle();
    await Future.delayed(const Duration(seconds: 2));
    await tester.enterText(find.byType(TextField).at(0), 'Rangga');
    await Future.delayed(const Duration(seconds: 2));
    await tester.enterText(find.byType(TextField).at(1), '1234');
    await Future.delayed(const Duration(seconds: 2));
    await tester.enterText(find.byType(TextField).at(2), '20/10/210');
    await Future.delayed(const Duration(seconds: 2));
    await tester.enterText(find.byType(TextField).at(3), 'male');
    await Future.delayed(const Duration(seconds: 2));
    await tester.enterText(find.byType(TextField).at(4), '12345');
    await Future.delayed(const Duration(seconds: 2));
    await tester.enterText(find.byType(TextField).at(5), 'umy');
    await Future.delayed(const Duration(seconds: 2));
    await tester.enterText(find.byType(TextField).at(6), 'muslim');
    await Future.delayed(const Duration(seconds: 2));
    await tester.enterText(find.byType(TextField).at(7), 'mahasiswa');
    await Future.delayed(const Duration(seconds: 2));
    await tester.enterText(find.byType(TextField).at(8), 'Jogja');
    await Future.delayed(const Duration(seconds: 2));
    await tester.enterText(find.byType(TextField).at(9), 'dvsal');
    await Future.delayed(const Duration(seconds: 2));
    await tester.tap(find.text("Submit Data"));
    await Future.delayed(const Duration(seconds: 2));
    await tester.pumpAndSettle();

    await Future.delayed(const Duration(seconds: 2));
    expect(find.byType(app.MyApp), findsOneWidget);

  });
  

  });
}