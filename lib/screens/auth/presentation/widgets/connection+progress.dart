import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youth_basketball_mng/core/constants/app_colors.dart';

class ConnectionProgress extends StatefulWidget {
  const ConnectionProgress({super.key, required this.onCompleted});

  final VoidCallback onCompleted;

  @override
  State<ConnectionProgress> createState() => _ConnectionProgressState();
}

class _ConnectionProgressState extends State<ConnectionProgress>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );

    // _animation = Tween<double>(
    //   begin: 0,
    //   end: widget.progress,
    // ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        widget.onCompleted();
      }
    });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.55,
          height: 12,
          child: AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 12,
                      color: const Color(0xFFDCE5F0),
                    ),

                    FractionallySizedBox(
                      widthFactor: _animation.value,
                      child: Container(
                        height: 12,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF003A9B),
                              Color(0xFF347FF0),
                              Color(0xFF8FA7A5),
                              Color(0xFFF4C343),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 20),

        Text(
          'Connecting to Coach Portal...',
          style: GoogleFonts.rubik(
            color: AppColors.textGreyLight,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
