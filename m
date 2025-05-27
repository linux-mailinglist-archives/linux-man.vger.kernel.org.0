Return-Path: <linux-man+bounces-3040-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B5C0BAC5032
	for <lists+linux-man@lfdr.de>; Tue, 27 May 2025 15:48:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 503DA3AB6F3
	for <lists+linux-man@lfdr.de>; Tue, 27 May 2025 13:47:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8762B262FF5;
	Tue, 27 May 2025 13:48:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="UvXPL37O"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com [209.85.161.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A42127144A
	for <linux-man@vger.kernel.org>; Tue, 27 May 2025 13:48:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748353695; cv=none; b=UpKks0sf8gMSx/9O9Q2SgGbRMEL1zNMgNPAhy0TnpomrAVkSd46+i1S/ZUG5ENh6IOUuN8uUkHNiCf8MucMg3Ar6Aiyk+yaWQyUjQ126RRnVdHApzi7I1EBTuMs3UUP/1w559GAXjln4MpOMZGm+mn+xjSPhMwRazL+pPib6ilo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748353695; c=relaxed/simple;
	bh=cuRXOTYp1GP3QU9B9RrQ7V0ELoMEfID/jR/i1e43w+I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cwT5xpD3fgwrIi6mpCn2HP+w6iEwImXPqxatJBha99YGOGhhqrVQ5fltg+zX6lXPiuY5qEVQzsilygFhDRYsFXgxgPYiBPc+dTr4D+ga+5kfEyReXHE0Yvy5w4Kk07NYnwSrntcuGGMms0sVtJKwA7PV+NQJsjcujFFjB6yj5ZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=UvXPL37O; arc=none smtp.client-ip=209.85.161.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-oo1-f53.google.com with SMTP id 006d021491bc7-60219d9812bso624450eaf.0
        for <linux-man@vger.kernel.org>; Tue, 27 May 2025 06:48:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1748353692; x=1748958492; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7Zuc04M60m0Rfh8qcCS6MZsVnG1NJCNhQOU+6GqRYfk=;
        b=UvXPL37OZViAGWPj46rb3/Jg33DBZ4ThFf47yjOdsL/sxAYPX0BKacEdPhv5ssp5Ye
         sMZcNwRpOUMwqZMRs0J52BpyleOqmCwClRApfWdStlZvb7ushkyiEKf/gTK0yjJrZE/M
         eS/QTlg175sHYaJ7LA1iAvGp+50A0CLmqi641b+iHrdykTVzvye1SgXfMN4OcdDlu6fQ
         kVd3AiQKmvEE1/kVLA9gy10DgJFurHTu+KlETb4qnzNRXG/E+xPO0hhNW1h4yR3PbRv2
         cOZ0hMeV9yfeKtNh13aPqSPK4KjxMrLygsaIxUPTD0qcMU7f5Dadao8uxB0XTTG73/Zl
         l4gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748353692; x=1748958492;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7Zuc04M60m0Rfh8qcCS6MZsVnG1NJCNhQOU+6GqRYfk=;
        b=XNO7AVcl2koo+UbiEQTsbIfcCyKkHgYJUaV1zwhp87Fbf+VXETPNhvVxt/5EKbUDef
         yfFl3m6GuZnIZECIDNZnw3+RzDr4Oe+UCRrb7PdBB9yhZDtRVXB07qNCA3OwdVjXGzDV
         NihEyxDqoZdIagTktVcNZ9Ewihw57x+PsDp5q+Dubqxc55naHWAaMu9sLGu8EHQ7xxDz
         Ln/UbT5e/eskSjx7n+NvJXqNkYhMc7wczN9cV8eKnxceu+MvdZ5z+gHrY5jnl+II+H+j
         oW7oDz7oh0+6wTjajNAUuMtGG2+AKlth4Xkdk7us6hi+zhH+HI5pZswQU4iM5dGR/j3B
         kDLQ==
X-Gm-Message-State: AOJu0YzE7K+AjS54aA8O8RarFBRuDdf/uFsQVGWf+drhFmqSQIoRmbGb
	jxQo9SU+Ltw0bq0Hud8osggEUS8KOgEMbgdqeyVWt/H9CGGNFjybhSFl2WDFUUuhZpQjsk5CBR2
	bAvy19d5MJc+DNJyPRE9OvkXnvZHNuld38+04bDVr
X-Gm-Gg: ASbGncvQyl3YGM4AJE1px7OyvGKW05shnCoMwAYeU73jygnR+Qty+nAqH4svSdJbxYC
	9WaST22hCnfA/yBh6unVECdFdmYt5FLyALQ7MqyIBkFm9A3B6nkFp6qEZ33E6TFME8nhwGEGYIZ
	ojud0vlr1FO/716w9aJWiCT/Ju/WVZpTemjna/EZuD
X-Google-Smtp-Source: AGHT+IH6E4X/WH/M3aykzfh06HkF+hJA0FzxnN05LLGq0hc62ZWFD/P50y7TaHVvE/nY9s43J9qpgBwQYg+lPGriaSA=
X-Received: by 2002:a05:6820:270a:b0:603:f903:c85a with SMTP id
 006d021491bc7-60b9fbb36a0mr6893026eaf.4.1748353691959; Tue, 27 May 2025
 06:48:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAJgzZoq2W0djPd=3W9QPrOAMQmdrz1tXSWnWQ6LQw9Lzmmfw8Q@mail.gmail.com>
 <rnnludo37iwiukqg7ho62yzwr4l7gihxpf7krbln2kdf24ehos@akruxitxsfus>
In-Reply-To: <rnnludo37iwiukqg7ho62yzwr4l7gihxpf7krbln2kdf24ehos@akruxitxsfus>
From: enh <enh@google.com>
Date: Tue, 27 May 2025 09:48:00 -0400
X-Gm-Features: AX0GCFu6DWvheL_n60-aaX9DT5dtEid5TOEUY7hQ8AGWf8yljnmZCmXjrBJBPh8
Message-ID: <CAJgzZoore6xc5GWenV91StyTjLwJNV2VPu_ztFLQS3eHMuNohA@mail.gmail.com>
Subject: Re: _Fork()
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, May 24, 2025 at 2:46=E2=80=AFPM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> Hey Elliott!
>
> On Thu, Feb 29, 2024 at 03:14:30PM -0800, enh wrote:
> > On Thu, Feb 29, 2024 at 2:49=E2=80=AFPM Alejandro Colomar <alx@kernel.o=
rg> wrote:
> > >
> > > Hi Elliott,
> > >
> > > On Thu, Feb 29, 2024 at 02:12:12PM -0800, enh wrote:
> > > > (apologies for the post without a patch but...)
> > >
> > > No worries.  :)
> > >
> > > > fyi, i noticed that there's no reference to _Fork() anywhere. i'd s=
end
> > > > a patch, but given that vfork() has a page to itself, i'm assuming
> > > > just adding a paragraph to fork(2) isn't the plan?
> > >
> > > Hmmm, I didn't know about the existence of _Fork().  It looks like
> > > _Exit(3) and exit(3), right?  Maybe we could write a page based on
> > > _Exit(3).  What do you think?
> >
> > in the "don't do that other stuff" sense, yes --- here's what i wrote
> > for the doc comment in Android's <unistd.h>:
>
> I had kept this in my mailbox to eventually do it...
>
> And this month I've been working on updating the manual pages for
> POSIX.1-2024.  During that, I met the _Fork() function, and have added a
> small manual page for it.
>
> Here's the main change, which adds _Fork(3):
>
>         alx@devuan:/srv/alx/src/linux/man-pages/man-pages/posix24$ git sh=
ow 7b0fc2aa3078
>         commit 7b0fc2aa3078d7d4ffbe0e8ecdac59816c8c6f48
>         Author: Alejandro Colomar <alx@kernel.org>
>         Date:   Sat May 17 14:09:14 2025 +0200
>
>             man/man3/_Fork.3: Document _Fork()
>
>             Signed-off-by: Alejandro Colomar <alx@kernel.org>
>
>         diff --git a/man/man3/_Fork.3 b/man/man3/_Fork.3
>         new file mode 100644
>         index 000000000..95b0bc61b
>         --- /dev/null
>         +++ b/man/man3/_Fork.3
>         @@ -0,0 +1,29 @@
>         +.\" Copyright, The authors of the Linux man-pages project
>         +.\"
>         +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
>         +.\"
>         +.TH _Fork 3 (date) "Linux man-pages (unreleased)"
>         +.SH NAME
>         +_Fork \- create a child process
>         +.SH LIBRARY
>         +Standard C library
>         +.RI ( libc ,\~ \-lc )
>         +.SH SYNOPSIS
>         +.nf
>         +.B #include <unistd.h>
>         +.P
>         +.B pid_t _Fork(void);
>         +.fi
>         +.SH DESCRIPTION
>         +This function is equivalent to
>         +.BR fork (2),
>         +except that fork handlers registered with
>         +.BR pthread_atfork (3)
>         +are not called.
>         +.SH STANDARDS
>         +POSIX.1-2024.
>         +.SH HISTORY
>         +POSIX.1-2024.
>         +.SH SEE ALSO
>         +.BR fork (2),
>         +.BR vfork (2)
>
> which renders as
>
>         alx@devuan:/srv/alx/src/linux/man-pages/man-pages/posix24$ MANWID=
TH=3D72 diffman-git 7b0fc2aa3078
>         fatal: path 'man/man3/_Fork.3' exists on disk, but not in '7b0fc2=
aa3078^'
>         --- 7b0fc2aa3078^:man/man3/_Fork.3
>         +++ 7b0fc2aa3078:man/man3/_Fork.3
>         @@ -0,0 +1,27 @@
>         +_Fork(3)                Library Functions Manual               _=
Fork(3)
>         +
>         +NAME
>         +     _Fork - create a child process
>         +
>         +LIBRARY
>         +     Standard C library (libc, -lc)
>         +
>         +SYNOPSIS
>         +     #include <unistd.h>
>         +
>         +     pid_t _Fork(void);
>         +
>         +DESCRIPTION
>         +     This function is equivalent to fork(2), except that fork ha=
ndlers
>         +     registered with pthread_atfork(3) are not called.
>         +
>         +STANDARDS
>         +     POSIX.1=E2=80=902024.
>         +
>         +HISTORY
>         +     POSIX.1=E2=80=902024.
>         +
>         +SEE ALSO
>         +     fork(2), vfork(2)
>         +
>         +Linux man=E2=80=90pages (unreleased)     (date)                 =
       _Fork(3)
