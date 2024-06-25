import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/dashboard_desktop_layout.dart';
import 'package:responsive_dashboard/widget/adaptive_layout_widget.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => const Center(child: Text('Mobile')),
        tabletLayout: (context) => const Center(child: Text('Tablet')),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
