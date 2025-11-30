import 'package:flutter/material.dart';

class FootballPlayerWidget extends StatelessWidget {

  final String name;
  final String country;
  final String? imageUrl;

  const FootballPlayerWidget({
    super.key,
    required this.name,
    required this.country,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16.0),
        child: Row(
          spacing: 16,
          children: [
            CircleAvatar(
              foregroundImage: imageUrl != null ? NetworkImage(imageUrl!) : null,
              child: Text(name.isNotEmpty ? name[0] : "?"),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 14, 
                    fontWeight: FontWeight.bold,
                  )
                ),
                Text(
                  country,
                  style: TextStyle(
                    fontSize: 12,
                  )
                ),
              ],
            ),
          ],
        )
      )
    );
  }
}