Return-Path: <linux-man+bounces-1716-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 297209617B8
	for <lists+linux-man@lfdr.de>; Tue, 27 Aug 2024 21:08:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AB2471F24A74
	for <lists+linux-man@lfdr.de>; Tue, 27 Aug 2024 19:08:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C44B5132132;
	Tue, 27 Aug 2024 19:08:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="j1PWLW3W"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0741B3C08A
	for <linux-man@vger.kernel.org>; Tue, 27 Aug 2024 19:08:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724785689; cv=none; b=gdbzWJPNxGFCPOLl5j0Me+17rmpjzQj31X9Nm9jsKdnjrGhR5EEcYbHORiAJ0CLnDniesMMl6QSrSB8hpzljlnevaUGNNBrIHfGl6XgdDuDddPEEK0S7eqlYtmzsZEu13KDktVXXLVZ+MBPwKQWD8dOPkOhkXrFIfw7eKVeSWno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724785689; c=relaxed/simple;
	bh=TSuA4oM5THAPApInnzY71pEUl8mi0V7CfwrV8tQbnlo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kYcQKU2PvcemhHEu3I5y85VyNLRaRIlGMUnmyzf2SiHHGzd5if7VsjP5TBUqdF7r/1chkfvafE2u45mT+or8GNb820NSW04UMNO9U2z/7eVN6x4k1ug5Y+HCSqKjZoVEOMQWY9WiAHE80pgFnj6lVLW2mKreiDnHsOGCqg7F6cE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=j1PWLW3W; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-2d439572aeaso4050583a91.1
        for <linux-man@vger.kernel.org>; Tue, 27 Aug 2024 12:08:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1724785687; x=1725390487; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xBvpYIfnOYZ0q05zSgb4LzdrI1bzeL/z/x5C6Rveq0M=;
        b=j1PWLW3WEblyNHDLNXLpjwodChMFod808jL15nm3/OcfAyMs7pLqlYljE5HqrunZpJ
         GvnuA77PG9o66GNbPeNPu24mXZYqL0KXPzkT2WaFZurga563wcaXx5vMttGCGayF4cT9
         TeX5cbPiHDxvEXC2SYw03SjgCnLesExLFDbDgloSnkAXWnP3ni/G/1QKg2P67wZ2h+42
         n2P792RSDyqRNPtfg6fiM59cjIgE5yc6KwQA/s8APc+5v9b6lYKnN8qWewYYltRvbKSH
         4jzb9r7oPWbAcHHacexmpuXtQhl19y2BDlCas9VGu95EPfQlZNLUDQPkPi4Cp93sg2S0
         jXnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724785687; x=1725390487;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xBvpYIfnOYZ0q05zSgb4LzdrI1bzeL/z/x5C6Rveq0M=;
        b=RmWkhRIzzRBvYwBH7SaGC2RBw2wYFaBBWcCVwhrmdwP8lalV/fia98eqaLB0xrNUsL
         YUYwY0LyjhnIFDYsdWDXJ5DwedSWeb9COuNTLeW0fQNpcL01MO72rmL0wP2qQ9BxrrZl
         AwK5wPGK/sVMq3NMQ4lg86Juk4zssqaeZb+bWntC2PQZmsUJtwZxyKAQ96bSvT1J0Uu4
         TQzEqzBqIyl5hF+Zl6i2yKY2Aw8dy5smRxWaqRsEr+Wmg22jNiEJ9daRXHC4qbYcTjLf
         18+ZtiFWEJUSA2hmcyQlCTNa/ih0WEAL3pvqndYshp7jTAOmJkcRFpSeEDxaK5aVoSDN
         nGmg==
X-Gm-Message-State: AOJu0YybtH3lBf7y2fLucZ2MZ8BhWTWQdsroADzyEEncpqQZfTVQepgM
	08/PM2g1coun8WnZk/5MmgEc9M/bSli2s0cPX5DAEAeERGxH0pcEBMIxRsuAinpsOQD/bVe09jf
	r3sqFnRYs7+n4Ws+9tLlqQVIhPqfDz5tA2w0u
