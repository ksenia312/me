import 'package:flutter/material.dart';
import 'package:me/common/utils/responsive_utils.dart';
import 'package:me/uikit/hovering_widget.dart';
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
    final size = Responsive.get(context, def: () => 50.0, m: () => 30.0);
    return HoveringWidget(
      elevation: 10,
      activeColor: Colors.black12,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: background,
      ),
      onTap: () {
        final uri = Uri.tryParse(url);
        if (uri != null) {
          launcher.launchUrl(uri);
        }
      },
      builder: (context, isActive) {
        return AnimatedContainer(
            duration: const Duration(milliseconds: 100),
            margin: EdgeInsets.all(isActive ? 24 : 16),
            height: size,
            width: size,
            child: FittedBox(fit: BoxFit.contain, child: image));
      },
    );
  }
}
