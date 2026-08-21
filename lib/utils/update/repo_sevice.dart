//  repo_sevice.dart
//  Created by JeoJay127
//

import 'repo_checker.dart';
import 'repo_config.dart';
import 'repo_context.dart';

class RepoService {
  RepoService._({
    required this.checker,
    Duration minInterval = const Duration(seconds: 10),
  }) : _minInterval = minInterval;

  static RepoService? _instance;

  static RepoService get instance =>
      _instance ??= RepoService._(checker: RepoChecker());

  final RepoChecker checker;
  final Duration _minInterval;

  bool _isChecking = false;
  DateTime? _lastCheckTime;
  bool _lastResultHadUpdate = false;

  Future<void> checkLatestRelease({
    required String currentVersion,
    RepoConfig config = RepoConfig.defaultConfig,
    bool silent = true,
    void Function(RepoContext ctx, String info)? onUpdateFound,
    void Function(String info)? onInfo,
    void Function(String error)? onError,
  }) async {
    final now = DateTime.now();
    if (_isChecking) {
      if (!silent) {
        onInfo?.call('Checking for updates, please wait...');
      }
      return;
    }

    if (_lastCheckTime != null &&
        !_lastResultHadUpdate &&
        now.difference(_lastCheckTime!) < _minInterval) {
      if (!silent) {
        onInfo?.call('Update check performed recently, please try again later');
      }
      return;
    }

    _isChecking = true;

    try {
      final release = await checker.checkLatestRelease(
        config: config,
        currentVersion: currentVersion,
      );

      _lastCheckTime = now;
      _lastResultHadUpdate = release != null;

      if (release == null) {
        if (!silent) {
          onInfo?.call('Version $currentVersion is already up to date');
        }
        return;
      }

      final ctx = RepoContext(repoConfig: config, release: release);

      onUpdateFound?.call(ctx, 'New version found: ${release.tag}');
      return;
    } catch (e) {
      if (!silent) {
        onError?.call('Update check failed, please try again later');
      }
      rethrow;
    } finally {
      _isChecking = false;
    }
  }

  Future<void> checkReleases({
    RepoConfig config = RepoConfig.defaultConfig,
    bool silent = true,
    void Function(List? releases)? onReleaseFound,
    void Function(String info)? onInfo,
    void Function(String error)? onError,
  }) async {
    try {
      final releaseList = await checker.checkReleases(config: config);
      if (releaseList == null) {
        if (!silent) {
          onError?.call('Failed to retrieve release list, please try again later');
        }
        return;
      }
      if (releaseList.isEmpty) {
        if (!silent) {
          onInfo?.call('Release list is empty');
        }
        return;
      }
      onReleaseFound?.call(releaseList);
    } catch (e) {
      if (!silent) {
        onError?.call('An error occurred: $e');
      }
      rethrow;
    }
  }
}
