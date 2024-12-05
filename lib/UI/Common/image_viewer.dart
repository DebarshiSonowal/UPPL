import 'package:auto_route/annotations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CustomImageViewerScreen extends StatefulWidget {
  const CustomImageViewerScreen({super.key, required this.url});

  final String url;

  @override
  State<CustomImageViewerScreen> createState() =>
      _CustomImageViewerScreenState();
}

class _CustomImageViewerScreenState extends State<CustomImageViewerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: CachedNetworkImage(imageUrl: widget.url),
      ),
    );
  }
}
