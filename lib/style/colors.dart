import 'dart:ui';
import 'package:flutter/material.dart';
abstract class AppColors{
  static const Color red = Color(0xFFFF6474);
  static const Color orange = Color(0xFFFFAA5B);
  static const Color purple = Color(0xFF9AA0FC);
  static const Color pink = Color(0xFFFBAEAE);
  static const Color green = Color(0xFF71CFB9);
}

// list of colors that we use in our app
const mBackgroundColor = Color(0xFFFAFAFA);
const mBlueColor = Color(0xFF044a24);
const mGreyColor = Color(0xFFB4B0B0);
const mTitleColor = Color(0xFF02381b);
const mSubtitleColor = Color(0xFF8E8E8E);
const mBorderColor = Color(0xFFE8E8F3);
const mFillColor = Color(0xFFFFFFFF);
const mCardTitleColor = Color(0xFF0FA958);
const mCardSubtitleColor = mTitleColor;

// our default Shadow
const kDefaultShadow = BoxShadow(
  offset: Offset(0, 15),
  blurRadius: 27,
  color: Colors.black12, // Black color with 12% opacity
);