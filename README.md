# cs290-setup
Bash scripts to set up the Node.js environment for OSU's CS290 (Web Development) course.

WARNING: while this provides a convenient way to install the server tools necessary in the course,
it does not serve as a substitute for knowledge of what is being installed. Users of these scripts
should familiarize themselves with the course material enough to know what the scripts are doing and why.

## How to Use
Upon successful SSH into the OSU servers, the scripts may be run from the terminal a few ways:

### Run directly from web

  #### Setup script (run first):

    bash <(https://raw.githubusercontent.com/coucoulr/cs290-setup/main/setup_cs290.sh)

  #### Run Node script:

    bash <(https://raw.githubusercontent.com/coucoulr/cs290-setup/main/start_node_cs290.sh)

### Download and run locally

  #### Setup script (run first):

    wget https://raw.githubusercontent.com/coucoulr/cs290-setup/main/setup_cs290.sh
    chmod +x setup_cs290.sh
    ./setup_cs290.sh

  #### Run Node script:

    wget https://raw.githubusercontent.com/coucoulr/cs290-setup/main/start_node_cs290.sh
    chmod +x start_node_cs290.sh
    ./start_node_cs290.sh

As always, running any scripts directly from the web carries a risk. Be sure you know what you are
running before executing a script straight from the web.