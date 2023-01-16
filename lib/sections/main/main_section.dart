import 'package:app_bio_hadi/animations/entrance_fader.dart';
import 'package:app_bio_hadi/configs/app.dart';
import 'package:app_bio_hadi/configs/configs.dart';
import 'package:app_bio_hadi/provider/app_provider.dart';
import 'package:app_bio_hadi/provider/drawer_provider.dart';
import 'package:app_bio_hadi/provider/scroll_provider.dart';
import 'package:app_bio_hadi/responsive/responsive.dart';
import 'package:app_bio_hadi/utils/navbar_utils.dart';
import 'package:app_bio_hadi/utils/utils.dart';
import 'package:app_bio_hadi/widget/navbar_actions_button.dart';
import 'package:app_bio_hadi/widget/navbar_logo.dart';
import 'package:provider/provider.dart';

import 'package:universal_html/html.dart' as html;
import 'package:flutter/material.dart';
import 'package:app_bio_hadi/constants.dart';
import 'package:app_bio_hadi/widget/arrow_on_top.dart';

part 'widgets/_navbar_desktop.dart';
part 'widgets/_mobile_drawer.dart';
part 'widgets/_body.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    App.init(context);
    final drawerProvider = Provider.of<DrawerProvider>(context);

    return Scaffold(
      key: drawerProvider.key,
      extendBodyBehindAppBar: true,
      drawer: !Responsive.isDesktop(context) ? const _MobileDrawer() : null,
      body: SafeArea(
        child: Stack(
          children: [
            const _Body(),
            const ArrowOnTop(),
            Responsive.isTablet(context) || Responsive.isMobile(context)
                ? const _NavBarTablet()
                : const _NavbarDesktop(),
          ],
        ),
      ),
    );
  }
}
