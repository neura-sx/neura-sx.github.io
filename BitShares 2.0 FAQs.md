===
###### How can I close the witness node in a clean way?
In windows use `ctrl-c`.

===
###### How can I close the CLI client in a clean way?
There seems to be no command for that (something like "exit" or "quit").  
In Windows closing the whole window produces a nasty exception.  
In Windows you can try `ctrl-d` which stops the process but stil porduces a nasty exception.

===
###### Regarding the witness node, is it safe to delete logs stored in `witness_node_data_dir\logs\p2p`?
Yes, but
- they're rotated automatically after 24 hours I think
- if you delete them anyway you should probably modify config.ini so they aren't written to disk in the first place.

