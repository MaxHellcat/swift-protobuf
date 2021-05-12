// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/protobuf/unittest_preserve_unknown_enum.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Protocol Buffers - Google's data interchange format
// Copyright 2008 Google Inc.  All rights reserved.
// https://developers.google.com/protocol-buffers/
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are
// met:
//
//     * Redistributions of source code must retain the above copyright
// notice, this list of conditions and the following disclaimer.
//     * Redistributions in binary form must reproduce the above
// copyright notice, this list of conditions and the following disclaimer
// in the documentation and/or other materials provided with the
// distribution.
//     * Neither the name of Google Inc. nor the names of its
// contributors may be used to endorse or promote products derived from
// this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

enum Proto3PreserveUnknownEnumUnittest_MyEnum: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case foo // = 0
  case bar // = 1
  case baz // = 2
  case UNRECOGNIZED(Int)

  init() {
    self = .foo
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .foo
    case 1: self = .bar
    case 2: self = .baz
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .foo: return 0
    case .bar: return 1
    case .baz: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Proto3PreserveUnknownEnumUnittest_MyEnum: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [Proto3PreserveUnknownEnumUnittest_MyEnum] = [
    .foo,
    .bar,
    .baz,
  ]
}

#endif  // swift(>=4.2)

enum Proto3PreserveUnknownEnumUnittest_MyEnumPlusExtra: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case eFoo // = 0
  case eBar // = 1
  case eBaz // = 2
  case eExtra // = 3
  case UNRECOGNIZED(Int)

  init() {
    self = .eFoo
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .eFoo
    case 1: self = .eBar
    case 2: self = .eBaz
    case 3: self = .eExtra
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .eFoo: return 0
    case .eBar: return 1
    case .eBaz: return 2
    case .eExtra: return 3
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Proto3PreserveUnknownEnumUnittest_MyEnumPlusExtra: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [Proto3PreserveUnknownEnumUnittest_MyEnumPlusExtra] = [
    .eFoo,
    .eBar,
    .eBaz,
    .eExtra,
  ]
}

#endif  // swift(>=4.2)

