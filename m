Return-Path: <linux-man+bounces-1708-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CF8395FA71
	for <lists+linux-man@lfdr.de>; Mon, 26 Aug 2024 22:15:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EDDED1F21128
	for <lists+linux-man@lfdr.de>; Mon, 26 Aug 2024 20:15:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57A5C74C1B;
	Mon, 26 Aug 2024 20:15:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="Y9RADwt0"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 768F46F2E0
	for <linux-man@vger.kernel.org>; Mon, 26 Aug 2024 20:15:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724703345; cv=none; b=Pqokw8dKDQmB2w7SxM01f8tQ6xaZoHz9/esG6ZFi0KCN2Z39aE9+/bR38ffVbFcsKvP/ftKvSJ5q4UpKVn4tCkljWzgWnt8QstY89hr+rQmU1C32IsuSz371Ph+DD/c0cqQDDRHhIBI+DNJRSYMOiMQo7qVAJa+BSYzFnORQZK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724703345; c=relaxed/simple;
	bh=/ZaMqVpVAluxgH8PJJx1xufdtc9+PyJdP9AIbuUaE1A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gjPf9DmfTMwUAnmXKTIeQBtOHMSaAnrfMrWSF6BWDtJuhOx8UGamdiZTFnE6Y1lWY8e1anbBsgJDt3uIVKSqDkFFgxFENExaPhnulduCF3wz9KOPzfC5bvuQlqtvZP9Mlpy/2Bk51t+8Z00loaUjqYiPUIUQ7ZY3FN04ywf/ytk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=Y9RADwt0; arc=none smtp.client-ip=209.85.219.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-6bf7a2035d9so54417806d6.1
        for <linux-man@vger.kernel.org>; Mon, 26 Aug 2024 13:15:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1724703342; x=1725308142; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w9Qf42TPPWB5S8TrkWqk/O+WiEMR2aF6HwfLks8bDWk=;
        b=Y9RADwt0rvn/k1ijzejSxUcjplJEH/VZs1eZmwzt0Sg5RPvv31KzrSW5g7mNqEVG0a
         +wOTHCMEVhms3XrXaOmO74eWbi/ZyHvH0uPgklk/SENl755NrAiS2wXbLiV2Hda2bRLl
         dRubeZumNaKbTyUnnVqgj+M7Rh9nqDVrYqHSgT0Y67mbP4hE/qNb0SPYLq7U+1kWWJjb
         ZV+pB/Nn93zLXx5CFIi6CsjRq9jH/6K6S7E7HeA7w2oph6IV9/lw0PjSyhO63ty0CwKY
         NfU6vRLjdbYY9EQWlCRhS2vCMmoDVzX2HrNTbsZ0Gvs3gr7+HqopBgkajvyfI82ZgNM7
         j4Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724703342; x=1725308142;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w9Qf42TPPWB5S8TrkWqk/O+WiEMR2aF6HwfLks8bDWk=;
        b=G/+/pux3BLji6nuDzncuvSl+21IxY1n5T1WKLFoaZbEQzIvi1hLopRlw0NosIjXSOE
         Z+nNW1uDmpB4wlx7d1SS6tHHXTPPW6nkhMuG8W3bcytubboCA7liCoE6bTS/qnZOA8q+
         KpMa5SrgBiiErTHZbkB9le9xTMuWxuAR1c9BY+bqJMqaZ+kwB+dmvlYtqvm3W7U99XLk
         iQ4NNx/bBIzgWaHvIWfhBrAbVY46Y4UQ2gf27R/k3FXRE3AwhlmYWZgc6ynyqI6+mSD1
         eTZyxPYAnrRA60YbhjzQQK1EqREOyxpy7tFGQzwJL3cIXyvdLmm/BZ13eGB1DLS9xsVl
         glUQ==
X-Gm-Message-State: AOJu0YwpPr055u+Kr7f5HUByh7blpcL5sfrrSeMD3t8Wu+J59jgwjAQJ
	qcEG2igQ5lDSidNEjVyhHXeyZ4NfTjK/+5rbcoTy8tfzZ+FC1aPaLWRyQcj7UXoTjz4zOCmECzv
	lOmodNZhgx7A12nr8EagTvu8Ku3LN+ppekDCJ
