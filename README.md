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