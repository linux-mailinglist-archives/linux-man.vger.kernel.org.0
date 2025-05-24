Return-Path: <linux-man+bounces-3012-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 900EBAC30F9
	for <lists+linux-man@lfdr.de>; Sat, 24 May 2025 20:46:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 77D383BF99A
	for <lists+linux-man@lfdr.de>; Sat, 24 May 2025 18:45:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C18BA15199A;
	Sat, 24 May 2025 18:46:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sNrxDsRi"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F771143748
	for <linux-man@vger.kernel.org>; Sat, 24 May 2025 18:46:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748112374; cv=none; b=E0itKP8Nr4HaXVeN/ZSZdBfJsJ4teGHPnwGuD3DYqLid7y0oRvFQvsgA5bxAwuTlNFAPPadAoKy5cJYBWyDg9wyDn623E3hg6UO/383uDAqxTTL9mUWsWSRkYzqkbuRS1+/760CtOqF8X0Oct/P6LQ2jQ1036VQyC8DCs4RA7CQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748112374; c=relaxed/simple;
	bh=SKMvWGMr+bAa2hbsv1RcFExRZqSH3UpaXpUA2FTz+is=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BQZckvY7dR0Xjdwywfk3Cfu7aawy+XERwq+nI/MB/9sGH/xM+3Yvig5RDhcmfdyJXMdwGSCOmr9CjM+xfeme9ydq5LIcgNeBjQaBHtNrRwC3orTGh1MIgE8Rcn3jxNO67necHmkaroqFLAlDqpdhzHibpX2btNOdn4WYYlw2Yaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sNrxDsRi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 56E89C4CEE4;
	Sat, 24 May 2025 18:46:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748112374;
	bh=SKMvWGMr+bAa2hbsv1RcFExRZqSH3UpaXpUA2FTz+is=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sNrxDsRigVKLtcDCrtdCSJBM5Lw+GBqzXz4yebLLF21f6U/fz15Lt0y2DQNvVqVol
	 tlbBtakd9FaTLSPyjW15C/6TBkd1sKzxrzmd/ajqGH85EdYDbAW+U/R+X5QEvkin3a
	 rKr1JVCmNS8JrxE+9dcPIBArMvZNgPK1ZypH1nxYm5EI4xywfnTPYMPWWWysfcYcbQ
	 b+NpD13mgO+yG8YGbeloOgNIkhAlidedu7i3VgJnssFsFpg3erTMNGNAeCpZCcL5b3
	 CHhe0n0eO761MrCFZ9qDROiwS3cI0LW7FVYVAT3sfs/loYovaSId5ymf6LfkJMPxaW
	 MiEuBuw+5PQ4g==
Date: Sat, 24 May 2025 20:46:11 +0200
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: _Fork()
Message-ID: <rnnludo37iwiukqg7ho62yzwr4l7gihxpf7krbln2kdf24ehos@akruxitxsfus>
References: <CAJgzZoq2W0djPd=3W9QPrOAMQmdrz1tXSWnWQ6LQw9Lzmmfw8Q@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sx3qpnegdanoq2vv"
Content-Disposition: inline
In-Reply-To: <CAJgzZoq2W0djPd=3W9QPrOAMQmdrz1tXSWnWQ6LQw9Lzmmfw8Q@mail.gmail.com>


--sx3qpnegdanoq2vv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: _Fork()
References: <CAJgzZoq2W0djPd=3W9QPrOAMQmdrz1tXSWnWQ6LQw9Lzmmfw8Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJgzZoq2W0djPd=3W9QPrOAMQmdrz1tXSWnWQ6LQw9Lzmmfw8Q@mail.gmail.com>

Hey Elliott!

On Thu, Feb 29, 2024 at 03:14:30PM -0800, enh wrote:
> On Thu, Feb 29, 2024 at 2:49=E2=80=AFPM Alejandro Colomar <alx@kernel.org=
> wrote:
> >
> > Hi Elliott,
> >
> > On Thu, Feb 29, 2024 at 02:12:12PM -0800, enh wrote:
> > > (apologies for the post without a patch but...)
> >
> > No worries.  :)
> >
> > > fyi, i noticed that there's no reference to _Fork() anywhere. i'd send
> > > a patch, but given that vfork() has a page to itself, i'm assuming
> > > just adding a paragraph to fork(2) isn't the plan?
> >
> > Hmmm, I didn't know about the existence of _Fork().  It looks like
> > _Exit(3) and exit(3), right?  Maybe we could write a page based on
> > _Exit(3).  What do you think?
>=20
> in the "don't do that other stuff" sense, yes --- here's what i wrote
> for the doc comment in Android's <unistd.h>:

