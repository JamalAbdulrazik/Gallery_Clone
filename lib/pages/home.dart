import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/gallery_localizations.dart';


const _horizontalPadding = 32.0;


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            key: const ValueKey('HomeListView'),
            primary: true,
            restorationId: 'home_list_view',
            children: [
              Container(
                margin:
                const EdgeInsets.symmetric(horizontal: _horizontalPadding),
                child: _GalleryHeader(),
              ),
              Container(
                margin:
                const EdgeInsets.symmetric(horizontal: _horizontalPadding),
                child: _CategoriesHeader(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _GalleryHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Header(
      color: Theme.of(context).colorScheme.primaryContainer,
      text: GalleryLocalizations.of(context)!.homeHeaderGallery,
    );
  }
}

class _CategoriesHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Header(
      color: Theme.of(context).colorScheme.primary,
      text: GalleryLocalizations.of(context)!.homeHeaderCategories,
    );
  }
}

class Header extends StatelessWidget {
  const Header({Key? key, required this.color, required this.text}) : super(key: key);
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: Padding(
        padding: const EdgeInsets.only(top:15.0, bottom: 11.0),
        child: SelectableText(
          text,
          style: Theme.of(context).textTheme.headlineMedium!.apply(color: color, fontSizeDelta: 0.0),
        ),
      ),
    );
  }
}