>
> and then a second change which updates existing pages:
>
>         alx@devuan:/srv/alx/src/linux/man-pages/man-pages/posix24$ git sh=
ow e480a82ad75a
>         commit e480a82ad75af215c00c512c925c198efa21a007
>         Author: Alejandro Colomar <alx@kernel.org>
>         Date:   Sat May 17 14:10:49 2025 +0200
>
>             man/: Update fork(2) for POSIX.1-2024, and add references to =
_Fork(3)
>
>             Signed-off-by: Alejandro Colomar <alx@kernel.org>
>
>         diff --git a/man/man2/fork.2 b/man/man2/fork.2
>         index c5eeaca10..f81489859 100644
>         --- a/man/man2/fork.2
>         +++ b/man/man2/fork.2
>         @@ -270,8 +270,12 @@ .SS C library/kernel differences
>          established using
>          .BR pthread_atfork (3).
>          .\" and does some magic to ensure that getpid(2) returns the rig=
ht value.
>         +.SS Async-signal safety
>         +.BR _Fork (3)
>         +is an async-signal safe variant of
>         +.BR fork (2).
>          .SH STANDARDS
>         -POSIX.1-2008.
>         +POSIX.1-2024.
>          .SH HISTORY
>          POSIX.1-2001, SVr4, 4.3BSD.
>          .SH NOTES
>         @@ -332,6 +336,7 @@ .SH SEE ALSO
>          .BR vfork (2),
>          .BR wait (2),
>          .BR daemon (3),
>         +.BR _Fork (3),
>          .BR pthread_atfork (3),
>          .BR capabilities (7),
>          .BR credentials (7)
>         diff --git a/man/man2/vfork.2 b/man/man2/vfork.2
>         index bb8722826..a1025cac6 100644
>         --- a/man/man2/vfork.2
>         +++ b/man/man2/vfork.2
>         @@ -308,5 +308,6 @@ .SH SEE ALSO
>          .BR execve (2),
>          .BR _exit (2),
>          .BR fork (2),
>         +.BR _Fork (3),
>          .BR unshare (2),
>          .BR wait (2)
>         diff --git a/man/man7/signal-safety.7 b/man/man7/signal-safety.7
>         index c7d5ef10d..d844d2725 100644
>         --- a/man/man7/signal-safety.7
>         +++ b/man/man7/signal-safety.7
>         @@ -115,7 +115,7 @@ .SH DESCRIPTION
>          \f[B]fdatasync\f[](2)
>          \f[B]fexecve\f[](3)    Added in POSIX.1-2008
>          \f[B]ffs\f[](3)        Added in POSIX.1-2008 TC2
>         -\f[B]fork\f[](2)       See notes below
>         +\f[B]_Fork\f[](3)
>          \f[B]fstat\f[](2)
>          \f[B]fstatat\f[](2)    Added in POSIX.1-2008
>          \f[B]fsync\f[](2)
>         @@ -295,18 +295,6 @@ .SH DESCRIPTION
>          .BR siglongjmp (3)
>          and the program subsequently calls an unsafe function,
>          then the behavior of the program is undefined.
>         -.IP \[bu]
>         -POSIX.1-2001 TC1 clarified
>         -that if an application calls
>         -.BR fork (2)
>         -from a signal handler and any of the fork handlers registered by
>         -.BR pthread_atfork (3)
>         -calls a function that is not async-signal-safe, the behavior is =
undefined.
>         -A future revision of the standard
>         -.\" http://www.opengroup.org/austin/aardvark/latest/xshbug3.txt
>         -is likely to remove
>         -.BR fork (2)
>         -from the list of async-signal-safe functions.
>          .\"
>          .IP \[bu]
>          Asynchronous signal handlers that call functions which are cance=
lation
>
> which renders as
>
>         alx@devuan:/srv/alx/src/linux/man-pages/man-pages/posix24$ MANWID=
TH=3D72 diffman-git e480a82ad75a
>         --- e480a82ad75a^:man/man2/fork.2
>         +++ e480a82ad75a:man/man2/fork.2
>         @@ -177,8 +177,11 @@
>               just SIGCHLD.)  The glibc wrapper invokes any fork handlers=
 that
