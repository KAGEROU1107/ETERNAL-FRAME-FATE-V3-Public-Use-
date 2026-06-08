# Architecture

Public overview for the reference skeleton.

## Layers

- client
- interface
- policy
- decision
- records
- examples

```mermaid
flowchart LR
    A[Client] --> B[Interface]
    B --> C[Policy]
    C --> D[Decision]
    D --> E[Result]
```
