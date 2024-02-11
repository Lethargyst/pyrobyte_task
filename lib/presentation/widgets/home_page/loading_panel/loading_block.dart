import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pyrobyte/presentation/widgets/home_page/loading_panel/animated_loading.dart';

class LoadingBlock extends StatefulWidget {
  const LoadingBlock({ 
    super.key,
    this.startPercentage = 0,
    this.loadingSpeed = 10,
    this.width = 160,
    this.height = 160
  });

  final int startPercentage;
  /// Loading animation speed in percents per second
  final int loadingSpeed;
  final double width;
  final double height;

  @override
  State<LoadingBlock> createState() => _LoadingBlockState();
}

class _LoadingBlockState extends State<LoadingBlock> {  
  int _percentage = 0;
  late Timer _timer;

  @override
  void initState() {
    assert(
      widget.startPercentage >= 0 || widget.startPercentage <= 100,
      throw Exception('Parameter [startPercentage] must be in range [0, 100]!')
    );

    assert(
      widget.loadingSpeed > 0,
      throw Exception('Parameter [loadingSpeed] must be positive!')
    );
    
    _timer = Timer.periodic(
      Duration(milliseconds: 1000 ~/ widget.loadingSpeed), 
      (timer) {
        setState(() => _percentage += 1);

        if (_percentage >= 100)
          _timer.cancel();
      }
    );

    _percentage = widget.startPercentage;

    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: AnimatedLoading(
              startPercentage: widget.startPercentage,
              loadingSpeed: widget.loadingSpeed,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$_percentage%',
                  style: const TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 40,
                    fontWeight: FontWeight.w700
                  ),
                ),

                const Text(
                  'Текущий уровень загрузки',
                  style: TextStyle(
                    fontFamily: 'Jost',
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}