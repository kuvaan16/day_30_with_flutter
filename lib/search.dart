import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  FocusNode fieldOne = FocusNode();
  bool searchClicked = false;
  bool closeBtn = false;
  TextEditingController _controller = TextEditingController();
  List<String> tabs = [
    "Food",
    "Groceries",
  ];
  int current = 0;
  double changePositionedOfLine() {
    switch (current) {
      case 0:
        return -1;
      case 1:
        return 57;

      default:
        return 0;
    }
  }

  double changeContainerWidth() {
    switch (current) {
      case 0:
        return 36;
      case 1:
        return 65;

      default:
        return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(top: 35.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      searchClicked
                          ? Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: IconButton(
                                onPressed: () {
                                  searchClicked = false;
                                },
                                icon: Icon(Icons.arrow_back),
                              ),
                            )
                          : Container(),
                      Expanded(
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(83, 158, 158, 158)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: TextField(
                              focusNode: fieldOne,
                              controller: _controller,
                              onTapOutside: (event) {
                                setState(() {
                                  searchClicked = false;
                                });
                              },
                              onTap: () {
                                setState(() {
                                  searchClicked = !searchClicked;
                                  FocusScope.of(context).unfocus();
                                });
                              },
                              onChanged: (value) {
                                setState(() {
                                  if (value.length > 0) {
                                    closeBtn = true;
                                  } else {
                                    closeBtn = false;
                                  }
                                });
                                print(_controller.text.toString());
                              },
                              decoration: closeBtn
                                  ? InputDecoration(
                                      suffixIcon: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            _controller.clear();
                                            closeBtn = false;
                                          });
                                        },
                                        icon: Icon(
                                          Icons.close,
                                          color: Colors.black,
                                        ),
                                      ),
                                      prefixIcon: Icon(
                                        Icons.search,
                                        size: 22,
                                      ),
                                      prefixIconColor: Colors.grey,
                                      hintStyle: TextStyle(fontSize: 14),
                                      hintText:
                                          "Search food, groceries and more",
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none),
                                    )
                                  : InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.search,
                                        size: 22,
                                      ),
                                      prefixIconColor: Colors.grey,
                                      hintStyle: TextStyle(fontSize: 14),
                                      hintText:
                                          "Search food, groceries and more",
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none),
                                    ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: size.width,
                    height: size.height * 0.043,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          child: SizedBox(
                            width: size.width,
                            height: size.height * 0.04,
                            child: ListView.builder(
                              itemCount: tabs.length,
                              scrollDirection: Axis.horizontal,
                              physics: BouncingScrollPhysics(),
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      current = index;
                                    });
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: index == 0 ? 10 : 25,
                                    ),
                                    child: Text(
                                      tabs[index],
                                      style: TextStyle(
                                          color: current == index
                                              ? Colors.orange[900]
                                              : Colors.grey[700],
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: .3),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        AnimatedPositioned(
                          bottom: 0,
                          left: changePositionedOfLine(),
                          curve: Curves.fastLinearToSlowEaseIn,
                          duration: Duration(milliseconds: 500),
                          child: AnimatedContainer(
                            curve: Curves.fastLinearToSlowEaseIn,
                            margin: EdgeInsets.only(left: 10),
                            duration: Duration(milliseconds: 500),
                            width: changeContainerWidth(),
                            height: size.height * 0.007,
                            decoration: BoxDecoration(
                              color: Colors.orange[900],
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    height: 1,
                    color: Color.fromARGB(83, 158, 158, 158),
                  ),
                ],
              ),
              current == 0
                  ? Container()
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/img/groceries.png",
                          width: 130,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          "Shop for all daily essentials",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            letterSpacing: .4,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "From groceries and fresh products to household\nsupplies.",
                          style: TextStyle(
                            color: Colors.grey[700],
                            letterSpacing: .4,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        InkWell(
                          hoverColor: Colors.orange[900],
                          focusColor: Colors.orange[900],
                          onTap: () {
                            FocusScope.of(context).requestFocus(fieldOne);
                            searchClicked = true;
                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 255, 111, 0),
                                  width: 1.2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              "Search groceries",
                              style: TextStyle(
                                color: Colors.orange[900],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
              SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
