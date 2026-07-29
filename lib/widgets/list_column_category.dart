import 'package:flutter/material.dart';
import 'package:news_app/module/artical_model.dart';
import 'package:news_app/widgets/news_info.dart';

class ColumnCategory extends StatelessWidget {
  const ColumnCategory({super.key, required this.articalCatregory});

  final ArticalModel articalCatregory;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NewsView(info: articalCatregory),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                articalCatregory.urlToImage,
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
            Text(
              articalCatregory.title,
              style: const TextStyle(color: Colors.black, fontSize: 18),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              articalCatregory.description,
              style: const TextStyle(
                color: Color.fromARGB(255, 125, 122, 122),
                fontSize: 18,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
