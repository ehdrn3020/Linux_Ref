#modify crontab
$ crontab -e


#check crontab
$ crontab -l


#delete crontab
$ crontab -d



#how to apply crontab

*　　　　　　*　　　　　　*　　　　　　*　　　　　　*
Minute(0-59) Hour(0-23)　 Day(1-31)　　Month(1-12)　DayofWeek(0-7)


#Examples

-
#매분 test.sh 실행
* * * * * /home/script/test.sh

-특정 시간 실행
#매주 금요일 오전 5시 45분에 test.sh 를 실행
45 5 * * 5 /home/script/test.sh

-반복 실행
매일 매시간 0분, 20분, 40분에 test.sh 를 실행
0,20,40 * * * * /home/script/test.sh

-범위 실행
# 매일 1시 0분부터 30분까지 매분 tesh.sh 를 실행
0-30 1 * * * /home/script/test.sh

-간격 실행
# 매 10분마다 test.sh 를 실행
*/10 * * * * /home/script/test.sh

-복잡하게 리믹스
# 5일에서 6일까지 2시,3시,4시에 매 10분마다 test.sh 를 실행
*/10 2,3,4 5-6 * * /home/script/test.sh


#tip
- one line, one command
- annotation : #


#crontab log

* * * * * /home/script/test.sh > /home/script/test.sh.log 2>&1
매분마다 test.sh.log 파일이 갱신 되어 작업 내용이 어떻게 처리 되었는지 확인가능. 

* * * * * /home/script/test.sh >> /home/script/test.sh.log 2>&1
지속적으로 로깅이 되야 해서 로그를 계속 남겨둬야 한다. 대신 로그가 과도하게 쌓인다.

* * * * * /home/script/test.sh > /dev/null 2>&1
로그가 필요 없는 크론


#back up
crontab -l > /home/bak/crontab_bak.txt
-auto back up
50 23 * * * crontab -l > /home/bak/crontab_bak.txt


#crontab log check
$ cat /var/log/cron


#crontab setting check
$ cat /var/spool/cron/root 


#service control
$ service crond restart/start/stop/status