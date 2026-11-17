(set-logic QF_BV)

; Bit width chosen: 12 (covers range [-1050, 1436] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 12))

; Domain constraints
(assert (or (= i1 #b110111110011) (= i1 #b000001101000) (= i1 #b001011001110)))

; Formula constraint
(assert (and (or (or (bvsge (bvadd i1 i1) #b111111001100) (bvslt i1 #b000000011010)) (not (= i1 #b111110101000))) (bvsgt i1 #b111111101100)))

(check-sat)