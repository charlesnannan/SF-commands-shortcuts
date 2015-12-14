_SF commands shortcuts_ is a tiny AutoHotkey script to write Symfony commands efficiently. If you are familiar with tools like Emmet, you know what to expect.

Installing
==========

You don't have to install anything.  
Download the _.ahk_ file if AutoHotkey is installed on your system (mandatory if you want to edit the script), otherwise the executable.

Usage
===== 
A shortcut consists of an acronym of what follows `php app/console`, prefixed with an underscore (by default). To install assets, for example, you take the _a_ from _assets_ and the _i_ from _install_: `_ai`, and you get the output: `php app/console assets:install`.  
Another example: type `_dccm` and you get `php app/console doctrine:cache:clear-metadata`. That's it.

To list all the commands available in your Symfony project, just type a double underscore: `__`.

When a shortcut can lead to different results, you need to complete the command name manually:  
`_td` will produce
```
REM [t]ranslation | [t]wig  
php app/console t:debug
```
Spaces and caret position are handled accordingly.

If you have forgotten a nested word, you can enter his parent to display a reminder on a comment line:  
`_d:schema` will produce
```
REM :create | :drop | :update | :validate  
php app/console doctrine:schema:
```


Customization
=============

Shortcuts prefix
----------------
You can change or remove the default prefix (i.e. an underscore) with a basic search and replace.

Ending characters
-----------------
By default, hotstrings are triggered with the tab key. You can edit line 7 to add more. For example:
```
#Hotstring EndChars -()[]{}:;'"/\,.?!`n `t
```


FAQ
===

Why the shortcuts do nothing
----------------------------
To avoid unintended effects, the script operates only on console windows. Perhaps you are using a console emulator which is not already taken into account. Append a new line with your software process name: `GroupAdd, consoles, ahk_exe ProcessName.exe`.

Which commands are available
----------------------------
In addition to the standard Symfony distribution, the script currently includes commands from the following bundles: _FOS User_ and _Doctrine Fixtures_.

How to make the script work with Symfony 3
------------------------------------------
Simply replace all the occurrences of `app/console` with `bin/console`.