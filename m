Return-Path: <linux-man+bounces-645-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8674387DD87
	for <lists+linux-man@lfdr.de>; Sun, 17 Mar 2024 15:47:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A5E611C208F8
	for <lists+linux-man@lfdr.de>; Sun, 17 Mar 2024 14:47:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7739DF4D;
	Sun, 17 Mar 2024 14:47:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hRpVEJs1"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A97381370
	for <linux-man@vger.kernel.org>; Sun, 17 Mar 2024 14:47:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710686874; cv=none; b=OmdvGyof/sgaSzDA011comSUbNe37n1m3yUfwB4y6COSMBfrxut2U+8hYdvRWm3Wyk9sxbt1CKOFRzsxk2wxzTM7YmQWjRjeQjn/BmBRg3J4Q2OsQWxW0dShE3btdiR2dyH++ZP4V6EoqHFxck1Mn7nM5icNEJHjqxOj6Yk53pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710686874; c=relaxed/simple;
	bh=KBmjppEdmQFKr64hImqXfVhmBnkrrqzgAR+BXPRmq3A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MXb1i7XVZZcK32itj1PCFaXOks4ouh+moWzX21uQ/98BoOBYFXfA0B4axmocA/17zQs21flS3vvLJSBxRx6YSlbjBAlfjt2v2vLFVTKL6Oa3/YBjaLpTbpPploI+xaFO4ul2dZRP2K7k++129Ziqr9vggjv/VzrAJrRBNoV1h9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hRpVEJs1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93906C433C7;
	Sun, 17 Mar 2024 14:47:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710686874;
	bh=KBmjppEdmQFKr64hImqXfVhmBnkrrqzgAR+BXPRmq3A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hRpVEJs1KCFbTkM+yn4+9bAYGb5bEsSBThs+spJiQSQQOKeRK6Y807LjEKPkwtVBG
	 e88nSN9qxmbnteEsqXFpRy3Sk7xTGNTGYJkaDQo1agOAlo7UWJzwhZqrE1at3fFTs5
	 wNEaGJAomjuO2mRT2wLXWC4G7ujYlycPzYhckgtYMaXREkHBB3AslOKBevyjLIPhDp
	 8xvnstNdJZkMq/Zdwclc1j6OaSwqBwSwWmI1+2VDCnj2M7JxwIyZ51EGZlCervFt8t
	 2ZzLP6OmhUZr24xlJ+XGoAscBougC1QwWC4RGNYu4HN7MYSjK8pMfrZFDvotRsHCVb
	 C7NSQb2jSI1LQ==
Date: Sun, 17 Mar 2024 15:47:45 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jeremy Baxter <jtbx@disroot.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/6] intro.1: Revise language
Message-ID: <ZfcCl6dcTFX9Zy6p@debian>
References: <20240317080850.28564-3-jtbx@disroot.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nUPYqpb4r0A93pw/"
Content-Disposition: inline
In-Reply-To: <20240317080850.28564-3-jtbx@disroot.org>


--nUPYqpb4r0A93pw/
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 17 Mar 2024 15:47:45 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jeremy Baxter <jtbx@disroot.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/6] intro.1: Revise language

Hi Jeremy,

On Sun, Mar 17, 2024 at 09:08:28PM +1300, Jeremy Baxter wrote:
> ---
>  man1/intro.1 | 222 ++++++++++++++++++++++++++++-----------------------
>  1 file changed, 120 insertions(+), 102 deletions(-)
>=20
> diff --git a/man1/intro.1 b/man1/intro.1
> index decaab161..96eb3b7fc 100644
> --- a/man1/intro.1
> +++ b/man1/intro.1
> @@ -7,40 +7,41 @@
>  intro \- introduction to user commands
>  .SH DESCRIPTION
>  Section 1 of the manual describes user commands and tools,
> -for example, file manipulation tools, shells, compilers,
> -web browsers, file and image viewers and editors, and so on.
> +for example file manipulation tools, shells, compilers,

Why?  A comma should follow 'for example'.
See <https://grammarhow.com/comma-before-or-after-for-example/>.

> +web browsers, file and image viewers, editors, and so on.

editors here meant "file and image editors", so it was correct as it
was.

>  .SH NOTES
> -Linux is a flavor of UNIX, and as a first approximation
> -all user commands under UNIX work precisely the same under
> -Linux (and FreeBSD and lots of other UNIX-like systems).
> +Linux is a flavor of UNIX, and many user commands under UNIX work
> +approximately the same under Linux (along with other UNIX-like systems,
> +such as the BSDs).

Why is this an improvement?  It seems to say the same thing as before.

