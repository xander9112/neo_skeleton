import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:{{name.snakeCase()}}_ui_kit/{{name.snakeCase()}}_ui_kit.dart';

class NeoCacheImage extends StatelessWidget {
  const NeoCacheImage({
    super.key,
    this.url,
    this.defaultAsset,
    this.defaultAssetSize,
    this.defaultAssetColor,
    this.radius,
    this.fit,
    this.alignment,
    this.width,
    this.height,
    this.backgroundColor,
    this.cacheManager,
    this.httpHeaders,
    this.borderColor = Colors.transparent,
    this.borderWidth = 1.0,
    this.useBorder = true,
    this.onReady,
  });

  final String? url;
  final String? defaultAsset;
  final double? defaultAssetSize;
  final Color? defaultAssetColor;
  final double? radius;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final Alignment? alignment;
  final Color? backgroundColor;
  final BaseCacheManager? cacheManager;
  final Color borderColor;
  final double borderWidth;
  final bool useBorder;
  final Map<String, String>? httpHeaders;

  final VoidCallback? onReady;

  String? get _url => url;

  @override
  Widget build(BuildContext context) {
    if (_url != null) {
      return CachedNetworkImage(
        cacheManager: cacheManager,
        width: width,
        height: height,
        imageUrl: url!,
        alignment: alignment ?? Alignment.center,
        fit: fit,
        httpHeaders: httpHeaders,
        progressIndicatorBuilder: (
          BuildContext context,
          String url,
          DownloadProgress progress,
        ) {
          return DecoratedBox(
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(radius ?? 0.0),
            ),
            child: Align(
              child: progress.progress == null
                  ? const CupertinoActivityIndicator()
                  : CupertinoActivityIndicator.partiallyRevealed(
                      progress: progress.progress ?? 0,
                    ),
            ),
          );
        },
        errorWidget: (
          BuildContext context,
          String url,
          dynamic error,
        ) {
          return DecoratedBox(
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(radius ?? 0.0),
            ),
            child: const Icon(
              Icons.error_outline_outlined,
              // color: ThemeConfig.grey,
            ),
          );
        },
        imageBuilder: (
          BuildContext context,
          ImageProvider<Object> imageProvider,
        ) {
          onReady?.call();

          return Container(
            alignment: alignment ?? Alignment.center,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(radius ?? 0.0),
              border: useBorder
                  ? Border.all(
                      color: borderColor,
                      width: borderWidth,
                    )
                  : null,
              image: DecorationImage(
                image: imageProvider,
                fit: fit ?? BoxFit.cover,
                alignment: alignment ?? Alignment.center,
              ),
            ),
          );
        },
      );
    }

    if (defaultAsset != null) {
      if (defaultAsset!.contains('svg')) {
        return NeoCrossPlatformSvg.asset(
          defaultAsset!,
          width: defaultAssetSize ?? double.infinity,
          height: defaultAssetSize,
          fit: fit ?? BoxFit.cover,
          alignment: alignment ?? Alignment.topCenter,
          color: defaultAssetColor,
        );
      }

      return Image.asset(
        defaultAsset!,
        width: width ?? double.infinity,
        height: height,
        fit: fit ?? BoxFit.cover,
        alignment: alignment ?? Alignment.topCenter,
        package: '{{name.snakeCase()}}_ui_kit',
      );
    }

    return Container();
  }
}