>               have been established using pthread_atfork(3).
>
>         +   Async=E2=80=90signal safety
>         +     _Fork(3) is an async=E2=80=90signal safe variant of fork(2)=
.
>         +
>          STANDARDS
>         -     POSIX.1=E2=80=902008.
>         +     POSIX.1=E2=80=902024.
>
>          HISTORY
>               POSIX.1=E2=80=902001, SVr4, 4.3BSD.
>         @@ -226,7 +229,7 @@
>
>          SEE ALSO
>               clone(2), execve(2), exit(2), _exit(2), setrlimit(2), unsha=
re(2),
>         -     vfork(2), wait(2), daemon(3), pthread_atfork(3), capabiliti=
es(7),
>         -     credentials(7)
>         +     vfork(2), wait(2), daemon(3), _Fork(3), pthread_atfork(3), =
capa=E2=80=90
>         +     bilities(7), credentials(7)
>
>          Linux man=E2=80=90pages (unreleased)     (date)                 =
        fork(2)
>         --- e480a82ad75a^:man/man2/vfork.2
>         +++ e480a82ad75a:man/man2/vfork.2
>         @@ -178,6 +178,7 @@
>               tion."
>
>          SEE ALSO
>         -     clone(2), execve(2), _exit(2), fork(2), unshare(2), wait(2)
>         +     clone(2), execve(2), _exit(2), fork(2), _Fork(3), unshare(2=
),
>         +     wait(2)
>
>          Linux man=E2=80=90pages (unreleased)     (date)                 =
       vfork(2)