X-Google-Smtp-Source: AGHT+IFgd/n2OavHCk+YBqtTtkuuIZDx2Kc0vY5OZK6Dnj/VkI+1J6lcrl1XOgmL4+io2L0hvvHzRhHJn6/ueeLFblo=
X-Received: by 2002:a05:6214:2dc9:b0:6c1:637e:b5c8 with SMTP id
 6a1803df08f44-6c32ae8be15mr15818766d6.5.1724703341576; Mon, 26 Aug 2024
 13:15:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAJgzZoon_Ewki=qGEPnzbSi7Tfu-i51cT529z3obiHeaP+WuuQ@mail.gmail.com>
 <akk6v6ddvxj2wr3eo32jw4frjqxvgygbbf7xsqrzdofu7gabko@r45j6x5blmfk>
 <CAJgzZooRNJbSe0fsYztsMKvb=C1FLU_cXQX9xtR9DPCavx6H7w@mail.gmail.com> <22l25y4gk7qaersl4zfsyvvoxctkzs5ea5beiz44wmvbn7tg5i@q2yzq7zaj2b4>
In-Reply-To: <22l25y4gk7qaersl4zfsyvvoxctkzs5ea5beiz44wmvbn7tg5i@q2yzq7zaj2b4>
From: enh <enh@google.com>
Date: Mon, 26 Aug 2024 16:15:27 -0400
Message-ID: <CAJgzZornYRGFRmUF6KaOCDgsgYSKdJ=V6GKxVsxNSJDCyZc+SQ@mail.gmail.com>
Subject: Re: fchmodat(2) does support AT_SYMLINK_NOFOLLOW now, no?
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 26, 2024 at 3:57=E2=80=AFPM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> Hi Elliott,
>
> On Mon, Aug 26, 2024 at 12:37:46PM GMT, enh wrote:
> > looks like Linux 6.6...
>
> Thanks for researching that!
>
> > commit 475d4df82719225510625b4263baa1105665f4b3
> > Merge: 511fb5bafed1 712143795327
> > Author: Linus Torvalds <torvalds@linux-foundation.org>
> > Date:   Mon Aug 28 11:25:27 2023 -0700
> >
> >     Merge tag 'v6.6-vfs.fchmodat2' of
> > git://git.kernel.org/pub/scm/linux/kernel/git/vfs/vfs
> >
> >     Pull fchmodat2 system call from Christian Brauner:
> >      "This adds the fchmodat2() system call. It is a revised version of=
 the
> >       fchmodat() system call, adding a missing flag argument. Support f=
or
> >       both AT_SYMLINK_NOFOLLOW and AT_EMPTY_PATH are included.
>
> Maybe we need to add a "C library/kernel differences" section?

what's your timeline for "currently interesting" vs "just historical"?
(though i guess whatever that is, Linux 6.6 is pretty new at less than
12 months old!)

>         $ grep -rh '^\.SS ' man | sort | uniq -c | sort | tail
>               5 .SS glibc
>               7 .SS Authors and copyright conditions
>               8 .SS Address format
>              11 .SS Ioctls
>              11 .SS glibc notes
>              12 .SS Socket options
>              13 .SS /proc interfaces
>              15 .SS ISO/IEC\~8859 alphabets
>              51 .SS C library/kernel differences
>              99 .SS Program source
>
> Would you mind preparing a patch?

if you just want the trivial removal of the incorrect sentence, sure
... if you want a whole new "C library/kernel differences" section
you're probably able to write that ... which is probably a good
juncture to point out that there's also a whole missing function ---
there's no mention of lchmod() which seems to have been added in
GLIBC_2.3.2 (yes, 22 years ago; not to be confused with 2.32 :-) ...
except i don't think it _worked_ on Linux until glibc sha
6b89c385d8bd0700b25bac2c2d0bebe68d5cc05d in 2020? i don't know how you
want to document that!).

