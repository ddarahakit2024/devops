
gradle -b /home/ubuntu/devops/build.gradle build

spring_pid=`ps -ef | grep demo | grep -v grep | awk -F " " '{print $2}'`

if [ $spring_pid ]
then
        echo "실행중인 백엔드 프로세스 종료하는 중..."
        kill -9 $spring_pid
else
        echo "실행중인 백엔드 프로세스가 없습니다!"
fi

nohup java -jar /home/ubuntu/devops/build/libs/demo-0.0.1-SNAPSHOT.jar &