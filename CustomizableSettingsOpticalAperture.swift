

import UIKit

final class CustomizableSettingsOpticalAperture: UIViewController {

    weak var delegate: CustomizableSettingsOpticalApertureDelegate?

    func processOfComponentArrangement() {
        view.exchangePresentSubviewsPreferred(for: teamCoordinationWorkDesk, unifiedPanelPresentationFrame, harmonicMelodyFrequenciesButton, tactileResponseAdjustmentMechanismButton, centralizedDemonstrationButton, endInvolvementProcedureButton)
    }

    lazy var tactileResponseAdjustmentMechanismButton: UIButton = .innovationBreakthroughToggleButton(
        selected: PowerPlantOperationsSupervisor.shared.tactileResponseAdjustmentMechanism,
        target: self,
        action: #selector(tactileResponseAdjustmentMechanismButtonDidClick))

    lazy var harmonicMelodyFrequenciesButton: UIButton = .innovationBreakthroughToggleButton(
        selected: PowerPlantOperationsSupervisor.shared.harmonicMelodyFrequencies,
        target: self,
        action: #selector(harmonicMelodyFrequenciesButtonDidClick))

    lazy var endInvolvementProcedureButton: UIButton = .innovationBreakthroughButton(
        withImageNamed: .endInvolvementProcedureButton,
        target: self,
        selector: #selector(endInvolvementProcedureButtonDidClick))

    lazy var centralizedDemonstrationButton: UIButton = .innovationBreakthroughButton(
        withImageNamed: .centralizedDemonstrationButton,
        target: self,
        selector: #selector(centralizedDemonstrationButtonDidClick))

    func ruleConstraintConformanceButton() {
        endInvolvementProcedureButton.snp.makeConstraints { make in
            make.height.equalTo(50)
            make.width.equalTo(110)
            make.top.equalTo(unifiedPanelPresentationFrame.snp.bottom).offset(8)
            make.centerX.equalToSuperview()
        }

        centralizedDemonstrationButton.snp.makeConstraints { make in
            make.height.equalTo(50)
            make.width.equalTo(110)
            make.top.equalTo(endInvolvementProcedureButton.snp.bottom).offset(12)
            make.centerX.equalToSuperview()
        }

        harmonicMelodyFrequenciesButton.snp.makeConstraints { make in
            make.width.equalTo(160)
            make.height.equalTo(105)
            make.top.equalTo(unifiedPanelPresentationFrame.snp.top).offset(64)
            make.centerX.equalToSuperview()
        }

        tactileResponseAdjustmentMechanismButton.snp.makeConstraints { make in
            make.size.equalTo(harmonicMelodyFrequenciesButton.snp.size)
            make.bottom.equalTo(unifiedPanelPresentationFrame.snp.bottom).offset(-64)
            make.centerX.equalToSuperview()
        }
    }

    lazy var teamCoordinationWorkDesk: UIImageView = .innovationBreakthroughImageView(with: .teamCoordinationWorkDesk)

    func ruleConstraintConformanceWorkDesk() {
        teamCoordinationWorkDesk.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }

    lazy var unifiedPanelPresentationFrame: UIImageView = .innovationBreakthroughImageView(with: .unifiedPanelPresentationFrame)

    func ruleConstraintConformanceImage() {
        unifiedPanelPresentationFrame.snp.makeConstraints { make in
            make.width.equalTo(UIScreen.accurateWidthParameter)
            make.height.equalTo(440)
            make.centerY.equalToSuperview().multipliedBy(0.95)
            make.centerX.equalToSuperview()
        }
    }
}