I had kept this in my mailbox to eventually do it...

And this month I've been working on updating the manual pages for
POSIX.1-2024.  During that, I met the _Fork() function, and have added a
small manual page for it.

Here's the main change, which adds _Fork(3):

	alx@devuan:/srv/alx/src/linux/man-pages/man-pages/posix24$ git show 7b0fc2=
aa3078
	commit 7b0fc2aa3078d7d4ffbe0e8ecdac59816c8c6f48
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Sat May 17 14:09:14 2025 +0200

	    man/man3/_Fork.3: Document _Fork()
	   =20
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man/man3/_Fork.3 b/man/man3/_Fork.3
	new file mode 100644
	index 000000000..95b0bc61b
	--- /dev/null
	+++ b/man/man3/_Fork.3
	@@ -0,0 +1,29 @@
	+.\" Copyright, The authors of the Linux man-pages project
	+.\"
	+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
	+.\"
	+.TH _Fork 3 (date) "Linux man-pages (unreleased)"
	+.SH NAME
	+_Fork \- create a child process
	+.SH LIBRARY
	+Standard C library
	+.RI ( libc ,\~ \-lc )
	+.SH SYNOPSIS
	+.nf
	+.B #include <unistd.h>
	+.P
	+.B pid_t _Fork(void);
	+.fi
	+.SH DESCRIPTION
	+This function is equivalent to
	+.BR fork (2),
	+except that fork handlers registered with
	+.BR pthread_atfork (3)
	+are not called.
	+.SH STANDARDS
	+POSIX.1-2024.
	+.SH HISTORY
	+POSIX.1-2024.
	+.SH SEE ALSO
	+.BR fork (2),
	+.BR vfork (2)

which renders as

	alx@devuan:/srv/alx/src/linux/man-pages/man-pages/posix24$ MANWIDTH=3D72 d=
iffman-git 7b0fc2aa3078
	fatal: path 'man/man3/_Fork.3' exists on disk, but not in '7b0fc2aa3078^'
	--- 7b0fc2aa3078^:man/man3/_Fork.3
	+++ 7b0fc2aa3078:man/man3/_Fork.3
	@@ -0,0 +1,27 @@
	+_Fork(3)                Library Functions Manual               _Fork(3)
	+
	+NAME
	+     _Fork - create a child process
	+
	+LIBRARY
	+     Standard C library (libc, -lc)
	+
	+SYNOPSIS
	+     #include <unistd.h>
	+
	+     pid_t _Fork(void);
	+
	+DESCRIPTION
	+     This function is equivalent to fork(2), except that fork handlers
	+     registered with pthread_atfork(3) are not called.
	+
	+STANDARDS
	+     POSIX.1=E2=80=902024.
	+
	+HISTORY
	+     POSIX.1=E2=80=902024.
	+
	+SEE ALSO
	+     fork(2), vfork(2)
	+
	+Linux man=E2=80=90pages (unreleased)     (date)                        _F=
ork(3)

and then a second change which updates existing pages:

	alx@devuan:/srv/alx/src/linux/man-pages/man-pages/posix24$ git show e480a8=
