Return-Path: <linux-man+bounces-664-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 568ED87F094
	for <lists+linux-man@lfdr.de>; Mon, 18 Mar 2024 20:50:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 75F621C21B41
	for <lists+linux-man@lfdr.de>; Mon, 18 Mar 2024 19:50:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F38856776;
	Mon, 18 Mar 2024 19:50:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="VzE9mfD1"
X-Original-To: linux-man@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9F0C56B65
	for <linux-man@vger.kernel.org>; Mon, 18 Mar 2024 19:50:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710791444; cv=none; b=btWTm7gn/zEZtTWe4B5X2tue1kVlGOz9og9LW9B6GCFCcWIN3d9Zl+gMxdeNcBYeyXfOfRklv9iG3Qw4/OAnb8xZQ0DdK6LMyRGreEinobrTfcHQabtdup9rgIZoqwSw5/k/d8GHBL60KG7Kj6iTgOGx69K+0QqZ2yeQ+hc5rU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710791444; c=relaxed/simple;
	bh=oUzOvTE5vFaNIPRQBw6yfUW/4ofe8elwX/SX5MK6HVQ=;
	h=Content-Type:Date:Message-Id:Subject:From:To:Cc:Mime-Version:
	 References:In-Reply-To; b=tOZQCXqBDLbwcRzYljLS87KOnpE3xfWF0PH3CgHF7/076w9BWh73y1+be8OqMzrg0+hPZjTbuFRHUfs+QqrjYZZ/I4Mxl87Ol98nOQ74kOYbrWIG2LNdex95iIdwIDa0CL4fjHx2BSq8q+LokSaiBYLmpRCpYkVtI3hL7WLZ7Js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=VzE9mfD1; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 04FE6413E0;
	Mon, 18 Mar 2024 20:50:33 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
	by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id StYkvXTxPmpL; Mon, 18 Mar 2024 20:50:30 +0100 (CET)
Content-Type: text/plain; charset=UTF-8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1710791430; bh=oUzOvTE5vFaNIPRQBw6yfUW/4ofe8elwX/SX5MK6HVQ=;
	h=Date:Subject:From:To:Cc:References:In-Reply-To;
	b=VzE9mfD1d5HzgPlutoo+jiLYlzCHNdJ2K3eZEi7drELBOXu4xBHi0AWJC2ZBPeYsW
	 HT3XY/9YPe3QciEcH5QXuBRHNgQdtE7wqQMCqSjIJqWGOyw6UZsv+AIq0UFVQCVppQ
	 9z1hYdBoGHgd4L5UzeN6g471iobAxRb3Mczh0CakhnqRE17sBwipav0iWiZqMCk7gE
	 rysEbU84tkUmg09/p/0cTnOnCPZZQrmV/1Db1lwI0C0C385uT1cc3Wva6pWxxCo3Ai
	 ca/tA4IL4o9MAZy4LK6mHED8ZhvLWIKW6I3xwdyxEVzWVHvtS405tZkRd8tSaYt9SM
	 Ab174+TiwKYbQ==
Date: Tue, 19 Mar 2024 08:50:21 +1300
Message-Id: <CZX4Y18EKIWK.1YLSFJIPJG2YA@disroot.org>
Subject: Re: [PATCH v2 1/6] intro.1: Revise language
From: "Jeremy Baxter" <jtbx@disroot.org>
To: "Alejandro Colomar" <alx@kernel.org>
Cc: <linux-man@vger.kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
References: <20240317080850.28564-3-jtbx@disroot.org>
 <ZfcCl6dcTFX9Zy6p@debian>
In-Reply-To: <ZfcCl6dcTFX9Zy6p@debian>

On Mon Mar 18, 2024 at 3:47 AM NZDT, Alejandro Colomar wrote:
> >  Section 1 of the manual describes user commands and tools,
> > -for example, file manipulation tools, shells, compilers,
> > -web browsers, file and image viewers and editors, and so on.
> > +for example file manipulation tools, shells, compilers,
>
> Why?  A comma should follow 'for example'.
> See <https://grammarhow.com/comma-before-or-after-for-example/>.

