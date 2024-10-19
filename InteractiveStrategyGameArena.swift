import SpriteKit
import GameplayKit

class InteractiveStrategyGameArena: SKScene, SKPhysicsContactDelegate {

    var declineSpeedMomentum: CGFloat = 8.0
    var isSpawnTouched = false

    weak var primaryManagementSupervisor: SandboxGameExperienceOpticalAperture?

    var actionGrandeurGameCommandCenter = SKSpriteNode()

    func examineCrashInteraction(bloomObject: BloomObjectNode, basketShuffle: BasketShuffleNode) {
        guard let bloomType = BloomObjectElementContentType(rawValue: bloomObject.name ?? ""),
              let basketType = BasketShuffleElementContentType(rawValue: basketShuffle.name ?? "") else {
            finalPhaseOfBBSGame()
            return
        }

        let isMatchingPair = (bloomType == .bloomObjectBlue && basketType == .basketBlueShuffle) ||
        (bloomType == .bloomObjectGreen && basketType == .basketGreenShuffle) ||
        (bloomType == .bloomObjectGold && basketType == .basketGoldShuffle)

        if isMatchingPair {
            bloomObject.removeFromParent()
            implementEnhancementsInApplication(with: HarmonicMelodyFrequenciesItems.PowerUpNotificationSignal.rawValue)
            reestablishInitialSuperiorityOverallAggregateScorePoints()
            amendPlummetingMotion()
        } else {
            finalPhaseOfBBSGame()
        }
    }
    var bloomObject = SKSpriteNode()
    var bloomObjectArray = [SKSpriteNode]()

    func swapBasketsPositions(at index1: Int, and index2: Int) {
        guard index1 < basketShuffleArray.count, index2 < basketShuffleArray.count else { return }

        let position1 = basketShuffleArray[index1].position
        let position2 = basketShuffleArray[index2].position

        let moveAction1 = SKAction.move(to: position2, duration: 0.5)
        let moveAction2 = SKAction.move(to: position1, duration: 0.5)

        basketShuffleArray[index1].run(moveAction1)
        basketShuffleArray[index2].run(moveAction2)

        basketShuffleArray.swapAt(index1, index2)


        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.isSpawnTouched = false
        }

    }

    var basketShuffleArray = [SKSpriteNode]()

    var randomPositionXForRound = [CGFloat]()

    func reestablishInitialSuperiorityOverallAggregateScorePoints() {
        primaryManagementSupervisor?.overallAggregateScorePoints += 1
        primaryManagementSupervisor?.reestablishInitialSuperiorityoverallAggregateScorePoints()
        primaryManagementSupervisor?.craftTextualTopAggregateAchievement()
    }
    var temporalMeasurementTool: Timer?

    func embeddingBloomObjectToGameArea() {
        let element = Int.random(in: 0..<BloomObjectElementContentType.allCases.count)
        let position = Int.random(in: 0..<randomPositionXForRound.count)
        let bloomType = BloomObjectElementContentType.allCases[element]
        bloomObject = BloomObjectNode(type: bloomType)
        bloomObjectArray.append(bloomObject)

        let xPosition = randomPositionXForRound[position]
        let yPosition = frame.maxY
        bloomObject.position = CGPoint(x: xPosition, y: yPosition)
        addChild(bloomObject)
    }

    var creationTimingCycle: CGFloat = 2.5

    func disableTimerFunctionality() {
        temporalMeasurementTool?.invalidate()
        temporalMeasurementTool = nil
    }

    var timerHaltConfirmation = false

    func embeddingGameBackdropToGameArea() {
        let actionGrandeurGameCommandCenter = SKSpriteNode(texture: SKTexture(image: .sandboxGameBackdropEnvironment))
        let scale = max(frame.width / actionGrandeurGameCommandCenter.frame.width, frame.height / actionGrandeurGameCommandCenter.frame.height)
        actionGrandeurGameCommandCenter.setScale(scale)
        actionGrandeurGameCommandCenter.position = CGPoint(x: frame.midX, y: frame.midY)
        actionGrandeurGameCommandCenter.zPosition = -2
        self.actionGrandeurGameCommandCenter = actionGrandeurGameCommandCenter
        addChild(actionGrandeurGameCommandCenter)
    }
}

