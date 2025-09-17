# Repository Guidelines

## Project Structure & Module Organization
The trading client lives in the root modules. `Kiwoom_ystone.py` hosts the PyQt5 GUI and trading workflow, while data helpers (`RealData.py`, `DayData.py`, `PeriodicData.py`, `TickData.py`) manage fetch and caching. Shared constants and file paths reside in `Global.py`; update it when adding environment knobs so the UI stays in sync. Persisted artifacts (`log/`, `TRADE_DATA.txt`, `조건식.csv`, `USER_CONFIG.txt`) sit alongside the code—store large analytics dumps under `log/` or `키움데이터/…` to match existing patterns.

## Build, Test, and Development Commands
Activate the 32-bit Python environment used in production (`conda activate py36_32`) before running UI code. Launch the desktop client with `python Kiwoom_ystone.py`; logs stream to the console and `log/log_*`. Use `python test.py` for quick smoke tests of file IO utilities. When editing PyQt layouts, `python -m PyQt5.uic.pyuic` helps regenerate UI stubs if needed.

## Coding Style & Naming Conventions
Stick to 4-space indentation and PEP 8 imports. Module names remain `CamelCase.py`; functions and locals are snake_case, while trading thresholds stay in ALL_CAPS alongside the existing Korean identifiers—keep semantics consistent. Reuse helpers from `Utils.py`/`GraphUtils.py` instead of inlining duplicates, and centralize new global constants in `Global.py`.

## Testing Guidelines
There is no formal test harness; add targeted scripts under `tests/` or extend `test.py` with deterministic scenarios (mock Kiwoom API responses rather than hitting the live gateway). Document manual validation steps in `TODO.txt` or the PR description. Before opening PRs verify that on-demand data loads, chart rendering, and trade triggers still execute without errors.

## Commit & Pull Request Guidelines
Follow the concise, action-oriented style already in history (`write file function`, `log removed`). Reference issue IDs when available, and keep refactors separate from feature commits. PRs should outline scope, note affected modules, include any configuration file changes, and attach UI screenshots whenever the PyQt layout shifts. Confirm you did not commit personal credentials in `USER_CONFIG.txt` or logs before requesting review.