2ad75a
	commit e480a82ad75af215c00c512c925c198efa21a007
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Sat May 17 14:10:49 2025 +0200

	    man/: Update fork(2) for POSIX.1-2024, and add references to _Fork(3)
	   =20
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man/man2/fork.2 b/man/man2/fork.2
	index c5eeaca10..f81489859 100644
	--- a/man/man2/fork.2
	+++ b/man/man2/fork.2
	@@ -270,8 +270,12 @@ .SS C library/kernel differences
	 established using
	 .BR pthread_atfork (3).
	 .\" and does some magic to ensure that getpid(2) returns the right value.
	+.SS Async-signal safety
	+.BR _Fork (3)
	+is an async-signal safe variant of
	+.BR fork (2).
	 .SH STANDARDS
	-POSIX.1-2008.
	+POSIX.1-2024.
	 .SH HISTORY
	 POSIX.1-2001, SVr4, 4.3BSD.
	 .SH NOTES
	@@ -332,6 +336,7 @@ .SH SEE ALSO
	 .BR vfork (2),
	 .BR wait (2),
	 .BR daemon (3),
	+.BR _Fork (3),
	 .BR pthread_atfork (3),
	 .BR capabilities (7),
	 .BR credentials (7)
	diff --git a/man/man2/vfork.2 b/man/man2/vfork.2
	index bb8722826..a1025cac6 100644
	--- a/man/man2/vfork.2
	+++ b/man/man2/vfork.2
	@@ -308,5 +308,6 @@ .SH SEE ALSO
	 .BR execve (2),
	 .BR _exit (2),
	 .BR fork (2),
	+.BR _Fork (3),
	 .BR unshare (2),
	 .BR wait (2)
	diff --git a/man/man7/signal-safety.7 b/man/man7/signal-safety.7
	index c7d5ef10d..d844d2725 100644
	--- a/man/man7/signal-safety.7
	+++ b/man/man7/signal-safety.7
	@@ -115,7 +115,7 @@ .SH DESCRIPTION
	 \f[B]fdatasync\f[](2)
	 \f[B]fexecve\f[](3)    Added in POSIX.1-2008
	 \f[B]ffs\f[](3)        Added in POSIX.1-2008 TC2
	-\f[B]fork\f[](2)       See notes below
	+\f[B]_Fork\f[](3)
	 \f[B]fstat\f[](2)
	 \f[B]fstatat\f[](2)    Added in POSIX.1-2008
	 \f[B]fsync\f[](2)
	@@ -295,18 +295,6 @@ .SH DESCRIPTION
	 .BR siglongjmp (3)
	 and the program subsequently calls an unsafe function,
	 then the behavior of the program is undefined.
	-.IP \[bu]
	-POSIX.1-2001 TC1 clarified
	-that if an application calls
	-.BR fork (2)
	-from a signal handler and any of the fork handlers registered by
	-.BR pthread_atfork (3)
	-calls a function that is not async-signal-safe, the behavior is undefined.
	-A future revision of the standard
	-.\" http://www.opengroup.org/austin/aardvark/latest/xshbug3.txt
	-is likely to remove
	-.BR fork (2)
	-from the list of async-signal-safe functions.
	 .\"
	 .IP \[bu]
	 Asynchronous signal handlers that call functions which are cancelation

which renders as

	alx@devuan:/srv/alx/src/linux/man-pages/man-pages/posix24$ MANWIDTH=3D72 d=
iffman-git e480a82ad75a
	--- e480a82ad75a^:man/man2/fork.2
	+++ e480a82ad75a:man/man2/fork.2
	@@ -177,8 +177,11 @@
	      just SIGCHLD.)  The glibc wrapper invokes any fork handlers that
	      have been established using pthread_atfork(3).
	=20
	+   Async=E2=80=90signal safety
	+     _Fork(3) is an async=E2=80=90signal safe variant of fork(2).
	+
	 STANDARDS
	-     POSIX.1=E2=80=902008.
	+     POSIX.1=E2=80=902024.
	=20
	 HISTORY
	      POSIX.1=E2=80=902001, SVr4, 4.3BSD.
	@@ -226,7 +229,7 @@
	=20
	 SEE ALSO
	      clone(2), execve(2), exit(2), _exit(2), setrlimit(2), unshare(2),
	-     vfork(2), wait(2), daemon(3), pthread_atfork(3), capabilities(7),
	-     credentials(7)
	+     vfork(2), wait(2), daemon(3), _Fork(3), pthread_atfork(3), capa=E2=
=80=90
	+     bilities(7), credentials(7)
	=20
	 Linux man=E2=80=90pages (unreleased)     (date)                         f=
ork(2)
	--- e480a82ad75a^:man/man2/vfork.2
	+++ e480a82ad75a:man/man2/vfork.2
	@@ -178,6 +178,7 @@
	      tion."
	=20
	 SEE ALSO
	-     clone(2), execve(2), _exit(2), fork(2), unshare(2), wait(2)
	+     clone(2), execve(2), _exit(2), fork(2), _Fork(3), unshare(2),
	+     wait(2)
	=20
	 Linux man=E2=80=90pages (unreleased)     (date)                        vf=
ork(2)
	--- e480a82ad75a^:man/man7/signal-safety.7
	+++ e480a82ad75a:man/man7/signal-safety.7
	@@ -92,7 +92,7 @@
	      fdatasync(2)
	      fexecve(3)                 Added in POSIX.1=E2=80=902008
	      ffs(3)                     Added in POSIX.1=E2=80=902008 TC2
	-     fork(2)                    See notes below
	+     _Fork(3)
	      fstat(2)
	      fstatat(2)                 Added in POSIX.1=E2=80=902008
	      fsync(2)
	@@ -260,13 +260,6 @@
		 siglongjmp(3) and the program subsequently calls an unsafe
		 function, then the behavior of the program is undefined.
	=20
	-     =E2=80=A2  POSIX.1=E2=80=902001 TC1 clarified that if an application=
 calls fork(2)
	-        from a signal handler and any of the fork handlers registered
	-        by pthread_atfork(3) calls a function that is not async=E2=80=90s=
