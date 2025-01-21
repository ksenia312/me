///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'translations.g.dart';

// Path: <root>
class LocaleKeysJa extends LocaleKeys {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	LocaleKeysJa({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	@override final TranslationMetadata<AppLocale, LocaleKeys> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final LocaleKeysJa _root = this; // ignore: unused_field

	// Translations
	@override late final _LocaleKeysTabJa tab = _LocaleKeysTabJa._(_root);
	@override late final _LocaleKeysSkillJa skill = _LocaleKeysSkillJa._(_root);
	@override late final _LocaleKeysWelcomeJa welcome = _LocaleKeysWelcomeJa._(_root);
	@override late final _LocaleKeysSummaryJa summary = _LocaleKeysSummaryJa._(_root);
	@override late final _LocaleKeysPetProjectsJa petProjects = _LocaleKeysPetProjectsJa._(_root);
	@override String year({required num n}) => (_root.$meta.ordinalResolver ?? PluralResolvers.ordinal('ja'))(n,
		zero: '${n} 年',
		one: '${n} 年',
		two: '${n} 年',
		few: '${n} 年',
		many: '${n} 年',
		other: '${n} 年',
	);
	@override String get androidDemo => 'Androidデモ';
	@override String get iosDemo => 'iOSデモ';
	@override late final _LocaleKeysNotFoundJa notFound = _LocaleKeysNotFoundJa._(_root);
	@override String get pageTitle => 'Kseniia | モバイル開発者';
	@override String get mainImageCaption => '画像はグラフィック処理を使用して作成されました';
	@override late final _LocaleKeysExperienceJa experience = _LocaleKeysExperienceJa._(_root);
}

// Path: tab
class _LocaleKeysTabJa extends LocaleKeysTabEn {
	_LocaleKeysTabJa._(LocaleKeysJa root) : this._root = root, super.internal(root);

	final LocaleKeysJa _root; // ignore: unused_field

	// Translations
	@override String get home => 'ホーム';
	@override String get summary => '概要';
	@override String get projects => 'プロジェクト';
	@override String get experience => '経験';
	@override String get language => '言語';
}

// Path: skill
class _LocaleKeysSkillJa extends LocaleKeysSkillEn {
	_LocaleKeysSkillJa._(LocaleKeysJa root) : this._root = root, super.internal(root);

	final LocaleKeysJa _root; // ignore: unused_field

	// Translations
	@override String get teamPlayer => 'チームプレーヤー';
	@override String get communicative => 'コミュニケーション能力がある';
	@override String get problemSolver => '問題解決者';
	@override String get leader => 'リーダー';
	@override String get nonConflictual => '対立しない';
}

// Path: welcome
class _LocaleKeysWelcomeJa extends LocaleKeysWelcomeEn {
	_LocaleKeysWelcomeJa._(LocaleKeysJa root) : this._root = root, super.internal(root);

	final LocaleKeysJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'モバイル開発者';
	@override String get subtitle => 'Kseniia Nikitina';
}

// Path: summary
class _LocaleKeysSummaryJa extends LocaleKeysSummaryEn {
	_LocaleKeysSummaryJa._(LocaleKeysJa root) : this._root = root, super.internal(root);

	final LocaleKeysJa _root; // ignore: unused_field

	// Translations
	@override late final _LocaleKeysSummaryTotalExperienceJa totalExperience = _LocaleKeysSummaryTotalExperienceJa._(_root);
	@override late final _LocaleKeysSummaryFlutterExperienceJa flutterExperience = _LocaleKeysSummaryFlutterExperienceJa._(_root);
	@override late final _LocaleKeysSummaryHighEducationJa highEducation = _LocaleKeysSummaryHighEducationJa._(_root);
	@override late final _LocaleKeysSummaryOpenSourceJa openSource = _LocaleKeysSummaryOpenSourceJa._(_root);
	@override late final _LocaleKeysSummaryGooglePlayJa googlePlay = _LocaleKeysSummaryGooglePlayJa._(_root);
	@override late final _LocaleKeysSummaryEnglishJa english = _LocaleKeysSummaryEnglishJa._(_root);
	@override String get title => '概要';
	@override String get subtitle => 'とても簡潔で甘い';
}

// Path: petProjects
class _LocaleKeysPetProjectsJa extends LocaleKeysPetProjectsEn {
	_LocaleKeysPetProjectsJa._(LocaleKeysJa root) : this._root = root, super.internal(root);

	final LocaleKeysJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ペットプロジェクト';
	@override String get subtitle => 'ユニークで創造的、私のもの！';
	@override late final _LocaleKeysPetProjectsMarkdownJa markdown = _LocaleKeysPetProjectsMarkdownJa._(_root);
	@override late final _LocaleKeysPetProjectsErrorJa error = _LocaleKeysPetProjectsErrorJa._(_root);
}

// Path: notFound
class _LocaleKeysNotFoundJa extends LocaleKeysNotFoundEn {
	_LocaleKeysNotFoundJa._(LocaleKeysJa root) : this._root = root, super.internal(root);

	final LocaleKeysJa _root; // ignore: unused_field

	// Translations
	@override String get title => '404';
	@override String get subtitle => 'このページは存在しません';
	@override String get button => 'ホームページに戻る';
}

// Path: experience
class _LocaleKeysExperienceJa extends LocaleKeysExperienceEn {
	_LocaleKeysExperienceJa._(LocaleKeysJa root) : this._root = root, super.internal(root);

	final LocaleKeysJa _root; // ignore: unused_field

	// Translations
	@override String get title => '経験';
	@override String get subtitle => '退屈な部分';
	@override late final _LocaleKeysExperienceCvJa cv = _LocaleKeysExperienceCvJa._(_root);
	@override late final _LocaleKeysExperienceGreenfluxJa greenflux = _LocaleKeysExperienceGreenfluxJa._(_root);
	@override late final _LocaleKeysExperienceFriflexJa friflex = _LocaleKeysExperienceFriflexJa._(_root);
	@override late final _LocaleKeysExperienceAgroStabJa agroStab = _LocaleKeysExperienceAgroStabJa._(_root);
}

// Path: summary.totalExperience
class _LocaleKeysSummaryTotalExperienceJa extends LocaleKeysSummaryTotalExperienceEn {
	_LocaleKeysSummaryTotalExperienceJa._(LocaleKeysJa root) : this._root = root, super.internal(root);

	final LocaleKeysJa _root; // ignore: unused_field

	// Translations
	@override String get subtitle => '総経験';
	@override String get content => 'Dartに加えて、Kotlin、Swift、JavaScript、Python、C#、Rなどの経験があります';
}

// Path: summary.flutterExperience
class _LocaleKeysSummaryFlutterExperienceJa extends LocaleKeysSummaryFlutterExperienceEn {
	_LocaleKeysSummaryFlutterExperienceJa._(LocaleKeysJa root) : this._root = root, super.internal(root);

	final LocaleKeysJa _root; // ignore: unused_field

	// Translations
	@override String get subtitle => 'Flutter経験';
	@override String get content1 => '私は開発します';
	@override String get content2 => 'ウェブおよびモバイル';
	@override String get content3 => 'アプリケーション、さらに';
	@override String get content4 => 'バックエンド';
	@override String get content5 => '構造。私は複雑なシステムとカスタムFlutterパッケージに特化しています';
}

// Path: summary.highEducation
class _LocaleKeysSummaryHighEducationJa extends LocaleKeysSummaryHighEducationEn {
	_LocaleKeysSummaryHighEducationJa._(LocaleKeysJa root) : this._root = root, super.internal(root);

	final LocaleKeysJa _root; // ignore: unused_field

	// Translations
	@override String get title => '高等教育';
	@override String get subtitle => 'エンジニアリング';
	@override String get content1 => '「情報および通信システムにおけるプログラミング」';
	@override String get content2 => 'ITMO大学';
}

// Path: summary.openSource
class _LocaleKeysSummaryOpenSourceJa extends LocaleKeysSummaryOpenSourceEn {
	_LocaleKeysSummaryOpenSourceJa._(LocaleKeysJa root) : this._root = root, super.internal(root);

	final LocaleKeysJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'オープンソース';
	@override String get subtitle => 'アクティブプロジェクト';
	@override String get content => 'P2P通信のためのパッケージ';
	@override String get contentButton => 'パッケージを見る';
}

// Path: summary.googlePlay
class _LocaleKeysSummaryGooglePlayJa extends LocaleKeysSummaryGooglePlayEn {
	_LocaleKeysSummaryGooglePlayJa._(LocaleKeysJa root) : this._root = root, super.internal(root);

	final LocaleKeysJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Google Play';
	@override String get subtitle => 'アクティブアプリ';
	@override String get content => 'テキストとファイルの共有をサポートするオフラインチャットアプリ';
	@override String get contentButton => 'アプリを開く';
}

// Path: summary.english
class _LocaleKeysSummaryEnglishJa extends LocaleKeysSummaryEnglishEn {
	_LocaleKeysSummaryEnglishJa._(LocaleKeysJa root) : this._root = root, super.internal(root);

	final LocaleKeysJa _root; // ignore: unused_field

	// Translations
	@override String get title => '英語';
	@override String get subtitle => '業務上の習熟度';
	@override String get content => 'I very, very, very speak English';
}

// Path: petProjects.markdown
class _LocaleKeysPetProjectsMarkdownJa extends LocaleKeysPetProjectsMarkdownEn {
	_LocaleKeysPetProjectsMarkdownJa._(LocaleKeysJa root) : this._root = root, super.internal(root);

	final LocaleKeysJa _root; // ignore: unused_field

	// Translations
	@override String get imageButton => 'GitHubで画像を表示';
}

// Path: petProjects.error
class _LocaleKeysPetProjectsErrorJa extends LocaleKeysPetProjectsErrorEn {
	_LocaleKeysPetProjectsErrorJa._(LocaleKeysJa root) : this._root = root, super.internal(root);

	final LocaleKeysJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'おっと！';
	@override String subtitle({required Object id}) => 'ID=${id}のプロジェクトが見つかりませんでした。IDを確認してもう一度お試しください。';
}

// Path: experience.cv
class _LocaleKeysExperienceCvJa extends LocaleKeysExperienceCvEn {
	_LocaleKeysExperienceCvJa._(LocaleKeysJa root) : this._root = root, super.internal(root);

	final LocaleKeysJa _root; // ignore: unused_field

	// Translations
	@override String get caption => 'より詳しく私の経験については、CVを読む';
	@override String get button => 'オープンCV';
}

// Path: experience.greenflux
class _LocaleKeysExperienceGreenfluxJa extends LocaleKeysExperienceGreenfluxEn {
	_LocaleKeysExperienceGreenfluxJa._(LocaleKeysJa root) : this._root = root, super.internal(root);

	final LocaleKeysJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'モバイルアプリケーション開発者';
	@override String get organization => 'Greenflux Assets B.V.';
	@override String get location => 'アムステルダム、オランダ（ハイブリッド）';
	@override String get duration => '2024年2月 – 現在';
	@override String get subtitle => '電気自動車の充電ステーション向けアプリケーションの開発';
	@override late final _LocaleKeysExperienceGreenfluxSkillsJa skills = _LocaleKeysExperienceGreenfluxSkillsJa._(_root);
	@override late final _LocaleKeysExperienceGreenfluxAchievementsJa achievements = _LocaleKeysExperienceGreenfluxAchievementsJa._(_root);
}

// Path: experience.friflex
class _LocaleKeysExperienceFriflexJa extends LocaleKeysExperienceFriflexEn {
	_LocaleKeysExperienceFriflexJa._(LocaleKeysJa root) : this._root = root, super.internal(root);

	final LocaleKeysJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'モバイルアプリケーション開発者';
	@override String get organization => 'Friflex';
	@override String get location => 'モスクワ、ロシア';
	@override String get duration => '2022年8月 – 2023年12月';
	@override String get subtitle => 'チェスとダマのゲーム認識サービスの開発';
	@override late final _LocaleKeysExperienceFriflexSkillsJa skills = _LocaleKeysExperienceFriflexSkillsJa._(_root);
	@override late final _LocaleKeysExperienceFriflexAchievementsJa achievements = _LocaleKeysExperienceFriflexAchievementsJa._(_root);
}

// Path: experience.agroStab
class _LocaleKeysExperienceAgroStabJa extends LocaleKeysExperienceAgroStabEn {
	_LocaleKeysExperienceAgroStabJa._(LocaleKeysJa root) : this._root = root, super.internal(root);

	final LocaleKeysJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'フルスタック開発者';
	@override String get organization => 'AgroSTAB';
	@override String get location => 'サンクトペテルブルク、ロシア';
	@override String get duration => '2022年2月 – 2022年7月';
	@override String get subtitle => 'スマート温室用の管理パネルの開発';
	@override late final _LocaleKeysExperienceAgroStabSkillsJa skills = _LocaleKeysExperienceAgroStabSkillsJa._(_root);
	@override late final _LocaleKeysExperienceAgroStabAchievementsJa achievements = _LocaleKeysExperienceAgroStabAchievementsJa._(_root);
}

// Path: experience.greenflux.skills
class _LocaleKeysExperienceGreenfluxSkillsJa extends LocaleKeysExperienceGreenfluxSkillsEn {
	_LocaleKeysExperienceGreenfluxSkillsJa._(LocaleKeysJa root) : this._root = root, super.internal(root);

	final LocaleKeysJa _root; // ignore: unused_field

	// Translations
	@override String get skill1 => 'Dart';
	@override String get skill2 => 'Flutter';
	@override String get skill3 => 'Google Play';
	@override String get skill4 => 'Firebase';
	@override String get skill5 => 'Git';
	@override String get skill6 => 'ChatGPT';
	@override String get skill7 => 'BloC';
	@override String get skill8 => 'App Store';
	@override String get skill9 => 'SwiftUI';
	@override String get skill10 => '英語';
	@override String get skill11 => 'REST API';
	@override String get skill12 => 'Figma';
	@override String get skill13 => 'オブジェクト指向プログラミング（OOP）';
}

// Path: experience.greenflux.achievements
class _LocaleKeysExperienceGreenfluxAchievementsJa extends LocaleKeysExperienceGreenfluxAchievementsEn {
	_LocaleKeysExperienceGreenfluxAchievementsJa._(LocaleKeysJa root) : this._root = root, super.internal(root);

	final LocaleKeysJa _root; // ignore: unused_field

	// Translations
	@override String get achievement1 => '技術仕様から公開までの開発サイクル全体をサポートしました';
	@override String get achievement2 => '10以上のアプリケーションの共有コードベースを維持しました';
	@override String get achievement3 => 'リンター、フォーマット、全てのアプリケーションに共通のクラスシステムを設定しました';
	@override String get achievement4 => 'プルリクエストのレビュー、アプリケーションのビルドおよび公開用のパイプラインを作成し、プロセスを簡素化するためのスクリプトを作成しました';
	@override String get achievement5 => 'Git Flowを設定し、その遵守を監視しました';
	@override String get achievement6 => 'Google Maps、通知、およびその他の複雑な機能と密接に連携しました';
	@override String get achievement7 => 'SwiftUIを使ってiOS Live Activitiesを完全に実装し、複数のアプリケーションに拡張しました';
	@override String get achievement8 => 'コードベース全体をテストでカバーしました';
}

// Path: experience.friflex.skills
class _LocaleKeysExperienceFriflexSkillsJa extends LocaleKeysExperienceFriflexSkillsEn {
	_LocaleKeysExperienceFriflexSkillsJa._(LocaleKeysJa root) : this._root = root, super.internal(root);

	final LocaleKeysJa _root; // ignore: unused_field

	// Translations
	@override String get skill1 => 'Firebase';
	@override String get skill2 => 'データベース';
	@override String get skill3 => 'PostgreSQL';
	@override String get skill4 => 'Figma';
	@override String get skill5 => 'ローカリゼーション';
	@override String get skill6 => 'ChatGPT';
	@override String get skill7 => 'Dart';
	@override String get skill8 => 'REST API';
	@override String get skill9 => 'Flutter';
	@override String get skill10 => 'Google Play';
	@override String get skill11 => 'デザインパターン';
	@override String get skill12 => 'Git';
	@override String get skill13 => 'BloC';
	@override String get skill14 => 'オブジェクト指向プログラミング（OOP）';
}

// Path: experience.friflex.achievements
class _LocaleKeysExperienceFriflexAchievementsJa extends LocaleKeysExperienceFriflexAchievementsEn {
	_LocaleKeysExperienceFriflexAchievementsJa._(LocaleKeysJa root) : this._root = root, super.internal(root);

	final LocaleKeysJa _root; // ignore: unused_field

	// Translations
	@override String get achievement1 => '技術仕様から公開までの開発サイクル全体をサポートしました';
	@override String get achievement2 => '3つのカスタムパッケージを完全に作成し、10以上のパッケージを維持し、それらの依存関係を設定しました';
	@override String get achievement3 => 'サードパーティサービス（MiniO、Firebase）の統合に成功しました';
	@override String get achievement4 => 'Flutter Webを使って管理用のWebダッシュボードを開発しました';
	@override String get achievement5 => 'Dartを使ってバックエンド開発を行いました';
	@override String get achievement6 => '無数のUIコンポーネントとアニメーションを作成しました';
	@override String get achievement7 => 'クラウドストレージにデータを分割して送信するバックグラウンドサービスを開発しました';
	@override String get achievement8 => 'モバイルアプリケーション、バックエンド、Web部分からなるライブストリーミングシステムを維持しました';
}

// Path: experience.agroStab.skills
class _LocaleKeysExperienceAgroStabSkillsJa extends LocaleKeysExperienceAgroStabSkillsEn {
	_LocaleKeysExperienceAgroStabSkillsJa._(LocaleKeysJa root) : this._root = root, super.internal(root);

	final LocaleKeysJa _root; // ignore: unused_field

	// Translations
	@override String get skill1 => 'Mqtt';
	@override String get skill2 => 'Cron';
	@override String get skill3 => 'PostgreSQL';
	@override String get skill4 => 'Linux';
	@override String get skill5 => '英語';
	@override String get skill6 => 'Git';
	@override String get skill7 => 'ReactJS';
	@override String get skill8 => 'GitLab';
}

// Path: experience.agroStab.achievements
class _LocaleKeysExperienceAgroStabAchievementsJa extends LocaleKeysExperienceAgroStabAchievementsEn {
	_LocaleKeysExperienceAgroStabAchievementsJa._(LocaleKeysJa root) : this._root = root, super.internal(root);

	final LocaleKeysJa _root; // ignore: unused_field

	// Translations
	@override String get achievement1 => '技術仕様から公開までの開発サイクル全体をサポートしました';
	@override String get achievement2 => 'React.jsを使ってユーザーインターフェースを作成しました';
	@override String get achievement3 => 'react-reduxを使ってデータ処理の統合を行いました';
	@override String get achievement4 => 'コンポーネントの構造、配置、接続を設計しました';
	@override String get achievement5 => 'UX向上のためにインタラクティブ要素を追加しました';
	@override String get achievement6 => 'Nest.jsで書かれたバックエンドの構造を改善し、データ処理のロジックを追加しました';
	@override String get achievement7 => 'PostgreSQLのデータベースアーキテクチャを設計し、更新を実施しました';
	@override String get achievement8 => 'Cronを使ってデータベースのデータ更新のアルゴリズムを開発しました';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on LocaleKeysJa {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'tab.home': return 'ホーム';
			case 'tab.summary': return '概要';
			case 'tab.projects': return 'プロジェクト';
			case 'tab.experience': return '経験';
			case 'tab.language': return '言語';
			case 'skill.teamPlayer': return 'チームプレーヤー';
			case 'skill.communicative': return 'コミュニケーション能力がある';
			case 'skill.problemSolver': return '問題解決者';
			case 'skill.leader': return 'リーダー';
			case 'skill.nonConflictual': return '対立しない';
			case 'welcome.title': return 'モバイル開発者';
			case 'welcome.subtitle': return 'Kseniia Nikitina';
			case 'summary.totalExperience.subtitle': return '総経験';
			case 'summary.totalExperience.content': return 'Dartに加えて、Kotlin、Swift、JavaScript、Python、C#、Rなどの経験があります';
			case 'summary.flutterExperience.subtitle': return 'Flutter経験';
			case 'summary.flutterExperience.content1': return '私は開発します';
			case 'summary.flutterExperience.content2': return 'ウェブおよびモバイル';
			case 'summary.flutterExperience.content3': return 'アプリケーション、さらに';
			case 'summary.flutterExperience.content4': return 'バックエンド';
			case 'summary.flutterExperience.content5': return '構造。私は複雑なシステムとカスタムFlutterパッケージに特化しています';
			case 'summary.highEducation.title': return '高等教育';
			case 'summary.highEducation.subtitle': return 'エンジニアリング';
			case 'summary.highEducation.content1': return '「情報および通信システムにおけるプログラミング」';
			case 'summary.highEducation.content2': return 'ITMO大学';
			case 'summary.openSource.title': return 'オープンソース';
			case 'summary.openSource.subtitle': return 'アクティブプロジェクト';
			case 'summary.openSource.content': return 'P2P通信のためのパッケージ';
			case 'summary.openSource.contentButton': return 'パッケージを見る';
			case 'summary.googlePlay.title': return 'Google Play';
			case 'summary.googlePlay.subtitle': return 'アクティブアプリ';
			case 'summary.googlePlay.content': return 'テキストとファイルの共有をサポートするオフラインチャットアプリ';
			case 'summary.googlePlay.contentButton': return 'アプリを開く';
			case 'summary.english.title': return '英語';
			case 'summary.english.subtitle': return '業務上の習熟度';
			case 'summary.english.content': return 'I very, very, very speak English';
			case 'summary.title': return '概要';
			case 'summary.subtitle': return 'とても簡潔で甘い';
			case 'petProjects.title': return 'ペットプロジェクト';
			case 'petProjects.subtitle': return 'ユニークで創造的、私のもの！';
			case 'petProjects.markdown.imageButton': return 'GitHubで画像を表示';
			case 'petProjects.error.title': return 'おっと！';
			case 'petProjects.error.subtitle': return ({required Object id}) => 'ID=${id}のプロジェクトが見つかりませんでした。IDを確認してもう一度お試しください。';
			case 'year': return ({required num n}) => (_root.$meta.ordinalResolver ?? PluralResolvers.ordinal('ja'))(n,
				zero: '${n} 年',
				one: '${n} 年',
				two: '${n} 年',
				few: '${n} 年',
				many: '${n} 年',
				other: '${n} 年',
			);
			case 'androidDemo': return 'Androidデモ';
			case 'iosDemo': return 'iOSデモ';
			case 'notFound.title': return '404';
			case 'notFound.subtitle': return 'このページは存在しません';
			case 'notFound.button': return 'ホームページに戻る';
			case 'pageTitle': return 'Kseniia | モバイル開発者';
			case 'mainImageCaption': return '画像はグラフィック処理を使用して作成されました';
			case 'experience.title': return '経験';
			case 'experience.subtitle': return '退屈な部分';
			case 'experience.cv.caption': return 'より詳しく私の経験については、CVを読む';
			case 'experience.cv.button': return 'オープンCV';
			case 'experience.greenflux.title': return 'モバイルアプリケーション開発者';
			case 'experience.greenflux.organization': return 'Greenflux Assets B.V.';
			case 'experience.greenflux.location': return 'アムステルダム、オランダ（ハイブリッド）';
			case 'experience.greenflux.duration': return '2024年2月 – 現在';
			case 'experience.greenflux.subtitle': return '電気自動車の充電ステーション向けアプリケーションの開発';
			case 'experience.greenflux.skills.skill1': return 'Dart';
			case 'experience.greenflux.skills.skill2': return 'Flutter';
			case 'experience.greenflux.skills.skill3': return 'Google Play';
			case 'experience.greenflux.skills.skill4': return 'Firebase';
			case 'experience.greenflux.skills.skill5': return 'Git';
			case 'experience.greenflux.skills.skill6': return 'ChatGPT';
			case 'experience.greenflux.skills.skill7': return 'BloC';
			case 'experience.greenflux.skills.skill8': return 'App Store';
			case 'experience.greenflux.skills.skill9': return 'SwiftUI';
			case 'experience.greenflux.skills.skill10': return '英語';
			case 'experience.greenflux.skills.skill11': return 'REST API';
			case 'experience.greenflux.skills.skill12': return 'Figma';
			case 'experience.greenflux.skills.skill13': return 'オブジェクト指向プログラミング（OOP）';
			case 'experience.greenflux.achievements.achievement1': return '技術仕様から公開までの開発サイクル全体をサポートしました';
			case 'experience.greenflux.achievements.achievement2': return '10以上のアプリケーションの共有コードベースを維持しました';
			case 'experience.greenflux.achievements.achievement3': return 'リンター、フォーマット、全てのアプリケーションに共通のクラスシステムを設定しました';
			case 'experience.greenflux.achievements.achievement4': return 'プルリクエストのレビュー、アプリケーションのビルドおよび公開用のパイプラインを作成し、プロセスを簡素化するためのスクリプトを作成しました';
			case 'experience.greenflux.achievements.achievement5': return 'Git Flowを設定し、その遵守を監視しました';
			case 'experience.greenflux.achievements.achievement6': return 'Google Maps、通知、およびその他の複雑な機能と密接に連携しました';
			case 'experience.greenflux.achievements.achievement7': return 'SwiftUIを使ってiOS Live Activitiesを完全に実装し、複数のアプリケーションに拡張しました';
			case 'experience.greenflux.achievements.achievement8': return 'コードベース全体をテストでカバーしました';
			case 'experience.friflex.title': return 'モバイルアプリケーション開発者';
			case 'experience.friflex.organization': return 'Friflex';
			case 'experience.friflex.location': return 'モスクワ、ロシア';
			case 'experience.friflex.duration': return '2022年8月 – 2023年12月';
			case 'experience.friflex.subtitle': return 'チェスとダマのゲーム認識サービスの開発';
			case 'experience.friflex.skills.skill1': return 'Firebase';
			case 'experience.friflex.skills.skill2': return 'データベース';
			case 'experience.friflex.skills.skill3': return 'PostgreSQL';
			case 'experience.friflex.skills.skill4': return 'Figma';
			case 'experience.friflex.skills.skill5': return 'ローカリゼーション';
			case 'experience.friflex.skills.skill6': return 'ChatGPT';
			case 'experience.friflex.skills.skill7': return 'Dart';
			case 'experience.friflex.skills.skill8': return 'REST API';
			case 'experience.friflex.skills.skill9': return 'Flutter';
			case 'experience.friflex.skills.skill10': return 'Google Play';
			case 'experience.friflex.skills.skill11': return 'デザインパターン';
			case 'experience.friflex.skills.skill12': return 'Git';
			case 'experience.friflex.skills.skill13': return 'BloC';
			case 'experience.friflex.skills.skill14': return 'オブジェクト指向プログラミング（OOP）';
			case 'experience.friflex.achievements.achievement1': return '技術仕様から公開までの開発サイクル全体をサポートしました';
			case 'experience.friflex.achievements.achievement2': return '3つのカスタムパッケージを完全に作成し、10以上のパッケージを維持し、それらの依存関係を設定しました';
			case 'experience.friflex.achievements.achievement3': return 'サードパーティサービス（MiniO、Firebase）の統合に成功しました';
			case 'experience.friflex.achievements.achievement4': return 'Flutter Webを使って管理用のWebダッシュボードを開発しました';
			case 'experience.friflex.achievements.achievement5': return 'Dartを使ってバックエンド開発を行いました';
			case 'experience.friflex.achievements.achievement6': return '無数のUIコンポーネントとアニメーションを作成しました';
			case 'experience.friflex.achievements.achievement7': return 'クラウドストレージにデータを分割して送信するバックグラウンドサービスを開発しました';
			case 'experience.friflex.achievements.achievement8': return 'モバイルアプリケーション、バックエンド、Web部分からなるライブストリーミングシステムを維持しました';
			case 'experience.agroStab.title': return 'フルスタック開発者';
			case 'experience.agroStab.organization': return 'AgroSTAB';
			case 'experience.agroStab.location': return 'サンクトペテルブルク、ロシア';
			case 'experience.agroStab.duration': return '2022年2月 – 2022年7月';
			case 'experience.agroStab.subtitle': return 'スマート温室用の管理パネルの開発';
			case 'experience.agroStab.skills.skill1': return 'Mqtt';
			case 'experience.agroStab.skills.skill2': return 'Cron';
			case 'experience.agroStab.skills.skill3': return 'PostgreSQL';
			case 'experience.agroStab.skills.skill4': return 'Linux';
			case 'experience.agroStab.skills.skill5': return '英語';
			case 'experience.agroStab.skills.skill6': return 'Git';
			case 'experience.agroStab.skills.skill7': return 'ReactJS';
			case 'experience.agroStab.skills.skill8': return 'GitLab';
			case 'experience.agroStab.achievements.achievement1': return '技術仕様から公開までの開発サイクル全体をサポートしました';
			case 'experience.agroStab.achievements.achievement2': return 'React.jsを使ってユーザーインターフェースを作成しました';
			case 'experience.agroStab.achievements.achievement3': return 'react-reduxを使ってデータ処理の統合を行いました';
			case 'experience.agroStab.achievements.achievement4': return 'コンポーネントの構造、配置、接続を設計しました';
			case 'experience.agroStab.achievements.achievement5': return 'UX向上のためにインタラクティブ要素を追加しました';
			case 'experience.agroStab.achievements.achievement6': return 'Nest.jsで書かれたバックエンドの構造を改善し、データ処理のロジックを追加しました';
			case 'experience.agroStab.achievements.achievement7': return 'PostgreSQLのデータベースアーキテクチャを設計し、更新を実施しました';
			case 'experience.agroStab.achievements.achievement8': return 'Cronを使ってデータベースのデータ更新のアルゴリズムを開発しました';
			default: return null;
		}
	}
}

