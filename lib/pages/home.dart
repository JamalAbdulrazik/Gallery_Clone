import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/gallery_localizations.dart';
import 'demos_viewer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          _GalleryHeader(),
          _Carousel(),
          _CategoriesHeader(),
          _MaterialCategoryItem(),
        ],
      ),
    );
  }
}

class MaterialItem {
  MaterialItem(
      {required this.title,
        required this.subtitle,
        required this.icon,
        required this.widget});
  final String title;
  final String subtitle;
  final IconData icon;
  final Widget widget;
}
class _MaterialCategoryItem extends StatelessWidget {
   _MaterialCategoryItem({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text('MATERIAL'),
      leading: Icon(Icons.abc),
      children: [
        ListTile(
          leading: const Icon(Icons.abc_outlined),
          title: const Text('App Bar'),
          subtitle: const Text(
              'Displaying information and actions relating to the current screen'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const DemosViewer()));
          },
        ),
      ],
    );
  }
}


class _Carousel extends StatelessWidget {
  const _Carousel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.0,
      child: ListView.builder(
          itemCount: 2,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const _CarouselCard();
          }),
    );
  }
}

class _CarouselCard extends StatelessWidget {
  const _CarouselCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: SizedBox(height: 200.0, child: Placeholder()),
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
  const Header({super.key, required this.color, required this.text});

  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: Padding(
        padding: EdgeInsets.only(
          top: 15,
          bottom: 11,
        ),
        child: SelectableText(
          text,
          style: Theme.of(context).textTheme.headlineMedium!.apply(
                color: color,
                fontSizeDelta: 0,
              ),
        ),
      ),
    );
  }
}
