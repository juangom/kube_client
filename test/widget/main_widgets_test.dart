import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kube_client/clusters/ui/pages/home_page.dart';

import 'package:kube_client/main.dart';

void main() {
  testWidgets('Test top level widgets', (WidgetTester tester) async {
    await tester.pumpWidget(const App());

    expect(find.byType(MaterialApp), findsOneWidget);
    expect(find.byType(HomePage), findsOneWidget);
  });
}
