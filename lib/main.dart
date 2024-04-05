// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      routes: {
        '/': (context) => const MyHomePage(),
        '/About': (context) => const About(),
        '/Edu': (context) => const Edu(),
        '/Pengalaman': (context) => const Pengalaman(),
        '/Contact': (context) => const Contact(),
      },
      initialRoute: "/",
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.black87,
            child: Stack(children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(30, 100, 30, 0),
                child: Image(
                  image: AssetImage('assets/images/reid.png'),
                ),
              ),
              Center(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const About()),
                        );
                      },
                      child: const Text(
                        'Go to Bio',
                        style: TextStyle(
                            color: Colors.black87, fontWeight: FontWeight.w700),
                      ))),
              const Positioned(
                bottom: 100.0,
                left: 100.0,
                right: 100.0,
                child: Center(
                  child: Text(
                    'REID TEAM',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 30.0),
                  ),
                ),
              ),
            ])));
  }
}

class Navbar extends StatelessWidget {
  Navbar({super.key});

  final List<String> horizontalData = [
    'About Me',
    'Education',
    'Pengalaman Pribadi',
    'Contact Me'
  ];
  final List<String> horizontalDataPressed = [
    '/About',
    '/Edu',
    '/Pengalaman',
    '/Contact'
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: horizontalData.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 10),
            child: ElevatedButton(
              style: ButtonStyle(
                foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.black87),
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromRGBO(246, 160, 77, 1)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    side: const BorderSide(
                        color: Color.fromRGBO(246, 160, 77, 1)),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, horizontalDataPressed[index]);
              },
              child: Text(
                horizontalData[index].toUpperCase(),
                style: const TextStyle(fontSize: 14),
              ),
            ),
          );
        },
      ),
    );
  }
}

