

import SpriteKit

extension InteractiveStrategyGameArena {
    
    override func didMove(to view: SKView) {
        super.didMove(to: view)
        physicsWorld.contactDelegate = self
        embeddingGameBackdropToGameArea()
        embeddingBasketElementToGameArea()
        initiateTimingMechanism()
    }
    
    public func didBegin(_ contact: SKPhysicsContact) {
        let nodeA = contact.bodyA.node
        let nodeB = contact.bodyB.node
        
        if let bloomObject = nodeA as? BloomObjectNode, let basketShuffle = nodeB as? BasketShuffleNode {
            examineCrashInteraction(bloomObject: bloomObject, basketShuffle: basketShuffle)
        } else if let bloomObject = nodeB as? BloomObjectNode, let basketShuffle = nodeA as? BasketShuffleNode {
            examineCrashInteraction(bloomObject: bloomObject, basketShuffle: basketShuffle)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard !isSpawnTouched else { return }
        guard let touch = touches.first else { return }
        let location = touch.location(in: self)
        
        isSpawnTouched = true

        if location.x < self.size.width / 2 {
            swapBasketsPositions(at: 0, and: 1)
        } else {
            swapBasketsPositions(at: 1, and: 2)
        }
    }
    
    func initiateTimingMechanism() {
        temporalMeasurementTool = Timer.scheduledTimer(timeInterval: self.creationTimingCycle, target: self, selector: #selector(spawnBloomObject), userInfo: nil, repeats: true)
    }
    
    @objc func spawnBloomObject() {
        guard !timerHaltConfirmation else { return }
        embeddingBloomObjectToGameArea()
        let moveAction = SKAction.moveBy(x: 0, y: -size.height, duration: declineSpeedMomentum)
        bloomObject.run(moveAction)
    }
    
    func amendPlummetingMotion() {
        guard let points = primaryManagementSupervisor?.overallAggregateScorePoints else { return }
        switch points {
        case 0...24: declineSpeedMomentum = 8
        case 25...49: declineSpeedMomentum = 6
        case 50...99: declineSpeedMomentum = 4
        default: declineSpeedMomentum = 2
        }
    }
    
    func implementEnhancementsInApplication(with audio: String) {
        HarmonicMelodyFrequencies.activateSonorouseLaunchProcedure(audio)
        TriggerVibrationalOscillation.shared.updateTriggerVibrationSystem()
    }
    
    func rebootGameMatchEssence() {
        view?.isPaused = false
        bloomObjectArray.forEach { $0.removeFromParent() }
        bloomObjectArray.removeAll()
        initiateTimingMechanism()
    }
    
    func finalPhaseOfBBSGame() {
        disableTimerFunctionality()
        view?.isPaused = true
        primaryManagementSupervisor?.exhibitToRiskWarningScreenController()
    }
    
    private func embeddingBasketElementToGameArea() {
        let basketTypes: [BasketShuffleElementContentType] = [.basketBlueShuffle, .basketGreenShuffle, .basketGoldShuffle]
        let basketWidth: CGFloat = 105
        let totalWidth: CGFloat = basketWidth * CGFloat(basketTypes.count)
        let spacing = (UIScreen.accurateWidthParameter - totalWidth) / CGFloat(basketTypes.count + 1)
        
        for i in 0..<basketTypes.count {
            let basket = BasketShuffleNode(type: basketTypes[i])
            let xPosition = spacing + CGFloat(i) * (basketWidth + spacing) + basketWidth / 2
            basket.position = CGPoint(x: xPosition, y: basket.size.height / 2)
            randomPositionXForRound.append(xPosition)
            basketShuffleArray.append(basket)
            self.addChild(basket)
        }
    }
}
