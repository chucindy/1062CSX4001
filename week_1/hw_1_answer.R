### hw_1_question
########################################################### Task 1
# 查看內建資料集: 鳶尾花(iris)資料集
iris
# 使用dim(), 回傳iris的列數與欄數
dim(iris)
# 使用head() 回傳iris的前六列
head(iris)
# 使用tail() 回傳iris的後六列
tail(iris)
# 使用str() 
str(iris)
# 使用summary() 查看iris敘述性統計、類別型資料概述。
summary(iris)

########################################################### Task 2
# 使用for loop 印出九九乘法表
# Ex: (1x1=1 1x2=2...1x9=9 ~ 9x1=9 9x2=18... 9x9=81)
aa<-matrix(0,nrow=9,ncol=9)
for(i in 1:9){
  for(j in 1:9){
    aa[i,j]<-paste(i,"X",j,"=",i*j)
  }
}
aa

########################################################### Task 3
# 使用sample(), 產出10個介於10~100的整數，並存在變數 nums
nums<-sample(10:100,10)
# 查看nums
nums

# 1.使用for loop 以及 if-else，印出大於50的偶數，並提示("偶數且大於50": 數字value)
# 2.特別規則：若數字為66，則提示("太66666666666了")並中止迴圈。
for(i in 1:10){
  if(nums[i]==66){
    print("太66666666666了") 
    break
  }else if((nums[i]>50) & (nums[i]%%2==0)){
    print(paste("偶數且大於50:",nums[i]))
  }
}

########################################################### Task 4
# 請寫一段程式碼，能判斷輸入之西元年分 year 是否為閏年

test<-function(x){
  if ((x%%4==0) & (x%%100!=0) | (x%%400==0)){
    print(paste(x,"是閏年"))
  }else{
    print(paste(x,"是平年"))
  }
}

########################################################### Task 5
# 猜數字遊戲
# 1. 請寫一個由電腦隨機產生不同數字的四位數(1A2B遊戲)
# 2. 玩家可重覆猜電腦所產生的數字，並提示猜測的結果(EX:1A2B)
# 3. 一旦猜對，系統可自動計算玩家猜測的次數
answer<-sample(0:9,4)
answer
count<-0
repeat{
  print("請輸入四個不重複數字")
  game<-scan(nmax=4)
  a<-0
  b<-0
  if(!any(duplicated(game))){
    count=count+1
    
    for(i in 1:4){
      if(game[i]==answer[i]){
        a=a+1
      }else{
        for(j in 1:4){
          if(game[i]==answer[j]){
            b=b+1
          }
        }
      }
    }
    
    cat(a,"A",b,"B\n")
    
    if(a==4){
      cat("正確！猜測次數：",count)
      break
    }
    
  }else{
    print("輸入錯誤！請輸入四個不重複數字")
  }
}


