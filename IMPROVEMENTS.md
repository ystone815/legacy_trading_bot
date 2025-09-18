# TODO

- [ ] Fix offline code list load parsing in `Kiwoom_ystone.py:1934` by splitting on commas (matching the writer) or leveraging `csv.reader`, otherwise saved codes are reloaded as a single malformed token and names become blank.
- [ ] Convert checkbox state tokens to integers before calling `setCheckState` in `Kiwoom_ystone.py:1814`, preventing the current `TypeError` from aborting the `USER_CONFIG.txt` restoration.
- [x] Drop the unused 단일가 tracking from `DayData.py` entirely to reduce maintenance overhead now that the value is no longer consumed anywhere in the client.
- [ ] Replace the raw `threading.Thread` usages in the UI button handlers (`Kiwoom_ystone.py:2067-2092`) with a Qt-friendly worker pattern so shared lists like `load_data_list` are not mutated from background threads.
- [ ] Split the 200+ line `RealData.append` routine (`RealData.py:155`) into focused helpers (price update, 파바박 처리, 회전율 계산 등) to make unit testing and future tweaks manageable.
- [ ] Refactor `PeriodicData.append` (`PeriodicData.py:45`) into smaller composable steps; the single method currently blends value capture, derived-metric computation, and condition evaluation making it hard to reason about.
- [ ] Replace the custom CSV string building in `saveCodeList` (`Kiwoom_ystone.py:1926`) with `csv.writer` to remove the trailing space/comma artefacts that complicate the paired reader.
- [ ] In `RealData.saveData` (`RealData.py:592`), drop the per-call thread spawn in favour of a long-lived worker or direct write; the current approach spins untracked threads and risks data loss on shutdown.
