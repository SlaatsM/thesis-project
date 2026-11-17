(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-93334, 93400] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 18))
(declare-const i2 (_ BitVec 18))

; Domain constraints
(assert (or (= i1 #b111111111011000011) (= i1 #b000000000011011011)))
(assert (or (= i2 #b111111110001011010) (= i2 #b000000000011000001)))

; Formula constraint
(assert (and (bvsge (bvadd (bvsub i1 i2) #b000000000001000010) #b111111111110111110) (or (not (bvsgt (bvsub #b111111111111001100 (bvmul #b000000000000011110 i2)) #b000000000000101010)) (and (bvsge i1 (bvsub (bvadd i2 (bvmul #b111111111111110011 i1)) i1)) (bvslt #b111111111110100101 (bvsub #b000000000001000010 (bvmul #b111111111110011100 i2)))))))

(check-sat)