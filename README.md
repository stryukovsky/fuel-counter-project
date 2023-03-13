# Fuel sample project

## Install Fuel
Full installation guide is located [here](https://install.fuel.network/master/installation/index.html)  
```
curl --proto '=https' --tlsv1.2 -sSf https://install.fuel.network/fuelup-init.sh | sh
```
Allow it to edit your `PATH` and wait for installation. Once installed run in new terminal:  
```
fuelup toolchain install latest
```
## Develop on Fuel
Start a new project  
```
forc new fuel-counter-project
```
Setup contract tests at `main.sw`
```
cargo install cargo-generate
cargo generate --init fuellabs/sway templates/sway-test-rs --name counter-project 
```
Write tests and execute them
```
rustup update stable && cargo test
```
## Deploy on Fuel testnet
Add wallet
```
cargo install forc-wallet
```
Import wallet from mnemonic phrase
```
forc-wallet import
```
Create account
```
forc-wallet account new
```
Save your address (e.g. `fuel18twnujtx4685jq8c4m5wsfwxctvvyk7uxk6x24g83h4azq8agq2sydmd79`)

Deploy with
```
forc deploy --gas-price 1 --node-url node-beta-2.fuel.network/graphql
```
Paste adress you saved from previous stage

See your contract on the network [Example](https://fuellabs.github.io/block-explorer-v2/beta-2/#/address/0x3edb96c23766b8504caaff042994efa18460e7ba27f60191394a6bcf5be8d7d8)