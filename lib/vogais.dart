import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';

class Vogais extends StatefulWidget {
  Vogais({Key key}) : super(key: key);

  @override
  _BichosState createState() => _BichosState();
}

class _BichosState extends State<Vogais> {
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
            child: Image.asset(
              'assets/imagens/a.png',
              height: 20,
            ),
          ),
          GestureDetector(
            onTap: () {
              _executarSom('2');
            },
            child: Image.asset(
              'assets/imagens/e.png',
              height: 20,
            ),
          ),
          GestureDetector(
            onTap: () {
              _executarSom('3');
            },
            child: Image.asset(
              'assets/imagens/i.png',
              height: 20,
            ),
          ),
          GestureDetector(
            onTap: () {
              _executarSom('4');
            },
            child: Image.asset(
              'assets/imagens/o.png',
              height: 20,
            ),
          ),
          GestureDetector(
            onTap: () {
              _executarSom('5');
            },
            child: Image.asset(
              'assets/imagens/u.png',
              height: 20,
            ),
          ),
        ],
      ),
    );
  }
}
