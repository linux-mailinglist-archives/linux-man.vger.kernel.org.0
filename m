Return-Path: <linux-man+bounces-603-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EE33E87C4EF
	for <lists+linux-man@lfdr.de>; Thu, 14 Mar 2024 22:58:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 79013282F57
	for <lists+linux-man@lfdr.de>; Thu, 14 Mar 2024 21:58:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBEB976418;
	Thu, 14 Mar 2024 21:58:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="U4sWnoFc"
X-Original-To: linux-man@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8640C768E5
	for <linux-man@vger.kernel.org>; Thu, 14 Mar 2024 21:58:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710453522; cv=none; b=maNFNOnvo3NL6Bi0YGtCKPCP2VRWsD9hsRmcjjLQvUq952yEgtO4G+oPbnBmxXyDlVm64yVKGR3E4a+xtsD4mmSWILAtGuxiw0574rOuY2Lb+1ggY/Eim+nvnKPPJlxE3y5mYXusJJ34p7q1y1mhi7w9PCRtgXYv1mQG35yEtng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710453522; c=relaxed/simple;
	bh=wqxLpy5CLY/H6Z9Y+Gc71SHkL6mZUnG7EdphIIC/x7M=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:Subject:Cc:To; b=XQ11xul98+zLkWiVy9G0iVpmXps6sY+sLHBuEdjka8eikYSUGAFsA16sgSrCWPvotYK9cWf9K+m9KgEQGVeq151Qqtb84EbhjNwTT4TEacNDhuZ42+BKgy7fPEptASrCmCSQ69VAKgB7tQGvZaNvB4UmhLQZWgNcFCo1ybuXQCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=U4sWnoFc; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id C329D410A8;
	Thu, 14 Mar 2024 22:58:30 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
	by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kuYZAsl9HTsW; Thu, 14 Mar 2024 22:58:29 +0100 (CET)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1710453509; bh=wqxLpy5CLY/H6Z9Y+Gc71SHkL6mZUnG7EdphIIC/x7M=;
	h=Date:From:Subject:Cc:To;
	b=U4sWnoFcSewtxN8e4WidheRU/Hwpy74zLLKsQIikTRszF76bZdv0CfqDJcZztmJQj
	 xT0g6JXS+haJV+yg3CHKAgDRXlMvksgXNQcg2TfgFavhShms/i6/pR76m3NzhCpalK
	 4lQGUCBC4cibfMwalg2xHPWmELFrAnq2NTIK88zXyTrzquvAJjQu2gK72KggoZZKwS
	 9jni+ujMCH4P+WWWyuaCo7cy9nKK8gSG21BKDPWap0rsRKxZzHdyHhmT5C1scfDdbv
	 7b1pIhtrhM3sOAENmC/+p36aM1QvWHHS0uBxIE9BW4+GbG9N7WXSl4OM2+aHhU/fr7
	 DjTEH1tJVgLEQ==
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 15 Mar 2024 10:58:22 +1300
Message-Id: <CZTT5VGOOCL4.2QQZNEEZ611D1@disroot.org>
From: "Jeremy Baxter" <jtbx@disroot.org>
Subject: [PATCH] intro.1: Revise
Cc: <linux-man@vger.kernel.org>
To: "Alejandro Colomar" <alx@kernel.org>

Revise intro(1). This manual is very old now and needs some fixing
up. Mainly this involves clarifying language but also adding more
information, such as in the introduction of the shell prompt and
special cases surrounding usage of the cd commmand.

Signed-off-by: Jeremy Baxter <jtbx@disroot.org>
---
 man1/intro.1 | 242 +++++++++++++++++++++++++++++----------------------
 1 file changed, 137 insertions(+), 105 deletions(-)

diff --git a/man1/intro.1 b/man1/intro.1
index decaab161..19b423210 100644
--- a/man1/intro.1
+++ b/man1/intro.1
@@ -7,40 +7,40 @@
 intro \- introduction to user commands
 .SH DESCRIPTION
 Section 1 of the manual describes user commands and tools,
-for example, file manipulation tools, shells, compilers,
-web browsers, file and image viewers and editors, and so on.
+for example file manipulation tools, shells, compilers, web browsers,
+file and image viewers, editors, and so on.
 .SH NOTES