> Have a lovely day!
> Alex
>
> >       Adding this system call revision has been a longstanding request =
but
> >       so far has always fallen through the cracks. While the kernel
> >       implementation of fchmodat() does not have a flag argument the li=
bc
> >       provided POSIX-compliant fchmodat(3) version does. Both glibc and=
 musl
> >       have to implement a workaround in order to support AT_SYMLINK_NOF=
OLLOW
> >       (see [1] and [2]).
> >
> >       The workaround is brittle because it relies not just on O_PATH an=
d
> >       O_NOFOLLOW semantics and procfs magic links but also on our rathe=
r
> >       inconsistent symlink semantics.
> >
> >       This gives userspace a proper fchmodat2() system call that libcs =
can
> >       use to properly implement fchmodat(3) and allows them to get rid =
of
> >       their hacks. In this case it will immediately benefit them as the
> >       current workaround is already defunct because of aformentioned
> >       inconsistencies.
> >
> >       In addition to AT_SYMLINK_NOFOLLOW, give userspace the ability to=
 use
> >       AT_EMPTY_PATH with fchmodat2(). This is already possible with
> >       fchownat() so there's no reason to not also support it for
> >       fchmodat2().
> >
> >       The implementation is simple and comes with selftests. Implementa=
tion
> >       of the system call and wiring up the system call are done as sepa=
rate
> >       patches even though they could arguably be one patch. But in case
> >       there are merge conflicts from other system call additions it can=
 be
> >       beneficial to have separate patches"
> >
> >     Link: https://sourceware.org/git/?p=3Dglibc.git;a=3Dblob;f=3Dsysdep=
s/unix/sysv/linux/fchmodat.c;h=3D17eca54051ee28ba1ec3f9aed170a62630959143;h=
b=3Da492b1e5ef7ab50c6fdd4e4e9879ea5569ab0a6c#l35
> > [1]
> >     Link: https://git.musl-libc.org/cgit/musl/tree/src/stat/fchmodat.c?=
id=3D718f363bc2067b6487900eddc9180c84e7739f80#n28
> > [2]
> >
> >     * tag 'v6.6-vfs.fchmodat2' of
> > git://git.kernel.org/pub/scm/linux/kernel/git/vfs/vfs:
> >       selftests: fchmodat2: remove duplicate unneeded defines
> >       fchmodat2: add support for AT_EMPTY_PATH
> >       selftests: Add fchmodat2 selftest
> >       arch: Register fchmodat2, usually as syscall 452
> >       fs: Add fchmodat2()
> >       Non-functional cleanup of a "__user * filename"
> >
> > On Sun, Aug 25, 2024 at 5:52=E2=80=AFAM Alejandro Colomar <alx@kernel.o=
rg> wrote:
> > >
> > > Hi Elliott,
> > >
> > > On Fri, Aug 23, 2024 at 02:40:16PM GMT, enh wrote:
> > > > subject says it all... the "This flag is not currently implemented.=
"
> > > > on the man page is wrong, i think?
> > >
> > > I guess it was right when the text was written in 2006.
> > >
> > > $ git blame --follow -- man/man2/chmod.2 | grep currently
> > > 92f114db82 man2/chmod.2     (Michael Kerrisk   2014-02-21 08:35:27 +0=
100 207) This flag is not currently implemented.
> > > $ git blame 92f114db82^ -- man2/fchmodat.2 | grep currently
> > > a53b8cb2a0 (Michael Kerrisk  2006-05-02 00:05:06 +0000  99) This flag=
 is not currently implemented.
> > >
> > > That might perfectly have changed in the last 18 years.  :)
> > >
> > > Would you mind writing a small program and shell session that
> > > demonstrates it?  It could be interesting for an EXAMPLES section.
> > >
> > >
> > > Have a lovely day!
> > > Alex
> > >
> > > --
> > > <https://www.alejandro-colomar.es/>
>
> --
> <https://www.alejandro-colomar.es/>