I wasn't aware of this rule sorry. Reading it aloud gave me the
impression that the comma is an unnecessary pause in the sentence.

> > +web browsers, file and image viewers, editors, and so on.
>
> editors here meant "file and image editors", so it was correct as it
> was.

I read that wrong, my bad.

> >  .SH NOTES
> > -Linux is a flavor of UNIX, and as a first approximation
> > -all user commands under UNIX work precisely the same under
> > -Linux (and FreeBSD and lots of other UNIX-like systems).
> > +Linux is a flavor of UNIX, and many user commands under UNIX work
> > +approximately the same under Linux (along with other UNIX-like systems=
,
> > +such as the BSDs).
>
> Why is this an improvement?  It seems to say the same thing as before.

"as a first approximation" is not a phrase I hear often and may be
unclear to some people.

Our user commands under Linux do not work "precisely the same" as they
did in UNIX's time due to extensions and the like. I should've used
"more or less" here rather than "approximately", I think it gets the
point across better.

> >  .P
> > -Under Linux, there are GUIs (graphical user interfaces), where you
> > -can point and click and drag, and hopefully get work done without
> > -first reading lots of documentation.
> > -The traditional UNIX environment
> > -is a CLI (command line interface), where you type commands to
> > -tell the computer what to do.
> > -That is faster and more powerful,
> > -but requires finding out what the commands are.
> > -Below a bare minimum, to get started.
> > +Under Linux, there are graphical user interfaces (GUIs),
> > +where, using a mouse, you click and drag buttons and sliders and icons=
,
>
> You can actually use other things, like a trackball or a trackpad.
> Maybe even a joystick.  :)

Alright, I'll include that in v3.

> > +and hopefully get work done without first reading much documentation.
> > +The traditional UNIX environment is a command line interface (CLI),
> > +where you type commands to tell the computer what to do.
> > +The command line interface is faster and more powerful than
> > +a graphical interface,
> > +but first requires finding out what commands you have and how they are=
 used.
>
> This also seems like a rewrite that doesn't necessarily improve things.

The main thing improved here is the text "That is faster and more
powerful, but requires finding out what the commands are." which
sounds weird referring to the CLI as "that". The second part of the
sentence is also a bit unclear and illiterate. I'll strip out all the
unrelated bits in the next patch.

> > +A minimal guide is provided below to help you get started.
> >  .SS Login
> > -In order to start working, you probably first have to open a session b=
y
> > -giving your username and password.
> > -The program
> > +In order to start working, you'll probably have to open a session
> > +by typing your username and password.
> > +After this, the program
>
> Hmmm, this line is interesting.  With the previous text, it wasn't clear
> that the login program gives you a shell after giving your (correct)
> username and password.
>
> Maybe I would mention login before talking about the name and pass.
> How about this?
>
> 	In order to start working,
> 	you'll probably have to open a session.
> 	The program
> 	.BR login (1)
> 	will wait for you to type your username and password,
> 	and after that,
> 	it will start a

Sounds good, I think that's a much better approach.

> >  .BR login (1)
> > -now starts a
> > +starts a
> >  .I shell
> >  (command interpreter) for you.
> > -In case of a graphical login, you get a screen with menus or icons
> > -and a mouse click will start a shell in a window.
> > +In case of a graphical login, you'll get a screen with menus and/or ic=
ons.
> > +By using your mouse to click on one of these menus or icons,
> > +you can start a shell in a window.
>
> I think this is unnecessary.

Yeah you're right, I'll leave as-is.

> >  .IR shell ,
> >  the command interpreter.
> > -It is not built-in, but is just a program
> > -and you can change your shell.
> > +It isn't built-in, but it's just a program included with the operating=
 system.
>
> Unnecessary mention of OS, I think.

I had a hard time with this one. Do you think it's okay to remove
this entirely? It doesn't add much and is a bit awkward to word.

> > +There are many different shells.
>
> Redundant: the next sentence already implies this.

Ah yeah that's right, good catch!

