import 'package:flutter_test/flutter_test.dart';
import 'package:travel_mate_ui/app_travel_mate_ui.dart';
import 'package:travel_mate_ui/config/routing/app_router.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(AppTravelMateUi(appRouter: AppRouter()));
  });
}
