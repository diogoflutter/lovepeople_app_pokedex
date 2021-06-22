import 'package:flutter/material.dart';
import 'package:pokedex/listapokemon.dart';
import 'package:pokedex/pokemon.dart';

class PokemonWidget extends StatelessWidget {
  
  final Pokemon item;

  const PokemonWidget({Key? key, required this.item}) : super(key: key);

  get pokemon => null;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20),
      child: Container(
        child: ListTile(
          contentPadding: EdgeInsets.all(10),
          title: Text (item.name),
          leading: Hero(
            child: Image.network(item.thumbnailImage),
            tag: item.number,
          ),
          trailing: Text(
            "#${item.number}",
            style: TextStyle(
              color: Colors.grey
            ),
          ),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ListaPokemon(
                  pokemon: item
                )
              )
            );
          },
        ),
      ),
    );
  }
}