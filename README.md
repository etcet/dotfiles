Example:

Set up a user. For example, 'cjames' in the 'ops' group:

./dotbot/bin/dotbot -c groups/ops/conf.yml
./dotbot/bin/dotbot -c users/cjames/conf.yml


Ansible proposal

- Use deploy key to pull repo to /usr/local/dotfiles
- In (or after) roles/auth-ng/tasks/users.yml, for each user run:
    - dotbot -c groups/{{ primary_group }}/conf.yml
    - dotcot -c user/{{ user }}/conf.yml

Alternatively, supposing there is desire for more granularity than using primary groups each user could have a script which includes the dotbot includes they want.
