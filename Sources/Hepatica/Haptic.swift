//
//  Haptic.swift
//  Hepatica
//
//  Created by foyoodo on 2024/8/24.
//

import UIKit

public enum Haptic {

    case impact(style: UIImpactFeedbackGenerator.FeedbackStyle)
    case selection
    case notification(type: UINotificationFeedbackGenerator.FeedbackType)

    public func generate() {
        switch self {
        case .impact(let style):
            Haptic.impactGenerator(style: style).impact()
        case .selection:
            Haptic.selectionGenerator().impact()
        case .notification(let type):
            Haptic.notificationGenerator().impact(type: type)
        }
    }

    public static func impactGenerator(style: UIImpactFeedbackGenerator.FeedbackStyle) -> Generator<UIImpactFeedbackGenerator> {
        .init(style: style)
    }

    public static func selectionGenerator() -> Generator<UISelectionFeedbackGenerator> {
        .init()
    }

    public static func notificationGenerator() -> Generator<UINotificationFeedbackGenerator> {
        .init()
    }

    public static func impactGenerator(style: UIImpactFeedbackGenerator.FeedbackStyle, view: UIView) -> ViewGenerator<UIImpactFeedbackGenerator> {
        .init(style: style, view: view)
    }

    public static func selectionGenerator(view: UIView) -> ViewGenerator<UISelectionFeedbackGenerator> {
        .init(view: view)
    }

    public static func notificationGenerator(view: UIView) -> ViewGenerator<UINotificationFeedbackGenerator> {
        .init(view: view)
    }
}