>  .P
> -Under Linux, there are GUIs (graphical user interfaces), where you
> -can point and click and drag, and hopefully get work done without
> -first reading lots of documentation.
> -The traditional UNIX environment
> -is a CLI (command line interface), where you type commands to
> -tell the computer what to do.
> -That is faster and more powerful,
> -but requires finding out what the commands are.
> -Below a bare minimum, to get started.
> +Under Linux, there are graphical user interfaces (GUIs),
> +where, using a mouse, you click and drag buttons and sliders and icons,

You can actually use other things, like a trackball or a trackpad.
Maybe even a joystick.  :)

> +and hopefully get work done without first reading much documentation.
> +The traditional UNIX environment is a command line interface (CLI),
> +where you type commands to tell the computer what to do.
> +The command line interface is faster and more powerful than
> +a graphical interface,
> +but first requires finding out what commands you have and how they are u=
sed.

This also seems like a rewrite that doesn't necessarily improve things.

> +A minimal guide is provided below to help you get started.
>  .SS Login
> -In order to start working, you probably first have to open a session by
> -giving your username and password.
> -The program
> +In order to start working, you'll probably have to open a session
> +by typing your username and password.
> +After this, the program

Hmmm, this line is interesting.  With the previous text, it wasn't clear
that the login program gives you a shell after giving your (correct)
username and password.

Maybe I would mention login before talking about the name and pass.
How about this?

	In order to start working,
	you'll probably have to open a session.
	The program
	.BR login (1)
	will wait for you to type your username and password,
	and after that,
	it will start a

>  .BR login (1)
> -now starts a
> +starts a
>  .I shell
>  (command interpreter) for you.
> -In case of a graphical login, you get a screen with menus or icons
> -and a mouse click will start a shell in a window.
> +In case of a graphical login, you'll get a screen with menus and/or icon=
s.
> +By using your mouse to click on one of these menus or icons,
> +you can start a shell in a window.

I think this is unnecessary.

>  See also
>  .BR xterm (1).
>  .SS The shell
> -One types commands to the
> +One types commands into the

LGTM.

>  .IR shell ,
>  the command interpreter.
> -It is not built-in, but is just a program
> -and you can change your shell.
> +It isn't built-in, but it's just a program included with the operating s=
ystem.

Unnecessary mention of OS, I think.

> +There are many different shells.

Redundant: the next sentence already implies this.

>  Everybody has their own favorite one.
>  The standard one is called
>  .IR sh .
> @@ -53,7 +54,7 @@ See also
>  .BR ksh (1),
>  .BR zsh (1).
>  .P
> -A session might go like:
> +A session might look like this:

Unnecessary, I think.  The previous wording is fine.

>  .P
>  .in +4n
>  .EX
> @@ -99,89 +100,96 @@ $
>  .EE
>  .in
>  .P
> -Here typing Control-D ended the session.
> +Pressing Control-D ended the session.

Unnecessary.  Maybe I'd add a comma after "Here".

>  .P
> -The
> +The symbol

Unnecessary.  I read it meantally as "The dollar here was ...", which is
just fine.

>  .B $
>  here was the command prompt\[em]it is the shell's way of indicating
>  that it is ready for the next command.
> -The prompt can be customized
> -in lots of ways, and one might include stuff like username,
> -machine name, current directory, time, and so on.
> +The prompt can be customized in lots of ways, and one might include

This undoes semantic newlines, which unnecessarily overloads the diff
with little real changes.

> +information like the username, machine name, current directory, the time,
> +and so on.
>  An assignment PS1=3D"What next, master? "
>  would change the prompt as indicated.
>  .P
> -We see that there are commands
> +From this example we can see that there is the command

It's more precise, but the previous wording was simpler, and could be
understood, I think.  I'm not sure I like the change.

>  .I date
> -(that gives date and time), and
> +(which outputs the date and time), and the command
>  .I cal
> -(that gives a calendar).
> +(which outputs a calendar).
>  .P
>  The command
>  .I ls
>  lists the contents of the current directory\[em]it tells you what
>  files you have.
> -With a
> +Given a
>  .I \-l
> -option it gives a long listing,
> -that includes the owner and size and date of the file, and the
> -permissions people have for reading and/or changing the file.
> -For example, the file "tel" here is 37 bytes long, owned by aeb
> -and the owner can read and write it, others can only read it.
> -Owner and permissions can be changed by the commands
> +option
> +.I ls

We're already talking about ls(1); why repeat it?

> +outputs a long listing,
> +which includes the owner of the file, its size, the date it was last
> +modified, as well as the permissions people have for reading and/or
> +writing to the file.
> +For example, the file "tel" here is 37 bytes long, owned by the user aeb.

Semantic newlines.

> +The owner can read and write to it, but others can only read it.
> +The owner and permissions of a file can be changed by the commands
>  .I chown
>  and
> -.IR chmod .
> +.I chmod
> +respectively.

"respectively" should be preceeded by a comma.

