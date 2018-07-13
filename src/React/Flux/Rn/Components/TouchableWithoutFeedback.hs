{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE RankNTypes        #-}
{-# LANGUAGE TypeApplications  #-}
module React.Flux.Rn.Components.TouchableWithoutFeedback where

import           Numeric.Natural
import           Prelude                                      (Bool)
import           React.Flux
import           React.Flux.Rn.Components                     (Props, TouchableWithoutFeedback,
                                                               prop)
import           React.Flux.Rn.Events
import qualified React.Flux.Rn.Props.TouchableWithoutFeedback as TouchableWithoutFeedbackProps
import           React.Flux.Rn.Types

-- TouchableWithoutFeedbackProps:

hitSlop                    = TouchableWithoutFeedbackProps.hitSlop @TouchableWithoutFeedback
accessibilityComponentType = TouchableWithoutFeedbackProps.accessibilityComponentType @TouchableWithoutFeedback
accessible                 = TouchableWithoutFeedbackProps.accessible @TouchableWithoutFeedback
delayLongPress             = TouchableWithoutFeedbackProps.delayLongPress @TouchableWithoutFeedback
delayPressIn               = TouchableWithoutFeedbackProps.delayPressIn @TouchableWithoutFeedback
delayPressOut              = TouchableWithoutFeedbackProps.delayPressOut @TouchableWithoutFeedback
disabled                   = TouchableWithoutFeedbackProps.disabled @TouchableWithoutFeedback
accessibilityTraits        = TouchableWithoutFeedbackProps.accessibilityTraits @TouchableWithoutFeedback
onLayout                   = TouchableWithoutFeedbackProps.onLayout @TouchableWithoutFeedback
onLongPress                = TouchableWithoutFeedbackProps.onLongPress @TouchableWithoutFeedback
onPress                    = TouchableWithoutFeedbackProps.onPress @TouchableWithoutFeedback
onPressIn                  = TouchableWithoutFeedbackProps.onPressIn @TouchableWithoutFeedback
onPressOut                 = TouchableWithoutFeedbackProps.onPressOut @TouchableWithoutFeedback
pressRetentionOffset       = TouchableWithoutFeedbackProps.pressRetentionOffset @TouchableWithoutFeedback
