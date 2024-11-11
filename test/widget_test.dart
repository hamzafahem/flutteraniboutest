import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:anibou_flutter/MyApp.dart'; // Assurez-vous que le chemin est correct

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Construire notre application et déclencher un frame.
    await tester.pumpWidget(const MyApp());

    // Vérifier que le compteur commence à 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Appuyer sur l'icône '+' et déclencher un frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump(); // Réactualiser l'affichage

    // Vérifier que le compteur a été incrémenté.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
