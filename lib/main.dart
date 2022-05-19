import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:universal_html/html.dart' as html;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CidQu BETA',
      theme: _buildShrineTheme(),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'CidQu Yama Portalı BETA v0.8.1'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Uri cidqu = Uri.parse('https://cidqu.net');
  final Uri github = Uri.parse('https://github.com/CidQu');
  final Uri dh = Uri.parse('https://forum.donanimhaber.com/profil/2930330');

  @override
  void initState() {
    
    super.initState();
  }

  void _launchUrl() async {
    if (!await launchUrl(cidqu)) throw 'cidqu sunucularına bağlanılamadı';
  }

  void gitHub() async {
    if (!await launchUrl(github)) throw 'github sunucularına bağlanılamadı';
  }

  void dH() async {
    if (!await launchUrl(dh)) throw 'donanımhaber sunucularına bağlanılamadı';
  }

  void _Indirme(url) async {
    if (url == 'yok') {
      showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
                title: Text('Yama İndirilemedi'),
                content: Text(
                    'Bu yama şu an da yayınlanmamış gözüküyor. Lütfen daha sonra tekrar deneyin.'),
                actions: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "Tamam",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ))
                ],
              ));
    } else if (url == 'deathloop') {
      showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
                title: Text('Sürüm Seçin'),
                content: Text(
                    'Bu yamada birden fazla sürüm bulunmaktadır. Lütfen sürüm seçiniz.'),
                actions: [
                  ElevatedButton(
                      onPressed: () {
                        launchUrl(Uri.parse(
                            'https://cidqu.net/ceviri/DEATHLOOP.exe'));
                      },
                      child: Text(
                        "Steam",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        launchUrl(
                            Uri.parse('https://cidqu.net/ceviri/EMPRESS.exe'));
                      },
                      child: Text(
                        "Empress",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ))
                ],
              ));
    } else {
      if (!await launchUrl(Uri.parse(url)))
        throw 'cidqu sunucularına bağlanılamadı';
    }
  }

  void yapimcilar(oyunismi) async {
    if (oyunismi == 'deathloop') {
      showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
                title: Text('Deathloop'),
                content: Container(
                  height: MediaQuery.of(context).size.height / 2.5,
                  child: Column(
                    children: [
                      Text(
                        'Proje Ekibi:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '''Yavuz Selimhan (CidQu) (Çevirmen - Proje Sahibi - Tester)
Outsider One (Yardımcı)
InfGo (Çevirmen - Tester)
Tohunder (Çevirmen)
Dante (Çevirmen)
                          ''',
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Emeği Geçenler:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '''Amr Shaheen (Altyazı Dosyaları) (Anonim)          
h3x3r (Font/Dosya Çıkartma) (Zenhax)
ISKA (Font) (DonanımHaber)
by-freon (Font) (Zenhax)
cockafej (Font) (Zenhax)
folkemon (Font) (Zenhax)
Thierry Lathuille (Oyuna Aktarma) (Stack Overflow)
lostprophet.hu (Tester, Yardımcı, .decl) (Website)
Melisa Bahadir (Çevirmen)
                          ''',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                actions: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "Tamam",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ))
                ],
              ));
    }
    if (oyunismi == 'aot2') {
      showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
                title: Text('Attack On Titan 2'),
                content: Container(
                  height: MediaQuery.of(context).size.height / 6.5,
                  child: Column(
                    children: [
                      Text(
                        'Proje Ekibi:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '''Yavuz Selimhan (CidQu) (Çevirmen, Tester, Proje Lideri)
InfGo (Çevirmen, Tester, Yardımcı)
                          ''',
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Yama Toolu:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '''gameside (ZenHax)
                          ''',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                actions: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "Tamam",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ))
                ],
              ));
    }
    if (oyunismi == 'sunset') {
      showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
                title: Text('Sunset Overdrive'),
                content: Container(
                  height: MediaQuery.of(context).size.height / 5.19,
                  child: Column(
                    children: [
                      Text(
                        'Proje Ekibi:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '''Yavuz Selimhan (CidQu) (Çevirmen, Tester, Proje Lideri)
InfGo (Çevirmen, Yardımcı)
                          ''',
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Yama Toolu:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '''Yavuz Selimhan (CidQu) (Dosya Çıkartma)
권팡이 (Anonim)
Akintos (GitHub) (Dosya Şifre Çözme)
                          ''',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                actions: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "Tamam",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ))
                ],
              ));
    }
  }

  void yamahakkinda(oyunismi) async {
    if (oyunismi == 'deathloop') {
      showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
                title: Text('Deathloop'),
                content: Container(
                  height: MediaQuery.of(context).size.height / 10,
                  child: Column(
                    children: [
                      Text(
                        'Bilinen Sorunlar:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '''Türkçe Karakterli sürüm çalışmaz ise oyunun .exesini Uyumluluk modundan Windows 8'e çekin. Yine çalışmaz ise Türkçe Karaktersiz sürümü kullanın.
                          ''',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                actions: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "Tamam",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ))
                ],
              ));
    }
    if (oyunismi == 'aot2') {
      showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
                title: Text('Attack On Titan 2'),
                content: Container(
                  height: MediaQuery.of(context).size.height / 2.5,
                  child: Column(
                    children: [
                      Text(
                        'Son Durum:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '''Oyuna aktarım ve kullanım sırasında hiçbir sorun bulunmamaktadır.''',
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Arayüz Yüzdesi:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '''
Ana Menü = %0 (Dosya Bulunamadı)
Ayarlar = %100
İnteraktif Tuşlar = %100
Keşif Defteri = %100
Killtag'ler = %100
                          ''',
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Oyun İçi Diyaloglar:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '''
Sinematikler = %100
NPC Diyalogları = %99+
Ana Hikaye = %90
Storytelling = %100
Final Battle = %0
Tutorials = %1
                          ''',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                actions: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "Tamam",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ))
                ],
              ));
    }
    if (oyunismi == 'sunset') {
      showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
                title: Text('Sunset Overdrive'),
                content: Container(
                  height: MediaQuery.of(context).size.height / 10,
                  child: Column(
                    children: [
                      Text(
                        'Son Durum:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '''Oyuna aktarım ve oyun içi kullanım ile ilgili detaylar tam olarak net değil, lakin 권팡이'ın belirttiklerine göre text dosyaları başarılı bir şekilde çıkartılmış ve tarafımıza iletilecektir.
                          ''',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                actions: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "Tamam",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ))
                ],
              ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.black, fontFamily: 'ITC'),
        ),
        backgroundColor: Color.fromRGBO(255, 252, 82, 1),
      ),
      body: Center(
          child: Column(
        children: [
          Spacer(),
          Row(
            children: [
              Spacer(),
              Card(
                child: Container(
                    width: 500,
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Deathloop Türkçe Yama',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  ActionChip(
                                    backgroundColor:
                                        Color.fromRGBO(209, 250, 229, 1),
                                    label: Text(
                                      'v1.0.0',
                                      style: TextStyle(
                                          color: Color.fromRGBO(6, 95, 80, 1)),
                                    ),
                                    onPressed: () {},
                                  ),
                                  SizedBox(width: 10),
                                  ActionChip(
                                    backgroundColor:
                                        Color.fromRGBO(254, 243, 199, 1),
                                    label: Text(
                                      '%100',
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(209, 155, 86, 1)),
                                    ),
                                    onPressed: () {},
                                  ),
                                  SizedBox(width: 50),
                                ]),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                TextButton(
                                  child: Text(
                                    'Çeviri Ekibi',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(6, 95, 80, 1),
                                    ),
                                  ),
                                  onPressed: () => {yapimcilar('deathloop')},
                                ),
                                SizedBox(width: 10),
                                TextButton(
                                  child: Text(
                                    'Yama Notları',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(6, 95, 80, 1),
                                    ),
                                  ),
                                  onPressed: () => {yamahakkinda('deathloop')},
                                ),
                                SizedBox(width: 161),
                              ],
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  '10 Mayıs 2022',
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                ElevatedButton.icon(
                                    onPressed: () {
                                      _Indirme('deathloop');
                                    },
                                    icon: Icon(Icons.download, size: 18),
                                    label: Text(
                                      "İndir",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ))
                              ],
                            )
                          ],
                        )
                      ],
                    )),
              ),
              Spacer()
            ],
          ),
          SizedBox(height: 30),
          Row(
            children: [
              Spacer(),
              Card(
                child: Container(
                    width: 500,
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Attack On Titan 2 Türkçe Yama',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  ActionChip(
                                    backgroundColor:
                                        Color.fromRGBO(209, 250, 229, 1),
                                    label: Text(
                                      'v0',
                                      style: TextStyle(
                                          color: Color.fromRGBO(6, 95, 80, 1)),
                                    ),
                                    onPressed: () {},
                                  ),
                                  SizedBox(width: 10),
                                  ActionChip(
                                    backgroundColor:
                                        Color.fromRGBO(254, 243, 199, 1),
                                    label: Text(
                                      '%62.2',
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(209, 155, 86, 1)),
                                    ),
                                    onPressed: () {},
                                  ),
                                  SizedBox(width: 25),
                                ]),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                TextButton(
                                  child: Text(
                                    'Çeviri Ekibi',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(6, 95, 80, 1),
                                    ),
                                  ),
                                  onPressed: () => {yapimcilar('aot2')},
                                ),
                                SizedBox(width: 10),
                                TextButton(
                                  child: Text(
                                    'Yama Notları',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(6, 95, 80, 1),
                                    ),
                                  ),
                                  onPressed: () => {yamahakkinda('aot2')},
                                ),
                                SizedBox(width: 161),
                              ],
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  '30 Mayıs 2022',
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                ElevatedButton.icon(
                                    onPressed: () {
                                      _Indirme('yok');
                                    },
                                    icon: Icon(Icons.download, size: 18),
                                    label: Text(
                                      "İndir",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ))
                              ],
                            )
                          ],
                        )
                      ],
                    )),
              ),
              Spacer()
            ],
          ),
          SizedBox(height: 30),
          Row(
            children: [
              Spacer(),
              Card(
                child: Container(
                    width: 500,
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Sunset Overdrive Türkçe Yama',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  ActionChip(
                                    backgroundColor:
                                        Color.fromRGBO(209, 250, 229, 1),
                                    label: Text(
                                      'v0',
                                      style: TextStyle(
                                          color: Color.fromRGBO(6, 95, 80, 1)),
                                    ),
                                    onPressed: () {},
                                  ),
                                  SizedBox(width: 10),
                                  ActionChip(
                                    backgroundColor:
                                        Color.fromRGBO(254, 243, 199, 1),
                                    label: Text(
                                      '%1',
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(209, 155, 86, 1)),
                                    ),
                                    onPressed: () {},
                                  ),
                                  SizedBox(width: 73),
                                ]),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                TextButton(
                                  child: Text(
                                    'Çeviri Ekibi',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(6, 95, 80, 1),
                                    ),
                                  ),
                                  onPressed: () => {yapimcilar('sunset')},
                                ),
                                SizedBox(width: 10),
                                TextButton(
                                  child: Text(
                                    'Yama Notları',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(6, 95, 80, 1),
                                    ),
                                  ),
                                  onPressed: () => {yamahakkinda('sunset')},
                                ),
                                SizedBox(width: 161),
                              ],
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Belirli Değil',
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                ElevatedButton.icon(
                                    onPressed: () {
                                      _Indirme('yok');
                                    },
                                    icon: Icon(Icons.download, size: 18),
                                    label: Text(
                                      "İndir",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ))
                              ],
                            )
                          ],
                        )
                      ],
                    )),
              ),
              Spacer()
            ],
          ),
          SizedBox(height: 30),
          Row(
            children: [
              Spacer(),
              Card(
                child: Container(
                    width: 500,
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Her New Memory Türkçe Yama',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  ActionChip(
                                    backgroundColor:
                                        Color.fromRGBO(209, 250, 229, 1),
                                    label: Text(
                                      'Resmi Yama',
                                      style: TextStyle(
                                          color: Color.fromRGBO(6, 95, 80, 1)),
                                    ),
                                    onPressed: () {},
                                  ),           
                                  SizedBox(width: 40),
                                ]),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                TextButton(
                                  child: Text(
                                    'Çeviri Ekibi',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(6, 95, 80, 1),
                                    ),
                                  ),
                                  onPressed: () => {yapimcilar('aot2')},
                                ),
                                SizedBox(width: 10),
                                SizedBox(width: 260),
                              ],
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  '25 Mart 2022',
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                ElevatedButton.icon(
                                    onPressed: () {
                                      _Indirme('https://store.steampowered.com/app/1296770/Her_New_Memory/');
                                    },
                                    icon: Icon(Icons.stream, size: 18),
                                    label: Text(
                                      "Steam",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ))
                              ],
                            )
                          ],
                        )
                      ],
                    )),
              ),
              Spacer()
            ],
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton.extended(
            onPressed: dH,
            label: Text('DonanımHaber Sayfası'),
            icon: Icon(Icons.forum),
            backgroundColor: Color.fromRGBO(255, 252, 82, 1),
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton.extended(
            onPressed: gitHub,
            label: Text('CidQu GitHub Sayfası'),
            icon: Icon(Icons.code),
            backgroundColor: Color.fromRGBO(255, 252, 82, 1),
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton.extended(
            onPressed: _launchUrl,
            label: Text('CidQu Websitesi'),
            icon: Icon(Icons.web),
            backgroundColor: Color.fromRGBO(255, 252, 82, 1),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
              'Bu websitesi Flutter üzerinden CidQu tarafından tasarlanmıştır.'),
          Text('This website is powered by Flutter made by CidQu.'),
          Spacer()
        ],
      )),
    );
  }
}

ThemeData _buildShrineTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    toggleableActiveColor: Color.fromRGBO(255, 252, 82, 1),
    primaryColor: Color.fromRGBO(255, 252, 82, 1),
    buttonColor: Color.fromRGBO(255, 252, 82, 1),
    scaffoldBackgroundColor: shrineBackgroundWhite,
    cardColor: shrineBackgroundWhite,
    textSelectionColor: Color.fromRGBO(255, 252, 82, 1),
    errorColor: shrineErrorRed,
    primaryIconTheme: _customIconTheme(base.iconTheme),
    textTheme: _buildShrineTextTheme(base.textTheme),
    primaryTextTheme: _buildShrineTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildShrineTextTheme(base.accentTextTheme),
    iconTheme: _customIconTheme(base.iconTheme),
    colorScheme: _shrineColorScheme.copyWith(secondary: shrineBrown900),
  );
}

IconThemeData _customIconTheme(IconThemeData original) {
  return original.copyWith(color: shrineBrown900);
}

TextTheme _buildShrineTextTheme(TextTheme base) {
  return base
      .copyWith(
        caption: base.caption?.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          letterSpacing: defaultLetterSpacing,
        ),
        button: base.button?.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 14,
          letterSpacing: defaultLetterSpacing,
        ),
      )
      .apply(
        fontFamily: 'Rubik',
        displayColor: shrineBrown900,
        bodyColor: shrineBrown900,
      );
}

const ColorScheme _shrineColorScheme = ColorScheme(
  primary: Color.fromRGBO(255, 252, 82, 1),
  primaryVariant: shrineBrown900,
  secondary: Color.fromRGBO(255, 252, 82, 1),
  secondaryVariant: shrineBrown900,
  surface: shrineSurfaceWhite,
  background: shrineBackgroundWhite,
  error: shrineErrorRed,
  onPrimary: shrineBrown900,
  onSecondary: shrineBrown900,
  onSurface: shrineBrown900,
  onBackground: shrineBrown900,
  onError: shrineSurfaceWhite,
  brightness: Brightness.light,
);

const Color shrinePink50 = Color(0xFFFEEAE6);
const Color shrinePink100 = Color(0xFFFEDBD0);
const Color shrinePink300 = Color(0xFFFBB8AC);
const Color shrinePink400 = Color(0xFFEAA4A4);

const Color shrineBrown900 = Color(0xFF442B2D);
const Color shrineBrown600 = Color(0xFF7D4F52);

const Color shrineErrorRed = Color(0xFFC5032B);

const Color shrineSurfaceWhite = Color(0xFFFFFBFA);
const Color shrineBackgroundWhite = Colors.white;

const defaultLetterSpacing = 0.03;
