import 'package:flutter_test/flutter_test.dart';

import 'package:anime_verse/main.dart';

void main() {
  testWidgets('Menampilkan halaman sign in saat aplikasi dibuka',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    expect(find.text('Welcome Back!'), findsOneWidget);
    expect(find.text('Sign In'), findsOneWidget);
  });

  testWidgets('Navigasi sign in -> home -> detail berjalan', (tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    await tester.tap(find.text('Sign In'));
    await tester.pumpAndSettle();

    expect(find.text('AnimeVerse'), findsOneWidget);
    expect(find.text('Black Clover'), findsOneWidget);

    await tester.tap(find.text('Black Clover'));
    await tester.pumpAndSettle();

    expect(find.text('Synopsis'), findsOneWidget);
    expect(find.text('170 Episodes'), findsOneWidget);
  });
}
