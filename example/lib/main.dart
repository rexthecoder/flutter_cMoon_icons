import 'package:flutter/material.dart';
import 'package:flutter_cMoon_icons/flutter_cMoon_icons.dart';
import 'icons.dart';



void main() {
  runApp(CMoonIconsApp());
}

class CMoonIconsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Font Awesome Flutter Gallery',
      theme: ThemeData.light().copyWith(
        iconTheme: IconThemeData(size: 36.0, color: Colors.black87),
        textTheme: TextTheme(
          body1: TextStyle(fontSize: 16.0, color: Colors.black87),
        ),
      ),
      home: CMoonIconsHome(),
    );
  }
}

class CMoonIconsHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CMoonIconsHomeState();
}

class CMoonIconsHomeState extends State<CMoonIconsHome> {
  var _searchTerm = "";
  var _isSearching = false;

  @override
  Widget build(BuildContext context) {
    final filteredIcons = icons
        .where((icon) =>
            _searchTerm.isEmpty ||
            icon.title.toLowerCase().contains(_searchTerm.toLowerCase()))
        .toList();
    final orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: _isSearching ? _searchBar(context) : _titleBar(),
      body: GridView.builder(
        itemCount: filteredIcons.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
        ),
        itemBuilder: (context, index) {
          final icon = filteredIcons[index];

          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute<Null>(
                  builder: (BuildContext context) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: Hero(
                          tag: icon,
                          child: CIcon(
                            icon.iconData,
                            size: 200,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Hero(tag: icon, child: CIcon(icon.iconData)),
                Container(
                  padding: EdgeInsets.only(top: 16.0),
                  child: Text(icon.title),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  AppBar _titleBar() {
    return AppBar(
      title: Text("Font Awesome Flutter Gallery"),
      actions: [
        IconButton(
            icon: CIcon(IconMoon.icon_1password,color: Colors.black,),
            onPressed: () {
              ModalRoute.of(context).addLocalHistoryEntry(
                LocalHistoryEntry(
                  onRemove: () {
                    setState(() {
                      _searchTerm = "";
                      _isSearching = false;
                    });
                  },
                ),
              );

              setState(() {
                _isSearching = true;
              });
            })
      ],
    );
  }

  AppBar _searchBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: CIcon(IconMoon.icon_arrow_thick_left),
        onPressed: () {
          setState(
            () {
              Navigator.pop(context);
              _isSearching = false;
              _searchTerm = "";
            },
          );
        },
      ),
      title: TextField(
        onChanged: (text) => setState(() => _searchTerm = text),
        autofocus: true,
        style: TextStyle(fontSize: 18.0),
        decoration: InputDecoration(border: InputBorder.none),
      ),
    );
  }
}