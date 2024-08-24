//
//  Generator.swift
//  Hepatica
//
//  Created by foyoodo on 2024/8/24.
//

import UIKit

public struct Generator<T: UIFeedbackGenerator>: GeneratorType {

    public typealias Generator = T

    public let generator: Generator

    init() {
        generator = .init()
    }

    init(style: UIImpactFeedbackGenerator.FeedbackStyle) where Generator: UIImpactFeedbackGenerator {
        generator = .init(style: style)
    }
}
