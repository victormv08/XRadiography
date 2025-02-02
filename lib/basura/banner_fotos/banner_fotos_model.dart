import '/flutter_flow/flutter_flow_util.dart';
import 'banner_fotos_widget.dart' show BannerFotosWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BannerFotosModel extends FlutterFlowModel<BannerFotosWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
