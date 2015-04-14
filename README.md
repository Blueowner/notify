# Notify
## The simplest notifier you can find on the World Wide Web.

### Installation
- Clone the repository: `git clone https://github.com/Blueowner/notify.git`
- `cd` in the directory: `cd notify`
- Fire your first notification: `./notify.sh -t "You look amazing today."`
- (Optional) Symlink the script in your `PATH`: `ln -s "$(pwd)/notify.sh" /usr/local/bin/notify`

### Usage
From the repository directory:
```bash
./notify.sh --title "Dependencies updated." --subtitle "You can now commit and push to GitHub." --body "'composer update' has finished."
```
From anywhere, if you've created the symlink:
```bash
notify --title "Dependencies updated." --subtitle "You can now commit and push to GitHub." --body "'composer update' has finished."
```

### Options
- `-t|--title`: Notification title 
- `-s|--subtitle`: Notification subtitle
- `-b|--body`: Notification body

### Use cases
Imagine we're updating our repository dependencies with a slow internet connection or from a VCS, we can run the following command
```bash
composer update && notify -t "Composer has finished."
```
to get notified as soon as Composer has finished.
