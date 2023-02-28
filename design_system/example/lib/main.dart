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
          data: lightTheme,
        ),
        WidgetbookTheme(
          name: 'Dark',
          data: darkTheme,
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
              name: 'Filter Button',
              useCases: [
                WidgetbookUseCase(
                  name: 'selected Filter',
                  builder: (context) => const FilterButtonWidget(
                    filterData: FilterModal(
                        text: 'All',
                        icon: CustomIcon.archiveIcon,
                        notifications: 35),
                  ),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'App Bar Button',
              useCases: [
                WidgetbookUseCase(
                  name: 'Button',
                  builder: (context) =>
                      const MenuButtonWidget(icon: CustomIcon.chatBoxIcon),
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
            WidgetbookComponent(
              name: 'Menu Bar',
              useCases: [
                WidgetbookUseCase(
                  name: 'show menus',
                  builder: (context) => const MenuBarWidget(),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'chat Preview message',
              useCases: [
                WidgetbookUseCase(
                  name: 'example',
                  builder: (context) => ChatPreviewWidget(
                      profile: ProfileModal(
                        avatarImage: 'assets/avatar/avatar.png',
                        lastMessage: 'potato',
                        lastMessageData: '12:23',
                        muted: true,
                        name: 'Raphael',
                        number: '(12) 23456=5656',
                      ),
                      notifications: 34),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Avatar Icon',
              useCases: [
                WidgetbookUseCase(
                  name: 'Avatar notifications',
                  builder: (context) => const AvatarNotificationWidget(
                      notifications: 23,
                      avatarImage: 'assets/avatar/avatar.png'),
                ),
                WidgetbookUseCase(
                  name: 'Avatar Todo List',
                  builder: (context) => const AvatarTodoListWidget(
                      avatarImage: 'assets/avatar/avatar.png'),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
