import 'package:flutter/material.dart';

class AppBody  extends StatefulWidget {
  const AppBody ({Key? key}) : super(key: key);

  @override
  State<AppBody> createState() => _AppBody();
}

class _AppBody extends State<AppBody> {


  @override
  Widget build(BuildContext context) {

    final drawer=Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.cached),
            title: Text('切換寵物_七七'),
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => petone()),);
            },
          ),
          ListTile(
            leading: Icon(Icons.cached),
            title: Text('切換寵物_bam'),
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => pettwo()),);
            },
          ),
        ],
      ),
    );


    final btn_addpet= ElevatedButton(
        child: const Text('點選新增寵物'),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Addpet()),);
        },
        style: ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: 20.0),
          primary: Colors.grey,
    ),
      );

    final btn_addnotification= ElevatedButton(
      child: const Text('點選新增提醒'),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Addnof()),);
      },
      style: ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: 20.0),
        primary: Colors.grey,
      ),
    );

     final widget = Center(
      child: Column(
        children: <Widget>[
          Image.asset('assets/pet1.jpg'),
          Container(child:Text('寵物名字:阿虎', style: TextStyle(fontSize: 20)), margin: EdgeInsets.symmetric(vertical:10),),
          Container(child:Text('生日:2019/12/05', style: TextStyle(fontSize: 20)), margin: EdgeInsets.symmetric(vertical:10),),
          Container(child:Text('下次預約檢查日期:2022/07/03', style: TextStyle(fontSize: 20)), margin: EdgeInsets.symmetric(vertical:10),),
          Container(child:Text('下次投藥日期:2022/08/23', style: TextStyle(fontSize: 20)), margin: EdgeInsets.symmetric(vertical:10),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(child: btn_addpet, margin: EdgeInsets.symmetric(vertical: 20),),
              Container(child: btn_addnotification, margin: EdgeInsets.symmetric(vertical: 20),),
            ],
          ),
        ],
      ),
    );

    return Scaffold(
        drawer: drawer,
        body:widget,
    );
  }
}

class Addpet  extends StatefulWidget {
  const Addpet ({Key? key}) : super(key: key);

  @override
  State<Addpet> createState() => _Addpet();
}


class _Addpet extends State<Addpet> {
  late BuildContext context;
  String dropdownValue1 = '2000';
  String dropdownValue2 = '01';
  String dropdownValue3 = '01';
  @override

  Widget build(BuildContext context) {
    this.context = context;
    final nameController = TextEditingController();
    final nameField =  Container(
        child:TextField(
      controller: nameController,
      style: TextStyle(fontSize: 20),
      decoration: InputDecoration(
        labelText: '輸入姓名',
        labelStyle: TextStyle(fontSize: 20),
      ),
      ),
    );
    // Button.
    // Arrange widgets.
    final btn1 =SizedBox(
      width: 80,
        child:DropdownButton<String>(
          value: dropdownValue1,
          elevation: 16,
          style: const TextStyle(color: Colors.black,fontSize: 24),
          underline: Container(
          height: 2,
          color: Colors.grey,
        ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue1 = newValue!;
        });
      },
      items: <String>['2000', '2001', '2002', '2003', '2004', '2005', '2006', '2007', '2008', '2009'
        , '2010', '2011', '2012', '2013', '2014', '2015', '2016', '2017', '2018', '2019'
        , '2020', '2021', '2022'
      ]
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    ),
    );

    final btn2 =SizedBox(
      width: 80,
      child:DropdownButton<String>(
        value: dropdownValue2,
        elevation: 16,
        style: const TextStyle(color: Colors.black,fontSize: 24),
        underline: Container(
          height: 2,
          color: Colors.grey,
        ),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue2 = newValue!;
          });
        },
        items: <String>['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12', '13', '14', '15'
          , '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31'
        ]
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );

    final btn3 =SizedBox(
      width: 80,
      child:DropdownButton<String>(
        value: dropdownValue3,
        elevation: 16,
        style: const TextStyle(color: Colors.black,fontSize: 24),
        underline: Container(
          height: 2,
          color: Colors.grey,
        ),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue3 = newValue!;
          });
        },
        items: <String>['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );

    final btn_acc= ElevatedButton(
      child: const Text('確認新增'),
      onPressed: () {
        Navigator.pop(context);
      },
      style: ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: 20.0),
        primary: Colors.grey,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('新增寵物',style:TextStyle(fontSize: 24.0,color: Colors.black),),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(child:Text('輸入寵物名字', style: TextStyle(fontSize: 20)), margin: EdgeInsets.symmetric(vertical:10),),
            Container(child: nameField, width: 200, margin: EdgeInsets.symmetric(vertical: 10),),
            Container(child:Text('輸入寵物生日', style: TextStyle(fontSize: 20)), margin: EdgeInsets.symmetric(vertical:10),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(child: btn1, margin: EdgeInsets.symmetric(vertical: 10),),
                Container(child: btn3, margin: EdgeInsets.symmetric(vertical: 10),),
                Container(child: btn2, margin: EdgeInsets.symmetric(vertical: 10),),
              ],
            ),
            Container(child: btn_acc, margin: EdgeInsets.symmetric(vertical: 10),),
          ],
        ),
      ),
    );
  }
}