X-Google-Smtp-Source: AGHT+IHZyxc+1NbMbm7lZsppbHtwrjZOkkszbvermeNezo0UhwTioBLdX+u/NJGUwLxqqE9kKSZaYPXdx57hseOk6dQ=
X-Received: by 2002:a17:90a:70c6:b0:2d4:b8c:7b91 with SMTP id
 98e67ed59e1d1-2d842acafdcmr221320a91.11.1724785686734; Tue, 27 Aug 2024
 12:08:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAJgzZoon_Ewki=qGEPnzbSi7Tfu-i51cT529z3obiHeaP+WuuQ@mail.gmail.com>
 <akk6v6ddvxj2wr3eo32jw4frjqxvgygbbf7xsqrzdofu7gabko@r45j6x5blmfk>
 <CAJgzZooRNJbSe0fsYztsMKvb=C1FLU_cXQX9xtR9DPCavx6H7w@mail.gmail.com>
 <22l25y4gk7qaersl4zfsyvvoxctkzs5ea5beiz44wmvbn7tg5i@q2yzq7zaj2b4>
 <CAJgzZornYRGFRmUF6KaOCDgsgYSKdJ=V6GKxVsxNSJDCyZc+SQ@mail.gmail.com> <kmig5buwz7eydpyk5in7hqzdmvykrq5kvajnkdixarfjzpeqaj@msyiruggayrx>
In-Reply-To: <kmig5buwz7eydpyk5in7hqzdmvykrq5kvajnkdixarfjzpeqaj@msyiruggayrx>
From: enh <enh@google.com>
Date: Tue, 27 Aug 2024 15:07:54 -0400
Message-ID: <CAJgzZopav8Z_FEAnPNDHmw0aYuS8zk6F9nU5ocn5ZdK2RYBJDQ@mail.gmail.com>
Subject: Re: fchmodat(2) does support AT_SYMLINK_NOFOLLOW now, no?
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 26, 2024 at 4:52=E2=80=AFPM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> Hi Elliott,
>
> On Mon, Aug 26, 2024 at 04:15:27PM GMT, enh wrote:
> > > Maybe we need to add a "C library/kernel differences" section?
> >
> > what's your timeline for "currently interesting" vs "just historical"?
>
> I guess the line is when systems that provide XXX are EOL.
> I usually check Debian and RHEL versions for determining that.
>
> > (though i guess whatever that is, Linux 6.6 is pretty new at less than
> > 12 months old!)
>
> Yup.  :)
>
> >
> > >         $ grep -rh '^\.SS ' man | sort | uniq -c | sort | tail
> > >               5 .SS glibc
> > >               7 .SS Authors and copyright conditions
> > >               8 .SS Address format
> > >              11 .SS Ioctls
> > >              11 .SS glibc notes
> > >              12 .SS Socket options
> > >              13 .SS /proc interfaces
> > >              15 .SS ISO/IEC\~8859 alphabets
> > >              51 .SS C library/kernel differences
> > >              99 .SS Program source
> > >
> > > Would you mind preparing a patch?
> >
> > if you just want the trivial removal of the incorrect sentence, sure
> > ... if you want a whole new "C library/kernel differences" section
>
> I prefer the latter: instead of removing and then documenting the
> kernel/libc difference, I'd make it in a single commit, so that
> git-blame(1) shows the history better.
>
> > you're probably able to write that ... which is probably a good
>
> I could...  I'd have to research a little bit for it.  Do you feel like
> writing a draft with what you've found already, and I continue from it?
>
> If you're busy or lazy, though, just let me know and I'll try to do it
> from scratch myself.  :)

oh, i can definitely make a start...

(i was going to at least send you the easiest patch, but then i
realized even there there's a bit of a bikeshed opportunity, so i'll
just give you all the pieces and let you decide what to do with them!)

so i think we have these things to say:

