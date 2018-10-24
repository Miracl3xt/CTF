#!/bin/bash
curl "2018shell3.picoctf.com:8930" | head -n 20 | cut -d "'" -f2 | tail -n 8 | tac | tr -d "\n"
