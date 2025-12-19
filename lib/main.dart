import 'package:flutter/material.dart';

void main() {
  runApp(const NoorApp());
}

class NoorApp extends StatelessWidget {
  const NoorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.teal,
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  // 20 ذكراً للصباح
  final List<Map<String, dynamic>> _morningAzkar = [
    {"text": "أصبحنا وأصبح الملك لله، والحمد لله، لا إله إلا الله وحده لا شريك له", "count": 1, "current": 0},
    {"text": "اللهم بك أصبحنا، وبك أمسينا، وبك نحيا، وبك نموت، وإليك النشور", "count": 1, "current": 0},
    {"text": "سُبْحَانَ اللهِ وَبِحَمْدِهِ: عَدَدَ خَلْقِهِ، وَرِضَا نَفْسِهِ، وَزِنَةَ عَرْشِهِ، وَمِدَادَ كَلِمَاتِهِ", "count": 3, "current": 0},
    {"text": "اللهم أنت ربي لا إله إلا أنت، خلقتني وأنا عبدك، وأنا على عهدك ووعدك ما استطعت", "count": 1, "current": 0},
    {"text": "يا حي يا قيوم برحمتك أستغيث أصلح لي شأني كله ولا تكلني إلى نفسي طرفة عين", "count": 3, "current": 0},
    {"text": "رضيت بالله رباً، وبالإسلام ديناً، وبمحمد صلى الله عليه وسلم نبياً", "count": 3, "current": 0},
    {"text": "حسبي الله لا إله إلا هو عليه توكلت وهو رب العرش العظيم", "count": 7, "current": 0},
    {"text": "بسم الله الذي لا يضر مع اسمه شيء في الأرض ولا في السماء وهو السميع العليم", "count": 3, "current": 0},
    {"text": "اللهم إني أسألك العفو والعافية في الدنيا والآخرة", "count": 1, "current": 0},
    {"text": "اللهم عافني في بدني، اللهم عافني في سمعي، اللهم عافني في بصري، لا إله إلا أنت", "count": 3, "current": 0},
    {"text": "أعوذ بكلمات الله التامات من شر ما خلق", "count": 3, "current": 0},
    {"text": "اللهم إني أعوذ بك من الكفر والفقر، وأعوذ بك من عذاب القبر", "count": 3, "current": 0},
    {"text": "سبحان الله وبحمده", "count": 100, "current": 0},
    {"text": "لا إله إلا الله وحده لا شريك له، له الملك وله الحمد وهو على كل شيء قدير", "count": 10, "current": 0},
    {"text": "أصبحنا على فطرة الإسلام وعلى كلمة الإخلاص وعلى دين نبينا محمد", "count": 1, "current": 0},
    {"text": "اللهم إني أسألك علماً نافعاً، ورزقاً طيباً، وعملاً متقبلاً", "count": 1, "current": 0},
    {"text": "أستغفر الله وأتوب إليه", "count": 100, "current": 0},
    {"text": "اللهم صل وسلم وبارك على نبينا محمد", "count": 10, "current": 0},
    {"text": "يا رب لك الحمد كما ينبغي لجلال وجهك ولعظيم سلطانك", "count": 3, "current": 0},
    {"text": "اللهم إني أعوذ بك من الهم والحزن، والعجز والكسل", "count": 1, "current": 0},
  ];

  // 20 ذكراً للمساء
  final List<Map<String, dynamic>> _eveningAzkar = [
    {"text": "أمسينا وأمسى الملك لله، والحمد لله، لا إله إلا الله وحده لا شريك له", "count": 1, "current": 0},
    {"text": "اللهم بك أمسينا، وبك أصبحنا، وبك نحيا، وبك نموت، وإليك المصير", "count": 1, "current": 0},
    {"text": "أعوذ بكلمات الله التامات من شر ما خلق", "count": 3, "current": 0},
    {"text": "اللهم أنت ربي لا إله إلا أنت، خلقتني وأنا عبدك، وأنا على عهدك ووعدك ما استطعت", "count": 1, "current": 0},
    {"text": "يا حي يا قيوم برحمتك أستغيث أصلح لي شأني كله ولا تكلني إلى نفسي طرفة عين", "count": 3, "current": 0},
    {"text": "رضيت بالله رباً، وبالإسلام ديناً، وبمحمد صلى الله عليه وسلم نبياً", "count": 3, "current": 0},
    {"text": "حسبي الله لا إله إلا هو عليه توكلت وهو رب العرش العظيم", "count": 7, "current": 0},
    {"text": "بسم الله الذي لا يضر مع اسمه شيء في الأرض ولا في السماء وهو السميع العليم", "count": 3, "current": 0},
    {"text": "اللهم إني أسألك العفو والعافية في الدنيا والآخرة", "count": 1, "current": 0},
    {"text": "اللهم عافني في بدني، اللهم عافني في سمعي، اللهم عافني في بصري، لا إله إلا أنت", "count": 3, "current": 0},
    {"text": "اللهم إني أعوذ بك من الهم والحزن، والعجز والكسل، والجبن والبخل", "count": 1, "current": 0},
    {"text": "اللهم إني أمسيت أشهدك وأشهد حملة عرشك وملائكتك وجميع خلقك أنك أنت الله", "count": 4, "current": 0},
    {"text": "سبحان الله وبحمده", "count": 100, "current": 0},
    {"text": "لا إله إلا الله وحده لا شريك له، له الملك وله الحمد وهو على كل شيء قدير", "count": 10, "current": 0},
    {"text": "أمسينا على فطرة الإسلام وعلى كلمة الإخلاص وعلى دين نبينا محمد", "count": 1, "current": 0},
    {"text": "اللهم عالم الغيب والشهادة فاطر السماوات والأرض رب كل شيء ومليكه", "count": 1, "current": 0},
    {"text": "أستغفر الله وأتوب إليه", "count": 100, "current": 0},
    {"text": "اللهم صل وسلم وبارك على نبينا محمد", "count": 10, "current": 0},
    {"text": "يا رب لك الحمد كما ينبغي لجلال وجهك ولعظيم سلطانك", "count": 3, "current": 0},
    {"text": "اللهم أجرني من النار", "count": 7, "current": 0},
  ];

