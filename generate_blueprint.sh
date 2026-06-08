#!/usr/bin/env bash
set -euo pipefail

ROOT="ETERNAL-FRAME-FATE-V3-BLUEPRINT"

rm -rf "$ROOT"

mkdir -p "$ROOT/docs"
mkdir -p "$ROOT/agents/personas"
mkdir -p "$ROOT/agents/codex/handoffs"
mkdir -p "$ROOT/agents/subagents"
mkdir -p "$ROOT/config/routes"
mkdir -p "$ROOT/config/modes"
mkdir -p "$ROOT/config/personas"
mkdir -p "$ROOT/config/skills"
mkdir -p "$ROOT/runtime/startup"
mkdir -p "$ROOT/runtime/router"
mkdir -p "$ROOT/runtime/gates"
mkdir -p "$ROOT/runtime/switching"
mkdir -p "$ROOT/runtime/execution"
mkdir -p "$ROOT/data/active_state"
mkdir -p "$ROOT/data/arclog/archive"
mkdir -p "$ROOT/data/audit_events"
mkdir -p "$ROOT/data/save_receipts"
mkdir -p "$ROOT/data/proof_cases"
mkdir -p "$ROOT/data/session_memory"
mkdir -p "$ROOT/library"
mkdir -p "$ROOT/workflows"
mkdir -p "$ROOT/phases"
mkdir -p "$ROOT/tests"

write_md_stub() {
  local file="$1"
  local title="$2"
  cat > "$file" <<EOF
# $title

## Purpose

This file preserves a semantic architecture slot in Eternal Frame Fate V3.

## Content Policy

Original private content is intentionally omitted.

## Allowed Future Content

- public-safe notes
- schemas
- role descriptions
- non-sensitive examples

## Forbidden Content

- secrets
- private source
- raw prompts
- runtime memory
- audit logs
- save receipts
- hashes
- commit metadata
EOF
}

write_schema_stub() {
  local file="$1"
  cat > "$file" <<'EOF'
{
  "$schema": "https://json-schema.org/draft/2020-12/schema",
  "title": "Sanitized Placeholder Schema",
  "type": "object",
  "description": "Public-safe schema placeholder. Actual private schema details are omitted.",
  "properties": {
    "placeholder": { "type": "boolean", "const": true },
    "actual_content_omitted": { "type": "boolean", "const": true }
  },
  "required": ["placeholder", "actual_content_omitted"],
  "additionalProperties": true
}
EOF
}

write_yaml_stub() {
  local file="$1"
  cat > "$file" <<'EOF'
placeholder: true
actual_content_omitted: true
safe_description: "Public-safe configuration placeholder."
leak_policy:
  no_secrets: true
  no_private_routes: true
  no_runtime_state: true
  no_commit_metadata: true
EOF
}

write_txt_stub() {
  local file="$1"
  cat > "$file" <<'EOF'
PLACEHOLDER

This file preserves a text-based architecture slot.
Original runtime or private content is intentionally omitted.
EOF
}

write_persona_stub() {
  local file="$1"
  local name="$2"
  cat > "$file" <<EOF
# Persona Contract: $name

## Role

This file represents a persona lane in the governed architecture.

## Public-Safe Description

The persona defines a bounded operating style and responsibility surface.

## Allowed Content

- high-level role summary
- safe behavioral boundary
- authority limitations
- interaction rules

## Forbidden Content

- original persona prompt
- private identity logic
- hidden instruction chain
- internal reasoning scripts
- sensitive operational memory

## Extension Point

Future implementations may define a public-safe persona contract here.
EOF
}

write_runtime_stub() {
  local file="$1"
  local name="$2"
  cat > "$file" <<EOF
# Runtime Component: $name

## Purpose

This component represents a governed runtime function.

## Boundary

This file is a stub only. Actual source code is intentionally omitted.

## Expected Responsibilities

- validate inputs
- respect governance gates
- avoid secret exposure
- emit safe structured outputs
- preserve auditability

## Forbidden

- hardcoded secrets
- hidden provider keys
- private prompt injection
- uncontrolled writes
- raw runtime records
EOF
}

cat > "$ROOT/README.md" <<'EOF'
# ETERNAL FRAME FATE V3 — Sanitized Blueprint

This repository is a public-safe semantic scaffold.

It preserves the architecture of a governed AI-system framework without exposing private implementation details.

## Purpose

- preserve component boundaries
- document governance concepts
- define safe extension points
- support CLI/agent scaffold generation
- prevent leakage of private source, prompts, runtime state, logs, receipts, hashes, secrets, and operational records

## Leak Policy

This mirror contains no original private source code.
This mirror contains no actual runtime artifacts.
This mirror contains no credentials or provider details.
This mirror contains no commit metadata.
This mirror contains no hidden prompt bodies.
EOF