>         --- e480a82ad75a^:man/man7/signal-safety.7
>         +++ e480a82ad75a:man/man7/signal-safety.7
>         @@ -92,7 +92,7 @@
>               fdatasync(2)
>               fexecve(3)                 Added in POSIX.1=E2=80=902008
>               ffs(3)                     Added in POSIX.1=E2=80=902008 TC=
2
>         -     fork(2)                    See notes below
>         +     _Fork(3)
>               fstat(2)
>               fstatat(2)                 Added in POSIX.1=E2=80=902008
>               fsync(2)
>         @@ -260,13 +260,6 @@
>                  siglongjmp(3) and the program subsequently calls an unsa=
fe
>                  function, then the behavior of the program is undefined.
>
>         -     =E2=80=A2  POSIX.1=E2=80=902001 TC1 clarified that if an ap=
plication calls fork(2)
>         -        from a signal handler and any of the fork handlers regis=
tered
>         -        by pthread_atfork(3) calls a function that is not async=
=E2=80=90signal=E2=80=90
>         -        safe, the behavior is undefined.  A future revision of t=
he
>         -        standard is likely to remove fork(2) from the list of as=
ync=E2=80=90
>         -        signal=E2=80=90safe functions.
>         -
>               =E2=80=A2  Asynchronous signal handlers that call functions=
 which are can=E2=80=90
