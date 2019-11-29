# break next 문 

sum <- 0 
for (i in 1:10){
  sum <- sum + 1
  if (i >= 5){
    break
  }
}
sum

sum <- 0
for (i in 1:10){
  if (i %% 2==0){
    next #반복 제어문을 빠져 나가다  
  }
  sum <-sum +1
}
sum
#function 함수 기능
#단위 기능을 수행하는 code 집합
#내장함수 library 함수  r에서 제공하는 함수 
#사용자 정의 함수 (제 3자 함수 )
#package : 함수를 포함한 file

#산술 내장함수
log(10) + 5 #로그함수
log(10 , base = 2)
sqrt(25) #제곱근
max(5,3,2) 
min(3,9,2)
abs(-10)
factorial(5) #팩토리얼
sin(pi/2) #삼각함수

#log함수 
log(10, base=2) # 밑이 2인 로그함수
log(10, base = exp(1)) # 자연로그
log10(10) #상용로그 표현법

# 사용자 정의 함수 
mymax <- function(x,y){
  num.max <-x
  if (y > num.max){
    num.max <- y
  }
  return(num.max)
}
mymax(10,15)

a <- 10
b <- 5
c <- 6
max <- mymax(a,b)
max <- mymax(max,c)
max

#함수 유형
#인수 o return o
#인수 o return x
#인수 x return o
#인수 x return x



a<-scan()
b<-scan()
mymax(a,b)

#사용자 정의 함수 매개변수 초기값 설정
mydiv <- function(x,y=2){
  result <- x/2
  return(result)
}

mydiv(x=10, y=3)
mydiv(10,3)
mydiv(10)
#초기값 설정시 변경 불가


#외부 파일에 있는 함수 호출
setwd("D:/workR") #경로 지정
source("mylib.R")

my_max(10,5)
my_div(10,2)


#project
-bin
-lib
-data
-tmp #임시파일
-doc

#scalar (원시값) : 하나의 값 (숫자,문자,논리)
#vetor (1차원 배열, 열의 집합)

a <- 10
b <- 5 
c <- 6
max <-a
if (b > max){
  max <-b
}
if (c > max){
  max <-c
}
v <- c(10,5,6)
max <- v[1]
for (i in 2:length(v)){
  if (v[i] > max){
    max <- v[i]
  }
}
max

#vector
x <- c(1,2,3)
y <- c("a","b","c")
z <- c(TRUE,TRUE,TRUE,FALSE)
x;y;z;

class(x); class(y); class(z)

w <- c(1,2,3,"a","b","c")
w
class(w)

v1 <- 50:90;
v1
v2 <- c(1,2,3,50:90)
v2
class(v1)
class(v2)

v3 <- seq(1,101,3)  #seq() 일정한 구조/순차데이터 생성
v3 # seq(start, end, 증가)
v4 <- seq(0.1,1.0,0.1)
v4
v5 <- rep(1,times =5) #rep() 일정한 데이터 반복
v5 
v6 <- rep(1:5, times=3)
v6
v7 <- rep(c(1,5,9), times =3)
v7
#rep (each , times 비교 )
a <- rep(1:3,each=10)
a
b <- rep(1:3, times=10)
b

# 벡터 원소값에 이름 지정
score <- c(90,85,70) #score라는 변수에 C값을 입력
score

names(score) #데이터 프레임 변수명 변경
# rename() 데이터 프레임 변수명 변경
install.packages("reshape")
library(reshape)


names(score) <- c("hong","kim","lee") #N
names(score)
score

#벡터 원소 접근
score[1]
score[2]
score[3]
score["hong"]
score["kim"]
score["lee"]

d <- c(1,4,3,7,8)
d[1]
d[2]
d[3]
d[4]
d[5]
d[6] #na : 결측치 #nan 계산할수 없다

for (i in 1:length(score)){
  print(score[i])
}

score_names <- c("hong","kim","lee")
for (i in 1:length(score)){
  print(score[ score_names[i]])
}


#벡터에서 여러개의 값을 한번에 추출
d <- c(1,4,3,5,7)
d[c(1,3,5)]
d[1:3]
d[seq(1,5,2)]
d[-2]  #제외시키다
d[-c(3:5)]

GNP <- c(2090,2450,960)
GNP
names(GNP) <- c("kim","min","fin")
GNP[1]
GNP["min"]
GNP[c("kim","fin")]

v1 <-c(1,5,7,8,9)
v1[2] <-3
v1
v1[c(1,5)] <- c(10,10)
v1

x <- c(1,2,3)
y <- c(4,5,6)
x + y
x * y
z <- x + y
z
#주요 내장함수
d <- c(1:10)
sum(d) #합
sum(2*d)
length(d) #길이
mean(d[1:5])
mean(d)  #평균
median(d[1:5])
median(d) #중앙값
max(d)  #최대값
min(d)  #최소값
sort(d) #정렬
sort(d,decreasing = FALSE)
sort(d,decreasing = TRUE)
range(d) #범위
var(d) #분산
sd(d) #표준편차
order(d)
summary(d)
table(d) #빈도수를 구하는 함수
sample(x,y) # x범위에서 y만큼 sample 데이터를 생성하는 함수


V <- sum(d)/length(d)
V

#벡터에 논리연산 작용
d >= 5
d[d>5]
sum(d>5) 
sum(d[d>5])
d == 5
cond <- d > 5 & d <8
d[cond]

all(d>5) #전체다 
any(d>5) # 하나라도 

#head와 tail
head(d) #관측 값을 지정하지 않으면 6개
tail(d)
head(d,3)
tail(d,3)

x<-c(1:3)
y<-c(4:6)
z<-c(3,1,2)
#합집합 ,교집합 ,차집합 
w <- c(x,y)
union(x,y) #합집합
intersect(x,y) #교집합
setdiff(x,y) #차집합
setequal(x,y) #x,y에 동일한 요소가 있는지 확인
setequal(x,z)

#list:다른 data type의 자료를 저장하는 구조
#type이 달라도 상관이 없다
#key (변수) : value 형식으로 저장
#외부에서 데이터를 읽어올때 fector형으 들어올수 있음
#factor 범위형 type (범주형 데이터 자료)

#list

ds<- c(90,85,70,84)
my.info <- list(name ="hong" ,age =30, status = TRUE,
                score= ds)
my.info
my.info[1]
my.info[[1]]
my.info$name
my.info[[4]][1]

#key : name value : hong

#factor 형
bt <-c('a','b','b','d','ab','a')
bt.new <- factor(bt)
bt
bt.new
bt[5]
levels(bt.new)
as.integer(bt.new) #정수형 변환 
bt.new[7] <-'b'
bt.new[8] <-'c'
bt.new
