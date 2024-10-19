
import UIKit

typealias TieredVisualArrangementBoard = UIStackView

extension TieredVisualArrangementBoard {
    convenience init(arrangedSubviews: [UIView],
                     axis: NSLayoutConstraint.Axis,
                     spacing: CGFloat,
                     distribution: UIStackView.Distribution,
                     aligment: UIStackView.Alignment) {
        self.init(arrangedSubviews: arrangedSubviews)
        self.distribution = distribution
        self.alignment = aligment
        self.axis = axis
        self.spacing = spacing
    }
}


final class RemarkableIndividualisticOpticalAperture: UIViewController {

    lazy var beginBasketGamingRedoButton: UIButton = .innovationBreakthroughButton(
        withImageNamed: .beginBasketGamingRedoButton,
        target: self,
        selector: #selector(beginBasketGamingRedoButtonDidClick))

    lazy var mainUserInterfaceButtonGraphics: UIButton =
        .innovationBreakthroughButton(
            withImageNamed: .centralizedDemonstrationButton,
            target: self,
            selector: #selector(centralizedDemonstrationButtonDidClick))

    func ruleConstraintConformanceButton() {

        mainUserInterfaceButtonGraphics.snp.makeConstraints { make in
            make.height.equalTo(50)
            make.width.equalTo(110)
            make.top.equalTo(collaborationWorkspaceBoardFrameBottom.snp.bottom).offset(12)
            make.centerX.equalToSuperview()
        }

        beginBasketGamingRedoButton.snp.makeConstraints { make in
            make.top.equalTo(mainUserInterfaceButtonGraphics.snp.bottom).offset(8)
            make.centerX.equalToSuperview()
            make.size.equalTo(mainUserInterfaceButtonGraphics.snp.size)

        }
    }

    weak var delegate: CustomizableSettingsOpticalApertureDelegate?

    weak var gameDelegate: GambitBonanzGameDelegate?

    lazy var teamCoordinationWorkDesk: UIImageView = .innovationBreakthroughImageView(with: .teamCoordinationWorkDesk)

    func ruleConstraintConformanceDesk() {
        teamCoordinationWorkDesk.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }

    lazy var performanceScoreMarkLabel: UILabel =
        .innovationBreakthroughLabel(with: UIFont.questrianStyle(size: 20), textColor: UIColor.white, text: "YOUR SCORE")

    lazy var essenceOfMeritPerformanceMarkLabel: UILabel =
        .innovationBreakthroughLabel(with: UIFont.questrianStyle(size: 72), textColor: UIColor.white, text: "")

    lazy var stackViewPerformanceScore: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [performanceScoreMarkLabel, essenceOfMeritPerformanceMarkLabel],
                                    axis: .vertical,
                                    spacing: 0,
                                    distribution: .equalSpacing,
                                    aligment: .center)
        return stackView
    }()

    lazy var stackViewBestPerformanceScore: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [topAggregatePoints, essenceOfMeritBestPerformanceMarkLabel],
                                    axis: .vertical,
                                    spacing: 0,
                                    distribution: .equalSpacing,
                                    aligment: .center)
        return stackView
    }()

    lazy var topAggregatePoints: UILabel = .innovationBreakthroughLabel(with: UIFont.questrianStyle(size: 20), textColor: .white, text: "BEST SCORE")

    lazy var essenceOfMeritBestPerformanceMarkLabel: UILabel = .innovationBreakthroughLabel(with: UIFont.questrianStyle(size: 72), textColor: .white, text: "")

    func ruleConstraintConformanceScore() {

        stackViewPerformanceScore.snp.makeConstraints { make in
            make.top.equalTo(collaborationWorkspaceBoardFrameTop.snp.top).offset(24)
            make.centerX.equalTo(collaborationWorkspaceBoardFrameTop.snp.centerX)
        }

        stackViewBestPerformanceScore.snp.makeConstraints { make in
            make.bottom.equalTo(collaborationWorkspaceBoardFrameBottom.snp.bottom).offset(-20)
            make.centerX.equalTo(collaborationWorkspaceBoardFrameBottom.snp.centerX)

        }
    }

    lazy var successAttainedMoment: UIImageView = .innovationBreakthroughImageView(with: completionStage ? .triumphDeclaredVisualization : .lackOfAchievementVisualization)

    var completionStage = true

    lazy var collaborationWorkspaceBoardFrameBottom: UIImageView = .innovationBreakthroughImageView(with: .collaborationWorkspaceBoardFrame)

    lazy var collectiveAssemblyDisplayFrame: UIImageView = .innovationBreakthroughImageView(with: .collectiveAssemblyDisplayFrame)

    lazy var collaborationWorkspaceBoardFrameTop: UIImageView = .innovationBreakthroughImageView(with: .collaborationWorkspaceBoardFrame)

    func ruleConstraintConformanceImage() {
        collectiveAssemblyDisplayFrame.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }

        successAttainedMoment.snp.makeConstraints { make in
            make.height.equalTo(240)
            make.width.equalTo(330)
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().multipliedBy(0.9)
        }

        collaborationWorkspaceBoardFrameBottom.snp.makeConstraints { make in
            make.width.equalTo(190)
            make.height.equalTo(200)
            make.top.equalTo(successAttainedMoment.snp.bottom).offset(-68)
            make.centerX.equalToSuperview()
        }

        collaborationWorkspaceBoardFrameTop.snp.makeConstraints { make in
            make.width.equalTo(190)
            make.height.equalTo(200)
            make.bottom.equalTo(successAttainedMoment.snp.top).offset(68)
            make.centerX.equalToSuperview()

        }
    }

    var launchSuccessCollection: Int = 0
    var timerOverallAggregateScorePoints: Timer?
    var overallAggregateScorePoints = 0
}