  int _tasbihCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF004D40), Color(0xFF00897B), Colors.white],
            stops: [0.0, 0.4, 0.8],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              _buildHeader(),
              _buildNavigationButtons(),
              Expanded(
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 400),
                  child: _buildContent(),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: _selectedIndex != 2 
        ? FloatingActionButton.small(
            onPressed: _resetCurrentList,
            backgroundColor: Colors.white,
            child: const Icon(Icons.refresh, color: Colors.teal),
          ) 
        : null,
    );
  }

  void _resetCurrentList() {
    setState(() {
      List<Map<String, dynamic>> target = _selectedIndex == 0 ? _morningAzkar : _eveningAzkar;
      for (var item in target) {
        item['current'] = 0;
      }
    });
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: Column(
        children: [
          const Text(
            "نُور الهداية",
            style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.15),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              "فاذكروني أذكركم",
              style: TextStyle(color: Colors.white70, fontStyle: FontStyle.italic),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavigationButtons() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _navItem("الصباح", 0),
          _navItem("المساء", 1),
          _navItem("السبحة", 2),
        ],
      ),
    );
  }

  Widget _navItem(String title, int index) {
    bool isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () => setState(() => _selectedIndex = index),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.teal.shade900 : Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildContent() {
    if (_selectedIndex == 2) return _buildTasbihView(key: const ValueKey(2));
    
    List<Map<String, dynamic>> currentList = _selectedIndex == 0 ? _morningAzkar : _eveningAzkar;

    return ListView.builder(
      key: ValueKey(_selectedIndex),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      itemCount: currentList.length,
      itemBuilder: (context, index) {
        var item = currentList[index];
        bool isDone = item['current'] >= item['count'];

        return AnimatedOpacity(
          duration: const Duration(milliseconds: 300),
          opacity: isDone ? 0.6 : 1.0,
          child: Card(
            elevation: isDone ? 0 : 4,
            margin: const EdgeInsets.only(bottom: 12),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: ListTile(
              onTap: () {
                if (item['current'] < item['count']) {
                  setState(() => item['current']++);
                }
              },
              contentPadding: const EdgeInsets.all(15),
              title: Text(
                item['text'],
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 17,
                  height: 1.5,
                  decoration: isDone ? TextDecoration.lineThrough : null,
                ),
              ),
              subtitle: Column(
                children: [
                  const SizedBox(height: 10),
                  LinearProgressIndicator(
                    value: item['current'] / item['count'],
                    backgroundColor: Colors.teal.shade50,
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  const SizedBox(height: 5),
                  Text("${item['current']} / ${item['count']}", style: const TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildTasbihView({Key? key}) {
    return Center(
      key: key,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("السبحة الإلكترونية", style: TextStyle(fontSize: 24, color: Colors.teal, fontWeight: FontWeight.bold)),
          const SizedBox(height: 30),
          GestureDetector(
            onTap: () => setState(() => _tasbihCounter++),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 220,
                  height: 220,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.teal.withOpacity(0.2), spreadRadius: 10, blurRadius: 20),
                    ],
                  ),
                ),
                Text(
                  "$_tasbihCounter",
                  style: const TextStyle(fontSize: 60, fontWeight: FontWeight.bold, color: Colors.teal),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () => setState(() => _tasbihCounter = 0),
                icon: const Icon(Icons.refresh),
                label: const Text("تصفير"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.teal, foregroundColor: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }
}