Return-Path: <linux-man+bounces-630-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3224587DC8A
	for <lists+linux-man@lfdr.de>; Sun, 17 Mar 2024 09:10:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 085E1B20FB7
	for <lists+linux-man@lfdr.de>; Sun, 17 Mar 2024 08:10:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81C7EEADB;
	Sun, 17 Mar 2024 08:10:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="kw48wR5G"
X-Original-To: linux-man@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A38D7EAC5
	for <linux-man@vger.kernel.org>; Sun, 17 Mar 2024 08:10:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710663018; cv=none; b=DTyRM6LNu9I3lNi0jO3UiHN2XZgWnsb5RLJUm30No9yi10E2Q/mahnu7ES90OxlAmsevFCDaOb79E0jttae6xKjTD4P/PyqyopTcVzUFg+Fh5/f5pLSPxFllSuzGRH2MmaBwCp4FRhPJPYdDc1ktgKKc6BVTfbfzi3Ky6rslw6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710663018; c=relaxed/simple;
	bh=JaG68i72CqrU9FjV2KzVyCrFxyaU48t9EN3RpuVut1Q=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=GXQDFvMxoZpk1svN+Jf+ZsCIYM0tw8gCpZIn9mAC7fU+UIBkLrezNg7gjkr/obV0FIsfo6euF5nJ08Shmr2cVCe0VO9U6zEKxutC/6XvgbEmmN2K122fkNyLfb4eXyy15U+WXXqQb3pxLHwfTSBZl95qdyeDvdybXnKmXZKnD6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=kw48wR5G; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 48FDE410DC;
	Sun, 17 Mar 2024 09:10:11 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
	by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FfxOPdSo9bS9; Sun, 17 Mar 2024 09:10:09 +0100 (CET)
From: Jeremy Baxter <jtbx@disroot.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1710663009; bh=JaG68i72CqrU9FjV2KzVyCrFxyaU48t9EN3RpuVut1Q=;
	h=From:To:Cc:Subject:Date;
	b=kw48wR5GXHWrRQnHchTlbiI8JiAoXX8vrt2tBw1JMpS60/guM/bj64PQwJPKFD8iK
	 naIcHi4S2Gh9RHGp74mpSca5VPdLcAN6uaAsGbpqE1CEUsj3ehM6cUVmDViY6botRC
	 Cxelpsx8/qCjtUfb5fmvuPIGXP/7Y5m2VSbDPG7uZwZ9gTZSswQ8eNsRXgXaK9krDy
	 k9YUe/+zTvq2+xHkHQjNBo9IGsydxLj7TYrzth9l505vCZD8rNyXg9m0pX4LH6IWkN
	 NeqqfnnIxlSH3HdTKmQa77QBnszh7wfT+Wd0qlK2XkxX1XqUXFLHj4i14/sVToOnkN
	 bmWjP89o8eyWw==
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	Jeremy Baxter <jtbx@disroot.org>
Subject: [PATCH v2 1/6] intro.1: Revise language
Date: Sun, 17 Mar 2024 21:08:28 +1300
Message-ID: <20240317080850.28564-3-jtbx@disroot.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

---
 man1/intro.1 | 222 ++++++++++++++++++++++++++++-----------------------
 1 file changed, 120 insertions(+), 102 deletions(-)

diff --git a/man1/intro.1 b/man1/intro.1
index decaab161..96eb3b7fc 100644
--- a/man1/intro.1
+++ b/man1/intro.1
@@ -7,40 +7,41 @@
 intro \- introduction to user commands
 .SH DESCRIPTION
 Section 1 of the manual describes user commands and tools,
-for example, file manipulation tools, shells, compilers,
-web browsers, file and image viewers and editors, and so on.
+for example file manipulation tools, shells, compilers,
+web browsers, file and image viewers, editors, and so on.
 .SH NOTES
-Linux is a flavor of UNIX, and as a first approximation
-all user commands under UNIX work precisely the same under
-Linux (and FreeBSD and lots of other UNIX-like systems).
+Linux is a flavor of UNIX, and many user commands under UNIX work
+approximately the same under Linux (along with other UNIX-like systems,
+such as the BSDs).
 .P
-Under Linux, there are GUIs (graphical user interfaces), where you
-can point and click and drag, and hopefully get work done without
-first reading lots of documentation.
-The traditional UNIX environment
-is a CLI (command line interface), where you type commands to
-tell the computer what to do.
-That is faster and more powerful,
-but requires finding out what the commands are.
-Below a bare minimum, to get started.
+Under Linux, there are graphical user interfaces (GUIs),
+where, using a mouse, you click and drag buttons and sliders and icons,
+and hopefully get work done without first reading much documentation.
+The traditional UNIX environment is a command line interface (CLI),
+where you type commands to tell the computer what to do.
+The command line interface is faster and more powerful than
+a graphical interface,
+but first requires finding out what commands you have and how they are used.
+A minimal guide is provided below to help you get started.
 .SS Login
