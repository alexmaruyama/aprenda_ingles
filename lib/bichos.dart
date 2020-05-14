import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';

class Bichos extends StatefulWidget {
  Bichos({Key key}) : super(key: key);

  @override
  _BichosState createState() => _BichosState();
}

class _BichosState extends State<Bichos> {
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
              _executarSom('cao');
            },
            child: Image.asset('assets/imagens/cao.png'),
          ),
          GestureDetector(
            onTap: () {
              _executarSom('gato');
            },
            child: Image.asset('assets/imagens/gato.png'),
          ),
          GestureDetector(
            onTap: () {
              _executarSom('leao');
            },
            child: Image.asset('assets/imagens/leao.png'),
          ),
          GestureDetector(
            onTap: () {
              _executarSom('macaco');
            },
            child: Image.asset('assets/imagens/macaco.png'),
          ),
          GestureDetector(
            onTap: () {
              _executarSom('ovelha');
            },
            child: Image.asset('assets/imagens/ovelha.png'),
          ),
          GestureDetector(
            onTap: () {
              _executarSom('vaca');
            },
            child: Image.asset('assets/imagens/vaca.png'),
          ),
        ],
      ),
    );
  }
}
