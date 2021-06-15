part of persistent_bottom_nav_bar;

class NavBarEssentials {
  final int? selectedIndex;
  final int? previousIndex;
  final Color? backgroundColor;
  final List<PersistentBottomNavBarItem>? items;
  final ValueChanged<int>? onItemSelected;
  final double? navBarHeight;
  final NavBarPadding? padding;
  final bool? popScreensOnTapOfSelectedTab;
  final ItemAnimationProperties? itemAnimationProperties;
  final BuildContext? selectedScreenBuildContext;
  final bool isTop;

  const NavBarEssentials({
    Key? key,
    this.selectedIndex,
    this.previousIndex,
    this.backgroundColor,
    this.popScreensOnTapOfSelectedTab,
    this.itemAnimationProperties,
    this.navBarHeight = 0.0,
    required this.items,
    this.onItemSelected,
    this.padding,
    this.isTop = false,
    this.selectedScreenBuildContext,
  });

  NavBarEssentials copyWith({
    int? selectedIndex,
    int? previousIndex,
    double? iconSize,
    Color? backgroundColor,
    List<PersistentBottomNavBarItem>? items,
    ValueChanged<int>? onItemSelected,
    double? navBarHeight,
    NavBarPadding? padding,
    Function(int)? popAllScreensForTheSelectedTab,
    bool? popScreensOnTapOfSelectedTab,
    ItemAnimationProperties? itemAnimationProperties,
    bool? isTop,
  }) {
    return NavBarEssentials(
        selectedIndex: selectedIndex ?? this.selectedIndex,
        previousIndex: previousIndex ?? this.previousIndex,
        backgroundColor: backgroundColor ?? this.backgroundColor,
        items: items ?? this.items,
        onItemSelected: onItemSelected ?? this.onItemSelected,
        navBarHeight: navBarHeight ?? this.navBarHeight,
        padding: padding ?? this.padding,
        popScreensOnTapOfSelectedTab:
            popScreensOnTapOfSelectedTab ?? this.popScreensOnTapOfSelectedTab,
        itemAnimationProperties:
            itemAnimationProperties ?? this.itemAnimationProperties,
        isTop: isTop != null ? isTop : false);
  }
}
