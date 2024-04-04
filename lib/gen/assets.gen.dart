/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsAnimationsGen {
  const $AssetsAnimationsGen();

  /// File path: assets/animations/Flow 1.json
  String get flow1 => 'packages/assignment/assets/animations/Flow 1.json';

  /// List of all assets
  List<String> get values => [flow1];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/app_icon.svg
  SvgGenImage get appIcon => const SvgGenImage('assets/icons/app_icon.svg');

  /// File path: assets/icons/backButton.svg
  SvgGenImage get backButton =>
      const SvgGenImage('assets/icons/backButton.svg');

  /// File path: assets/icons/back_icon.svg
  SvgGenImage get backIcon => const SvgGenImage('assets/icons/back_icon.svg');

  /// File path: assets/icons/doc_icon.svg
  SvgGenImage get docIcon => const SvgGenImage('assets/icons/doc_icon.svg');

  /// File path: assets/icons/download_icon.svg
  SvgGenImage get downloadIcon =>
      const SvgGenImage('assets/icons/download_icon.svg');

  /// File path: assets/icons/google_icon.svg
  SvgGenImage get googleIcon =>
      const SvgGenImage('assets/icons/google_icon.svg');

  /// File path: assets/icons/highlites.svg
  SvgGenImage get highlites => const SvgGenImage('assets/icons/highlites.svg');

  /// File path: assets/icons/pitch_deck_icon.svg
  SvgGenImage get pitchDeckIcon =>
      const SvgGenImage('assets/icons/pitch_deck_icon.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        appIcon,
        backButton,
        backIcon,
        docIcon,
        downloadIcon,
        googleIcon,
        highlites,
        pitchDeckIcon
      ];
}

class $AssetsIllustrationsGen {
  const $AssetsIllustrationsGen();

  /// File path: assets/illustrations/finish.svg
  SvgGenImage get finish =>
      const SvgGenImage('assets/illustrations/finish.svg');

  /// File path: assets/illustrations/generating_docs.svg
  SvgGenImage get generatingDocs =>
      const SvgGenImage('assets/illustrations/generating_docs.svg');

  /// File path: assets/illustrations/payment_done.svg
  SvgGenImage get paymentDone =>
      const SvgGenImage('assets/illustrations/payment_done.svg');

  /// List of all assets
  List<SvgGenImage> get values => [finish, generatingDocs, paymentDone];
}

class $AssetsMockDocumentGen {
  const $AssetsMockDocumentGen();

  /// File path: assets/mock_document/mock_contract.png
  AssetGenImage get mockContract =>
      const AssetGenImage('assets/mock_document/mock_contract.png');

  /// List of all assets
  List<AssetGenImage> get values => [mockContract];
}

class Assets {
  Assets._();

  static const String package = 'assignment';

  static const $AssetsAnimationsGen animations = $AssetsAnimationsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsIllustrationsGen illustrations =
      $AssetsIllustrationsGen();
  static const $AssetsMockDocumentGen mockDocument = $AssetsMockDocumentGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  static const String package = 'assignment';

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    @Deprecated('Do not specify package for a generated library asset')
    String? package = package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    @Deprecated('Do not specify package for a generated library asset')
    String? package = package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => 'packages/assignment/$_assetName';
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  static const String package = 'assignment';

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    @Deprecated('Do not specify package for a generated library asset')
    String? package = package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => 'packages/assignment/$_assetName';
}
