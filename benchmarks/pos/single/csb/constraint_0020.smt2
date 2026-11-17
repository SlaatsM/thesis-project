(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-88464, 1282] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 18))
(declare-const i2 (_ BitVec 18))

; Domain constraints
(assert (and (bvsge i1 #b000000000110100111) (bvsle i1 #b000000001010000001)))
(assert (or (= i2 #b000000001000000100) (and (bvsge i2 #b000000001101101111) (bvsle i2 #b000000001110010000))))

; Formula constraint
(assert (not (and (or (bvsle #b111111111111101011 (bvadd i1 i1)) (bvslt i1 (bvmul #b111111111110011111 i2))) (and (not (= i2 i1)) (bvsge i1 i1)))))

(check-sat)