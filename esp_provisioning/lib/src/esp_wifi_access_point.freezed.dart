// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'esp_wifi_access_point.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EspWifiAccessPoint implements DiagnosticableTreeMixin {

/// The SSID of the access point.
 String get ssid;/// The channel of the access point. On Android, channel is unsupported so the value is always 0.
 int get channel;/// The security configuration of the access point.
 EspWifiAccessPointSecurity get security;/// The Wi-Fi signal strength of the access point.
 int get rssi;
/// Create a copy of EspWifiAccessPoint
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EspWifiAccessPointCopyWith<EspWifiAccessPoint> get copyWith => _$EspWifiAccessPointCopyWithImpl<EspWifiAccessPoint>(this as EspWifiAccessPoint, _$identity);

  /// Serializes this EspWifiAccessPoint to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EspWifiAccessPoint'))
    ..add(DiagnosticsProperty('ssid', ssid))..add(DiagnosticsProperty('channel', channel))..add(DiagnosticsProperty('security', security))..add(DiagnosticsProperty('rssi', rssi));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EspWifiAccessPoint&&(identical(other.ssid, ssid) || other.ssid == ssid)&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.security, security) || other.security == security)&&(identical(other.rssi, rssi) || other.rssi == rssi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ssid,channel,security,rssi);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EspWifiAccessPoint(ssid: $ssid, channel: $channel, security: $security, rssi: $rssi)';
}


}

/// @nodoc
abstract mixin class $EspWifiAccessPointCopyWith<$Res>  {
  factory $EspWifiAccessPointCopyWith(EspWifiAccessPoint value, $Res Function(EspWifiAccessPoint) _then) = _$EspWifiAccessPointCopyWithImpl;
@useResult
$Res call({
 String ssid, int channel, EspWifiAccessPointSecurity security, int rssi
});




}
/// @nodoc
class _$EspWifiAccessPointCopyWithImpl<$Res>
    implements $EspWifiAccessPointCopyWith<$Res> {
  _$EspWifiAccessPointCopyWithImpl(this._self, this._then);

  final EspWifiAccessPoint _self;
  final $Res Function(EspWifiAccessPoint) _then;

/// Create a copy of EspWifiAccessPoint
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ssid = null,Object? channel = null,Object? security = null,Object? rssi = null,}) {
  return _then(_self.copyWith(
ssid: null == ssid ? _self.ssid : ssid // ignore: cast_nullable_to_non_nullable
as String,channel: null == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as int,security: null == security ? _self.security : security // ignore: cast_nullable_to_non_nullable
as EspWifiAccessPointSecurity,rssi: null == rssi ? _self.rssi : rssi // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [EspWifiAccessPoint].
extension EspWifiAccessPointPatterns on EspWifiAccessPoint {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EspWifiAccessPoint value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EspWifiAccessPoint() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EspWifiAccessPoint value)  $default,){
final _that = this;
switch (_that) {
case _EspWifiAccessPoint():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EspWifiAccessPoint value)?  $default,){
final _that = this;
switch (_that) {
case _EspWifiAccessPoint() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String ssid,  int channel,  EspWifiAccessPointSecurity security,  int rssi)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EspWifiAccessPoint() when $default != null:
return $default(_that.ssid,_that.channel,_that.security,_that.rssi);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String ssid,  int channel,  EspWifiAccessPointSecurity security,  int rssi)  $default,) {final _that = this;
switch (_that) {
case _EspWifiAccessPoint():
return $default(_that.ssid,_that.channel,_that.security,_that.rssi);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String ssid,  int channel,  EspWifiAccessPointSecurity security,  int rssi)?  $default,) {final _that = this;
switch (_that) {
case _EspWifiAccessPoint() when $default != null:
return $default(_that.ssid,_that.channel,_that.security,_that.rssi);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EspWifiAccessPoint with DiagnosticableTreeMixin implements EspWifiAccessPoint {
  const _EspWifiAccessPoint({required this.ssid, required this.channel, required this.security, required this.rssi});
  factory _EspWifiAccessPoint.fromJson(Map<String, dynamic> json) => _$EspWifiAccessPointFromJson(json);

/// The SSID of the access point.
@override final  String ssid;
/// The channel of the access point. On Android, channel is unsupported so the value is always 0.
@override final  int channel;
/// The security configuration of the access point.
@override final  EspWifiAccessPointSecurity security;
/// The Wi-Fi signal strength of the access point.
@override final  int rssi;

/// Create a copy of EspWifiAccessPoint
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EspWifiAccessPointCopyWith<_EspWifiAccessPoint> get copyWith => __$EspWifiAccessPointCopyWithImpl<_EspWifiAccessPoint>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EspWifiAccessPointToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EspWifiAccessPoint'))
    ..add(DiagnosticsProperty('ssid', ssid))..add(DiagnosticsProperty('channel', channel))..add(DiagnosticsProperty('security', security))..add(DiagnosticsProperty('rssi', rssi));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EspWifiAccessPoint&&(identical(other.ssid, ssid) || other.ssid == ssid)&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.security, security) || other.security == security)&&(identical(other.rssi, rssi) || other.rssi == rssi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ssid,channel,security,rssi);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EspWifiAccessPoint(ssid: $ssid, channel: $channel, security: $security, rssi: $rssi)';
}


}

/// @nodoc
abstract mixin class _$EspWifiAccessPointCopyWith<$Res> implements $EspWifiAccessPointCopyWith<$Res> {
  factory _$EspWifiAccessPointCopyWith(_EspWifiAccessPoint value, $Res Function(_EspWifiAccessPoint) _then) = __$EspWifiAccessPointCopyWithImpl;
@override @useResult
$Res call({
 String ssid, int channel, EspWifiAccessPointSecurity security, int rssi
});




}
/// @nodoc
class __$EspWifiAccessPointCopyWithImpl<$Res>
    implements _$EspWifiAccessPointCopyWith<$Res> {
  __$EspWifiAccessPointCopyWithImpl(this._self, this._then);

  final _EspWifiAccessPoint _self;
  final $Res Function(_EspWifiAccessPoint) _then;

/// Create a copy of EspWifiAccessPoint
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ssid = null,Object? channel = null,Object? security = null,Object? rssi = null,}) {
  return _then(_EspWifiAccessPoint(
ssid: null == ssid ? _self.ssid : ssid // ignore: cast_nullable_to_non_nullable
as String,channel: null == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as int,security: null == security ? _self.security : security // ignore: cast_nullable_to_non_nullable
as EspWifiAccessPointSecurity,rssi: null == rssi ? _self.rssi : rssi // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
