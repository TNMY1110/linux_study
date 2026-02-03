#!/bin/bash
# 시스템 모니터링 스크립트
# 현재 시간
echo "=====$(date)====="
# 디스크 사용량 (/파티션만)
echo "[디스크]"
df -h | tail -1
# 메모리 사용량
echo "[메모리]"
free -h | grep Mem
echo ""
