#[cfg(test)]
mod tests {

    #[test]
    fn test_implicit_vs_explicit() {
        let a: = 5;
        let b: felt252 = 5;
        assert!(a == b);
    }
}