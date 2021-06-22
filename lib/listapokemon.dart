import 'package:flutter/material.dart';
import 'package:pokedex/pokemon.dart';

class ListaPokemon extends StatefulWidget {
  final Pokemon pokemon;

  const ListaPokemon({ Key? key, required this.pokemon }) : super(key: key);

  @override
  _ListaPokemonState createState() => _ListaPokemonState();
}

class _ListaPokemonState extends State<ListaPokemon> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    var pokemon = widget.pokemon;
    return Scaffold(
      appBar: AppBar(
        title: Text (pokemon.name),
      ),
      body: SingleChildScrollView(
        child: Card (
          margin: EdgeInsets.all(10),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _imagens(pokemon),
                SizedBox(
                  height: 20,
                ),
                Text (pokemon.description),
                ..._tipos(pokemon),
                ..._fraquezas(pokemon),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _imagens(pokemon) {
    return Container(
      width: double.maxFinite,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Align(
              alignment: Alignment.topRight, 
              child: Text ('#${pokemon.number}'), 
            ),  
          ),  
          Image.network(pokemon.thumbnailImage),
        ],
        
      ),
    );
  }

  List<Widget> _tipos(pokemon) {
    return [
      SizedBox(
        height: 10,
      ),
      Divider(),
      SizedBox(
        height: 10,
      ),
      Text(
        'Tipo: ',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        children: pokemon.type.map<Widget>((item) {
            return Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text(item),
            );
        }).toList(),
      ),
    ];
  }
  
  List<Widget> _fraquezas(pokemon) {
    return [
      SizedBox(
        height: 10,
      ),
      Divider(),
      SizedBox(
        height: 10,
      ),
      Text(
        'Fraqueza: ',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        children: pokemon.weakness!.map<Widget>((item) {
            return Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text(item),
            );
        }).toList(),
      ),
    ];
  }
}