-Linux is a flavor of UNIX, and as a first approximation
-all user commands under UNIX work precisely the same under
-Linux (and FreeBSD and lots of other UNIX-like systems).
+Linux is a flavor of UNIX, and many user commands under UNIX work
+approximately the same under Linux (along with other UNIX-like systems
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
+Under Linux, there are graphical user interfaces (GUIs), where you can
+point and click and drag using a mouse, and hopefully get work done
+without first reading lots of documentation.
+The traditional UNIX environment is a command line interface (CLI),
+where you type commands to tell the computer what to do.
+This is faster and more powerful than a graphical interface, but requires
+finding out what commands you have and how to use them.
+Below is a bare minimum guide to help you get started.
 .SS Login
-In order to start working, you probably first have to open a session by
-giving your username and password.
-The program
+In order to start working, you'll probably have to open a session by
+typing your username and password.
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
+It's not built-in, but just a program included with the operating system.
+There are many different shells.
 Everybody has their own favorite one.
 The standard one is called
 .IR sh .
@@ -53,7 +53,7 @@ See also
 .BR ksh (1),
 .BR zsh (1).
 .P
-A session might go like:
+A session might look like this:
 .P
 .in +4n
 .EX
@@ -99,89 +99,100 @@ $
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
-An assignment PS1=3D"What next, master? "
+The prompt can be customized in lots of ways, and one might include
+information like the username, machine name, current directory, the time,
+and so on.
+It can be changed by setting the value of the "PS1" (prompt string 1)
+variable.
+An assignment
+.B PS1=3D"What next, master?\ "
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
+which includes the owner of the file, its size, the date the file was last
+modified, as well as the permissions people have for reading and/or changi=
ng
+the file. For example, the file "tel" here is 37 bytes long, owned by the
+user aeb. The owner can read and write to it, but others can only read it.
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
+The name is from "concatenate and print": all files given as
 parameters are concatenated and sent to "standard output"
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
+In this example there was no output because there were no differences.
 .P
 The command
 .I rm
-(from "remove") deletes the file, and be careful! it is gone.
-No wastepaper basket or anything.
+(from "remove") deletes a file, and be careful! Any file you
+remove with
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
+In this hierarchy, there are many
+.IR directories ;
+a directory is simply a file that can hold other files as opposed to text.
+Each file has a
 .I "pathname"
-describing the path from the root of the tree (which is called
-.IR / )
-to the file.
-For example, such a full pathname might be
+describing the location of the file from the root of the tree
+(whose pathname is
+.IR / ).
+For example, a full pathname might be
 .IR /home/aeb/tel .
-Always using full pathnames would be inconvenient, and the name
-of a file in the current directory may be abbreviated by giving
-only the last component.
-That is why
+Always using full pathnames would be inconvenient.
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
@@ -194,13 +205,30 @@ The command
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
+commands.
+.I cd .
+changes the current directory to the path to the current directory;
+this does nothing.
+.I cd ..
+changes the current directory to the parent directory of the current
+directory.
+For instance, if our current directory is
+.I /home/aeb
+and we change the current directory to
+.IR .. ,
+the current directory will now be
+.IR /home .
+.I cd /
+changes the current directory to the root of the hierarchy.
+.I cd \[ti]
+changes the current directory to the user's home; if I am logged in as
+.IR aeb ,
+this command will change my current directory to
+.IR /home/aeb .
 .SS Directories
 The command
 .I mkdir
@@ -208,82 +236,86 @@ makes a new directory.
 .P
 The command
 .I rmdir
-removes a directory if it is empty, and complains otherwise.
+removes a directory if it is empty, and outputs an error otherwise.
 .P
 The command
 .I find
-(with a rather baroque syntax) will find files with given name
-or other properties.
-For example, "find . \-name tel" would find
-the file
-.I tel
-starting in the present directory (which is called
+(with a rather strange syntax) will find files with a given name
+or other specified properties.
+For example, "find . \-name tel" would find the file
+.I tel ,
+starting the search in the current directory (which is called
 .IR . ).
-And "find / \-name tel" would do the same, but starting at the root
-of the tree.
-Large searches on a multi-GB disk will be time-consuming,
-and it may be better to use
+The command "find / \-name tel" would do the same, but rather it would
+start at the root of the directory tree.
+Large searches on a multi-gigabyte disk can be time-consuming,
+and it may be more efficient to use
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
+The one you are currently using runs in the
 .IR foreground ,
-the others in the
+while the others run in the
 .IR background .
 The command
 .I ps
-will show you which processes are active and what numbers these
+will show you which processes are active and what IDs these
 processes have.
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
 Traditionally commands are documented on
-.IR "man pages" ,
-(like this one), so that the command "man kill" will document
-the use of the command "kill" (and "man man" document the command "man").
+.I "man pages"
+like this one, so that the command "man kill" will bring up a manual
+for the command "kill" (and "man man" will bring up a manual for the
+command "man").
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
+you can press the space bar to get the next page, the "b" key to get
+the previous page, and "q" to quit.
 .P
 In documentation it is customary to refer to man pages
 by giving the name and section number, as in
 .BR man (1).
-Man pages are terse, and allow you to find quickly some forgotten
-detail.
-For newcomers an introductory text with more examples
-and explanations is useful.
 .P
-A lot of GNU/FSF software is provided with info files.
-Type "info info"
-for an introduction on the use of the program
-.IR info .
+Man pages are concise, and allow you to quickly find some forgotten
+detail.
+An introduction with more examples and explanations is useful for newcomer=
s.
+For this purpose, a lot of GNU/FSF software is provided with info files.
+Use the command "info info" for an introduction on using the
+.I info
+program.
 .P
-Special topics are often treated in HOWTOs.
+Special topics are often documented in HOWTOs.
 Look in
 .I /usr/share/doc/howto/en
-and use a browser if you find HTML files there.
+and use a web browser if you find HTML files there.
 .\"
 .\" Actual examples? Separate section for each of cat, cp, ...?
 .\" gzip, bzip2, tar, rpm
--=20
2.44.0


