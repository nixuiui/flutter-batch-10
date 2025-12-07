import 'package:flutter/material.dart';

class DetailFootballPlayerPage extends StatefulWidget {
  final String playerName;
  final String? imageUrl;
  final String country;
  final bool isFavorite;

  const DetailFootballPlayerPage({
    super.key,
    required this.playerName,
    this.imageUrl,
    required this.country,
    required this.isFavorite,
  });

  @override
  State<DetailFootballPlayerPage> createState() => _DetailFootballPlayerPageState();
}

class _DetailFootballPlayerPageState extends State<DetailFootballPlayerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Football Player Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              foregroundImage: widget.imageUrl != null ? NetworkImage(widget.imageUrl!) : null,
              child: Text(widget.playerName.isNotEmpty ? widget.playerName[0] : "?"),
            ),
            const SizedBox(height: 20),
            Text(
              widget.playerName,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              widget.country,
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            IconButton(
              onPressed: () {
                Navigator.pop(context, {
                  'isFavorite': !widget.isFavorite,
                });
              }, 
              icon: Icon(
                widget.isFavorite ? Icons.favorite : Icons.favorite_border,
                color: widget.isFavorite ? Colors.red : Colors.grey,
                size: 30,
              )
            ),
          ],
        ),
      ),
    );
  }
}