class petone extends StatefulWidget {
  const petone({Key? key}) : super(key: key);
  @override
  State<petone> createState() => _petone();
}
class _petone extends State<petone> {
  @override
  Widget build(BuildContext context){

    final widget = Center(
      child: Column(
        children: <Widget>[
          Image.asset('assets/pet2.jpg'),
          Container(child:Text('寵物名字:七七', style: TextStyle(fontSize: 20)), margin: EdgeInsets.symmetric(vertical:10),),
          Container(child:Text('生日:2020/3/12', style: TextStyle(fontSize: 20)), margin: EdgeInsets.symmetric(vertical:10),),
        ],
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('寵物紀錄APP',style:TextStyle(fontSize: 24.0,color: Colors.black)),
        backgroundColor: Colors.grey,
      ),
      body: widget,
    );
  }
}

class pettwo extends StatefulWidget {
  const pettwo({Key? key}) : super(key: key);
  @override
  State<pettwo> createState() => _pettwo();
}
class _pettwo extends State<pettwo> {
  @override
  Widget build(BuildContext context){

    final widget = Center(
      child: Column(
        children: <Widget>[
          Image.asset('assets/pet3.jpg'),
          Container(child:Text('寵物名字:bam', style: TextStyle(fontSize: 20)), margin: EdgeInsets.symmetric(vertical:10),),
          Container(child:Text('生日:2021/1/27', style: TextStyle(fontSize: 20)), margin: EdgeInsets.symmetric(vertical:10),),
          Container(child:Text('下次投藥日期:2022/06/23', style: TextStyle(fontSize: 20)), margin: EdgeInsets.symmetric(vertical:10),),
        ],
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('寵物紀錄APP',style:TextStyle(fontSize: 24.0,color: Colors.black)),
        backgroundColor: Colors.grey,
      ),
      body: widget,
    );;
  }
}

class Addnof  extends StatefulWidget {
  const Addnof  ({Key? key}) : super(key: key);

  @override
  State<Addnof> createState() => _Addnof();
}

class _Addnof extends State<Addnof> {
  late BuildContext context;
  String dropdownValue1 = '美容';
  String dropdownValue2 = '2022';
  String dropdownValue3 = '01';
  String dropdownValue4 = '01';
  @override
  Widget build(BuildContext context) {

    final btn1 =SizedBox(
      width: 80,
      child:DropdownButton<String>(
        value: dropdownValue1,
        elevation: 16,
        style: const TextStyle(color: Colors.black,fontSize: 24),
        underline: Container(
          height: 2,
          color: Colors.grey,
        ),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue1 = newValue!;
          });
        },
        items: <String>['美容', '檢查', '投藥']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );

    final btn2 =SizedBox(
      width: 80,
      child:DropdownButton<String>(
        value: dropdownValue2,
        elevation: 16,
        style: const TextStyle(color: Colors.black,fontSize: 24),
        underline: Container(
          height: 2,
          color: Colors.grey,
        ),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue2 = newValue!;
          });
        },
        items: <String>['2022','2023','2024','2025','2026']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );

    final btn3 =SizedBox(
      width: 80,
      child:DropdownButton<String>(
        value: dropdownValue3,
        elevation: 16,
        style: const TextStyle(color: Colors.black,fontSize: 24),
        underline: Container(
          height: 2,
          color: Colors.grey,
        ),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue3 = newValue!;
          });
        },
        items: <String>['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );

    final btn4 =SizedBox(
      width: 80,
      child:DropdownButton<String>(
        value: dropdownValue4,
        elevation: 16,
        style: const TextStyle(color: Colors.black,fontSize: 24),
        underline: Container(
          height: 2,
          color: Colors.grey,
        ),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue4 = newValue!;
          });
        },
        items: <String>['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12', '13', '14', '15'
          , '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );

    final btn_acc= ElevatedButton(
      child: const Text('確認新增'),
      onPressed: () {
        Navigator.pop(context);
      },
      style: ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: 20.0),
        primary: Colors.grey,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('新增提醒',style:TextStyle(fontSize: 24.0,color: Colors.black)),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(child:Text('提醒事項', style: TextStyle(fontSize: 20)), margin: EdgeInsets.symmetric(vertical:10),),
            Container(child: btn1, margin: EdgeInsets.symmetric(vertical: 20),),
            Container(child:Text('提醒日期', style: TextStyle(fontSize: 20)), margin: EdgeInsets.symmetric(vertical:10),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(child: btn2, margin: EdgeInsets.symmetric(vertical: 10),),
                Container(child: btn3, margin: EdgeInsets.symmetric(vertical: 10),),
                Container(child: btn4, margin: EdgeInsets.symmetric(vertical: 10),),
              ],
            ),
            Container(child: btn_acc, margin: EdgeInsets.symmetric(vertical: 20),),
          ],
        ),
      ),
    );
  }
}

