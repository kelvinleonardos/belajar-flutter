import 'package:flutter/material.dart';


class GalleryPage extends StatelessWidget {
  const GalleryPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Routes"),
      ),
      body: const Center(
        child: Text("GALLERY PAGE"),
      ),
    );
  }
}
