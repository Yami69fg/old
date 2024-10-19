

import SpriteKit

enum BasketShuffleElementContentType: String, CaseIterable {
    case basketBlueShuffle = "basketBlueShuffle"
    case basketGreenShuffle = "basketGreenShuffle"
    case basketGoldShuffle = "basketGoldShuffle"
}

final class BasketShuffleNode: SKSpriteNode {
    init(type: BasketShuffleElementContentType) {
        let texture = SKTexture(imageNamed: type.rawValue)
        let size = CGSize(width: 105, height: 115)
        super.init(texture: texture, color: .clear, size: size)

        self.physicsBody = SKPhysicsBody(rectangleOf: size)
        self.physicsBody?.isDynamic = false
      
        self.physicsBody?.categoryBitMask = PhysicsTaxonomyFrameworkMask.basketSuffle
        self.physicsBody?.contactTestBitMask = PhysicsTaxonomyFrameworkMask.bloomObject
        self.physicsBody?.collisionBitMask = PhysicsTaxonomyFrameworkMask.bloomObject

        self.name = type.rawValue
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

enum PhysicsTaxonomyFrameworkMask {
    static let bloomObject  = UInt32(1 << 0)
    static let basketSuffle = UInt32(1 << 1)
}

final class BloomObjectNode: SKSpriteNode {
    init(type: BloomObjectElementContentType) {
        let texture = SKTexture(imageNamed: type.rawValue)
        let size = CGSize(width: 80, height: 80)
        super.init(texture: texture, color: .clear, size: size)

        self.physicsBody = SKPhysicsBody(rectangleOf: size)
        self.physicsBody?.isDynamic = true
        self.physicsBody?.affectedByGravity = false
        self.physicsBody?.categoryBitMask = PhysicsTaxonomyFrameworkMask.bloomObject
        self.physicsBody?.contactTestBitMask = PhysicsTaxonomyFrameworkMask.basketSuffle
        self.physicsBody?.collisionBitMask = PhysicsTaxonomyFrameworkMask.basketSuffle

        self.name = type.rawValue
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

enum BloomObjectElementContentType: String, CaseIterable {
    case bloomObjectBlue = "bloomObjectBlue"
    case bloomObjectGreen = "bloomObjectGreen"
    case bloomObjectGold = "bloomObjectGold"
}