1. AT_SYMLINK_NOFOLLOW _is_ supported for fchmodat(2).
2. but only since Linux 6.6 (except see 4).
3. there's no mention of lchmod().
4. that function is very old, but it doesn't actually work on glibc
until 2.32 (https://sourceware.org/bugzilla/show_bug.cgi?id=3D14578#c16)
where it uses the O_PATH trick that musl and bionic also use (and so
doesn't need Linux 6.6).

heh, actually trying to write the bits down is probably easiest done
as a diff anyway...

diff --git a/man/man2/chmod.2 b/man/man2/chmod.2
index ae53fe3c9..c6c54eeca 100644
--- a/man/man2/chmod.2
+++ b/man/man2/chmod.2
@@ -11,7 +11,7 @@
 .\"
 .TH chmod 2 (date) "Linux man-pages (unreleased)"
 .SH NAME
-chmod, fchmod, fchmodat \- change permissions of a file
+chmod, fchmod, lchown, fchmodat \- change permissions of a file
 .SH LIBRARY
 Standard C library
 .RI ( libc ,\~ \-lc )
@@ -21,6 +21,7 @@ Standard C library
 .P
 .BI "int chmod(const char *" pathname ", mode_t " mode );
 .BI "int fchmod(int " fd ", mode_t " mode );
+.BI "int lchmod(const char *" pathname ", mode_t " mode );
 .P
 .BR "#include <fcntl.h>" "           /* Definition of AT_* constants */"
 .B #include <sys/stat.h>
@@ -60,9 +61,10 @@ Feature Test Macro Requirements for glibc (see
 .fi
 .SH DESCRIPTION
 The
-.BR chmod ()
-and
+.BR chmod (),
 .BR fchmod ()
+and
+.BR lchmod ()
 system calls change a file's mode bits.
 (The file mode consists of the file permission bits plus the set-user-ID,
 set-group-ID, and sticky bits.)
@@ -76,6 +78,11 @@ which is dereferenced if it is a symbolic link.
 .BR fchmod ()
 changes the mode of the file referred to by the open file descriptor
 .IR fd .
+.IP \[bu]
+.BR lchmod ()
+is like
+.BR chmod (),
+but does not dereference symbolic links.
 .P
 The new file mode is specified in
 .IR mode ,
@@ -203,8 +210,9 @@ can either be 0, or include the following flag:
 If
 .I pathname
 is a symbolic link, do not dereference it:
-instead operate on the link itself.
-This flag is not currently implemented.
+instead operate on the link itself,
+like
+.BR lchmod ().
 .P
 See
 .BR openat (2)
@@ -285,6 +293,7 @@ is a file descriptor referring to a file other
than a directory.
 specified
 .BR AT_SYMLINK_NOFOLLOW ,
 which is not supported.
+(See C library/kernel differences.)
 .TP
 .B EPERM
 The effective UID does not match the owner of the file,
@@ -310,12 +319,22 @@ This interface differs from the underlying Linux
system call, which does
 have a
 .I flags
 argument.
+.P
+Linux 6.6 added the
+.BR fchmodat2 ()
+system call with the POSIX flags argument.
 .SS glibc notes
 On older kernels where
-.BR fchmodat ()
+.BR fchmodat2 ()
 is unavailable, the glibc wrapper function falls back to the use of
-.BR chmod ().
-When
+.BR fchmodat ()
+when no flags are supplied,
+or to
+.BR chmod ()
+otherwise.
+In the
+.BR chmod ()
+fallback, if
 .I pathname
 is a relative pathname,
 glibc constructs a pathname based on the symbolic link in

something along those lines?

> > juncture to point out that there's also a whole missing function ---
> > there's no mention of lchmod() which seems to have been added in
> > GLIBC_2.3.2 (yes, 22 years ago; not to be confused with 2.32 :-) ...
> > except i don't think it _worked_ on Linux until glibc sha
> > 6b89c385d8bd0700b25bac2c2d0bebe68d5cc05d in 2020? i don't know how you
> > want to document that!).
>
> You probably know that function much better than me.  If you want to
> have a look at it, it'll be very welcome.  (But considering that we've
> been waiting for several years, we're not in a hurry.)  :)
>
> Have a lovely day!
> Alex
>
> --
> <https://www.alejandro-colomar.es/>

