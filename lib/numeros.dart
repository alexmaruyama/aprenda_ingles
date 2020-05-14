import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';

class Numeros extends StatefulWidget {
  Numeros({Key key}) : super(key: key);

  @override
  _BichosState createState() => _BichosState();
}

class _BichosState extends State<Numeros> {
  AudioCache _audioCache;

  @override
  void initState() {
    super.initState();
    _audioCache = AudioCache(prefix: 'audios/');
  }

  _executarSom(String parametro) async {
    await _audioCache.play(parametro + '.mp3');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
        crossAxisCount: 2,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              _executarSom('1');
            },
            child: Image.asset('assets/imagens/1.png'),
          ),
          GestureDetector(
            onTap: () {
              _executarSom('2');
            },
            child: Image.asset('assets/imagens/2.png'),
          ),
          GestureDetector(
            onTap: () {
              _executarSom('3');
            },
            child: Image.asset('assets/imagens/3.png'),
          ),
          GestureDetector(
            onTap: () {
              _executarSom('4');
            },
            child: Image.asset('assets/imagens/4.png'),
          ),
          GestureDetector(
            onTap: () {
              _executarSom('5');
            },
            child: Image.asset('assets/imagens/5.png'),
          ),
          GestureDetector(
            onTap: () {
              _executarSom('6');
            },
            child: Image.asset('assets/imagens/6.png'),
          ),
        ],
      ),
    );
  }
}