cat > "$ROOT/INDEX.md" <<'EOF'
# Blueprint Index

This index maps the public-safe scaffold.

## Major Zones

- `docs/` — conceptual documentation
- `agents/` — persona and subagent contracts
- `config/` — safe schemas and configuration contracts
- `runtime/` — governed runtime component stubs
- `data/` — schema-only state surfaces
- `library/` — skills, instincts, and migration catalog stubs
- `workflows/` — command and dispatch surfaces
- `phases/` — development phase summaries
- `tests/` — verifier and no-leak test descriptions
EOF

cat > "$ROOT/AGENTS.md" <<'EOF'
# Agent Operating Contract

Agents may read this scaffold to understand structure.

Agents must not:

- infer private prompts
- invent secrets
- reconstruct omitted source
- treat placeholders as real runtime state
- bypass governance boundaries
- create uncontrolled execution paths

Agents may:

- create safe documentation
- generate schemas
- implement new code only when explicitly requested
- preserve no-leak boundaries
EOF

cat > "$ROOT/SECURITY.md" <<'EOF'
# Security Policy

This scaffold is designed to prevent repository leakage.

Never store:

- API keys
- provider credentials
- raw prompts
- private persona bodies
- runtime logs
- actual save receipts
- audit event records
- hashes
- commit metadata
- session memory
- hidden system instructions

All sensitive surfaces are represented as schemas or placeholders only.
EOF

cat > "$ROOT/BLUEPRINT_RULES.md" <<'EOF'
# Blueprint Rules

This project is a sanitized semantic mirror.

Rules:

1. Preserve architecture.
2. Remove implementation.
3. Replace source with safe stubs.
4. Replace runtime records with schemas.
5. Replace secret-bearing configuration with examples.
6. Replace exact phase memory with public summaries.
7. Never leak private repository content.
EOF

cat > "$ROOT/.env.example" <<'EOF'
# PLACEHOLDER ENVIRONMENT TEMPLATE
# Do not place real secrets here.

EXAMPLE_PROVIDER_KEY=REDACTED
EXAMPLE_RUNTIME_MODE=SANITIZED
EXAMPLE_GOVERNANCE_ENABLED=true
EOF

cat > "$ROOT/.gitignore" <<'EOF'
.env
*.key
*.pem
*.secret
__pycache__/
*.pyc
.DS_Store
node_modules/
.venv/
.pytest_cache/
.mypy_cache/
.ruff_cache/
dist/
build/
coverage/
EOF

for f in architecture_overview governance_model runtime_model persona_model proof_model memory_model routing_model no_leak_policy; do
  write_md_stub "$ROOT/docs/$f.md" "$f"
done

write_md_stub "$ROOT/agents/README.md" "Agents"
write_md_stub "$ROOT/agents/personas/README.md" "Persona Contracts"
for p in KAGEROU NOCTIS HIMERU EXIA BARBATOS RX-0 VELVET_ARC; do
  write_persona_stub "$ROOT/agents/personas/$p.md" "$p"
done

write_md_stub "$ROOT/agents/codex/README.md" "Codex Agent Lane"
write_md_stub "$ROOT/agents/codex/handoffs/README.md" "Codex Handoffs"
for f in orchestration_packet truthfulness_orchestration governance_cutover_draft persona_migration_orchestration shared_folder_recovery_orchestration; do
  write_md_stub "$ROOT/agents/codex/handoffs/$f.md" "$f"
done

write_md_stub "$ROOT/agents/subagents/README.md" "Subagent Lanes"
for f in risk_scan implementation_extract strategy_pressure advisory_lane_contract; do
  write_md_stub "$ROOT/agents/subagents/$f.md" "$f"
done

write_md_stub "$ROOT/config/README.md" "Config"
write_md_stub "$ROOT/config/routes/README.md" "Model Routes"
write_yaml_stub "$ROOT/config/routes/model_route.schema.yaml"
write_md_stub "$ROOT/config/modes/README.md" "Modes"
write_schema_stub "$ROOT/config/modes/mode_contract.schema.json"
write_md_stub "$ROOT/config/personas/README.md" "Persona Config"
write_schema_stub "$ROOT/config/personas/persona_contract.schema.json"
write_md_stub "$ROOT/config/skills/README.md" "Skills Config"
write_schema_stub "$ROOT/config/skills/skill_contract.schema.json"