>                  celation points and nest over regions of deferred cancel=
ation
>                  may trigger cancelation whose behavior is as if asynchro=
nous
>
>
> This is pushed in the posix24 branch, where I'm still working on the
> updates for POSIX.1-2024 (so if you find anything you'd like to amend,
> we're still in time).
>
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/log/?h=3Dpos=
ix24>

i stumbled across https://sortix.org/blog/posix-2024/ last week, which
helped me spot a few things i'd missed cleaning up in the bionic
headers (despite having gone through the opengroup doc manually
already). in particular, various things (such as accept4()) that used
to be hidden behind _GNU_SOURCE that are now posix.

> >
> > /**
> >  * _Fork() creates a new process. _Fork() differs from fork() in that i=
t does
> >  * not run any handlers set by pthread_atfork().
> >  *
> >  * Returns 0 in the child, the pid of the child in the parent,
> >  * and returns -1 and sets `errno` on failure.
> >  *
> >  * Available since API level 35.
> >  */
> > pid_t _Fork(void) __INTRODUCED_IN(35);
> >
> > looks like glibc has a bit more:
> >
> >   https://www.gnu.org/software/libc/manual/html_node/Creating-a-Process=
.html
> >
> >   The _Fork function is similar to fork, but it does not invoke any
> > callbacks registered with pthread_atfork, nor does it reset any
> > internal state or locks (such as the malloc locks). In the new
> > subprocess, only async-signal-safe functions may be called, such as
> > dup2 or execve.
> >
> >   The _Fork function is an async-signal-safe replacement of fork. It
> > is a GNU extension.
> >
> > whereas i assumed that everyone knows that bionic's internal state
> > resetting is done via pthread_atfork() which, in retrospect, is
> > probably an unreasonable assumption /facepalm
> >
> > annoyingly, while this is slated for POSIX issue 8
> > (https://austingroupbugs.net/view.php?id=3D62) it's not there yet, so
> > there's nothing public to point to there.
>
> POSIX.1-2024 is out now, and our manual page will be there soon.  :-)
>
>
> Have a lovely day!
> Alex
> >
> > > Have a lovely night!
> > > Alex
> > >
> > > --
> > > <https://www.alejandro-colomar.es/>
> > > Looking for a remote C programming job at the moment.
>
> --
> <https://www.alejandro-colomar.es/>

