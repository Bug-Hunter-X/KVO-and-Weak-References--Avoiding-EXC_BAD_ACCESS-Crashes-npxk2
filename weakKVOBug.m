In Objective-C, a subtle bug can arise from the interaction between KVO (Key-Value Observing) and the use of weak references. If an observer is declared as weak and the observed object is deallocated before the observer removes itself from the observation, a crash can occur when the KVO system attempts to send notifications to a deallocated observer. This often results in EXC_BAD_ACCESS errors.