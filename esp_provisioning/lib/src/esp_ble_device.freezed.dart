// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'esp_ble_device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EspBleDevice implements DiagnosticableTreeMixin {

/// The device's advertised name.
 String get name;/// The device's BLE RSSI. The Espressif iOS library does not provide this value; on iOS it will always be 0.
 int get rssi;
/// Create a copy of EspBleDevice
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EspBleDeviceCopyWith<EspBleDevice> get copyWith => _$EspBleDeviceCopyWithImpl<EspBleDevice>(this as EspBleDevice, _$identity);

  /// Serializes this EspBleDevice to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EspBleDevice'))
    ..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('rssi', rssi));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EspBleDevice&&(identical(other.name, name) || other.name == name)&&(identical(other.rssi, rssi) || other.rssi == rssi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,rssi);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EspBleDevice(name: $name, rssi: $rssi)';
}


}

/// @nodoc
abstract mixin class $EspBleDeviceCopyWith<$Res>  {
  factory $EspBleDeviceCopyWith(EspBleDevice value, $Res Function(EspBleDevice) _then) = _$EspBleDeviceCopyWithImpl;
@useResult
$Res call({
 String name, int rssi
});




}
/// @nodoc
class _$EspBleDeviceCopyWithImpl<$Res>
    implements $EspBleDeviceCopyWith<$Res> {
  _$EspBleDeviceCopyWithImpl(this._self, this._then);

  final EspBleDevice _self;
  final $Res Function(EspBleDevice) _then;

/// Create a copy of EspBleDevice
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? rssi = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,rssi: null == rssi ? _self.rssi : rssi // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [EspBleDevice].
extension EspBleDevicePatterns on EspBleDevice {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EspBleDevice value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EspBleDevice() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EspBleDevice value)  $default,){
final _that = this;
switch (_that) {
case _EspBleDevice():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EspBleDevice value)?  $default,){
final _that = this;
switch (_that) {
case _EspBleDevice() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  int rssi)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EspBleDevice() when $default != null:
return $default(_that.name,_that.rssi);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  int rssi)  $default,) {final _that = this;
switch (_that) {
case _EspBleDevice():
return $default(_that.name,_that.rssi);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  int rssi)?  $default,) {final _that = this;
switch (_that) {
case _EspBleDevice() when $default != null:
return $default(_that.name,_that.rssi);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EspBleDevice with DiagnosticableTreeMixin implements EspBleDevice {
  const _EspBleDevice({required this.name, required this.rssi});
  factory _EspBleDevice.fromJson(Map<String, dynamic> json) => _$EspBleDeviceFromJson(json);

/// The device's advertised name.
@override final  String name;
/// The device's BLE RSSI. The Espressif iOS library does not provide this value; on iOS it will always be 0.
@override final  int rssi;

/// Create a copy of EspBleDevice
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EspBleDeviceCopyWith<_EspBleDevice> get copyWith => __$EspBleDeviceCopyWithImpl<_EspBleDevice>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EspBleDeviceToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'EspBleDevice'))
    ..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('rssi', rssi));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EspBleDevice&&(identical(other.name, name) || other.name == name)&&(identical(other.rssi, rssi) || other.rssi == rssi));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,rssi);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'EspBleDevice(name: $name, rssi: $rssi)';
}


}

/// @nodoc
abstract mixin class _$EspBleDeviceCopyWith<$Res> implements $EspBleDeviceCopyWith<$Res> {
  factory _$EspBleDeviceCopyWith(_EspBleDevice value, $Res Function(_EspBleDevice) _then) = __$EspBleDeviceCopyWithImpl;
@override @useResult
$Res call({
 String name, int rssi
});




}
/// @nodoc
class __$EspBleDeviceCopyWithImpl<$Res>
    implements _$EspBleDeviceCopyWith<$Res> {
  __$EspBleDeviceCopyWithImpl(this._self, this._then);

  final _EspBleDevice _self;
  final $Res Function(_EspBleDevice) _then;

/// Create a copy of EspBleDevice
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? rssi = null,}) {
  return _then(_EspBleDevice(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,rssi: null == rssi ? _self.rssi : rssi // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
