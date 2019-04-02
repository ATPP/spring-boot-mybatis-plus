# spring-boot-mybatis-plus

genertator 中的 AutoGeneratorHelper 是代码生成器，resources下的mybatis-plus.properties中配置要生成代码的数据表

pom中引用的jar版本替换可能会导致依赖冲突，可全多选择引用最新版本
mysql-connector-java用的是5.1.46版本对应driverClassName = "com.mysql.jdbc.Driver"，
当使用6+版本时，需要使用driverClassName = "com.mysql.cj.jdbc.Driver"

sql在resource的sqlData中，字符集使用utf-8