> >  Everybody has their own favorite one.
> >  The standard one is called
> >  .IR sh .
> > @@ -53,7 +54,7 @@ See also
> >  .BR ksh (1),
> >  .BR zsh (1).
> >  .P
> > -A session might go like:
> > +A session might look like this:
>
> Unnecessary, I think.  The previous wording is fine.

The original wording sounds unprofessional and a little "ad hoc". I
think this type of wording should be avoided because they can make the
rest of the phrase sound unclear, or make the speaker sound
inexperienced.

> >  .P
> >  .in +4n
> >  .EX
> > @@ -99,89 +100,96 @@ $
> >  .EE
> >  .in
> >  .P
> > -Here typing Control-D ended the session.
> > +Pressing Control-D ended the session.
>
> Unnecessary.  Maybe I'd add a comma after "Here".

Done.

> >  .P
> > -The
> > +The symbol
>
> Unnecessary.  I read it meantally as "The dollar here was ...", which is
> just fine.

Removed.

> >  .B $
> >  here was the command prompt\[em]it is the shell's way of indicating
> >  that it is ready for the next command.
> > -The prompt can be customized
> > -in lots of ways, and one might include stuff like username,
> > -machine name, current directory, time, and so on.
> > +The prompt can be customized in lots of ways, and one might include
>
> This undoes semantic newlines, which unnecessarily overloads the diff
> with little real changes.

Didn't notice that, fixed.

> > +information like the username, machine name, current directory, the ti=
me,
> > +and so on.
> >  An assignment PS1=3D"What next, master? "
> >  would change the prompt as indicated.
> >  .P
> > -We see that there are commands
> > +From this example we can see that there is the command
>
> It's more precise, but the previous wording was simpler, and could be
> understood, I think.  I'm not sure I like the change.

Hmm okay then. The previous wording sounds a bit "off" to me,
but there are no real issues with it and it can be understood
easier. :D

> >  .I date
> > -(that gives date and time), and
> > +(which outputs the date and time), and the command
> >  .I cal
> > -(that gives a calendar).
> > +(which outputs a calendar).
> >  .P
> >  The command
> >  .I ls
> >  lists the contents of the current directory\[em]it tells you what
> >  files you have.
> > -With a
> > +Given a
> >  .I \-l
> > -option it gives a long listing,
> > -that includes the owner and size and date of the file, and the
> > -permissions people have for reading and/or changing the file.
> > -For example, the file "tel" here is 37 bytes long, owned by aeb
> > -and the owner can read and write it, others can only read it.
> > -Owner and permissions can be changed by the commands
> > +option
> > +.I ls
>
> We're already talking about ls(1); why repeat it?

Fixed.

> > +outputs a long listing,
> > +which includes the owner of the file, its size, the date it was last
> > +modified, as well as the permissions people have for reading and/or
> > +writing to the file.
> > +For example, the file "tel" here is 37 bytes long, owned by the user a=
eb.
>
> Semantic newlines.

Fixed.

> > +The owner can read and write to it, but others can only read it.
> > +The owner and permissions of a file can be changed by the commands
> >  .I chown
> >  and
> > -.IR chmod .
> > +.I chmod
> > +respectively.
>
> "respectively" should be preceeded by a comma.

Fixed.

> >  .P
> >  The command
> >  .I cat
> >  will show the contents of a file.
> > -(The name is from "concatenate and print": all files given as
> > -parameters are concatenated and sent to "standard output"
> > +The name is from "concatenate and print": all files given as
>
> This is actually a parenthetical on the previous sentence, and
> parentheses are correct.  What I don't love is starting a new sentence.
> Maybe it would be more correct without a preceeding '.', and thus
> starting in lowercase, and the last '.' would go outside of the
> parentheses, but this is widespread, so I think it's fine.

I think your idea sounds better, done.

> > +parameters are concatenated and written to "standard output"
> >  (see
> >  .BR stdout (3)),
> >  here
> > -the terminal screen.)
> > +the terminal screen.
> >  .P
> >  The command
> >  .I cp
> > -(from "copy") will copy a file.
> > +(from "copy") copies a file.
>
> cat will show
> but
> cp copies
> ?

