import 'package:flutter/material.dart';

import '../../../components/custom_bar/custom_bar_widget.dart';

class ListSongsScreen extends StatefulWidget {
  const ListSongsScreen({Key? key}) : super(key: key);

  @override
  State<ListSongsScreen> createState() => _ListSongsScreenState();
}

class _ListSongsScreenState extends State<ListSongsScreen> {
  Map<int, bool> countToValue = <int, bool>{};
  String dropdownValue = 'Recently Played';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: CustomBarWidget();
      // ,
      appBar: PreferredSize(
        preferredSize: Size(
            MediaQuery.of(context).size.width, AppBar().preferredSize.height),
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [CustomBarWidget()],
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 18, horizontal: 16),
          child: Column(children: [
            Container(
              height: 25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '20 songs',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  DropdownButton<String>(
                    value: dropdownValue,
                    icon: const Icon(Icons.arrow_drop_down),
                    elevation: 16,
                    style: Theme.of(context).textTheme.subtitle2,
                    underline: Container(
                      height: 0,
                      color: Colors.deepPurpleAccent,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                    items: <String>['Recently Played', 'Two', 'Free', 'Four']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListTileTheme(
                child: ListView.separated(

                    // padding: EdgeInsets.all(10),
                    padding: EdgeInsets.only(bottom: 17.5),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 50,
                        // padding: EdgeInsets.symmetric(vertical: 5),
                        child: ListTile(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 0.0, horizontal: 0.0),
                          title: Text(
                            'List item $index',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          subtitle: Text(
                            'Secondary text',
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                          leading: Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                              color: Colors.redAccent,
                              image: DecorationImage(
                                image:
                                    ExactAssetImage('assets/images/sound1.jpg'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          selected: countToValue[index] ?? false,
                          trailing: Text(
                            '30 mins',
                            style: Theme.of(context).textTheme.caption,
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => Container(
                        margin: const EdgeInsets.only(top: 20, bottom: 0),
                        height: 1,
                        color: Color.fromRGBO(0, 0, 0, 0.12)),
                    itemCount: 30),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