-In order to start working, you probably first have to open a session by
-giving your username and password.
-The program
+In order to start working, you'll probably have to open a session
+by typing your username and password.
+After this, the program
 .BR login (1)
-now starts a
+starts a
 .I shell
 (command interpreter) for you.
-In case of a graphical login, you get a screen with menus or icons
-and a mouse click will start a shell in a window.
+In case of a graphical login, you'll get a screen with menus and/or icons.
+By using your mouse to click on one of these menus or icons,
+you can start a shell in a window.
 See also
 .BR xterm (1).
 .SS The shell
-One types commands to the
+One types commands into the
 .IR shell ,
 the command interpreter.
-It is not built-in, but is just a program
-and you can change your shell.
+It isn't built-in, but it's just a program included with the operating system.
+There are many different shells.
 Everybody has their own favorite one.
 The standard one is called
 .IR sh .
@@ -53,7 +54,7 @@ See also
 .BR ksh (1),
 .BR zsh (1).
 .P
-A session might go like:
+A session might look like this:
 .P
 .in +4n
 .EX
@@ -99,89 +100,96 @@ $
 .EE
 .in
 .P
-Here typing Control-D ended the session.
+Pressing Control-D ended the session.
 .P
-The
+The symbol
 .B $
 here was the command prompt\[em]it is the shell's way of indicating
 that it is ready for the next command.
-The prompt can be customized
-in lots of ways, and one might include stuff like username,
-machine name, current directory, time, and so on.
+The prompt can be customized in lots of ways, and one might include
+information like the username, machine name, current directory, the time,
+and so on.
 An assignment PS1="What next, master? "
 would change the prompt as indicated.
 .P
-We see that there are commands
+From this example we can see that there is the command
 .I date
-(that gives date and time), and
+(which outputs the date and time), and the command
 .I cal
-(that gives a calendar).
+(which outputs a calendar).
 .P
 The command
 .I ls
 lists the contents of the current directory\[em]it tells you what
 files you have.
-With a
+Given a
 .I \-l
-option it gives a long listing,
-that includes the owner and size and date of the file, and the
-permissions people have for reading and/or changing the file.
-For example, the file "tel" here is 37 bytes long, owned by aeb
-and the owner can read and write it, others can only read it.
-Owner and permissions can be changed by the commands
+option
+.I ls
+outputs a long listing,
+which includes the owner of the file, its size, the date it was last
+modified, as well as the permissions people have for reading and/or
+writing to the file.
+For example, the file "tel" here is 37 bytes long, owned by the user aeb.
+The owner can read and write to it, but others can only read it.
+The owner and permissions of a file can be changed by the commands
 .I chown
 and
-.IR chmod .
+.I chmod
+respectively.
 .P
 The command
 .I cat
 will show the contents of a file.
-(The name is from "concatenate and print": all files given as
-parameters are concatenated and sent to "standard output"
+The name is from "concatenate and print": all files given as
+parameters are concatenated and written to "standard output"
 (see
 .BR stdout (3)),
 here
-the terminal screen.)
+the terminal screen.
 .P
 The command
 .I cp
-(from "copy") will copy a file.
+(from "copy") copies a file.
 .P
 The command
 .I mv
-(from "move"), on the other hand, only renames it.
+(from "move"), on the other hand, renames a file.
 .P
 The command
 .I diff
 lists the differences between two files.
-Here there was no output because there were no differences.
+In this example there was no output because there were no differences
+between the two.
 .P
 The command
 .I rm
-(from "remove") deletes the file, and be careful! it is gone.
-No wastepaper basket or anything.
+(from "remove") deletes a file, but be careful!
+Any file you remove with
+.I rm
+will be gone forever.
+No rubbish bin or anything.
 Deleted means lost.
 .P
 The command
 .I grep
 (from "g/re/p") finds occurrences of a string in one or more files.
-Here it finds Maja's telephone number.
+In this example, we use it to find Maja's telephone number.
 .SS Pathnames and the current directory
-Files live in a large tree, the file hierarchy.
-Each has a
+Files live in a large tree, called the file hierarchy.
+Each file has a
 .I "pathname"
-describing the path from the root of the tree (which is called
-.IR / )
-to the file.
-For example, such a full pathname might be
+describing the location of the file from the root of the tree
+(whose pathname is
+.IR / ).
+For instance, a full pathname might be
 .IR /home/aeb/tel .