I think it sounds better to use the "x does this" form rather than the
"x will do this" form, similar to what they have in the utilities' own
man pages. What do you think? Should I change cat's description to
adhere to the rest or just keep all of them as they were?

> >  .P
> >  The command
> >  .I mv
> > -(from "move"), on the other hand, only renames it.
> > +(from "move"), on the other hand, renames a file.
>
> The "on the other hand" part looses its sense without "only", I think.

I removed "only" because I was going to change it to refer to "a file"
rather than "it", and "mv, on the other hand, only renames a file"
sounds a bit awkward and lengthy to me.

Here, I actually don't think that the sentence loses its sense, it
sounds fine and is just contrasting from what cp does.

> >  .P
> >  The command
> >  .I diff
> >  lists the differences between two files.
> > -Here there was no output because there were no differences.
> > +In this example there was no output because there were no differences
>
> Here and in this example are the same thing.  Here is shorter.  Why
> change it?  I think it's clear.

Yeah, you're right... I actually don't know why I had to change this.

> > +between the two.
>
> And this is redundant.  The simpler the better, I think.

Removed.

> >  .P
> >  The command
> >  .I rm
> > -(from "remove") deletes the file, and be careful! it is gone.
> > -No wastepaper basket or anything.
> > +(from "remove") deletes a file, but be careful!
> > +Any file you remove with
> > +.I rm
> > +will be gone forever.
>
> Redundant.

Removed.

> > +No rubbish bin or anything.
>
> Don't you like wastepaper baskets?  :)

Well they're mostly used interchangeably, "wastepaper basket" is fine.

> Have a lovely day!
> Alex

Likewise, thanks!

