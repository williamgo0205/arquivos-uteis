/* ************************************************************************************************************************************************ */
1 - Repositório Maven bibliotecas:
/* ************************************************************************************************************************************************ */
https://mvnrepository.com

/* ************************************************************************************************************************************************ */
2 - Repositório do Maven (Apache)
/* ************************************************************************************************************************************************ */
http://repo.maven.apache.org/maven2/

/* ************************************************************************************************************************************************ */
3 - Comandos Maven Treinamento:
/* ************************************************************************************************************************************************ */

-- Criar projeto Maven utilizando o projeto default "quickstart"
mvn archetype:generate -DartifactId=produtos -DgroupId=br.com.alura.maven -DinteractiveMode=false -DarchetypeArtifactId=maven-archetype-quickstart

--comandos maven
mvn compile (Compila o projeto)

mvn test (compila os testes)
mvn -o test (compila os testes mas não baixa nada da internet pois baixa de forma offline)

mvn clean (limpa o projeto)

mvn surefire-report:report (plugin para a utilização de relatório: cria o arquivo "surefire-report.html" em ..\target\site)

mvn package (roda as packages - gera o relatório jar)

-- Observações
java -cp produtos-1.0-SNAPSHOT.jar br.com.alura.maven.App (builda apenas a Classe APP do Jar gerado)

/* ************************************************************************************************************************************************ */
4 - Fases do Maven
/* ************************************************************************************************************************************************ */

> validate - validate the project is correct and all necessary information is available
> compile - compile the source code of the project
> test - test the compiled source code using a suitable unit testing framework. These tests should not require the code be packaged or deployed
> package - take the compiled code and package it in its distributable format, such as a JAR.
> verify - run any checks on results of integration tests to ensure quality criteria are met
> install - install the package into the local repository, for use as a dependency in other projects locally
> deploy - done in the build environment, copies the final package to the remote repository for sharing with other developers and projects.

/* ************************************************************************************************************************************************ */
5 -  Relatórios
/* ************************************************************************************************************************************************ */

Maven PMD - Relatório para validar os bugs do código do sistema
  comando: mvn pmd:pmd
  
Valida o projeto e falha caso tenha erro no projeto
  comando: mvn pmd:check 

Adicionar o plugin necessário, nesse caso para check do projeto executando "mvn verify"

  <build>
  	<plugins>
    	<plugin>      
           <groupId>org.apache.maven.plugins</groupId>
           <artifactId>maven-pmd-plugin</artifactId>
           <version>3.12.0</version>          
           <executions>
          	  <execution>
                 <phase>verify</phase>
               	 <goals>
                     <goal>check</goal>
               	 </goals>
              </execution>        
          </executions>     
        </plugin>   
     </plugins>
  </build>  

link: https://maven.apache.org/plugins/maven-pmd-plugin/usage.html

/* ************************************************************************************************************************************************ */
6 - Pluggin de cobertura de testes
/* ************************************************************************************************************************************************ */

Goals
The JaCoCo Maven plug-in defines the following goals:

help
prepare-agent
prepare-agent-integration
merge
report
report-integration
report-aggregate
check
dump
instrument
restore-instrumented-classes

comando: mvn jacoco:help

link: https://www.eclemma.org/jacoco/trunk/doc/maven.html

/* ************************************************************************************************************************************************ */
6 - Pluggin Jetty para projeto web
/* ************************************************************************************************************************************************ */

comando: mvn jet:run