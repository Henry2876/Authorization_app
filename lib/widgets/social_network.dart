import 'package:authorization_app/utils/images.dart';
import 'package:authorization_app/utils/size_indent.dart';
import 'package:authorization_app/utils/title.dart';
import 'package:flutter/material.dart';
import '../functions/show_login_dialog.dart';
import '../utils/size.dart';

class SocialNetworkButtonWidget extends StatelessWidget {
  const SocialNetworkButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () => showLoginDialog(context, subtitleGoogle),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(size_5)),
          ),
          child: imageGoogle,
        ),
        const SizedBox(width: sizeIndent_15),
        ElevatedButton(
          onPressed: () => showLoginDialog(context, subtitleFacebook),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(size_5)),
          ),
          child: imageFacebook,
        ),
        const SizedBox(width: sizeIndent_15),
        ElevatedButton(
          onPressed: () => showLoginDialog(context, subtitleTwitter),
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(size_5)),
          ),
          child: imageTwitter,
        ),
      ],
    );
  }
}