class About extends StatefulWidget {
  const About({super.key});

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(246, 160, 77, 1),
        title: const Text('About Baelz',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
      ),
      body: Container(
        color: Colors.black87,
        child: Column(
          children: [
            Navbar(),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Center(
                      child: CircleAvatar(
                        radius: 100,
                        backgroundImage: AssetImage('assets/images/baelz.jpg'),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Center(
                      child: Text("Muhammad Iqbal Fathur Rohman",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700)),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: const EdgeInsets.all(8),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: const Column(
                      children: [
                        Center(
                          child: Text("Teknik Informatika'21",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                        ),
                        Center(
                          child: Text("2106184",
                              style: TextStyle(color: Colors.white)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(246, 160, 77, 1),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: const EdgeInsets.all(8),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: const Column(
                      children: [
                        Center(
                          child: Text("About Me",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700)),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: const EdgeInsets.all(8),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: const Column(
                      children: [
                        Center(
                          child: Text.rich(
                            TextSpan(
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text:
                                      'Sebagai seorang mahasiswa informatika, ',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                                TextSpan(
                                  text:
                                      'kelahiran 2003 di garut saya diliputi ambisi yang membara untuk menjelajahi dan menaklukkan dunia digital. Rasa ingin tahu yang tinggi mendorong saya untuk selalu belajar dan menggali lebih dalam berbagai aspek informatika, mulai dari pemrograman, jaringan komputer, hingga kecerdasan buatan. Saya tidak hanya ingin memahami teorinya, tetapi juga ingin mengaplikasikannya dalam proyek-proyek nyata yang bermanfaat bagi masyarakat.\n\n',
                                  style: TextStyle(fontWeight: FontWeight.w400),
                                ),
                                TextSpan(
                                  text:
                                      'Mimpi saya adalah menjadi seorang inovator ',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                                TextSpan(
                                  text:
                                      'yang mampu menciptakan solusi teknologi canggih untuk menyelesaikan berbagai permasalahan di dunia. Saya ingin berkontribusi dalam pengembangan teknologi yang dapat meningkatkan kualitas hidup manusia dan mendorong kemajuan bangsa.\n\n',
                                  style: TextStyle(fontWeight: FontWeight.w400),
                                ),
                                TextSpan(
                                  text:
                                      'Dorongan dan tekad saya untuk mencapai tujuan ini sangatlah kuat. ',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                                TextSpan(
                                  text:
                                      'Saya selalu berusaha untuk menjadi yang terbaik dalam setiap kesempatan, baik dalam studi maupun dalam kegiatan ekstrakurikuler. Saya juga aktif mengikuti perkembangan teknologi terbaru dan selalu mencari peluang untuk mengembangkan kemampuan saya.\n\n',
                                  style: TextStyle(fontWeight: FontWeight.w400),
                                ),
                                TextSpan(
                                  text:
                                      'Saya yakin bahwa dengan kerja keras, dedikasi, dan semangat pantang menyerah, ',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                                TextSpan(
                                  text:
                                      'saya dapat mencapai cita-cita saya dan menjadi seorang informatika yang sukses dan bermanfaat bagi orang lain.',
                                  style: TextStyle(fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Edu extends StatefulWidget {
  const Edu({super.key});

  @override
  _EduState createState() => _EduState();
}

class _EduState extends State<Edu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(246, 160, 77, 1),
        title: const Text('Education',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
      ),
      body: Container(
        color: Colors.black87,
        child: Column(
          children: [
            Navbar(),
            Expanded(
                child: ListView(children: [
              Container(
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: const Center(
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage('assets/images/baelz.jpg'),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: const Center(
                  child: Text("Muhammad Iqbal Fathur Rohman",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700)),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: const Column(
                  children: [
                    Center(
                      child: Text("Teknik Informatika'21",
                          style: TextStyle(color: Colors.white, fontSize: 16)),
                    ),
                    Center(
                      child: Text("2106184",
                          style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(246, 160, 77, 1),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: const Column(
                  children: [
                    Center(
                      child: Text("Education",
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 16,
                              fontWeight: FontWeight.w700)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Center(
                          child: Image(
                        image: AssetImage('assets/images/itg.png'),
                        width: 190,
                      )),
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Center(
                          child: Text.rich(TextSpan(
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                              children: <TextSpan>[
                            TextSpan(
                              text: 'Institut Teknologi Garut\n',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            TextSpan(
                              text: '2021 - Sekarang',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                          ]))),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Center(
                          child: Image(
                        image: AssetImage('assets/images/dabel.png'),
                        width: 190,
                      )),
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Center(
                          child: Text.rich(TextSpan(
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                              children: <TextSpan>[
                            TextSpan(
                              text: 'SMA N 18 Garut\n',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            TextSpan(
                              text: '2018 - 2021',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                          ]))),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Center(
                          child: Image(
                        image: AssetImage('assets/images/smpn2g.png'),
                        width: 190,
                      )),
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Center(
                          child: Text.rich(TextSpan(
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                              children: <TextSpan>[
                            TextSpan(
                              text: 'SMP N 2 Karangpawitan\n',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            TextSpan(
                              text: '2015 - 2018',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                          ]))),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Center(
                          child: Image(
                        image: AssetImage('assets/images/mi.png'),
                        width: 190,
                      )),
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Center(
                          child: Text.rich(TextSpan(
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                              children: <TextSpan>[
                            TextSpan(
                              text: 'MI Al-Khoiriyyah 3\n',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            TextSpan(
                              text: '2009 - 2015',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                          ]))),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: const Column(
                  children: [
                    Center(
                      child: Text.rich(
                        TextSpan(
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text:
                                  'Harapan setelah menyelesaikan S1 Teknik Informatika di ITG.\n\n',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                            TextSpan(
                              text:
                                  'Setelah menyelesaikan pendidikan S1 Teknik Informatika di ITG, dengan bekal ilmu dan pengalaman yang diperoleh di SMA 18 Garut, SMP 2 Karangpawitan, dan MI Al-Khoiriyyah, saya memiliki beberapa harapan untuk masa depan:\n\n',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                            TextSpan(
                              text: 'Menjadi programmer handal.\n',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                            TextSpan(
                              text:
                                  'Saya ingin menggunakan kemampuan pemrograman yang saya pelajari untuk membangun aplikasi dan sistem yang bermanfaat bagi masyarakat.\n\n',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                            TextSpan(
                              text:
                                  'Bergabung dengan perusahaan teknologi ternama.\n',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                            TextSpan(
                              text:
                                  'Saya ingin bekerja di perusahaan teknologi ternama untuk belajar dari para ahli dan berkontribusi pada proyek-proyek inovatif.\n\n',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                            TextSpan(
                              text: 'Memulai startup sendiri.\n',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                            TextSpan(
                              text:
                                  'Saya ingin membangun perusahaan startup sendiri untuk mewujudkan ide-ide kreatif saya dan memberikan solusi bagi permasalahan di masyarakat.\n\n',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                            TextSpan(
                              text: 'Melanjutkan pendidikan S2.\n',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                            TextSpan(
                              text:
                                  'Saya ingin melanjutkan pendidikan S2 untuk memperdalam ilmu di bidang Teknik Informatika dan mempersiapkan diri untuk menjadi dosen atau peneliti.\n\n',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                            TextSpan(
                              text: 'Menjadi dosen.\n',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                            TextSpan(
                              text:
                                  'Saya ingin berbagi ilmu dan pengalaman dengan generasi muda dan membantu mereka untuk mengembangkan potensi mereka di bidang teknologi.\n\n',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                            TextSpan(
                              text: 'Menjadi peneliti.\n',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                            TextSpan(
                              text:
                                  'Saya ingin melakukan penelitian untuk mengembangkan teknologi baru dan memberikan solusi bagi permasalahan di masyarakat.',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ])),
          ],
        ),
      ),
    );
  }
}

class Pengalaman extends StatefulWidget {
  const Pengalaman({super.key});

  @override
  _PengalamanState createState() => _PengalamanState();
}

class _PengalamanState extends State<Pengalaman> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(246, 160, 77, 1),
        title: const Text('Education',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
      ),
      body: Container(
        color: Colors.black87,
        child: Column(
          children: [
            Navbar(),
            Expanded(
                child: ListView(children: [
              Container(
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: const Center(
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage('assets/images/baelz.jpg'),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: const Center(
                  child: Text("Muhammad Iqbal Fathur Rohman",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700)),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: const Column(
                  children: [
                    Center(
                      child: Text("Teknik Informatika'21",
                          style: TextStyle(color: Colors.white, fontSize: 16)),
                    ),
                    Center(
                      child: Text("2106184",
                          style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(246, 160, 77, 1),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: const Column(
                  children: [
                    Center(
                      child: Text("Pengalaman Pribadi",
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 16,
                              fontWeight: FontWeight.w700)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Center(
                          child: Image(
                        image: AssetImage('assets/images/reid.png'),
                        width: 190,
                      )),
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Center(
                          child: Text.rich(TextSpan(
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                              children: <TextSpan>[
                            TextSpan(
                              text: 'REID\n',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            TextSpan(
                              text: 'Founder',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                          ]))),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Center(
                          child: Image(
                        image: AssetImage('assets/images/pasdabel.png'),
                        width: 190,
                      )),
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Center(
                          child: Text.rich(TextSpan(
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                              children: <TextSpan>[
                            TextSpan(
                              text: 'Paskibra Delapan Belas\n',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            TextSpan(
                              text: 'Ketua Angkatan',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                          ]))),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Center(
                          child: Image(
                        image: AssetImage('assets/images/karta.png'),
                        width: 190,
                      )),
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Center(
                          child: Text.rich(TextSpan(
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                              children: <TextSpan>[
                            TextSpan(
                              text: 'Karang Taruna\n',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            TextSpan(
                              text: 'Anggota',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                          ]))),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Center(
                          child: Image(
                        image: AssetImage('assets/images/sanguan.jpeg'),
                        width: 190,
                      )),
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Center(
                          child: Text.rich(TextSpan(
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                              children: <TextSpan>[
                            TextSpan(
                              text: 'Unggal Hajat Aya\n',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            TextSpan(
                              text: 'Ketua Cabang Karangpawitan',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                          ]))),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: const Column(
                  children: [
                    Center(
                      child: Text.rich(
                        TextSpan(
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text:
                                  'Tidak ada tindakan yang sia-sia, semua akan bermanfaat pada waktunya.\n\n',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                            TextSpan(
                              text:
                                  'Saya yakin dengan bekal ilmu, pengalaman, dan keahlian yang saya miliki, saya dapat memberikan kontribusi yang positif bagi organisasi Anda.',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ])),
          ],
        ),
      ),
    );
  }
}

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(246, 160, 77, 1),
        title: const Text('Contact Me',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
      ),
      body: Container(
        color: Colors.black87,
        child: Column(
          children: [
            Navbar(),
            Expanded(
                child: ListView(children: [
              Container(
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: const Center(
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage('assets/images/baelz.jpg'),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: const Center(
                  child: Text("Muhammad Iqbal Fathur Rohman",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700)),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: const Column(
                  children: [
                    Center(
                      child: Text("Teknik Informatika'21",
                          style: TextStyle(color: Colors.white, fontSize: 16)),
                    ),
                    Center(
                      child: Text("2106184",
                          style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(246, 160, 77, 1),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: const Column(
                  children: [
                    Center(
                      child: Text("Contact Me",
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 16,
                              fontWeight: FontWeight.w700)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Center(
                          child: Image(
                        image: AssetImage('assets/images/wa.jpg'),
                        width: 190,
                      )),
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Center(
                          child: Text.rich(TextSpan(
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                              children: <TextSpan>[
                            TextSpan(
                              text: 'WhatsApp\n',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            TextSpan(
                              text: '+62 895-3961-61325',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                          ]))),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Center(
                          child: Image(
                        image: AssetImage('assets/images/ig.jpeg'),
                        width: 190,
                      )),
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Center(
                          child: Text.rich(TextSpan(
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                              children: <TextSpan>[
                            TextSpan(
                              text: 'Instagram\n',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            TextSpan(
                              text: '@miqbalfr12',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                          ]))),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Center(
                          child: Image(
                        image: AssetImage('assets/images/x.jpeg'),
                        width: 190,
                      )),
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Center(
                          child: Text.rich(TextSpan(
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                              children: <TextSpan>[
                            TextSpan(
                              text: 'X (Twitter)\n',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            TextSpan(
                              text: '@mxfnr12',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                          ]))),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Center(
                          child: Image(
                        image: AssetImage('assets/images/tele.png'),
                        width: 190,
                      )),
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Center(
                          child: Text.rich(TextSpan(
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                              children: <TextSpan>[
                            TextSpan(
                              text: 'Telegram\n',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            TextSpan(
                              text: '+62 895-3961-61325',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            ),
                          ]))),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: const Column(
                  children: [
                    Center(
                      child: Text.rich(
                        TextSpan(
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Senang terhubung dengan Anda!\n\n',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                            TextSpan(
                              text:
                                  'Saya lulusan Teknik Informatika ITG dan memiliki pengalaman belajar berharga di SMA 18 Garut, SMP 2 Karangpawitan, dan MI Al-Khoiriyyah. Saat ini saya sedang mencari peluang untuk berkembang di bidang teknologi, baik sebagai programmer handal, bekerja di perusahaan ternama, atau membangun startup sendiri. Tertarik berdiskusi atau menawarkan kesempatan? Silahkan hubungi saya!',
                              style: TextStyle(fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ])),
          ],
        ),
      ),
    );
  }
}