-Always using full pathnames would be inconvenient, and the name
-of a file in the current directory may be abbreviated by giving
-only the last component.
-That is why
+Using full pathnames all the time would be very inconvenient.
+The name of a file in the current directory may be shortened by only
+using the last component (the part relative to the current directory).
+That's why
 .I /home/aeb/tel
-can be abbreviated
-to
+can be shortened to
 .I tel
 when the current directory is
 .IR /home/aeb .
@@ -194,13 +202,11 @@ The command
 .I cd
 changes the current directory.
 .P
-Try alternatively
+Try using the
 .I cd
 and
 .I pwd
-commands and explore
-.I cd
-usage: "cd", "cd .", "cd ..", "cd /", and "cd \[ti]".
+commands in different ways.
 .SS Directories
 The command
 .I mkdir
@@ -208,67 +214,79 @@ makes a new directory.
 .P
 The command
 .I rmdir
-removes a directory if it is empty, and complains otherwise.
+removes an empty directory. If the directory is not empty,
+.I rmdir
+outputs an error message.
 .P
 The command
 .I find
-(with a rather baroque syntax) will find files with given name
-or other properties.
-For example, "find . \-name tel" would find
-the file
-.I tel
-starting in the present directory (which is called
+(which has a rather strange syntax) will find files with a given name
+or other specified properties.
+For example, "find . \-name tel" would find files with the name
+.I tel ,
+starting the search in the current directory (which is represented by
 .IR . ).
-And "find / \-name tel" would do the same, but starting at the root
-of the tree.
-Large searches on a multi-GB disk will be time-consuming,
-and it may be better to use
+Using the command "find / \-name tel" would do the same,
+except it would it would start at the root of the directory tree.
+Large searches on a multi-gigabyte disk can be time-consuming;
+if you find yourself doing this, it may be more efficient to use
 .BR locate (1).
 .SS Disks and filesystems
 The command
 .I mount
-will attach the filesystem found on some disk (or floppy, or CDROM or so)
-to the big filesystem hierarchy.
-And
+will attach the filesystem found on a disk (or a USB drive, CD-ROM etc.)
+to a directory in the filesystem hierarchy.
+When you are finished working with your disk, you can use
 .I umount
-detaches it again.
+to detach it again.
 The command
 .I df
-will tell you how much of your disk is still free.
+will tell you how much of your disk's space is free.
 .SS Processes
-On a UNIX system many user and system processes run simultaneously.
-The one you are talking to runs in the
+On a UNIX system, many user and system processes run simultaneously.
+The one you are currently using (e.g. your shell) runs in the
 .IR foreground ,
-the others in the
+while other processes run in the
 .IR background .
 The command
 .I ps
-will show you which processes are active and what numbers these
-processes have.
+will list active processes and each one's ID.
 The command
 .I kill
-allows you to get rid of them.
-Without option this is a friendly
-request: please go away.
-And "kill \-9" followed by the number
-of the process is an immediate kill.
+allows you to stop processes.
+Running
+.I kill
+without any options sends a friendly request to a process:
+"please clean up and finish now".
+If this doesn't work, you can use "kill \-9" followed by the ID of the
+process to immediately kill it; the process will have no time to clean up.
 Foreground processes can often be killed by typing Control-C.
 .SS Getting information
 There are thousands of commands, each with many options.
-Traditionally commands are documented on
-.IR "man pages" ,
-(like this one), so that the command "man kill" will document
-the use of the command "kill" (and "man man" document the command "man").
+Traditionally, commands are documented on
+.I "man pages"
+like this one.
+Man pages can be accessed via the
+.I man
+command.
+For example, the command "man kill" will bring up a manual
+for the "kill" command.
+"man man" will bring up a manual for
+.I man
+itself.
 The program
 .I man
-sends the text through some
+sends the text through a
 .IR pager ,
 usually
 .IR less .
-Hit the space bar to get the next page, hit q to quit.
+Using
+.IR less ,
+you can press the space bar to see the next page, the "b" key to see
+the previous page, and "q" to quit.
 .P
 In documentation it is customary to refer to man pages
-by giving the name and section number, as in
+by using the name followed by the section number in brackets, as in
 .BR man (1).
 Man pages are terse, and allow you to find quickly some forgotten
 detail.
@@ -280,10 +298,10 @@ Type "info info"
 for an introduction on the use of the program
 .IR info .
 .P
-Special topics are often treated in HOWTOs.
-Look in
-.I /usr/share/doc/howto/en
-and use a browser if you find HTML files there.
+Some topics can be documented in HOWTO files.
+To find these, look for HTML files in
+.IR /usr/share/doc/howto/en ,
+and use a web browser to view them.
 .\"
 .\" Actual examples? Separate section for each of cat, cp, ...?
 .\" gzip, bzip2, tar, rpm
-- 
2.44.0


