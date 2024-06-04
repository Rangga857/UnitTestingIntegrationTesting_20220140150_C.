import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_example/view_page.dart';

void main() {
  testWidgets('ViewPage displays correct information', (WidgetTester tester) async {
    // Create a ViewPage instance with sample data
    final viewPage = ViewPage(
      name: 'John Doe',
      identitynumber: '1234',
      birthdate: '1990-01-01',
      gender: 'Male',
      phonenumber: '123-456-7890',
      lasteducation: 'umy',
      religion: 'islam',
      job: 'Software Engineer',
      address: '123 Main St',
      accounttype: 'Polyclinic ABC',
    );

    await tester.pumpWidget(MaterialApp(home: viewPage));

    expect(find.text('Name: John Doe'), findsOneWidget);
    expect(find.text('Identity Number: 1234'), findsOneWidget);
    expect(find.text('Birht Date: 1990-01-01'), findsOneWidget);
    expect(find.text('Gender: Male'), findsOneWidget);
    expect(find.text('Phone Number: 123-456-7890'), findsOneWidget);
    expect(find.text('Last Education: umy'), findsOneWidget);
    expect(find.text('Religion: islam'), findsOneWidget);
    expect(find.text('Job: Software Engineer'), findsOneWidget);
    expect(find.text('Address: 123 Main St'), findsOneWidget);
    expect(find.text('Account Type: Polyclinic ABC'), findsOneWidget);
  });

 testWidgets('ViewPage displays empty strings when no data is provided', (WidgetTester tester) async {
    // Create a ViewPage instance with empty strings
    final viewPage = ViewPage(
      name: '',
      identitynumber: '',
      birthdate: '',
      gender: '',
      phonenumber: '',
      lasteducation: '',
      religion: '',
      job: '',
      address: '',
      accounttype: '',
    );
    
    // Pump the widget into the tester
    await tester.pumpWidget(MaterialApp(home: viewPage));

    // Verify that empty strings are displayed
    expect(find.text('Name: '), findsOneWidget);
    expect(find.text('Identity Number: '), findsOneWidget);
    expect(find.text('Birht Date: '), findsOneWidget);
    expect(find.text('Gender: '), findsOneWidget);
    expect(find.text('Phone Number: '), findsOneWidget);
    expect(find.text('Last Education: '), findsOneWidget);
    expect(find.text('Religion: '), findsOneWidget);
    expect(find.text('Job: '), findsOneWidget);
    expect(find.text('Address: '), findsOneWidget);
    expect(find.text('Account Type: '), findsOneWidget);
  });
}
