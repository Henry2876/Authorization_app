import 'package:authorization_app/utils/size_images.dart';
import 'package:authorization_app/utils/title.dart';
import 'package:flutter/material.dart';

Image imageGoogle = Image.asset("assets/logo_google.png", width: sizeImage_27_54, height: sizeImage_27);
Image imageFacebook = Image.asset("assets/logo_facebook.png", width: sizeImage_17, height: sizeImage_26);
Image imageTwitter = Image.asset("assets/logo_twitter.png", width: sizeImage_31, height: sizeImage_24);
Image imageDefault = Image.asset("assets/logo_big.png", width: sizeImage_27, height: sizeImage_27);

final Map<String, Widget> platformImages = {
  subtitleGoogle: imageGoogle,
  subtitleFacebook: imageFacebook,
  subtitleTwitter: imageTwitter,
};