>  .P
>  The command
>  .I cat
>  will show the contents of a file.
> -(The name is from "concatenate and print": all files given as
> -parameters are concatenated and sent to "standard output"
> +The name is from "concatenate and print": all files given as

This is actually a parenthetical on the previous sentence, and
parentheses are correct.  What I don't love is starting a new sentence.
Maybe it would be more correct without a preceeding '.', and thus
starting in lowercase, and the last '.' would go outside of the
parentheses, but this is widespread, so I think it's fine.

> +parameters are concatenated and written to "standard output"
>  (see
>  .BR stdout (3)),
>  here
> -the terminal screen.)
> +the terminal screen.
>  .P
>  The command
>  .I cp
> -(from "copy") will copy a file.
> +(from "copy") copies a file.

cat will show
but
cp copies
?

>  .P
>  The command
>  .I mv
> -(from "move"), on the other hand, only renames it.
> +(from "move"), on the other hand, renames a file.

The "on the other hand" part looses its sense without "only", I think.

>  .P
>  The command
>  .I diff
>  lists the differences between two files.
> -Here there was no output because there were no differences.
> +In this example there was no output because there were no differences

Here and in this example are the same thing.  Here is shorter.  Why
change it?  I think it's clear.

> +between the two.

And this is redundant.  The simpler the better, I think.

>  .P
>  The command
>  .I rm
> -(from "remove") deletes the file, and be careful! it is gone.
> -No wastepaper basket or anything.
> +(from "remove") deletes a file, but be careful!
> +Any file you remove with
> +.I rm
> +will be gone forever.

Redundant.

> +No rubbish bin or anything.

Don't you like wastepaper baskets?  :)

Have a lovely day!
Alex

