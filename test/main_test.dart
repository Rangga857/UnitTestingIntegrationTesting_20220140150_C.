import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_example/main.dart'; // Sesuaikan dengan path sesuai struktur proyek Anda
import 'package:form_example/view_page.dart'; // Sesuaikan dengan path sesuai struktur proyek Anda

void main() {
  testWidgets('Form Widget Test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: const MyApp()));

    // Verify the presence of all text fields.
    expect(find.byType(TextField), findsNWidgets(10));

    // Enter text in each text field.
    await tester.enterText(find.byKey(const Key('Enter Your Name')), 'John Doe');
    await tester.enterText(find.byKey(const Key('Enter Your Identity Number')), '1234');
    await tester.enterText(find.byKey(const Key('Enter Your Birth Date')), '1990-01-01');
    await tester.enterText(find.byKey(const Key('Enter Your Gender')), 'Male');
    await tester.enterText(find.byKey(const Key('Enter Your Phone Number')), '1234567890');
    await tester.enterText(find.byKey(const Key('Enter Your Last Education')), 'umy');
    await tester.enterText(find.byKey(const Key('Enter Your Religion')), 'Islam');
    await tester.enterText(find.byKey(const Key('Enter Your Job')), 'Software Engineer');
    await tester.enterText(find.byKey(const Key('Enter Your Address')), '123 Main St');
    await tester.enterText(find.byKey(const Key('Enter Your Account Type')), 'Polyclinic ABC');

    // Tap the submit button and trigger a frame.
    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();

    // Verify if the ViewPage is opened.
    expect(find.byType(ViewPage), findsOneWidget);
  });

  testWidgets('Form Widget Empty Fields Validation', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: const MyApp()));

    // Tap the submit button without entering any text.
    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();

    // Verify if the alert dialog is shown.
    expect(find.byType(AlertDialog), findsOneWidget);
    expect(find.text('Warning !!'), findsOneWidget);
    expect(find.text('Please, input all your data needed...'), findsOneWidget);
  });
}
