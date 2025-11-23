#[cfg(test)]
mod tests {

    #[test]
    fn test_implicit_vs_explicit() {
        let a = 5;
        let b: felt252 = 5;
        assert!(a == b);
    }

    #[test]
    fn test_math() {
        let a: felt252 = 4;
        let b: felt252 = 2;
        assert!(a + b == 6);
        assert!(a - b == 2);
        assert!(a * b == 8);
        // assert!(a / b == 0); // integer division not supported by felts
        // assert!(a % b == 0); // modulo not supported by felts
    }

    #[test]
    #[ignore]
    #[should_panic]
    fn test_overflow_felt_should_panic() {
        // P = 36185027886661311069865932815214971204146870208012676262330495002472812908353;
        let p_div_by_ten = 3618502788666131106986593281521497120414687020801267626233049500247281290835;    
        p_div_by_ten * 100;

        
    }

    #[test]
    #[should_panic]
    fn test_overflow_u256_should_panic() {
        // 2^256 = 115792089237316195423570985008687907853269984665640564039457584007913129639935;
        let max_u256: u256 = 115792089237316195423570985008687907853269984665640564039457584007913129639935;    
        max_u256 * 100;
    }
}