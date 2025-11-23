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
    }
}