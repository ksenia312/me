part of '../landing.dart';

class _GreetingsView extends StatelessWidget {
  const _GreetingsView();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32),
      child: Responsive.get(
        context,
        def: () => const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Flexible(child: GreetingsText()), FlutterImage()],
        ),
        s: () => const Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [GreetingsText(), FlutterImage()],
        ),
      ),
    );
  }
}
