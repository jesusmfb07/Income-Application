import 'package:flutter/material.dart';
import 'package:app_movil/dashboard/mobile/mobile.dart';
import 'package:app_movil/dashboard/tablet/tablet.dart';
import 'package:app_movil/widgets/responsive.dart';

import 'dashboard/desktop/desktop.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      desktop: DesktopDashboard(),
      mobile: MobileDashboard(),
      tablet: TabletDashboard(),
    );
  }
}