write_md_stub "$ROOT/runtime/README.md" "Runtime"
write_md_stub "$ROOT/runtime/startup/README.md" "Startup"
write_runtime_stub "$ROOT/runtime/startup/hud_builder.stub.md" "HUD Builder"
write_md_stub "$ROOT/runtime/router/README.md" "Router"
write_runtime_stub "$ROOT/runtime/router/model_router.stub.md" "Model Router"
write_runtime_stub "$ROOT/runtime/router/provider_boundary.stub.md" "Provider Boundary"
write_md_stub "$ROOT/runtime/gates/README.md" "Runtime Gates"
write_runtime_stub "$ROOT/runtime/gates/triad_gate.stub.md" "TRIAD Gate"
write_runtime_stub "$ROOT/runtime/gates/apply_gate.stub.md" "Apply Gate"
write_runtime_stub "$ROOT/runtime/gates/promotion_gate.stub.md" "Promotion Gate"
write_md_stub "$ROOT/runtime/switching/README.md" "Runtime Switching"
write_runtime_stub "$ROOT/runtime/switching/persona_switch.stub.md" "Persona Switch"
write_runtime_stub "$ROOT/runtime/switching/mode_switch.stub.md" "Mode Switch"
write_runtime_stub "$ROOT/runtime/switching/project_resolver.stub.md" "Project Resolver"
write_md_stub "$ROOT/runtime/execution/README.md" "Runtime Execution"
write_runtime_stub "$ROOT/runtime/execution/runtime_worker.stub.md" "Runtime Worker"
write_runtime_stub "$ROOT/runtime/execution/apply_executor.stub.md" "Apply Executor"
write_runtime_stub "$ROOT/runtime/execution/activation_planner.stub.md" "Activation Planner"

write_md_stub "$ROOT/data/README.md" "Data Surfaces"
write_md_stub "$ROOT/data/active_state/README.md" "Active State"
for f in active_persona active_mode active_project active_injection active_subagents; do
  write_schema_stub "$ROOT/data/active_state/$f.schema.json"
done
write_md_stub "$ROOT/data/arclog/README.md" "ARCLOG"
write_schema_stub "$ROOT/data/arclog/arclog_data.schema.json"
write_txt_stub "$ROOT/data/arclog/arclog_log.stub.txt"
write_md_stub "$ROOT/data/arclog/archive/README.md" "ARCLOG Archive"
write_md_stub "$ROOT/data/audit_events/README.md" "Audit Events"
write_schema_stub "$ROOT/data/audit_events/audit_event.schema.json"
write_md_stub "$ROOT/data/save_receipts/README.md" "Save Receipts"
write_schema_stub "$ROOT/data/save_receipts/save_receipt.schema.json"
write_schema_stub "$ROOT/data/save_receipts/idempotency_index.schema.json"
write_md_stub "$ROOT/data/proof_cases/README.md" "Proof Cases"
for f in activation_cases apply_execution_cases apply_gate_cases engine_isolation_cases governance_cutover_cases instinct_cases live_runtime_worker_cases migration_cases phase_cases promotion_cases resolver_contract_cases runtime_build_cases; do
  write_schema_stub "$ROOT/data/proof_cases/$f.schema.json"
done
write_md_stub "$ROOT/data/session_memory/README.md" "Session Memory"
write_schema_stub "$ROOT/data/session_memory/session_memory.schema.json"
write_md_stub "$ROOT/data/session_memory/workdraft.stub.md" "Workdraft"

write_md_stub "$ROOT/library/README.md" "Library"
write_yaml_stub "$ROOT/library/skills_catalog.stub.yaml"
write_md_stub "$ROOT/library/instincts.stub.md" "Instincts"
write_yaml_stub "$ROOT/library/persona_roster.stub.yaml"
write_yaml_stub "$ROOT/library/migration_map.stub.yaml"

write_md_stub "$ROOT/workflows/README.md" "Workflows"
write_yaml_stub "$ROOT/workflows/dispatch_contract.stub.yaml"
write_md_stub "$ROOT/workflows/command_surface.md" "Command Surface"
write_md_stub "$ROOT/workflows/controlled_actions.md" "Controlled Actions"

write_md_stub "$ROOT/phases/README.md" "Phases"
write_md_stub "$ROOT/phases/phase_tracker.stub.md" "Phase Tracker"
for f in phase_11_truthfulness phase_12_13_governance_cutover phase_14_tooling_layer phase_15_operational_integration phase_16_subagent_lanes phase_17_runtime_controls phase_18_router_state; do
  write_md_stub "$ROOT/phases/$f.md" "$f"
done

write_md_stub "$ROOT/tests/README.md" "Tests"
write_md_stub "$ROOT/tests/verifier_contracts.md" "Verifier Contracts"
write_md_stub "$ROOT/tests/proof_case_matrix.md" "Proof Case Matrix"
write_md_stub "$ROOT/tests/no_leak_tests.md" "No Leak Tests"

echo "Created sanitized blueprint scaffold at: $ROOT"
find "$ROOT" -type f | sort
