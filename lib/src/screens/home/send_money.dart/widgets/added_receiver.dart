import 'package:flutter/material.dart';

class AddedReceivers extends StatelessWidget {
  final List receivers;
  final Map selectedReceiver;
  final Function(Map) onTap;
  const AddedReceivers(
      {super.key,
      required this.receivers,
      required this.selectedReceiver,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(left: 10, right: 20, top: 10, bottom: 10),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color.fromRGBO(112, 112, 112, 0.17),
          width: 1,
        ),
      ),
      child: Column(
        children: receivers.map((receiver) {
          return InkWell(
            onTap: () {
              onTap(receiver);
            },
            child: Row(
              children: [
                Container(
                    width: 22,
                    height: 22,
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: selectedReceiver['id'] != receiver['id']
                              ? const Color.fromRGBO(199, 199, 199, 1)
                              : Colors.yellow,
                          width: 1,
                        )),
                    child: Container(
                      width: 17,
                      height: 17,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: selectedReceiver['id'] == receiver['id']
                            ? const Color.fromRGBO(255, 221, 0, 1)
                            : Colors.white,
                      ),
                    )),
                const SizedBox(width: 10),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(
                      color: const Color.fromRGBO(245, 246, 250, 1),
                      width: 2,
                    ),
                    image: DecorationImage(
                      image: AssetImage(receiver['image']),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      receiver['name'],
                      style: const TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      receiver['type'],
                      style: const TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.normal,
                        color: Color.fromRGBO(191, 191, 191, 1),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(
                  Icons.arrow_forward,
                  size: 18,
                  // color: const Color.fromRGBO(191, 191, 191, 1),
                )
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
