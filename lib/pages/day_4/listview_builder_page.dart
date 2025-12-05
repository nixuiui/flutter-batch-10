import 'package:flutter/material.dart';
import 'package:flutter_batch_10/pages/day_3/footbool_player_page.dart';
import 'package:flutter_batch_10/widgets/football_player_widget.dart';

class ListViewBuilderPage extends StatefulWidget {
  const ListViewBuilderPage({super.key});

  @override
  State<ListViewBuilderPage> createState() => _ListViewBuilderPageState();
}

class _ListViewBuilderPageState extends State<ListViewBuilderPage> {


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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Listview Builder Page')),
      body: ListView.builder(
        itemCount: footballPlayers.length,
        itemBuilder: (context, index) {
          print('Building item at index: $index');
          return FootballPlayerCard(
            name: footballPlayers[index]['name']!,
            country: footballPlayers[index]['country']!,
            imageUrl: footballPlayers[index]['imageUrl'],
            isFavorite: false,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => FootballPlayerPage()));
            },
          );
        },
      ),
    );
  }
}