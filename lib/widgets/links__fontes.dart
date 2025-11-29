import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class LinkFonts extends StatefulWidget {
  final String link;
  final String titulo;
  const LinkFonts({super.key, required this.link, required this.titulo});

  @override
  State<LinkFonts> createState() => _LinkFontsState();
}

class _LinkFontsState extends State<LinkFonts> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Link(
          uri: Uri.parse(
              widget.link),
          target: LinkTarget.blank,
          builder: (BuildContext ctx, FollowLink? openLink) {
            return TextButton.icon(
              onPressed: openLink,
              label: Text(widget.titulo , style: const TextStyle(fontSize: 16),),
            );
          },
        ),
        Divider(),
      ],
    );
  }
}
