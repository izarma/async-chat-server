# FlyCatcher Chat Server

[![Built with Tokio](https://img.shields.io/badge/built%20with-Tokio-%23ECD53F)](https://tokio.rs)
[![Rust](https://img.shields.io/badge/rust-1.72%2B-orange)](https://www.rust-lang.org)

A minimal asynchronous chat server implementation using Rust and the Tokio runtime.

## Features (Current)
- 🚀 Asynchronous I/O using Tokio
- 🌐 Multiple client connections
- 📡 Message broadcasting to all connected clients
- 💻 Simple telnet-style interface

## Planned Improvements
- User authentication system
- Chat rooms/channels
- Message persistence
- Client commands (e.g., `/nick`, `/join`)
- Connection history
- Improved error handling

## Installation

### Prerequisites
- Rust 1.72+ (install via [rustup](https://rustup.rs/))
- Cargo package manager

```bash
# Clone repository
git clone https://github.com/yourusername/async-chat-server.git
cd async-chat-server

# Build release version
cargo build --release

# Run server
cargo run --release
```

## Usage
The server runs on `localhost:8080` by default. Connect using any TCP client:

```bash
# Using netcat
nc localhost 8080

# Using telnet
telnet localhost 8080
```

All text entered will be broadcast to connected clients:
```
> Hello from Alice!
< Bob: Hello from Alice!
> How's everyone doing?
< Bob: How's everyone doing?
```

## Implementation Details
The server uses Tokio's async primitives:
- `TcpListener` for accepting connections
- `broadcast` channel for message distribution
- Async task spawning for concurrent client handling

Key components:
1. Creates a broadcast channel for message distribution
2. Spawns async task per connection
3. Uses `tokio::select!` to handle simultaneous:
   - Message reading from client
   - Message broadcasting via channel
4. Splits TCP stream into separate reader/writer halves

## Contributing
Contributions welcome! Please:
1. Open an issue to discuss proposed changes
2. Follow Rust coding conventions
3. Add tests for new features
4. Update documentation accordingly

## License
[MIT License](LICENSE) (modify as needed)

---

Made with ❤️ using [Rust](https://www.rust-lang.org/) + [Tokio](https://tokio.rs)
