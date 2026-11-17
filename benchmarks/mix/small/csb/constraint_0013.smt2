(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-74448, 98703] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 18))

; Domain constraints
(assert (or (= i1 #b111111110000011011) (= i1 #b111111110100010010) (= i1 #b111111111111000000) (= i1 #b000000000010000110) (= i1 #b000000001011110000)))

; Formula constraint
(assert (or (=> (=> (bvsgt i1 #b000000000000101011) (= (bvmul #b111111111110011101 i1) #b111111111111010000)) (and (not (= i1 #b000000000001001110)) (bvsge (bvmul #b111111111110110110 i1) (bvadd i1 i1)))) (and (and (bvslt #b000000000000001000 #b111111111111101101) (not (= (bvsub (bvadd #b111111111111111001 i1) i1) #b000000000001001000))) (bvslt (bvsub (bvadd (bvmul #b111111111111111101 i1) #b000000000000110101) i1) i1))))

(check-sat)