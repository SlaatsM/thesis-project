(set-logic QF_BV)

; Bit width chosen: 12 (covers range [-1306, 1434] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 12))

; Domain constraints
(assert (or (= i1 #b000010000000) (= i1 #b000010101001) (= i1 #b000011110100) (= i1 #b001011001101)))

; Formula constraint
(assert (and (=> (and (not (= #b000001000010 #b000001000000)) (= #b111111111010 #b000000000001)) (and (bvsgt #b111110100010 i1) (= i1 #b000000010011))) (=> (bvsle #b111111010110 (bvadd i1 i1)) (bvslt (bvsub i1 (bvadd i1 i1)) #b000000010101))))

(check-sat)