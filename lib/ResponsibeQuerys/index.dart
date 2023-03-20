import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Global function for responsibe width
double mediaWidth(context, media) {
  return MediaQuery.of(context).size.width * media;
}

//Global function for responsibe height
double mediaHeight(context, media) {
  return MediaQuery.of(context).size.height * media;
}