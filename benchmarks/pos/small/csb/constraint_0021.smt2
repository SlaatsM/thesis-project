(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-7112, 80010] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 18))

; Domain constraints
(assert (or (= i1 #b000000000110000100) (= i1 #b000000000111011000) (= i1 #b000000001001011110) (= i1 #b000000001101111001)))

; Formula constraint
(assert (or (=> (bvsge (bvsub #b000000000001010001 i1) #b111111111111011100) (and (= i1 #b000000000001001101) (bvsge (bvmul #b111111111111111000 i1) i1))) (or (and (bvsle (bvadd i1 (bvmul #b000000000001000111 i1)) #b000000000001011011) (bvslt i1 (bvmul #b000000000001011010 i1))) (=> (bvsle #b000000000001001011 i1) (bvslt #b111111111111101011 #b000000000001000110)))))

(check-sat)