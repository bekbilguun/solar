import 'package:solar/constants.dart';
import 'package:flutter/material.dart';

class AppLayout extends StatelessWidget {
  final String title;
  final Widget child;
  final List<Widget>? actionsButton;
  final PreferredSizeWidget? headerBottom;
  final Widget? floatingActionButton;
  final double? padding;
  final bool? pinned;

  const AppLayout(this.title,
      {required this.child,
      this.headerBottom,
      this.actionsButton,
      this.floatingActionButton,
      this.padding,
      this.pinned,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        // floatHeaderSlivers: true,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            (headerBottom != null)
                ? SliverAppBar(
                    title: Text(
                      title,
                      textAlign: TextAlign.center,
                    ),
                    pinned: true,
                    floating: true,
                    actions: actionsButton,
                    bottom: headerBottom,
                    leading: const BackButton(color: appBarIconColor),
                  )
                : SliverAppBar(
                    pinned: pinned ?? false,
                    actions: actionsButton,
                    leading: const BackButton(color: appBarIconColor),
                    title: Text(title, textAlign: TextAlign.center),
                  ),
          ];
        },
        body: Padding(
          padding: EdgeInsets.all(padding ?? SPACE_XS),
          child: child,
        ),
      ),
      floatingActionButton: floatingActionButton,
    );
  }
}