ignal=E2=80=90
	-        safe, the behavior is undefined.  A future revision of the
	-        standard is likely to remove fork(2) from the list of async=E2=80=
=90
	-        signal=E2=80=90safe functions.
	-
	      =E2=80=A2  Asynchronous signal handlers that call functions which ar=
e can=E2=80=90
		 celation points and nest over regions of deferred cancelation
		 may trigger cancelation whose behavior is as if asynchronous


This is pushed in the posix24 branch, where I'm still working on the
updates for POSIX.1-2024 (so if you find anything you'd like to amend,
we're still in time).

<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/log/?h=3Dposix=
24>

>=20
> /**
>  * _Fork() creates a new process. _Fork() differs from fork() in that it =
does
>  * not run any handlers set by pthread_atfork().
>  *
>  * Returns 0 in the child, the pid of the child in the parent,
>  * and returns -1 and sets `errno` on failure.
>  *
>  * Available since API level 35.
>  */
> pid_t _Fork(void) __INTRODUCED_IN(35);
>=20
> looks like glibc has a bit more:
>=20
>   https://www.gnu.org/software/libc/manual/html_node/Creating-a-Process.h=
tml
>=20
>   The _Fork function is similar to fork, but it does not invoke any
> callbacks registered with pthread_atfork, nor does it reset any
> internal state or locks (such as the malloc locks). In the new
> subprocess, only async-signal-safe functions may be called, such as
> dup2 or execve.
>=20
>   The _Fork function is an async-signal-safe replacement of fork. It
> is a GNU extension.
>=20
> whereas i assumed that everyone knows that bionic's internal state
> resetting is done via pthread_atfork() which, in retrospect, is
> probably an unreasonable assumption /facepalm
>=20
> annoyingly, while this is slated for POSIX issue 8
> (https://austingroupbugs.net/view.php?id=3D62) it's not there yet, so
> there's nothing public to point to there.

POSIX.1-2024 is out now, and our manual page will be there soon.  :-)


Have a lovely day!
Alex
>=20
> > Have a lovely night!
> > Alex
> >
> > --
> > <https://www.alejandro-colomar.es/>
> > Looking for a remote C programming job at the moment.

--=20
<https://www.alejandro-colomar.es/>

--sx3qpnegdanoq2vv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgyE+wACgkQ64mZXMKQ
wqmfyQ/8Ca//amY0SCbfQRwZrnH9Mz/DbrWBiVZJFgQ3Sx13j4I1JVjSjHjpJNUk
Mj4PEsPbpioQmu/OJWF9bzm/dCiYUOmJ5eXrfI58ES1BlSgzkFtrdLMLDplmkcCk
EKpVgX52Jz4ovndW1peFGFAl9wHiGaya4PhCxVK1Zv6mQ+6gDafs6+7GiRTD5ktX
OYD276gvtje//jTpaSu92CGstYF+oo+A7AIBt08MzhCMupdF3hhcKDZCBXaF5/q7
gI8FoLUAOz6wx49IAufw6Vipadw00EBq8+BKPlTqgsrwB5Dqav+BjUvOdw0m4Or9
JArPuhtAvmbMwwFzpGkHjnCnSSZeEo1CNW1nTB9IHdhT3ENKMR41eUTKJxu1ugW5
GHmKk70wgO1dobBhZyWrhHqVWWZjafBfg+sedZePgSYODOUzPQg9UX2RuUswIraL
lOWuSr1XPOT9B0AJfmlBVzTzmdP8fIxbaW88SP1ZW/SYT7At8/+RLwBo+ON0+IN1
mAeOlfZry6jJahffBYoyTkdDEpUoxBeQHvUe3SvGU7YcLZW+367/xZuSI+4gupEt
qWnh39kTPjGLg8x4KL3mnmnJZHo91P++6ZhyDZPYJeuzf5bJh25/GdrZKURPPXqf
De4MbdFjFneqxX+8T14vjGHXkJFdKAgz4zHzRAnBDur30UDiICo=
=buXN
-----END PGP SIGNATURE-----

--sx3qpnegdanoq2vv--

