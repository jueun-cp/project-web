# project Web

## Project

### JSP와 MySQL을 연동하여 회원가입 페이지 만들기

<br/>

## Developer
* [Jueun](https://github.com/jueun-cp)    
* [Gyeondo](https://github.com/GyeongDo97)
* Suin 
* Wooju

## IDE
* Ecilpse

## Program setting
1. install [Tomcat server](https://tomcat.apache.org/download-90.cgi)

2. setting server port 8005 

3. install [MySQL](https://www.mysql.com/downloads/)   

4. add JDBC Driver in lib

## Git command

### Make a new branch and push origin new branch repository !

<br/>

1. create branch and checkout  
```
	git checkout -b branch-name
```
2. add file
```
	git add file-name 
```
3. write commit log 
```
	 git commit -m "commit log" 
```
4. upload remote repository
```
	 git push origin branch-name
```


## Code construction

```
├─ README.md 
├─ .gitignore
└─ Web 0000
    │─ .project 
    │─ .classpath 
    └─ src/main                  
        │─ META-INF  
        │─ img   
        │─ checkId.jsp
        │─ checkLogin.jsp
        │─ confirmFail.jsp
        │─ confirmSuccess.jsp
        │─ login.jsp
        │─ loginFail.jsp
        │─ loginSuccess.jsp
        │─ memberRegister.jsp
        │─ register.css
        │─ registData.jsp
        └─ style.css 
                 
```
<br>


## Code explanation
| jsp | function 
|---|:---:
| `checkId.jsp` | 데이터베이스에 있는 ID와 중복이 되는지 확인
| `checkLogin.jsp` | 입력한 정보가 데이터베이스에 있는 ID와 PW와 동일한지 확인
| `confirmFail.jsp` | 입력한 아이디가 중복된 아이디이면 해당 페이지를 보여줌
| `confirmSuccess.jsp` | 입력한 아이디가 중복되지 않은 아이디이면 해당 페이지를 보여줌
| `login.jsp` | 로그인 페이지
| `loginFail.jsp` | 로그인이 실패되었을 때 보여주는 페이지
| `loginSuccess.jsp` | 로그인이 성공되었을 때 보여주는 페이지
| `memberRegister.jsp` | 회원가입 페이지
| `registData.jsp` | 회원가입에서 입력된 데이터를 DB에 보내는 페이지

<br>

| css | function  
|---|:---:
| `register.css` | memberRegister.jsp UI 추가 
| `style.css` | login.jsp UI 추가

<br>
