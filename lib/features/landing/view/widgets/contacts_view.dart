part of '../landing_page.dart';

class _ContactsView extends StatelessWidget {
  const _ContactsView();

  @override
  Widget build(BuildContext context) {
    final spacer = Responsive.get(
      context,
      def: () => const Spacer(),
      s: () => const SizedBox.shrink(),
    );
    final contacts = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        spacer,
        // Flexible(
        //   child: ContactButton(
        //     image: Assets.icons.icGithub.svg(),
        //     background: Colors.white,
        //     url: 'https://github.com/ksenia312',
        //     name: 'GitHub',
        //   ),
        // ),
        // Flexible(
        //   child: ContactButton(
        //     image: Assets.icons.icLinkedIn.svg(),
        //     url: 'https://www.linkedin.com/in/xenikii',
        //     name: 'Linkedin',
        //     background: const Color(0xFF1594DE),
        //   ),
        // ),
        // Flexible(
        //   child: ContactButton(
        //     image: Assets.icons.icTelegram.svg(),
        //     url: 'https://t.me/xenikii',
        //     name: 'Telegram',
        //     background: const Color(0xFF53C1FF),
        //   ),
        // ),
        // Flexible(
        //   child: ContactButton(
        //     background: Theme.of(context).colorScheme.primary,
        //     image: Assets.icons.icEmail.svg(
        //       colorFilter: const ColorFilter.mode(
        //         Colors.white,
        //         BlendMode.srcATop,
        //       ),
        //     ),
        //     url: 'mailto:nikitina3619@gmail.com',
        //     name: 'Email',
        //   ),
        // ),
        spacer,
      ],
    );
    return Container(
      color: Theme.of(context).colorScheme.tertiary,
      width: double.infinity,
      alignment: Alignment.center,
      height: Responsive.get(context, def: () => 350, s: () => 150),
      child: contacts,
    );
  }
}
