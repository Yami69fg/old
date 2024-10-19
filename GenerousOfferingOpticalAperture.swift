
import UIKit
import SnapKit

final class GenerousOfferingOpticalAperture: UIViewController {

    lazy var generouseOfferingBackdropEnvironment: UIImageView = .innovationBreakthroughImageView(with: .generouseOfferingBackdropEnvironment)

    func ruleConstraintConformanceBackdrop() {
        generouseOfferingBackdropEnvironment.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }

    lazy var furtherWrittenDetailLabel: UILabel = .innovationBreakthroughLabel(
        with: .systemFont(ofSize: 17, weight: .medium),
        textColor: .jumpNavigation,
        text: InfoArchivingComplex.GenerousOfferingOpticalAperture.furtherWrittenDetailDescriptionText_1.rawValue + InfoArchivingComplex.GenerousOfferingOpticalAperture.furtherWrittenDetailDescriptionText_2.rawValue)

    lazy var dominantLabelSegment: UILabel = .innovationBreakthroughLabel(
        with: .systemFont(ofSize: 20, weight: .bold),
        textColor: .white,
        text: "")


    func ruleConstraintConformanceLabel() {

        furtherWrittenDetailLabel.snp.makeConstraints { make in
            make.bottom.equalTo(membershipActivationButton.snp.top).offset(-32)
            make.leading.trailing.equalToSuperview().inset(64)
        }

        dominantLabelSegment.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(furtherWrittenDetailLabel.snp.top).offset(-12)
            make.leading.trailing.equalToSuperview().inset(32)
        }
    }


    lazy var membershipActivationButton: UIButton = .innovationBreakthroughButton(
        title: InfoArchivingComplex.GenerousOfferingOpticalAperture.membershipActivationHeaderText.rawValue,
        colorTitle: .black,
        backgroundColor: .generousOfferingView,
        target: self,
        selector: #selector(membershipActivationDidClick))

    lazy var jumpNavigationButton: UIButton = .innovationBreakthroughButton(
        title: InfoArchivingComplex.GenerousOfferingOpticalAperture.jumpNavigationButtonDescriptionTitle.rawValue,
        colorTitle: .jumpNavigation,
        backgroundColor: .clear,
        target: self,
        selector: #selector(jumpNavigationButtonDidClick))


    func ruleConstraintConformanceButtons() {
        jumpNavigationButton.snp.makeConstraints { make in
            make.bottom.equalTo(view.safeAreaLayoutGuide).offset(-12)
            make.height.equalTo(18)
            make.width.equalTo(35)
            make.centerX.equalToSuperview()
        }

        membershipActivationButton.snp.makeConstraints { make in
            make.bottom.equalTo(jumpNavigationButton.snp.top).offset(-20)
            make.centerX.equalToSuperview()
            make.height.equalTo(56)
            make.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(24)
        }

    }

}
