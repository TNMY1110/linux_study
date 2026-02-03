#!/bin/bash
# 시스템 모니터링 스크립트
LOG_FILE=~/projects/cron_lab/logs/system_$(date +%Y%m%d).log
# 현재 시간
echo "=====$(date)=====">> $LOG_FILE
# 디스크 사용량 (/파티션만)
echo "[디스크]" >> $LOG_FILE
df -h | tail -1 >> $LOG_FILE
# 메모리 사용량
echo "[메모리]" >> $LOG_FILE
free -h | grep Mem >> $LOG_FILE
echo "" >> $LOG_FILE
