import 'package:flutter_test/flutter_test.dart';
import 'package:belajarflutter/main.dart';

void main() {
  testWidgets('Smoke test modul 2', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('List Data Produk'), findsOneWidget);
    expect(find.text('Kulkas'), findsOneWidget);
  });
}
