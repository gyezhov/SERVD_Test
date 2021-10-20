[![Codacy Badge](https://api.codacy.com/project/badge/Grade/ec121ba6ca61445483fb0017e526acf1)](https://www.codacy.com?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=TCNJSwEngg/servd&amp;utm_campaign=Badge_Grade)

# SERVD
Web application for the Community Engaged Learning (CEL) administrators, local community service organizations, and college students to list, manage, and volunteer for upcoming opportunities in the local area.

## Development Setup

### Install Ruby on Rails & PostgreSQL for your machine:
Ruby (3.0.2) & Rails (6.0.3): 
https://gorails.com/setup/

> **TCNJ students using a VM:** In the installruby.sh file, change the ruby and rails versions accordingly!

> Your VMs should currently already have ruby (3.0.2) installed, but the Rails version may not be (6.0.3). To use this Rails version, modify your gemfile so the rails gem is exactly as follows: `gem 'rails', '~> 6.0.3'`. Then, AFTER having run `bundle install`, run the following command in the `src` folder: `bundle update rails`.

> To check your version, you can always enter `rails -v` or `rails --version`.

### Install this repository: 

    git clone https://github.com/gyezhov/SERVD_Test.git

Once cloned, navigate to the servd/code directory (src) and install the project dependencies. 

    bundle install
    
    *you may need to update the Ruby version to be compatible with your VM, if you receive an error message after trying to run `bundle install` you must alter the .ruby-version file 
    - you can do this through a text editor by entering `vi .ruby-version` (if using Vim) or `notepad .ruby-version` (on Windows) and once in the file change the ruby version to match the version of ruby installed on your VM.  
    - to check the version of Ruby that is installed in your VM enter `ruby -v`   
    
If `bundle install` fails with an error from the pg gem, run the following command
    
    `sudo yum install postgresql-libs postgresql-devel`
    
If you *still* encounter errors, try restarting PostgreSQL.

For CentOS:
```sh
$ sudo systemctl restart postgresql
```

For MacOS:
```sh
$ pg_ctl -D /usr/local/var/postgres start
   ```

If you're ***still*** encountering errors, reach out to someone.

### Create the databases and perform migration:

    rake db:create
    rake db:migrate:reset
    rake db:migrate
    rake db:seed

### Finally, run the app.
Find the correct binding for your VM if you're using one. Use the `--binding` flag or you won't be able to view the site from your browser.

    `rails server --binding ="your ip address of your virtual machine"`
    
The app should be available in the browser at [localhost:3000](localhost:3000).
*where localhost is replaced by your server name (ex http://csc415-serverxx.hpc.tcnj.edu:3000/)


### Administration

To access the admin interface, go to the /admin page. It's powered by rails admin. (A remake of django-admin)
"# SERVD_Test" 
"# SERVD_Test" 