>  Deleted means lost.
>  .P
>  The command
>  .I grep
>  (from "g/re/p") finds occurrences of a string in one or more files.
> -Here it finds Maja's telephone number.
> +In this example, we use it to find Maja's telephone number.
>  .SS Pathnames and the current directory
> -Files live in a large tree, the file hierarchy.
> -Each has a
> +Files live in a large tree, called the file hierarchy.
> +Each file has a
>  .I "pathname"
> -describing the path from the root of the tree (which is called
> -.IR / )
> -to the file.
> -For example, such a full pathname might be
> +describing the location of the file from the root of the tree
> +(whose pathname is
> +.IR / ).
> +For instance, a full pathname might be
>  .IR /home/aeb/tel .
> -Always using full pathnames would be inconvenient, and the name
> -of a file in the current directory may be abbreviated by giving
> -only the last component.
> -That is why
> +Using full pathnames all the time would be very inconvenient.
> +The name of a file in the current directory may be shortened by only
> +using the last component (the part relative to the current directory).
> +That's why
>  .I /home/aeb/tel
> -can be abbreviated
> -to
> +can be shortened to
>  .I tel
>  when the current directory is
>  .IR /home/aeb .
> @@ -194,13 +202,11 @@ The command
>  .I cd
>  changes the current directory.
>  .P
> -Try alternatively
> +Try using the
>  .I cd
>  and
>  .I pwd
> -commands and explore
> -.I cd
> -usage: "cd", "cd .", "cd ..", "cd /", and "cd \[ti]".
> +commands in different ways.
>  .SS Directories
>  The command
>  .I mkdir
> @@ -208,67 +214,79 @@ makes a new directory.
>  .P
>  The command
>  .I rmdir
> -removes a directory if it is empty, and complains otherwise.
> +removes an empty directory. If the directory is not empty,
> +.I rmdir
> +outputs an error message.
>  .P
>  The command
>  .I find
> -(with a rather baroque syntax) will find files with given name
> -or other properties.
> -For example, "find . \-name tel" would find
> -the file
> -.I tel
> -starting in the present directory (which is called
> +(which has a rather strange syntax) will find files with a given name
> +or other specified properties.
> +For example, "find . \-name tel" would find files with the name
> +.I tel ,
> +starting the search in the current directory (which is represented by
>  .IR . ).
> -And "find / \-name tel" would do the same, but starting at the root
> -of the tree.
> -Large searches on a multi-GB disk will be time-consuming,
> -and it may be better to use
> +Using the command "find / \-name tel" would do the same,
> +except it would it would start at the root of the directory tree.
> +Large searches on a multi-gigabyte disk can be time-consuming;
> +if you find yourself doing this, it may be more efficient to use
>  .BR locate (1).
>  .SS Disks and filesystems
>  The command
>  .I mount
> -will attach the filesystem found on some disk (or floppy, or CDROM or so)
> -to the big filesystem hierarchy.
> -And
> +will attach the filesystem found on a disk (or a USB drive, CD-ROM etc.)
> +to a directory in the filesystem hierarchy.
> +When you are finished working with your disk, you can use
>  .I umount
> -detaches it again.
> +to detach it again.
>  The command
>  .I df
> -will tell you how much of your disk is still free.
> +will tell you how much of your disk's space is free.
>  .SS Processes
> -On a UNIX system many user and system processes run simultaneously.
> -The one you are talking to runs in the
> +On a UNIX system, many user and system processes run simultaneously.
> +The one you are currently using (e.g. your shell) runs in the
>  .IR foreground ,
> -the others in the
> +while other processes run in the
>  .IR background .
>  The command
>  .I ps
> -will show you which processes are active and what numbers these
> -processes have.
> +will list active processes and each one's ID.
>  The command
>  .I kill
> -allows you to get rid of them.
> -Without option this is a friendly
> -request: please go away.
> -And "kill \-9" followed by the number
> -of the process is an immediate kill.
> +allows you to stop processes.
> +Running
> +.I kill
> +without any options sends a friendly request to a process:
> +"please clean up and finish now".
> +If this doesn't work, you can use "kill \-9" followed by the ID of the
> +process to immediately kill it; the process will have no time to clean u=
p.
>  Foreground processes can often be killed by typing Control-C.
>  .SS Getting information
>  There are thousands of commands, each with many options.
> -Traditionally commands are documented on
> -.IR "man pages" ,
> -(like this one), so that the command "man kill" will document
> -the use of the command "kill" (and "man man" document the command "man").
> +Traditionally, commands are documented on
> +.I "man pages"
> +like this one.
> +Man pages can be accessed via the
> +.I man
> +command.
> +For example, the command "man kill" will bring up a manual
> +for the "kill" command.
> +"man man" will bring up a manual for
> +.I man
> +itself.
>  The program
>  .I man
> -sends the text through some
> +sends the text through a
>  .IR pager ,
>  usually
>  .IR less .
> -Hit the space bar to get the next page, hit q to quit.
> +Using
> +.IR less ,
> +you can press the space bar to see the next page, the "b" key to see
> +the previous page, and "q" to quit.
>  .P
>  In documentation it is customary to refer to man pages
> -by giving the name and section number, as in
> +by using the name followed by the section number in brackets, as in
>  .BR man (1).
>  Man pages are terse, and allow you to find quickly some forgotten
>  detail.
> @@ -280,10 +298,10 @@ Type "info info"
>  for an introduction on the use of the program
>  .IR info .
>  .P
> -Special topics are often treated in HOWTOs.
> -Look in
> -.I /usr/share/doc/howto/en
> -and use a browser if you find HTML files there.
> +Some topics can be documented in HOWTO files.
> +To find these, look for HTML files in
> +.IR /usr/share/doc/howto/en ,
> +and use a web browser to view them.
>  .\"
>  .\" Actual examples? Separate section for each of cat, cp, ...?
>  .\" gzip, bzip2, tar, rpm
> --=20
> 2.44.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--nUPYqpb4r0A93pw/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmX3ApEACgkQnowa+77/
2zKCvhAAhHDtbzzUlI1Fh2x+1j6AF1cbo9Bjv39wsMoQ+8BWBITlbrjF7VFBWzW/
8GQ62QXVheTLmow4bFkJlidIY2nmzI/MrwpSh/3XIU0gvwoeXGGYbER/h7sLWDRw
JOKXWsiRGkQBkfFOyt9DvI2MQibMWJvfkUiRgpt3J4yP+NjrUxIrME+2m8uMEQiS
vi/D3f9vKYTHc3ipiCPFBFXuF6cSyngXod/c0SmNT+zmVbI/geGJjiZ0+3JVfxSU
C3Z0wOvtJ/hoff+WFH7yHsOcKyTTCbBPUpmkOYituACzTLgbU7P6DmSELWAegaAI
t54/+v38+BstITzM1ORuf4+exFxiDbNbA3TdnLdugPUqNCa37JobyFzPSlQmOqtd
VPC6iZcXsytRyOSg2iEA+JJ24KDpV6O28+6t8noJGiJ9kIstIEDka4k5SSY12+En
8GjLFqmFz1Vrq3Y75VW+IGCeAGf6L0IxNZIwuPcDTYyhd/cmozbq+W6yfMfr9i+c
VoB9SkbBzXn63MoYh1XcgLw7x8FuZGsB59B05i0+HoqvoNgPqaONfo4gSxq2MY0c
XsNAs3e2kYlZcsN81m4uIoaIaqERJgvqshSVtX2V9kpjtyl8RVG7mX8Yn1Vc1wVv
jNhZsG65LhvPy9vjdoYfr9U7N5a6EoLq49gmb6Vfa7tyzwXf+WI=
=Fopw
-----END PGP SIGNATURE-----

--nUPYqpb4r0A93pw/--

