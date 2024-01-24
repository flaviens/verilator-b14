# Bug in Verilator that leads to a wrong runtime value.

Tested with `Verilator 5.021 devel rev v5.020-47-g6b8531f0a`.

To reproduce, please have Verilator installed and run:
```
bash run.sh
```

The bug is corrected by enabling traces.

Expected output: the output with and without traces should be identical.

Actual output:
```bash
notrace
Output[32]  0
notrace
Output[32]  1
```

There is no suspicious Verilator warning.
