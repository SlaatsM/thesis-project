(set-logic QF_BV)

; Bit width chosen: 11 (covers range [-50, 1008] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 11))
(declare-const i2 (_ BitVec 11))
(declare-const i3 (_ BitVec 11))

; Domain constraints
(assert (or (= i1 #b00000011010) (= i1 #b00010010001) (= i1 #b01000110111)))
(assert (or (= i2 #b00010111101) (= i2 #b00111010001)))
(assert (and (bvsge i3 #b00001010111) (bvsle i3 #b00100100001)))

; Formula constraint
(assert (not (and (bvslt #b11111001110 #b00000100101) (not (= i3 (bvadd i2 (bvadd i1 #b11111101000)))))))

(check-sat)