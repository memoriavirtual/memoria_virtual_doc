#!/usr/bin/env ruby

repo_path ='/svn_storage/redmine_test/'
svnlook = '/usr/bin/svnlook'
psql = '/usr/bin/psql'
password ='XpfkK8posGTN'

#commit_log = `#{svnlook} log -t %2 #{repo_path}`
commit_files = `#{svnlook} changed #{repo_path}`
str=commit_files
#if (commit_log == nil)
#  STDERR.puts("Mensagem nao pode estar vazia.")
#  exit(1)
 if (str.lines.count>10)
        STDERR.puts ("Commit nao pode alterar mais do que 10 arquivos")
        exit (1)
#consulta = "SELECT COUNT(*) from issues I, issue_statuses S  WHERE S.id=I.status_id AND S.is_closed ='f' AND I.id=527"


#`#{psql} -d redmine_default -U redmine -w`

#STDERR.puts()
