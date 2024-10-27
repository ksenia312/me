import 'package:flutter/material.dart';
import 'package:me/uikit/responsive/responsive_utils.dart';
import 'package:me/uikit/elements/hovering_widget.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

class ContactButton extends StatelessWidget {
  const ContactButton({
    super.key,
    required this.image,
    required this.url,
    required this.name,
    required this.background,
  });

  final Widget image;
  final String url;
  final String name;
  final Color background;

  @override
  Widget build(BuildContext context) {
    const largeIndent = 48.0;
    const smallIndent = 32.0;

    final idleSize = Responsive.get(context, def: () => 50.0, m: () => 30.0);
    final activeSize = idleSize + largeIndent;
    final inactiveSize = idleSize + smallIndent;

    return SizedBox.square(
      dimension: activeSize,
      child: Center(
        child: HoveringWidget(
          elevation: 10,
          activeColor: Colors.black12,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: background,
          ),
          onTap: () {
            final uri = Uri.tryParse(url);
            if (uri != null) {
              launcher.launchUrl(uri);
            }
          },
          builder: (context, isActive) {
            final size = isActive ? activeSize : inactiveSize;
            return AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              height: size,
              width: size,
              child: FractionallySizedBox(
                heightFactor: 0.6,
                widthFactor: 0.6,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: image,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
