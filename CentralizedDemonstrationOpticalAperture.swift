

import UIKit

final class CentralizedDemonstrationOpticalAperture: UIViewController {

    func processOfComponentArrangement() {
        [centralizedDemonstrationBackdropEnvironment, gameIdentityMarkEmblem, triggerGamingProcedureButton, confidentialManagementCodeButton, identityGamingAssetRepository].forEach { view.addSubview($0) }
        gameIdentityMarkEmblem.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 10)
    }

    lazy var gameIdentityMarkEmblem: UIImageView = .innovationBreakthroughImageView(with: .gameIdentityMarkEmblem)

    func ruleConstraintConformanceImage() {

        gameIdentityMarkEmblem.snp.makeConstraints { make in
            make.centerY.equalToSuperview().multipliedBy(1.95)
            make.size.equalTo(750)
            make.centerX.equalToSuperview().multipliedBy(1.5)
        }
    }

    lazy var triggerGamingProcedureButton: UIButton = .innovationBreakthroughButton(
        withImageNamed: .triggerGamingProcedureButton,
        target: self,
        selector: #selector(triggerGamingProcedureButtonDidClick))



    lazy var confidentialManagementCodeButton: UIButton = .innovationBreakthroughButton(
        withImageNamed: .confidentialManagementCodeButton,
        target: self,
        selector: #selector(confidentialManagementCodeButtonDidClick))

    func ruleConstraintConformanceButtons() {

        triggerGamingProcedureButton.snp.makeConstraints { make in
            make.width.equalTo(205)
            make.height.equalTo(90)
            make.bottom.equalTo(gameIdentityMarkEmblem.snp.top).offset(-24)
            make.centerX.equalToSuperview()
        }

        confidentialManagementCodeButton.snp.makeConstraints { make in
            make.width.equalTo(160)
            make.height.equalTo(75)
            make.bottom.equalTo(triggerGamingProcedureButton.snp.top).offset(-12)
            make.centerX.equalToSuperview()
        }
    }

    lazy var centralizedDemonstrationBackdropEnvironment: UIImageView = .innovationBreakthroughImageView(with: .centralizedDemonstrationBackdropEnvironment)

    lazy var identityGamingAssetRepository: UIImageView = .innovationBreakthroughImageView(with: .identityGamingAssetRepository)

    func ruleConstraintConformanceBackdrop() {
        centralizedDemonstrationBackdropEnvironment.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }

        identityGamingAssetRepository.snp.makeConstraints { make in
            make.width.equalTo(UIScreen.accurateWidthParameter)
            make.height.equalTo(115)
            make.centerX.equalToSuperview()
            make.bottom.equalTo(confidentialManagementCodeButton.snp.top).offset(-12)
        }
    }
}
