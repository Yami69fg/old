
import UIKit
import SpriteKit

typealias TypographyInterfaceConfiguration = UIFont

extension TypographyInterfaceConfiguration {
    static let questrian = "Questrian"
    static let defaultFont = UIFont.systemFont(ofSize: UIFont.systemFontSize)

    static func questrianStyle(size: CGFloat) -> UIFont {
        return UIFont(name: questrian, size: size) ?? defaultFont
    }
}

final class SandboxGameExperienceOpticalAperture: UIViewController {

    var interactiveStrategyBBSGameArena: InteractiveStrategyGameArena?

    func processOfComponentArrangement() {
        view.exchangePresentSubviewsPreferred(for: suspendCurrentGamingButton, overallAggregateScorePointsLabel)
    }

    lazy var overallAggregateScorePointsLabel: UILabel = .innovationBreakthroughLabel(
        with: UIFont.questrianStyle(size: 66),
        textColor: .overallAggregateScorePoints,
        text: "")

    func ruleConstraintConformanceLabel() {
        overallAggregateScorePointsLabel.snp.makeConstraints { make in
            make.width.equalTo(200)
            make.height.equalTo(60)
            make.top.equalTo(view.safeAreaLayoutGuide).offset(32)
            make.centerX.equalToSuperview()
        }
    }

    private lazy var suspendCurrentGamingButton: UIButton = .innovationBreakthroughButton(withImageNamed: .suspendCurrentGamingButton, target: self, selector: #selector(suspendCurrentGamingButtonDidClick))

    func ruleConstraintConformanceButton() {
        suspendCurrentGamingButton.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(24)
            make.size.equalTo(45)
            make.top.equalTo(view.safeAreaLayoutGuide).offset(16)
        }
    }

    var overallAggregateScorePoints = 0
}
