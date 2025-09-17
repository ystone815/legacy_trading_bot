# TODO

- [ ] Fix offline code list load parsing in `Kiwoom_ystone.py:1934` by splitting on commas (matching the writer) or leveraging `csv.reader`, otherwise saved codes are reloaded as a single malformed token and names become blank.
- [ ] Convert checkbox state tokens to integers before calling `setCheckState` in `Kiwoom_ystone.py:1814`, preventing the current `TypeError` from aborting the `USER_CONFIG.txt` restoration.
- [x] Drop the unused 단일가 tracking from `DayData.py` entirely to reduce maintenance overhead now that the value is no longer consumed anywhere in the client.
