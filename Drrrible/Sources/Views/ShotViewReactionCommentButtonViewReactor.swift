//
//  ShotViewReactionCommentButtonViewReactor.swift
//  Drrrible
//
//  Created by Suyeol Jeon on 12/03/2017.
//  Copyright © 2017 Suyeol Jeon. All rights reserved.
//

import ReactorKit
import RxSwift

final class ShotViewReactionCommentButtonViewReactor: ShotViewReactionButtonViewReactor {
  fileprivate let provider: ServiceProviderType
  fileprivate let shot: Shot

  init(provider: ServiceProviderType, shot: Shot) {
    self.provider = provider
    self.shot = shot
    let initialState = State(
      isReacted: false,
      canToggleReaction: true,
      text: "\(shot.commentCount)"
    )
    super.init(initialState: initialState)
  }
}
