(set-logic QF_BV)

; Bit width chosen: 9 (covers range [0, 185] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const x (_ BitVec 9))
(declare-const y (_ BitVec 9))
(declare-const z (_ BitVec 9))

; Domain constraints
(assert (and (bvsge x #b000000000) (bvsle x #b001100100)))
(assert (and (bvsge y #b000000000) (bvsle y #b001100100)))
(assert (and (bvsge z #b000000000) (bvsle z #b001100100)))

; Formula constraint
(assert (and (= z (bvadd x #b001010101)) (and (bvsge y (bvadd x #b000010010)) (and (bvsle y (bvadd x #b001000001)) (bvsgt z y)))))

(check-sat)