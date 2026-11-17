(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-46, 39936] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 17))

; Domain constraints
(assert (or (= i1 #b00000000001010011) (= i1 #b00000000011101011) (= i1 #b00000001100000000)))

; Formula constraint
(assert (or (not (= #b11111111111010010 #b11111111111100010)) (bvsge i1 (bvmul #b00000000000110100 i1))))

(check-sat)