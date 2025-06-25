import 'package:flutter/material.dart';

class Home2Screen extends StatefulWidget {
  @override
  State<Home2Screen> createState() => _Home2ScreenState();
}

class _Home2ScreenState extends State<Home2Screen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _buildBodyWrap() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'TP. Hồ Chí Minh',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'Xem tất cả',
                style: TextStyle(color: Color(0xFFCEA700)),
              ),
            ],
          ),
          SizedBox(height: 16),
          SizedBox(
            height: 240,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (_, index) => Container(
                width: 206,
                margin: EdgeInsets.only(right: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12)),
                          child: Image.asset(
                            'assets/images/cachlamtrungchien.jpg',
                            width: 206,
                            height: 140,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          top: 6,
                          left: 6,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                            decoration: BoxDecoration(
                              color: Colors.yellow.shade700,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.star, size: 14, color: Colors.white),
                                SizedBox(width: 2),
                                Text(
                                  '5',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 50,
                          left: 80,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 20,
                            child: Icon(Icons.play_arrow, color: Colors.red),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("1 tiếng 20 phút", style: TextStyle(fontSize: 12, color: Colors.blue)),
                          SizedBox(height: 4),
                          Text(
                            'Cách chiên trứng một cách cung phu',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 4),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 10,
                                backgroundImage: AssetImage('assets/images/Avt.jpg'),
                              ),
                              SizedBox(width: 6),
                              Text("Đinh Trọng Phúc",
                                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Color(0xFFCEA700)))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 24),
        ],
      ),
    );
  }

  Widget _buildRecentRecipesSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Công thức gần đây', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 12),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (_, index) => Container(
                width: 150,
                margin: EdgeInsets.only(right: 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        'assets/images/salastrung.jpg',
                        width: 135,
                        height: 135,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text('Trứng chiên', style: TextStyle(fontWeight: FontWeight.w500, color: Color(0xFF734C10))),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 10,
                          backgroundImage: AssetImage('assets/images/avttrong.jpg'),
                        ),
                        SizedBox(width: 6),
                        Text('Nguyễn Đình Trọng', style: TextStyle(fontSize: 12, color: Color(0xFF002D73)))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 24),
        ],
      ),
    );
  }

  Widget _buildIngredientSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Nguyên liệu', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 12),
          Wrap(
            spacing: 8,
            runSpacing: 12,
            children: [
              _buildCategoryChip('Danh mục 1', isSelected: true),
              _buildCategoryChip('Danh mục 2'),
              _buildCategoryChip('Danh mục'),
              _buildCategoryChip('Danh mục 3'),
              _buildCategoryChip('Danh mục 1'),
              _buildCategoryChip('Danh mục 2'),
              _buildCategoryChip('Danh mục'),
              _buildCategoryChip('Danh mục 3'),
            ],
          ),
          SizedBox(height: 24),
        ],
      ),
    );
  }




  Widget _buildCategoryChip(String title, {bool isSelected = false}) {
    return Container(
      width: (MediaQuery.of(context).size.width - 16 * 2 - 8 * 3) / 4, // Tính toán để mỗi dòng có 4 item
      padding: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? Color(0xFFEFD503) : Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 13,
            color: isSelected ? Colors.white : Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }


  Widget _buildCategorySection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Danh mục', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text('Xem tất cả', style: TextStyle(color: Color(0xFFCEA700))),
            ],
          ),
          SizedBox(height: 12),
          SizedBox(
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildCategoryChip('Danh mục 1', isSelected: true),
                _buildCategoryChip('Danh mục 2'),
                _buildCategoryChip('Danh mục 3'),
                _buildCategoryChip('Danh mục'),
                _buildCategoryChip('Danh mục'),
              ],
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 230,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  width: 150,
                  margin: EdgeInsets.only(right: 12),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 32),
                        padding: EdgeInsets.only(top: 56, bottom: 16, left: 12, right: 12),
                        decoration: BoxDecoration(
                          color: Color(0xFFF5EED3),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text('Trứng chiên',
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Color(0xFF734C10))),
                            ),
                            SizedBox(height: 4),
                            Center(
                              child: Text('Tạo bởi Trần Đình Trọng',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 12, color: Color(0xFF432805))),
                            ),
                            SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('20 phút', style: TextStyle(fontSize: 12, color: Color(0xFF734C10))),
                                Icon(Icons.sticky_note_2_outlined, size: 22, color: Color(0xFF734C10)),
                              ],
                            ),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        radius: 42,
                        backgroundImage: AssetImage('assets/images/trungchien.jpg'),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F8F8),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 44,
              width: double.infinity,
              color: Color(0xFFF8F8F8),
              padding: EdgeInsets.symmetric(horizontal: 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('9:41', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
                  Row(
                    children: [
                      Image.asset('assets/icons/cellular conection.png', width: 29, height: 27),
                      SizedBox(width: 4),
                      Image.asset('assets/icons/ios-wifi-2.png', width: 23, height: 21),
                      SizedBox(width: 4),
                      Image.asset('assets/icons/battery.png', width: 28, height: 26),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: 361,
              height: 50,
              margin: EdgeInsets.only(top: 8),
              padding: EdgeInsets.symmetric(horizontal: 11),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade300, width: 0.3),
                ),
              ),
              child: Row(
                children: [
                  Icon(Icons.search, size: 24, color: Colors.grey[700]),
                  SizedBox(width: 10),
                  Text('Tìm kiếm sản phẩm', style: TextStyle(fontSize: 16, color: Colors.grey[700])),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.only(bottom: 100),
                child: Column(
                  children: [
                    _buildBodyWrap(),
                    _buildCategorySection(),
                    _buildRecentRecipesSection(),
                    SizedBox(height: 24),
                    _buildIngredientSection(),
                    SizedBox(height: 100),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Transform.translate(
        offset: Offset(0, -12),
        child: Container(
          width: 66,
          height: 66,
          child: FloatingActionButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            elevation: 4,
            backgroundColor: Colors.transparent,
            child: Ink(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Color(0xFFEFD503), Color(0xFFCEA700)],
                ),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Center(
                child: Icon(Icons.add_rounded, color: Colors.white, size: 50),
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: SafeArea(
        top: false,
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 6.0,
          elevation: 12,
          color: Colors.white,
          child: SizedBox(
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(Icons.home, size: 30, color: _selectedIndex == 0 ? Color(0xFFCEA700) : Colors.grey),
                  onPressed: () => _onItemTapped(0),
                ),
                IconButton(
                  icon: Icon(Icons.search, size: 30, color: _selectedIndex == 1 ? Color(0xFFCEA700) : Colors.grey),
                  onPressed: () => _onItemTapped(1),
                ),
                SizedBox(width: 66),
                IconButton(
                  icon: Icon(Icons.bookmark_border, size: 30, color: _selectedIndex == 2 ? Color(0xFFCEA700) : Colors.grey),
                  onPressed: () => _onItemTapped(2),
                ),
                IconButton(
                  icon: Icon(Icons.person_outline, size: 30, color: _selectedIndex == 3 ? Color(0xFFCEA700) : Colors.grey),
                  onPressed: () => _onItemTapped(3),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
