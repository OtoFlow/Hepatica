//
//  ViewGenerator.swift
//  Hepatica
//
//  Created by foyoodo on 2024/8/24.
//

import UIKit

public struct ViewGenerator<T: UIFeedbackGenerator>: GeneratorType {

    public typealias Generator = T

    public let generator: Generator

    init(view: UIView) {
        if #available(iOS 17.5, *) {
            generator = .init(view: view)
        } else {
            generator = .init()
        }
    }

    init(style: UIImpactFeedbackGenerator.FeedbackStyle, view: UIView) where Generator: UIImpactFeedbackGenerator {
        if #available(iOS 17.5, *) {
            generator = .init(style: style, view: view)
        } else {
            generator = .init(style: style)
        }
    }
}

extension ViewGenerator {

    public func impact(at location: CGPoint) where Generator: UIImpactFeedbackGenerator {
        if #available(iOS 17.5, *) {
            generator.impactOccurred(at: location)
        } else {
            generator.impactOccurred()
        }
    }

    public func impact(intensity: CGFloat, at location: CGPoint) where Generator: UIImpactFeedbackGenerator {
        if #available(iOS 17.5, *) {
            generator.impactOccurred(intensity: intensity, at: location)
        } else {
            generator.impactOccurred(intensity: intensity)
        }
    }

    public func impact(at location: CGPoint) where Generator: UISelectionFeedbackGenerator {
        if #available(iOS 17.5, *) {
            generator.selectionChanged(at: location)
        } else {
            generator.selectionChanged()
        }
    }

    public func impact(type: UINotificationFeedbackGenerator.FeedbackType, at location: CGPoint) where Generator: UINotificationFeedbackGenerator {
        if #available(iOS 17.5, *) {
            generator.notificationOccurred(type, at: location)
        } else {
            generator.notificationOccurred(type)
        }
    }
}