> >  Deleted means lost.
> >  .P
> >  The command
> >  .I grep
> >  (from "g/re/p") finds occurrences of a string in one or more files.
> > -Here it finds Maja's telephone number.
> > +In this example, we use it to find Maja's telephone number.
> >  .SS Pathnames and the current directory
> > -Files live in a large tree, the file hierarchy.
> > -Each has a
> > +Files live in a large tree, called the file hierarchy.
> > +Each file has a
> >  .I "pathname"
> > -describing the path from the root of the tree (which is called
> > -.IR / )
> > -to the file.
> > -For example, such a full pathname might be
> > +describing the location of the file from the root of the tree
> > +(whose pathname is
> > +.IR / ).
> > +For instance, a full pathname might be
> >  .IR /home/aeb/tel .
> > -Always using full pathnames would be inconvenient, and the name
> > -of a file in the current directory may be abbreviated by giving
> > -only the last component.
> > -That is why
> > +Using full pathnames all the time would be very inconvenient.
> > +The name of a file in the current directory may be shortened by only
> > +using the last component (the part relative to the current directory).
> > +That's why
> >  .I /home/aeb/tel
> > -can be abbreviated
> > -to
> > +can be shortened to
> >  .I tel
> >  when the current directory is
> >  .IR /home/aeb .
> > @@ -194,13 +202,11 @@ The command
> >  .I cd
> >  changes the current directory.
> >  .P
> > -Try alternatively
> > +Try using the
> >  .I cd
> >  and
> >  .I pwd
> > -commands and explore
> > -.I cd
> > -usage: "cd", "cd .", "cd ..", "cd /", and "cd \[ti]".
> > +commands in different ways.
> >  .SS Directories
> >  The command
> >  .I mkdir
> > @@ -208,67 +214,79 @@ makes a new directory.
> >  .P
> >  The command
> >  .I rmdir
> > -removes a directory if it is empty, and complains otherwise.
> > +removes an empty directory. If the directory is not empty,
> > +.I rmdir
> > +outputs an error message.
> >  .P
> >  The command
> >  .I find
> > -(with a rather baroque syntax) will find files with given name
> > -or other properties.
> > -For example, "find . \-name tel" would find
> > -the file
> > -.I tel
> > -starting in the present directory (which is called
> > +(which has a rather strange syntax) will find files with a given name
> > +or other specified properties.
> > +For example, "find . \-name tel" would find files with the name
> > +.I tel ,
> > +starting the search in the current directory (which is represented by
> >  .IR . ).
> > -And "find / \-name tel" would do the same, but starting at the root
> > -of the tree.
> > -Large searches on a multi-GB disk will be time-consuming,
> > -and it may be better to use
> > +Using the command "find / \-name tel" would do the same,
> > +except it would it would start at the root of the directory tree.
> > +Large searches on a multi-gigabyte disk can be time-consuming;
> > +if you find yourself doing this, it may be more efficient to use
> >  .BR locate (1).
> >  .SS Disks and filesystems
> >  The command
> >  .I mount
> > -will attach the filesystem found on some disk (or floppy, or CDROM or =
so)
> > -to the big filesystem hierarchy.
> > -And
> > +will attach the filesystem found on a disk (or a USB drive, CD-ROM etc=
.)
> > +to a directory in the filesystem hierarchy.
> > +When you are finished working with your disk, you can use
> >  .I umount
> > -detaches it again.
> > +to detach it again.
> >  The command
> >  .I df
> > -will tell you how much of your disk is still free.
> > +will tell you how much of your disk's space is free.
> >  .SS Processes
> > -On a UNIX system many user and system processes run simultaneously.
> > -The one you are talking to runs in the
> > +On a UNIX system, many user and system processes run simultaneously.
> > +The one you are currently using (e.g. your shell) runs in the
> >  .IR foreground ,
> > -the others in the
> > +while other processes run in the
> >  .IR background .
> >  The command
> >  .I ps
> > -will show you which processes are active and what numbers these
> > -processes have.
> > +will list active processes and each one's ID.
> >  The command
> >  .I kill
> > -allows you to get rid of them.
> > -Without option this is a friendly
> > -request: please go away.
> > -And "kill \-9" followed by the number
> > -of the process is an immediate kill.
> > +allows you to stop processes.
> > +Running
> > +.I kill
> > +without any options sends a friendly request to a process:
> > +"please clean up and finish now".
> > +If this doesn't work, you can use "kill \-9" followed by the ID of the
> > +process to immediately kill it; the process will have no time to clean=
 up.
> >  Foreground processes can often be killed by typing Control-C.
> >  .SS Getting information
> >  There are thousands of commands, each with many options.
> > -Traditionally commands are documented on
> > -.IR "man pages" ,
> > -(like this one), so that the command "man kill" will document
> > -the use of the command "kill" (and "man man" document the command "man=
").
> > +Traditionally, commands are documented on
> > +.I "man pages"
> > +like this one.
> > +Man pages can be accessed via the
> > +.I man
> > +command.
> > +For example, the command "man kill" will bring up a manual
> > +for the "kill" command.
> > +"man man" will bring up a manual for
> > +.I man
> > +itself.
> >  The program
> >  .I man
> > -sends the text through some
> > +sends the text through a
> >  .IR pager ,
> >  usually
> >  .IR less .
> > -Hit the space bar to get the next page, hit q to quit.
> > +Using
> > +.IR less ,
> > +you can press the space bar to see the next page, the "b" key to see
> > +the previous page, and "q" to quit.
> >  .P
> >  In documentation it is customary to refer to man pages
> > -by giving the name and section number, as in
> > +by using the name followed by the section number in brackets, as in
> >  .BR man (1).
> >  Man pages are terse, and allow you to find quickly some forgotten
> >  detail.
> > @@ -280,10 +298,10 @@ Type "info info"
> >  for an introduction on the use of the program
> >  .IR info .
> >  .P
> > -Special topics are often treated in HOWTOs.
> > -Look in
> > -.I /usr/share/doc/howto/en
> > -and use a browser if you find HTML files there.
> > +Some topics can be documented in HOWTO files.
> > +To find these, look for HTML files in
> > +.IR /usr/share/doc/howto/en ,
> > +and use a web browser to view them.
> >  .\"
> >  .\" Actual examples? Separate section for each of cat, cp, ...?
> >  .\" gzip, bzip2, tar, rpm
> > --=20
> > 2.44.0
> >=20
> >=20



 ~Jeremy

