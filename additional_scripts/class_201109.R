# 자동완성의 시작과 끝은 [Tab] !!

# <-- 주석(comment)의 시작을 의미
# 주석은 코드 실행에 영향을 주지 않음

#### 1. 시작하기 ####

#### 2. 기본문법 ####

1 + 1
# 실행은 [Ctrl] + [Enter]

# [Ctrl] + [Shift] + [c]
# install.packages("beepr")
library("beepr")
beep(2)
?beep

aaa = function(x){}
aaa()

bbb = function(){
  print("Rloha")
}
bbb()
getwd()

ccc = function(x){
  print(x)
}
ccc("asdfasdfsf")
ccc()

ddd = function(x){
  x + 3
}
ddd(123123)

eee = function(x = 4){
  x * 5
}
eee()
eee(12)

udf = function(x){
  result = x^2
  return(result)
}
sq = udf(30)
sq

TRUE
FALSE
TRUE + TRUE
TRUE + FALSE
sum(c(TRUE, TRUE, FALSE))

#### 3. 객체의 이해 ####
#### ___ 1) 벡터 ####
c(1, 2, 3)
c(3, 5, "a")
aa = c(2, 4, 5)
aa
aa[2]
aa[c(1, 3)]
aa[3] = "ㅋㅋ"
aa

bb = c(2, 4, aa)
bb

list.files()
getwd()
# install.packages("imager")
library("imager")
img = load.image("sample_cat_image.jpg")
plot(img)

dim(img)
img[1:2, 1:2, 1, 1]

img[,,,1] = 1 - img[,,,1]
plot(img)

img[,,,2] = 1 - img[,,,2]
img[,,,3] = 1 - img[,,,3]
plot(img)

data.frame(aa = 1:3, # c(1, 2, 3)
           bb = c("a", "b", "c"))

data.frame(aa = 1:3,
           bb = c("a", "b"))

df = data.frame(aa = 1:3,
                bb = c("a", "b", "c"))
df
df[, 1] # 첫 번째 변수의 모든 내용
df$aa # df 객체의 aa 변수의 모든 내용

as.numeric("123")
as.numeric("4,123")
as.numeric("4,123원")
as.numeric(gsub("[^0-9]", "", "4,123원"))

library("data.table")
as.numeric("aa")
"aa" + 1

"감자" == "고구마"
"감자" != "고구마"

4:1
3:-4

1:3
seq(1, 3)
seq(1, 3, 1)
seq(from = 1, to = 3)
seq(from = 1, to = 3, by = 1)

seq(1, 3, length.out = 8)
seq(1, 3, length.out = 9)

rep(1:3, 3)
rep(3, 1:3)
rep(x = 1:3, times = 3)
rep(times = 3, x = 1:3)


aws = read.delim("AWS_sample.txt",
                 sep = "#",
                 stringsAsFactors = FALSE)
head(aws, 2)


aws = read.delim("AWS_sample.txt",
                 sep = "#")
head(aws, 2)

aws = read.csv("AWS_sample.txt", sep = "#")
head(aws, 2)

df = read.csv("bike.csv")
head(df, 2)
class(df)

install.packages("data.table")
library("data.table")
df = fread("bike.csv")
class(df)

library("excel.link")
xlrc[["a1"]] = 1:10
xlrc[["b2"]] = 1:10

data("iris") # R에 내장되어있는 iris 데이터 부르기
iris[150, ]
tail(iris, 2)

iris[nrow(iris), ]

?head
df1 = aws
head(df1, 2)

aws$TM
aws$TM[999]
aws[999, "TM"]
# df[ row, column ]

# ● 소괄호()
#   - 수학연산 우선순위 (a + b) * c
#   - 함수에서 인자를 감싸는 역할
# ● 중괄호{}
#   - 여러줄의 코드를 하나로 묶어줌
# ● 대괄호[]
#   - 자료 추출, 색인(index)

getwd()

aws[1:2, -1]
aws[1:2, -5]
aws[1:2, c(-2, -4)]
aws[1:2, -c(2, 4)]

aws[, 6] = "new"
head(aws, 2)

aws[, "col7"] = "ㅎㅎ"
head(aws, 2)

aws$col8 = "ㅋㅋ"
head(aws, 2)

aws[, "TAxWind"] = aws$TA * aws$Wind
head(aws, 2)

aws_1 = head(aws, 2)
aws_2 = tail(aws, 2)
nrow(aws_1)
aws_2

aws_bind = rbind(aws_1, aws_2)
nrow(aws_bind)


for(number in 1:3){
  print(number)
}

for(number in c(3, 4, 6)){
  print(number)
}

for(number in LETTERS){
  print(number)
}
LETTERS

df_1 = data.frame(aa = letters[1:4],
                  bb = 1:4)
df_1

df_1[, "new_column"] = df_1$bb * 2
df_1

df_1 = data.frame(aa = letters[1:4],
                  bb = 1:4)
df_1

for(num in 1:4){
  df_1[num, "new_columns"] = num * 2
  Sys.sleep(2)
  print(df_1)
}