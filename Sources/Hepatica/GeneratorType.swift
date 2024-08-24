//
//  GeneratorType.swift
//  Hepatica
//
//  Created by foyoodo on 2024/8/24.
//

import UIKit

public protocol GeneratorType {

    associatedtype Generator: UIFeedbackGenerator

    var generator: Generator { get }

    func prepare() -> Self
}

extension GeneratorType {

    @discardableResult
    public func prepare() -> Self {
        generator.prepare()
        return self
    }

    public func impact() where Generator: UIImpactFeedbackGenerator {
        generator.impactOccurred()
    }

    public func impact(intensity: CGFloat) where Generator: UIImpactFeedbackGenerator {
        generator.impactOccurred(intensity: intensity)
    }

    public func impact() where Generator: UISelectionFeedbackGenerator {
        generator.selectionChanged()
    }

    public func impact(type: UINotificationFeedbackGenerator.FeedbackType) where Generator: UINotificationFeedbackGenerator {
        generator.notificationOccurred(type)
    }
}
