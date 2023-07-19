import 'package:flutter/material.dart';
import 'package:mr_app/src/screens/home/send_money.dart/widgets/added_receiver.dart';
import 'package:mr_app/src/screens/home/send_money.dart/widgets/new_receiver.dart';
import 'package:mr_app/src/screens/shared/app_button.dart';

class AddReceiver extends StatefulWidget {
  final Function() onTap;
  const AddReceiver({super.key, required this.onTap});

  @override
  State<AddReceiver> createState() => _AddReceiverState();
}

class _AddReceiverState extends State<AddReceiver> {
  Map selectedReceiver = {};
  List recentReceiver = [
    {
      'id': '1',
      'name': 'Dee Ellis',
      'type': 'USD account',
      'image': 'assets/user.png',
    }
  ];

  List otherReceiver = [
    {
      'id': '2',
      'name': 'Darinee Edwars',
      'type': 'USD account',
      'image': 'assets/user.png',
    },
    {
      'id': '3',
      'name': 'Darinee Edwars',
      'type': 'USD account',
      'image': 'assets/user.png',
    },
    {
      'id': '4',
      'name': 'Jc Gilldown',
      'type': 'USD account',
      'image': 'assets/user.png',
    },
  ];
  @override
  Widget build(BuildContext context) {
    selectedReceivers(Map receiver) {
      setState(() {
        selectedReceiver = receiver;
      });
    }

    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.86,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const NewReceiver(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    'Recently added',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(height: 10),
                  AddedReceivers(
                    selectedReceiver: selectedReceiver,
                    receivers: recentReceiver,
                    onTap: selectedReceivers,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Other Receivers',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(height: 10),
                  AddedReceivers(
                    selectedReceiver: selectedReceiver,
                    receivers: otherReceiver,
                    onTap: selectedReceivers,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Spacer(),
            Container(
              height: MediaQuery.of(context).size.height * 0.30,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 20,
              ),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(19, 23, 28, 1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.zero,
                  bottomRight: Radius.zero,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  selectedReceiver['id'] == null
                      ? const Text(
                          'No receiver yet selected',
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.normal,
                            color: Colors.yellow,
                          ),
                        )
                      : Row(
                          children: [
                            Text(
                              '${selectedReceiver['name']}',
                              style: const TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.normal,
                                color: Colors.yellow,
                              ),
                            ),
                            const Spacer(),
                            Text(
                              '| \t\t${selectedReceiver['type']}',
                              style: const TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.normal,
                                color: Colors.yellow,
                              ),
                            ),
                          ],
                        ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      selectedReceiver['id'] == null
                          ? Container(
                              height: 93,
                              width: 93,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                border: Border.all(
                                  color: const Color.fromRGBO(245, 246, 250, 1),
                                  width: 2,
                                ),
                              ),
                            )
                          : Container(
                              height: 93,
                              width: 93,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                border: Border.all(
                                  color: const Color.fromRGBO(245, 246, 250, 1),
                                  width: 2,
                                ),
                                image: DecorationImage(
                                  image: AssetImage(
                                    '${selectedReceiver['image']}',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                      const Spacer(),
                      Container(
                        // height: 99,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 20,
                        ),
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(34, 36, 39, 1),
                          borderRadius: BorderRadius.circular(17),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: const [
                                  Text(
                                    'Fee :',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Total :',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Service :',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.24,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    '10.00 USD',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.yellow,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    '110.00 USD',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.yellow,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'in minutes',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.yellow,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  AppButton(text: 'Continue', onPressed: widget.onTap)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
