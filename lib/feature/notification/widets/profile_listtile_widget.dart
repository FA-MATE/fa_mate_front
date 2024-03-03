import 'package:fa_mate_front/common/widgets/text_default_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileListTileWidget extends StatelessWidget {
  const ProfileListTileWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.isEndPoint,
  });
  final String title;
  final IconData icon;
  final bool isEndPoint;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon),
          title: TextDefaultWidget(
            title: title,
            textAlign: TextAlign.start,
          ),
          trailing: const Icon(Iconsax.arrow_right_34),
        ),
        !isEndPoint ? const Divider() : const SizedBox.shrink(),
      ],
    );
  }
}
