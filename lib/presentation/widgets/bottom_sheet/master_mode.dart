import 'package:flutter/material.dart';

class MasterMode extends StatefulWidget {
  const MasterMode({ super.key });

  @override
  State<MasterMode> createState() => _MasterModeState();
}

class _MasterModeState extends State<MasterMode> {
  bool _isMaster = false;

  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Режим мастер',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 16,
            fontWeight: FontWeight.w600
          ),
        ),

        const SizedBox(height: 16),

        Row(
          children: [
            Expanded(
              child: Material(
                borderRadius: const BorderRadius.horizontal(
                  left: Radius.circular(8)
                ),
                child: InkWell(
                  onTap: () => setState(() {
                    _isMaster = true;
                  }),
                  child: Ink(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.horizontal(
                        left: Radius.circular(8)
                      ),
                      border: Border.all(
                        color: const Color(0xFF218CEF) 
                      ),
                      color: _isMaster
                        ? const Color(0xFF218CEF)
                        : Colors.white 
                    ),
                    child: Text(
                      'Используется',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: _isMaster
                          ? Colors.white
                          : const Color(0xFF218CEF)
                      ),
                    ),
                  ),
                ),
              ),
            ),

            Expanded(
              child: Material(
                borderRadius: const BorderRadius.horizontal(
                  right: Radius.circular(8)
                ),
                child: InkWell(
                  onTap: () => setState(() {
                    _isMaster = false;
                  }),
                  child: Ink(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.horizontal(
                        right: Radius.circular(8)
                      ),
                      border: Border.all(
                        color: const Color(0xFF218CEF) 
                      ),
                      color: !_isMaster
                        ? const Color(0xFF218CEF)
                        : Colors.white 
                    ),
                    child: Text(
                      'Не используется',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: !_isMaster
                          ? Colors.white
                          : const Color(0xFF218CEF)
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}