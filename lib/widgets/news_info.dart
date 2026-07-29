import 'package:flutter/material.dart';
import 'package:news_app/module/artical_model.dart';
import 'package:news_app/widgets/text_show_elment.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key, required this.info});

  final ArticalModel info;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          info.sourceName,
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                info.urlToImage,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: 200,
                    width: double.infinity,
                    color: Colors.grey.shade300,
                    child: const Icon(
                      Icons.broken_image,
                      size: 64,
                      color: Colors.black26,
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 8),
            TextShowElment(info: info.title),

            TextShowElment(info: info.description),
            TextShowElment(info: info.content),
          ],
        ),
      ),
    );
  }
}
