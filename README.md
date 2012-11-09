##Butler is an Alfred extension

1. Clone the repo

```git clone git@github.com:kcurtin/butler.git```

2. Drag the folder into "Drop to Install" to create a new Shell Script
![Installing the extension](https://github.com/kcurtin/butler/blob/master/alfred_preferences.png)

3. Start using it

Butler saves the items you add to it in a simple butler.txt file.
Butler can be used as a scratch pad, a todo list, or just a place to dump ideas and reminders. It is lightweight and easy to use.

Launch Alfred with your global shortcut. The character 'b' will trigger the butler extension:

```
b write that blog post #blog 1 

#=> creates a new item 'write that blog post' with a tag 'blog' and a priority '1'
```

```
b list
#=> lists the contents of your butler.txt as a notification
```

```
b open
#=> shortcut for opening up your butler.txt file in sublime text
```


###Using butler from the command line:

Add this to your .bash_profile:

```bash
function butler {
  ruby /Users/topica/Library/Application\ Support/Alfred/extensions/scripts/butler/butler.rb $@
}
```

```butler list```

![Pretty terminal output](http://cl.ly/image/0O3F1q1U3J3u)


```butler open```  will open up your butler.txt file in sublime text 2



