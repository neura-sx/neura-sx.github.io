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
-- they're rotated automatically after 24 hours anyway  
-- if you don't use them you should probably modify `config.ini` so they aren't written to disk in the first place.

===
######  How can I import to my CLI client a wallet originally created in the web GUI? I would expect something like "restore_backup" command that would accept a *.bin wallet file.
CLI and WEB wallet are two separated applications. They use separated ways to represent backups. I think you can currently only manually import keys from the gui into the cli.

===
###### I'd like to create and register a new account in my CLI wallet and pay for the registration from an existing account in the web GUI. How do I do this?
It doesn't work that way with the current implementation.  
But you can work around it but importing an active key of an account that has funds:

1. In the gui, go to the permissions tab of an account that is funded and has a **Lifetime Member** status.
2. Click on the BTS public key on the ACTIVE tab and copy the private key.
3. In the cli-wallet run:  
`import_key <account_name> <private_key>`
4. Then run:  
`suggest_brain_key`  
and copy the brain key. (You might want to make a backup of your brain key somewhere.)
5. Create a new account with this command:  
`create_account_with_brain_key <brainkey> <new_account_name> <imported_name> <imported_name> true`

This will create a new account called `new_account_name` and set the registrar and referrer to `<imported_name>`.
The brainkey can be used to regenerate the account (even in the gui wallet).  
You can manually delete the other active key from the `wallet.json` file. 

