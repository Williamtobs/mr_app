import 'package:flutter/material.dart';
import 'package:mr_app/src/screens/home/send_money.dart/pages/initiate.dart';
import 'package:mr_app/src/screens/home/send_money.dart/pages/receiver.dart';

class SendMoney extends StatefulWidget {
  const SendMoney({super.key});

  @override
  State<SendMoney> createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  int _index = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).size.height *
            0.13), // here the desired height
        child: AppBar(
          backgroundColor: const Color.fromRGBO(255, 221, 0, 1),
          // centerTitle: true,
          leading: Container(),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(255, 221, 0, 1),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color: Color.fromRGBO(19, 23, 28, 1),
                          size: 26,
                        ),
                      ),
                      const Text(
                        'Send Money',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(19, 23, 28, 1),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.menu,
                          color: Color.fromRGBO(19, 23, 28, 1),
                          size: 26,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black,
                  height: 33,
                  child: IgnorePointer(
                    child: TabBar(
                      controller: _tabController,
                      onTap: (index) {
                        setState(() {
                          _index = index;
                        });
                      },
                      indicatorColor: Colors.transparent,
                      indicatorWeight: 1,
                      tabs: const [
                        Tab(
                          text: 'Initiate',
                        ),
                        Tab(
                          text: 'Receiver',
                        ),
                        Tab(
                          text: 'Payment',
                        ),
                        Tab(
                          text: 'Review',
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 3,
                  child: LinearProgressIndicator(
                    value: (_index + 1) / 4,
                    // minHeight: 2,
                    color: Colors.yellow,
                    backgroundColor: Colors.white,
                    // semanticsLabel: 'Linear progress indicator',
                  ),
                ),
              ],
            ),
          ),
          elevation: 0,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Initiate(
            onTap: () {
              _tabController!.animateTo(1);
              setState(() {
                _index = 1;
              });
            },
          ),
          AddReceiver(
            onTap: () {
              _tabController!.animateTo(2);
              setState(() {
                _index = 2;
              });
            },
          ),
          const Center(
            child: Text('Payment'),
          ),
          const Center(
            child: Text('Review'),
          ),
        ],
      ),
    );
  }
}
