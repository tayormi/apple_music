import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:macos_ui/macos_ui.dart';

import 'pages/main_page.dart';

final List<Widget> pages = [const MainPage()];

class HomeScreen extends HookWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageIndex = useState(0);

    return MacosScaffold(
      backgroundColor: const Color(0xFF0C060B).withOpacity(0.3),
      sidebar: Sidebar(
          padding: const EdgeInsets.only(top: 50),
          decoration:
              BoxDecoration(color: const Color(0xFF14225B).withOpacity(0.2)),
          builder: (context, controller) {
            return SidebarItems(
                scrollController: controller,
                currentIndex: pageIndex.value,
                selectedColor: const Color(0xFF29264f),
                onChanged: (i) => pageIndex.value = i,
                items: const [
                  SidebarItem(
                    label: Text('Listen now'),
                  ),
                  SidebarItem(
                    label: Text('Browse'),
                  ),
                  SidebarItem(
                    label: Text('Radio'),
                  ),
                ]);
          },
          minWidth: 200),
      children: <Widget>[
        ContentArea(
          builder: (context, scrollController) {
            return const MainPage();
            // SingleChildScrollView(
            //   controller: scrollController,
            //   padding: const EdgeInsets.all(40),
            //   child: IndexedStack(
            //     alignment: Alignment.topCenter,
            //     index: pageIndex.value,
            //     children: pages,
            //   ),
            // );
          },
        ),
      ],
    );
  }
}
