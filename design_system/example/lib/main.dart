import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

void main() {
  runApp(const HotReloadWidgetbook());
}

class HotReloadWidgetbook extends StatelessWidget {
  const HotReloadWidgetbook({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      devices: [
        Apple.iPhone8,
      ],
      themes: [
        WidgetbookTheme(
          name: 'Light',
          data: getLightTheme,
        ),
        WidgetbookTheme(
          name: 'Dark',
          data: getDarkTheme,
        ),
      ],
      appInfo: AppInfo(name: 'Example'),
      categories: [
        WidgetbookCategory(
          name: 'widgets',
          widgets: [
            WidgetbookComponent(
              name: 'notification Box',
              useCases: [
                WidgetbookUseCase(
                  name: 'notification',
                  builder: (context) => const NotificationWidget(
                      color: Colors.purple, notification: 34),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Filter',
              useCases: [
                WidgetbookUseCase(
                  name: 'selected Filter',
                  builder: (context) => const ListFilterButtonWidget(),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'search Box',
              useCases: [
                WidgetbookUseCase(
                  name: 'search',
                  builder: (context) => const SearchWidget(),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
