import 'package:app/themes/themes_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliver_snap/sliver_snap.dart';

class BaseHeaderHomeWidget extends StatelessWidget {
  final Widget logoApp;
  final Widget hotlineWidget;
  final Widget billHistoryWidget;
  final Widget shoppingCartWidget;
  final Widget child;
  final VoidCallback onSearchTap;

  const BaseHeaderHomeWidget({
    super.key,
    required this.logoApp,
    required this.child,
    required this.billHistoryWidget,
    required this.hotlineWidget,
    required this.shoppingCartWidget,
    required this.onSearchTap,
  });

  @override
  Widget build(BuildContext context) {
    return SliverSnap(
        collapsedBackgroundColor: ThemeProvider.colorPrimary,
        expandedBackgroundColor: ThemeProvider.colorPrimary,
        expandedContentHeight: 160,
        expandedContent: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
          child: Column(
            children: [
              Row(
                children: [
                  logoApp.marginOnly(right: 10),
                  Expanded(flex: 4, child: hotlineWidget),
                  const SizedBox(width: 20),
                  Expanded(flex: 4, child: billHistoryWidget),
                  shoppingCartWidget
                ],
              ),
              GestureDetector(
                onTap: () {
                  onSearchTap.call();
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16)),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      Text(
                        'Tìm kiếm sản phẩm',
                        style: TextStyle(
                            color: ThemeProvider.colorBlack,
                            fontFamily: ThemeProvider.fontRegular,
                            fontSize: ThemeProvider.fontSize14),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        collapsedContent: Row(
          children: [
            logoApp.marginOnly(right: 10),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  onSearchTap.call();
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16)),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      Text(
                        'Tìm kiếm sản phẩm',
                        style: TextStyle(
                            color: ThemeProvider.colorBlack,
                            fontFamily: ThemeProvider.fontRegular,
                            fontSize: ThemeProvider.fontSize14),
                      )
                    ],
                  ),
                ),
              ),
            ),
            shoppingCartWidget
          ],
        ),
        body: child);
  }
}
