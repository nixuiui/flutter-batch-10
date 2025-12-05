import 'package:flutter/material.dart';

class GridviewBuilderPage extends StatefulWidget {
  const GridviewBuilderPage({super.key});

  @override
  State<GridviewBuilderPage> createState() => _GridviewBuilderPageState();
}

class _GridviewBuilderPageState extends State<GridviewBuilderPage> {

  final footballPlayers = [
    {
      "name": "Lionel Messi",
      "country": "Argentina",
      "imageUrl":
          "https://hips.hearstapps.com/hmg-prod/images/lionel-messi-celebrates-after-their-sides-third-goal-by-news-photo-1686170172.jpg?crop=0.66653xw:1xh;center,top&resize=640:*",
    },
    {
      "name": "Cristiano Ronaldo",
      "country": "Portugal",
      "imageUrl":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Cristiano_Ronaldo_playing_for_Al_Nassr_FC_against_Persepolis%2C_September_2023_%28cropped%29.jpg/500px-Cristiano_Ronaldo_playing_for_Al_Nassr_FC_against_Persepolis%2C_September_2023_%28cropped%29.jpg",
    },
    {"name": "Neymar Jr.", "country": "Brazil", "imageUrl": null},
    {"name": "Kylian Mbappé", "country": "France", "imageUrl": null},
    {"name": "Kevin De Bruyne", "country": "Belgium", "imageUrl": null},
    {"name": "Robert Lewandowski", "country": "Poland", "imageUrl": null},
    {"name": "Virgil van Dijk", "country": "Netherlands", "imageUrl": null},
    {
      "name": "Lionel Messi",
      "country": "Argentina",
      "imageUrl":
          "https://hips.hearstapps.com/hmg-prod/images/lionel-messi-celebrates-after-their-sides-third-goal-by-news-photo-1686170172.jpg?crop=0.66653xw:1xh;center,top&resize=640:*",
    },
    {
      "name": "Cristiano Ronaldo",
      "country": "Portugal",
      "imageUrl":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Cristiano_Ronaldo_playing_for_Al_Nassr_FC_against_Persepolis%2C_September_2023_%28cropped%29.jpg/500px-Cristiano_Ronaldo_playing_for_Al_Nassr_FC_against_Persepolis%2C_September_2023_%28cropped%29.jpg",
    },
    {"name": "Neymar Jr.", "country": "Brazil", "imageUrl": null},
    {"name": "Kylian Mbappé", "country": "France", "imageUrl": null},
    {"name": "Kevin De Bruyne", "country": "Belgium", "imageUrl": null},
    {"name": "Robert Lewandowski", "country": "Poland", "imageUrl": null},
    {"name": "Virgil van Dijk", "country": "Netherlands", "imageUrl": null},
    {
      "name": "Lionel Messi",
      "country": "Argentina",
      "imageUrl":
          "https://hips.hearstapps.com/hmg-prod/images/lionel-messi-celebrates-after-their-sides-third-goal-by-news-photo-1686170172.jpg?crop=0.66653xw:1xh;center,top&resize=640:*",
    },
    {
      "name": "Cristiano Ronaldo",
      "country": "Portugal",
      "imageUrl":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Cristiano_Ronaldo_playing_for_Al_Nassr_FC_against_Persepolis%2C_September_2023_%28cropped%29.jpg/500px-Cristiano_Ronaldo_playing_for_Al_Nassr_FC_against_Persepolis%2C_September_2023_%28cropped%29.jpg",
    },
    {"name": "Neymar Jr.", "country": "Brazil", "imageUrl": null},
    {"name": "Kylian Mbappé", "country": "France", "imageUrl": null},
    {"name": "Kevin De Bruyne", "country": "Belgium", "imageUrl": null},
    {"name": "Robert Lewandowski", "country": "Poland", "imageUrl": null},
    {"name": "Virgil van Dijk", "country": "Netherlands", "imageUrl": null},
    {
      "name": "Lionel Messi",
      "country": "Argentina",
      "imageUrl":
          "https://hips.hearstapps.com/hmg-prod/images/lionel-messi-celebrates-after-their-sides-third-goal-by-news-photo-1686170172.jpg?crop=0.66653xw:1xh;center,top&resize=640:*",
    },
    {
      "name": "Cristiano Ronaldo",
      "country": "Portugal",
      "imageUrl":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Cristiano_Ronaldo_playing_for_Al_Nassr_FC_against_Persepolis%2C_September_2023_%28cropped%29.jpg/500px-Cristiano_Ronaldo_playing_for_Al_Nassr_FC_against_Persepolis%2C_September_2023_%28cropped%29.jpg",
    },
    {"name": "Neymar Jr.", "country": "Brazil", "imageUrl": null},
    {"name": "Kylian Mbappé", "country": "France", "imageUrl": null},
    {"name": "Kevin De Bruyne", "country": "Belgium", "imageUrl": null},
    {"name": "Robert Lewandowski", "country": "Poland", "imageUrl": null},
    {"name": "Virgil van Dijk", "country": "Netherlands", "imageUrl": null},
    {
      "name": "Lionel Messi",
      "country": "Argentina",
      "imageUrl":
          "https://hips.hearstapps.com/hmg-prod/images/lionel-messi-celebrates-after-their-sides-third-goal-by-news-photo-1686170172.jpg?crop=0.66653xw:1xh;center,top&resize=640:*",
    },
    {
      "name": "Cristiano Ronaldo",
      "country": "Portugal",
      "imageUrl":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Cristiano_Ronaldo_playing_for_Al_Nassr_FC_against_Persepolis%2C_September_2023_%28cropped%29.jpg/500px-Cristiano_Ronaldo_playing_for_Al_Nassr_FC_against_Persepolis%2C_September_2023_%28cropped%29.jpg",
    },
    {"name": "Neymar Jr.", "country": "Brazil", "imageUrl": null},
    {"name": "Kylian Mbappé", "country": "France", "imageUrl": null},
    {"name": "Kevin De Bruyne", "country": "Belgium", "imageUrl": null},
    {"name": "Robert Lewandowski", "country": "Poland", "imageUrl": null},
    {"name": "Virgil van Dijk", "country": "Netherlands", "imageUrl": null},
    {
      "name": "Lionel Messi",
      "country": "Argentina",
      "imageUrl":
          "https://hips.hearstapps.com/hmg-prod/images/lionel-messi-celebrates-after-their-sides-third-goal-by-news-photo-1686170172.jpg?crop=0.66653xw:1xh;center,top&resize=640:*",
    },
    {
      "name": "Cristiano Ronaldo",
      "country": "Portugal",
      "imageUrl":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Cristiano_Ronaldo_playing_for_Al_Nassr_FC_against_Persepolis%2C_September_2023_%28cropped%29.jpg/500px-Cristiano_Ronaldo_playing_for_Al_Nassr_FC_against_Persepolis%2C_September_2023_%28cropped%29.jpg",
    },
    {"name": "Neymar Jr.", "country": "Brazil", "imageUrl": null},
    {"name": "Kylian Mbappé", "country": "France", "imageUrl": null},
    {"name": "Kevin De Bruyne", "country": "Belgium", "imageUrl": null},
    {"name": "Robert Lewandowski", "country": "Poland", "imageUrl": null},
    {"name": "Virgil van Dijk", "country": "Netherlands", "imageUrl": null},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gridview Builder Page')),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), 
        itemCount: footballPlayers.length,
        itemBuilder: (context, index) {
          final player = footballPlayers[index];
          print('Building item at index $index: ${player['name']}');
          return Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: player['imageUrl'] != null
                      ? NetworkImage(player['imageUrl'] as String)
                      : null,
                  child: player['imageUrl'] == null ? const Icon(Icons.person) : null,
                ),
                const SizedBox(height: 8),
                Text(
                  player['name'] ?? '', 
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(player['country'] ?? '', textAlign: TextAlign.center),
              ],
            ),
          );
        },
      ),
    );
  }
}