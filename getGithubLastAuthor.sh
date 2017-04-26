#!/usr/bin/env bash
# Usage
# author=$(./getGithubLastAuthor.sh)
# or
# author=$(curl –silent -L 'https://raw.githubusercontent.com/debitoor/teamcity-merge/master/getGithubLastAuthor.sh' | bash)


#Map of emails -> slack usernames

declare -A developers

developers["eagleeyes91@gmail.com"]="eagleeye"
developers["a.bubenshchykov@gmail.com"]="bubenshchykov"
developers["lex@debitoor.com"]="lex"
developers["allan@878.dk"]="ebdrup"
developers["anton.mamant@gmail.com"]="mamant"
developers["mpush@inbox.ru"]="mpushkin"
developers["mpu@debitoor.com"]="mpushkin"
developers["jp@jonatanpedersen.com"]="jonatanpedersen"
developers["ogr@debitoor.com"]="Oligrand";
developers["kollner@gmail.com"]="kollner";
developers["dra@debitoor.com"]="bifrost";
developers["philip.shurpik@gmail.com"]="philipshurpik"
developers["eugene.bianov@gmail.com"]="sedan"
developers["hiller@live.dk"]="hilleer"
developers["whi@debitoor.com"]="whitney"
developers["ajl@debitoor.com"]="ajleoni"
developers["ayverend@gmail.com"]="dasha"
developers["ala@debitoor.com"]="andrea"
developers["hln@debitoor.com"]="hln"
developers["leb@debitoor.com"]="leb"
developers["jkl@debitoor.com"]="janklitsgaard"
developers["asa@debitoor.com"]="alexey"
developers["dph@debitoor.com"]="vietducpham"
developers["sla@debitoor.com"]="sergio"
developers["chp@debitoor.com"]="charles"
developers["lco@debitoor.com"]="laura"
developers["lel@debitoor.com"]="louise"
developers["jlv@debitoor.com"]="jlv"
developers["sophia@debitoor.com"]="sophia"
developers["kar@debitoor.com"]="katerayden"

function getGithubLastAuthor()
{
	author=`git log --pretty=format:'%ae' -n 1`
	githublogin="${developers[$author]}"
	if [ "${githublogin}" = '' ]
	then
		githublogin="${author} (please add this author here: https://github.com/debitoor/teamcity-merge/blob/master/getGithubLastAuthor.sh)"
	fi
	echo $githublogin
}


echo $(getGithubLastAuthor)
