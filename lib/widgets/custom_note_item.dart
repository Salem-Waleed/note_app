import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffffcb70),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: const Text(
                  'Flutter tips',
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ),
      
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 18, bottom: 18),
                  child: Text(
                    'Build your career with salem waleed ,welcom ',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black.withValues(alpha: .4),
                    ),
                  ),
                ),
                trailing: IconButton(
                  icon: const FaIcon(
                    FontAwesomeIcons.trash,
                    size: 28,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 28),
                child: Text(
                  'may 12,2026',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black.withValues(alpha: .4),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
