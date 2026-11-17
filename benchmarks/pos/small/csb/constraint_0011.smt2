(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-24702, 80560] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 18))

; Domain constraints
(assert (or (= i1 #b000000000101010111) (= i1 #b000000000111001000) (= i1 #b000000001000111100) (= i1 #b000000001101010000)))

; Formula constraint
(assert (or (and (and (bvsle (bvsub (bvadd i1 i1) i1) (bvadd (bvsub #b111111111111010101 (bvmul #b000000000000011101 i1)) #b111111111110111101)) (= i1 #b000000000000100010)) (and (= #b111111111111111010 (bvmul #b000000000001011111 i1)) (not (= #b000000000001001001 #b111111111110100001)))) (not (= i1 (bvmul #b111111111111111101 i1)))))

(check-sat)