struct Proto3PreserveUnknownEnumUnittest_MyMessage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var e: Proto3PreserveUnknownEnumUnittest_MyEnum = .foo

  var repeatedE: [Proto3PreserveUnknownEnumUnittest_MyEnum] = []

  var repeatedPackedE: [Proto3PreserveUnknownEnumUnittest_MyEnum] = []

  /// not packed
  var repeatedPackedUnexpectedE: [Proto3PreserveUnknownEnumUnittest_MyEnumPlusExtra] = []

  var o: Proto3PreserveUnknownEnumUnittest_MyMessage.OneOf_O? = nil

  var oneofE1: Proto3PreserveUnknownEnumUnittest_MyEnum {
    get {
      if case .oneofE1(let v)? = o {return v}
      return .foo
    }
    set {o = .oneofE1(newValue)}
  }

  var oneofE2: Proto3PreserveUnknownEnumUnittest_MyEnum {
    get {
      if case .oneofE2(let v)? = o {return v}
      return .foo
    }
    set {o = .oneofE2(newValue)}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum OneOf_O: Equatable {
    case oneofE1(Proto3PreserveUnknownEnumUnittest_MyEnum)
    case oneofE2(Proto3PreserveUnknownEnumUnittest_MyEnum)

  #if !swift(>=4.1)
    static func ==(lhs: Proto3PreserveUnknownEnumUnittest_MyMessage.OneOf_O, rhs: Proto3PreserveUnknownEnumUnittest_MyMessage.OneOf_O) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.oneofE1, .oneofE1): return {
        guard case .oneofE1(let l) = lhs, case .oneofE1(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.oneofE2, .oneofE2): return {
        guard case .oneofE2(let l) = lhs, case .oneofE2(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  init() {}
}

struct Proto3PreserveUnknownEnumUnittest_MyMessagePlusExtra {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var e: Proto3PreserveUnknownEnumUnittest_MyEnumPlusExtra = .eFoo

  var repeatedE: [Proto3PreserveUnknownEnumUnittest_MyEnumPlusExtra] = []

  var repeatedPackedE: [Proto3PreserveUnknownEnumUnittest_MyEnumPlusExtra] = []

  var repeatedPackedUnexpectedE: [Proto3PreserveUnknownEnumUnittest_MyEnumPlusExtra] = []

  var o: Proto3PreserveUnknownEnumUnittest_MyMessagePlusExtra.OneOf_O? = nil

  var oneofE1: Proto3PreserveUnknownEnumUnittest_MyEnumPlusExtra {
    get {
      if case .oneofE1(let v)? = o {return v}
      return .eFoo
    }
    set {o = .oneofE1(newValue)}
  }

  var oneofE2: Proto3PreserveUnknownEnumUnittest_MyEnumPlusExtra {
    get {
      if case .oneofE2(let v)? = o {return v}
      return .eFoo
    }
    set {o = .oneofE2(newValue)}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum OneOf_O: Equatable {
    case oneofE1(Proto3PreserveUnknownEnumUnittest_MyEnumPlusExtra)
    case oneofE2(Proto3PreserveUnknownEnumUnittest_MyEnumPlusExtra)

  #if !swift(>=4.1)
    static func ==(lhs: Proto3PreserveUnknownEnumUnittest_MyMessagePlusExtra.OneOf_O, rhs: Proto3PreserveUnknownEnumUnittest_MyMessagePlusExtra.OneOf_O) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.oneofE1, .oneofE1): return {
        guard case .oneofE1(let l) = lhs, case .oneofE1(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.oneofE2, .oneofE2): return {
        guard case .oneofE2(let l) = lhs, case .oneofE2(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "proto3_preserve_unknown_enum_unittest"

extension Proto3PreserveUnknownEnumUnittest_MyEnum: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "FOO"),
    1: .same(proto: "BAR"),
    2: .same(proto: "BAZ"),
  ]
}

extension Proto3PreserveUnknownEnumUnittest_MyEnumPlusExtra: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "E_FOO"),
    1: .same(proto: "E_BAR"),
    2: .same(proto: "E_BAZ"),
    3: .same(proto: "E_EXTRA"),
  ]
}

extension Proto3PreserveUnknownEnumUnittest_MyMessage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".MyMessage"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "e"),
    2: .standard(proto: "repeated_e"),
    3: .standard(proto: "repeated_packed_e"),
    4: .standard(proto: "repeated_packed_unexpected_e"),
    5: .standard(proto: "oneof_e_1"),
    6: .standard(proto: "oneof_e_2"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.e) }()
      case 2: try { try decoder.decodeRepeatedEnumField(value: &self.repeatedE) }()
      case 3: try { try decoder.decodeRepeatedEnumField(value: &self.repeatedPackedE) }()
      case 4: try { try decoder.decodeRepeatedEnumField(value: &self.repeatedPackedUnexpectedE) }()
      case 5: try {
        var v: Proto3PreserveUnknownEnumUnittest_MyEnum?
        try decoder.decodeSingularEnumField(value: &v)
        if let v = v {
          if self.o != nil {try decoder.handleConflictingOneOf()}
          self.o = .oneofE1(v)
        }
      }()
      case 6: try {
        var v: Proto3PreserveUnknownEnumUnittest_MyEnum?
        try decoder.decodeSingularEnumField(value: &v)
        if let v = v {
          if self.o != nil {try decoder.handleConflictingOneOf()}
          self.o = .oneofE2(v)
        }
      }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.e != .foo {
      try visitor.visitSingularEnumField(value: self.e, fieldNumber: 1)
    }
    if !self.repeatedE.isEmpty {
      try visitor.visitPackedEnumField(value: self.repeatedE, fieldNumber: 2)
    }
    if !self.repeatedPackedE.isEmpty {
      try visitor.visitPackedEnumField(value: self.repeatedPackedE, fieldNumber: 3)
    }
    if !self.repeatedPackedUnexpectedE.isEmpty {
      try visitor.visitPackedEnumField(value: self.repeatedPackedUnexpectedE, fieldNumber: 4)
    }
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.o {
    case .oneofE1?: try {
      guard case .oneofE1(let v)? = self.o else { preconditionFailure() }
      try visitor.visitSingularEnumField(value: v, fieldNumber: 5)
    }()
    case .oneofE2?: try {
      guard case .oneofE2(let v)? = self.o else { preconditionFailure() }
      try visitor.visitSingularEnumField(value: v, fieldNumber: 6)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Proto3PreserveUnknownEnumUnittest_MyMessage, rhs: Proto3PreserveUnknownEnumUnittest_MyMessage) -> Bool {
    if lhs.e != rhs.e {return false}
    if lhs.repeatedE != rhs.repeatedE {return false}
    if lhs.repeatedPackedE != rhs.repeatedPackedE {return false}
    if lhs.repeatedPackedUnexpectedE != rhs.repeatedPackedUnexpectedE {return false}
    if lhs.o != rhs.o {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Proto3PreserveUnknownEnumUnittest_MyMessagePlusExtra: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".MyMessagePlusExtra"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "e"),
    2: .standard(proto: "repeated_e"),
    3: .standard(proto: "repeated_packed_e"),
    4: .standard(proto: "repeated_packed_unexpected_e"),
    5: .standard(proto: "oneof_e_1"),
    6: .standard(proto: "oneof_e_2"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.e) }()
      case 2: try { try decoder.decodeRepeatedEnumField(value: &self.repeatedE) }()
      case 3: try { try decoder.decodeRepeatedEnumField(value: &self.repeatedPackedE) }()
      case 4: try { try decoder.decodeRepeatedEnumField(value: &self.repeatedPackedUnexpectedE) }()
      case 5: try {
        var v: Proto3PreserveUnknownEnumUnittest_MyEnumPlusExtra?
        try decoder.decodeSingularEnumField(value: &v)
        if let v = v {
          if self.o != nil {try decoder.handleConflictingOneOf()}
          self.o = .oneofE1(v)
        }
      }()
      case 6: try {
        var v: Proto3PreserveUnknownEnumUnittest_MyEnumPlusExtra?
        try decoder.decodeSingularEnumField(value: &v)
        if let v = v {
          if self.o != nil {try decoder.handleConflictingOneOf()}
          self.o = .oneofE2(v)
        }
      }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.e != .eFoo {
      try visitor.visitSingularEnumField(value: self.e, fieldNumber: 1)
    }
    if !self.repeatedE.isEmpty {
      try visitor.visitPackedEnumField(value: self.repeatedE, fieldNumber: 2)
    }
    if !self.repeatedPackedE.isEmpty {
      try visitor.visitPackedEnumField(value: self.repeatedPackedE, fieldNumber: 3)
    }
    if !self.repeatedPackedUnexpectedE.isEmpty {
      try visitor.visitPackedEnumField(value: self.repeatedPackedUnexpectedE, fieldNumber: 4)
    }
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.o {
    case .oneofE1?: try {
      guard case .oneofE1(let v)? = self.o else { preconditionFailure() }
      try visitor.visitSingularEnumField(value: v, fieldNumber: 5)
    }()
    case .oneofE2?: try {
      guard case .oneofE2(let v)? = self.o else { preconditionFailure() }
      try visitor.visitSingularEnumField(value: v, fieldNumber: 6)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Proto3PreserveUnknownEnumUnittest_MyMessagePlusExtra, rhs: Proto3PreserveUnknownEnumUnittest_MyMessagePlusExtra) -> Bool {
    if lhs.e != rhs.e {return false}
    if lhs.repeatedE != rhs.repeatedE {return false}
    if lhs.repeatedPackedE != rhs.repeatedPackedE {return false}
    if lhs.repeatedPackedUnexpectedE != rhs.repeatedPackedUnexpectedE {return false}
    if lhs.o != rhs.o {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
