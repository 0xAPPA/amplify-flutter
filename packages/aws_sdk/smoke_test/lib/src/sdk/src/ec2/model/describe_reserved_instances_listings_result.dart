// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_reserved_instances_listings_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/reserved_instances_listing.dart';

part 'describe_reserved_instances_listings_result.g.dart';

/// Contains the output of DescribeReservedInstancesListings.
abstract class DescribeReservedInstancesListingsResult
    with
        _i1.AWSEquatable<DescribeReservedInstancesListingsResult>
    implements
        Built<DescribeReservedInstancesListingsResult,
            DescribeReservedInstancesListingsResultBuilder> {
  /// Contains the output of DescribeReservedInstancesListings.
  factory DescribeReservedInstancesListingsResult(
      {List<ReservedInstancesListing>? reservedInstancesListings}) {
    return _$DescribeReservedInstancesListingsResult._(
        reservedInstancesListings: reservedInstancesListings == null
            ? null
            : _i2.BuiltList(reservedInstancesListings));
  }

  /// Contains the output of DescribeReservedInstancesListings.
  factory DescribeReservedInstancesListingsResult.build(
      [void Function(DescribeReservedInstancesListingsResultBuilder)
          updates]) = _$DescribeReservedInstancesListingsResult;

  const DescribeReservedInstancesListingsResult._();

  /// Constructs a [DescribeReservedInstancesListingsResult] from a [payload] and [response].
  factory DescribeReservedInstancesListingsResult.fromResponse(
    DescribeReservedInstancesListingsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i3.SmithySerializer<DescribeReservedInstancesListingsResult>>
      serializers = [
    DescribeReservedInstancesListingsResultEc2QuerySerializer()
  ];

  /// Information about the Reserved Instance listing.
  _i2.BuiltList<ReservedInstancesListing>? get reservedInstancesListings;
  @override
  List<Object?> get props => [reservedInstancesListings];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeReservedInstancesListingsResult')
          ..add(
            'reservedInstancesListings',
            reservedInstancesListings,
          );
    return helper.toString();
  }
}

class DescribeReservedInstancesListingsResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DescribeReservedInstancesListingsResult> {
  const DescribeReservedInstancesListingsResultEc2QuerySerializer()
      : super('DescribeReservedInstancesListingsResult');

  @override
  Iterable<Type> get types => const [
        DescribeReservedInstancesListingsResult,
        _$DescribeReservedInstancesListingsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeReservedInstancesListingsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeReservedInstancesListingsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'reservedInstancesListingsSet':
          result.reservedInstancesListings
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ReservedInstancesListing)],
            ),
          ) as _i2.BuiltList<ReservedInstancesListing>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeReservedInstancesListingsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeReservedInstancesListingsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeReservedInstancesListingsResult(:reservedInstancesListings) =
        object;
    if (reservedInstancesListings != null) {
      result$
        ..add(const _i3.XmlElementName('ReservedInstancesListingsSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          reservedInstancesListings,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(ReservedInstancesListing)],
          ),
        ));
    }
    return result$;
  }
}