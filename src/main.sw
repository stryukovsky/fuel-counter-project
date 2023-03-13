contract;

storage {
    counter: u64 = 0,
}

abi Counter {
    #[storage(read)]
    fn count() -> u64;

    #[storage(read, write)]
    fn increment();
}

impl Counter for Contract {
    #[storage(read)]
    fn count() -> u64 {
        storage.counter
    }

    #[storage(read, write)]
    fn increment() {
        storage.counter = storage.counter + 1;
    }
}
