Return-Path: <linux-man+bounces-2164-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA8A9F33DB
	for <lists+linux-man@lfdr.de>; Mon, 16 Dec 2024 15:59:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E955E166F55
	for <lists+linux-man@lfdr.de>; Mon, 16 Dec 2024 14:59:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05FF84B5AE;
	Mon, 16 Dec 2024 14:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="fRSXE4J/"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com [209.85.160.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B11DA5B216
	for <linux-man@vger.kernel.org>; Mon, 16 Dec 2024 14:58:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734361132; cv=none; b=aYcLw9ObzzGmGlLENoaPUh7CuHD1g5two8wmu+dhkE47KzSdJQWoGsdZxVnAMjBXCpqZcrOxQxYokKeLa44L86Epw0T5ldLrzTCkKDTXqp8DVPOPuPI2HdStrvgKs0QD8el3ktHdh1DpxEHuMXiKtZ0puULZrMfw2oQsTnAdFT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734361132; c=relaxed/simple;
	bh=7vktycUTA3JT8Ia8qqE+rp0Gse4IafjYYVOgJuNLPU0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mMdJaiLYBfKmEPlttKEWUAwRcZoavfDi7GaYQWU2VF4Or5JghuglJDHG3GTo1DxLJ5ZywlIhaIWwm3bBOEwRWK4ULmG3vsZD8ZA8sdQkJrvHaCB9+XOT2g9VbNmlQqMdqlwReJZpYyTly1agopDeIYDrgWzvGZRUu0vaLUPvZ2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=fRSXE4J/; arc=none smtp.client-ip=209.85.160.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-467a6781bc8so23232181cf.2
        for <linux-man@vger.kernel.org>; Mon, 16 Dec 2024 06:58:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1734361129; x=1734965929; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JK30ybZSQpjZZJOSopOrWr3HAtcuCUxXT7se/FvxxVo=;
        b=fRSXE4J/S/OVT5+7sGHSu9dxuBhqRBU+aXgBdGUbrFSHrZoPY4S2mXcQxNNlD1uG+0
         fxxD2ank0U0UPr6hyZZ2tZVVR1mF80VzmeXOCqFIWwSy2I9jkGgR08flGRRRhjE9yQAP
         oSiHhIb1lDQJ6e/OH6ssQsiEivrvckSdmKvgK+9qZMqbDSiCIoE88OyvKTucQFiu4TzR
         RE4O97X5SXUwXgNu/FfV/z36ZOikV3MpVHeXqn95jb3njDo4eM0b0gWayklNvn9XktUk
         M6Mmwgmt+WsJgJFrf/PrWfFYSwnCMoU+UIhrpKxXyAx2u2pu5x6XZitQZnF2e7l2DRsT
         +yKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734361129; x=1734965929;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JK30ybZSQpjZZJOSopOrWr3HAtcuCUxXT7se/FvxxVo=;
        b=bvxvvOv3RhFd5DWM4/+0LzZ+eTXBmVJXJZIyb3E5NO1iZRgaorUa0GnWuve++uOz13
         xAOF/S7KIRG9uV3q1tW54Jvzq0Cae/edoBt+JcXeOaFfcb7kGPJYAOxVCnyJ8PO85Mc8
         gloIq2AySFij2zkBIbtJJglqhjtC2WyCiOsaMkP6GnNch0++xJDPZSv6vJ19VudUDpqb
         NlxBkMcyQ9jwz/AJijlJLadCo3H5gVzkqybEU7b1VtQ0lEp1YR35X2UfUj1OjyO3MRA7
         8GqUVOTJZ/bm2+wfIZ3h2otqvQcZLIQ0Dyq/8x28Ibv/VYi8wOVmqdA2LqfvXjV4tGaf
         ck3g==
X-Gm-Message-State: AOJu0YxS45uzNJfW//1YwsKHF1T+zn/1B+udL1KG1xFKtMIAItYuK/AH
	noKOi7MtpWXs4OKers1o/r3W5ttGTm9JDz9YFgFBMfBTG8Yr7dif+CfYgcEF98O6KLgwlkei4S/
	l26pgtHQkltsfSRKkcqdPP52bqHY+DjFh7kkn
X-Gm-Gg: ASbGncteBEguM7c2wXkn995sEtIrPXZoNAIz7bYzoIjY00TTtMOhUmsQ9FRyH+1o+1/
	tV9Se97Ik3X+KGHDSqzckHZdRb48C8kOIeH8=
X-Google-Smtp-Source: AGHT+IG7fe55NA4I0DArf60gReNXGTt3S3+SARK+pwmH42Ye3ELNEWGVTU9YQNXDBYAglgowENv+JCxAOURKzgUduhE=
X-Received: by 2002:a05:622a:5a8e:b0:460:a928:696f with SMTP id
 d75a77b69052e-467a578f47emr248064841cf.29.1734361128358; Mon, 16 Dec 2024
 06:58:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <akk6v6ddvxj2wr3eo32jw4frjqxvgygbbf7xsqrzdofu7gabko@r45j6x5blmfk>
 <CAJgzZooRNJbSe0fsYztsMKvb=C1FLU_cXQX9xtR9DPCavx6H7w@mail.gmail.com>
 <22l25y4gk7qaersl4zfsyvvoxctkzs5ea5beiz44wmvbn7tg5i@q2yzq7zaj2b4>
 <CAJgzZornYRGFRmUF6KaOCDgsgYSKdJ=V6GKxVsxNSJDCyZc+SQ@mail.gmail.com>
 <kmig5buwz7eydpyk5in7hqzdmvykrq5kvajnkdixarfjzpeqaj@msyiruggayrx>
 <CAJgzZopav8Z_FEAnPNDHmw0aYuS8zk6F9nU5ocn5ZdK2RYBJDQ@mail.gmail.com>
 <5lvpbbvk7azxadhlfalfssera5hmxadpce7c22e7eyis6ra3tv@mikedqdtx7en>
 <CAJgzZopVMJ4NOLSVpjPgOZ1EJgz=ygVc4Fue_AGUJ3LOoKEruQ@mail.gmail.com>
 <qwsphfj22qtmb3g4ldorx4thzwzf3jo5ibhfdcig5bizw5yma4@ujxlvm7pebug>
 <CAJgzZoqMtJyyiYpJ+e=Rp000z1W5p4kcjYzrS8TbqijMzRmqQg@mail.gmail.com> <nihkb5t42ntlv277n4xiqzpy7rfz3qkxt7rohfd2no47x4qatt@mpiqy5ykxmyc>
In-Reply-To: <nihkb5t42ntlv277n4xiqzpy7rfz3qkxt7rohfd2no47x4qatt@mpiqy5ykxmyc>
From: enh <enh@google.com>
Date: Mon, 16 Dec 2024 09:58:36 -0500
Message-ID: <CAJgzZorp+Ah+gAqj_O_9-AaCL1UMP_JM8X_Ct5nA-23MRDO+vA@mail.gmail.com>
Subject: Re: fchmodat(2) does support AT_SYMLINK_NOFOLLOW now, no?
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man <linux-man@vger.kernel.org>
Content-Type: multipart/mixed; boundary="000000000000f873220629646afa"

--000000000000f873220629646afa
Content-Type: multipart/alternative; boundary="000000000000f873210629646af8"

--000000000000f873210629646af8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 16, 2024 at 9:19=E2=80=AFAM Alejandro Colomar <alx@kernel.org> =
wrote:

> Hi Elliott,
>
> On Mon, Dec 16, 2024 at 09:03:47AM GMT, enh wrote:
> > On Mon, Dec 16, 2024 at 8:57=E2=80=AFAM Alejandro Colomar <alx@kernel.o=
rg>
> wrote:
> >
> > > Hi Elliott,
> > >
> > > On Mon, Dec 16, 2024 at 08:44:59AM GMT, enh wrote:
> > > > On Thu, Aug 29, 2024 at 7:44=E2=80=AFPM Alejandro Colomar <alx@kern=
el.org>
> > > wrote:
> > > > > > @@ -285,6 +293,7 @@ is a file descriptor referring to a file
> other
> > > > >
> > > > > Would you mind checking this?:
> > > > >
> > > > >         $ head -n11 <CONTRIBUTING.d/git
> > > > >         Name
> > > > >                Git - instructions for configuring git(1)
> > > > >
> > > > >         Description
> > > > >            git-diff(1), gitattributes(5)
> > > > >                To produce useful hunk contexts in manual pages, w=
e
> > > need to
> > > > > hack
> > > > >                git(1)'s idea of a function name, and also to tell
> git
> > > what
> > > > > is a
> > > > >                manual page.
> > > > >
> > > > >                    $ git config --global diff.man.xfuncname
> '^\.S[SHsh]
> > > > > .*$';
> > > > >                    $ echo '*.[0-9]* diff=3Dman'
> > > >>~/.config/git/attributes;
> > > > >
> > > > > It helps reviewing diffs for manual pages.  :)
> > > > >
> > > >
> > > > ~/man-pages$ echo '*.[0-9]* diff=3Dman' >>~/.git/attributes;
> > >
> > > You mistyped.  It should be
> > >
> > >         >>~/.config/git/attributes;
> > >
> > > not
> > >
> > >         >>~/.git/attributes;
> > >
> >
> > well, i edited that line because the copy & pasted command with .config
> > didn't work.
>
> Fixed.  Thanks!
> <
> https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/co=
mmit/?h=3Dcontrib&id=3Da43746817db68129448e09b2d356fa12f7da6764
> >
>
> >
> >
> > > > -bash: /usr/local/google/home/enh/.git/attributes: No such file or
> > > directory
> > >
> > > Hmmm, I should mkdir(1) first.
> > >
> > > > i assume this is meant to be
> > > >
> > > > ~/man-pages$ echo '*.[0-9]* diff=3Dman' >>~/.gitattributes;
> > > >
> > > > instead?
> > >
> > > Nope; I think that won't work (per your patch, it seems it didn't).
> > >
> > > Would you mind creating the directories as appropriate, re-running th=
at
> > > command, and resending the patch?  (That will also help check that yo=
u
> > > ran it correctly.)
> > >
> >
> > attached...
>
> Thanks!
>
> > diff --git a/man/man2/chmod.2 b/man/man2/chmod.2
>
> Would you mind adding a commit message?
>

done.


> > index ae53fe3c9..3085840a2 100644
> > --- a/man/man2/chmod.2
> > +++ b/man/man2/chmod.2
> > @@ -11,7 +11,7 @@
> >  .\"
> >  .TH chmod 2 (date) "Linux man-pages (unreleased)"
> >  .SH NAME
> > -chmod, fchmod, fchmodat \- change permissions of a file
> > +chmod, fchmod, lchown, fchmodat \- change permissions of a file
>
> s/lchown/lchmod/?
>

done.


> >  .SH LIBRARY
> >  Standard C library
> >  .RI ( libc ,\~ \-lc )
> > @@ -21,6 +21,7 @@ .SH SYNOPSIS
> >  .P
> >  .BI "int chmod(const char *" pathname ", mode_t " mode );
> >  .BI "int fchmod(int " fd ", mode_t " mode );
> > +.BI "int lchmod(const char *" pathname ", mode_t " mode );
>
> Ok.
>
> >  .P
> >  .BR "#include <fcntl.h>" "           /* Definition of AT_* constants *=
/"
> >  .B #include <sys/stat.h>
> > @@ -51,6 +52,12 @@ .SH SYNOPSIS
> >  .\"        || (_XOPEN_SOURCE && _XOPEN_SOURCE_EXTENDED)
> >  .fi
> >  .P
> > +.BR lchmod ():
> > +.nf
> > +    Since glibc 2.5:
> > +        _DEFAULT_SOURCE
> > +.fi
> > +.P
>
> Ok.
>
> >  .BR fchmodat ():
> >  .nf
> >      Since glibc 2.10:
> > @@ -60,9 +67,10 @@ .SH SYNOPSIS
> >  .fi
> >  .SH DESCRIPTION
> >  The
> > -.BR chmod ()
> > +.BR chmod (),
> > +.BR fchmod (),
> >  and
> > -.BR fchmod ()
> > +.BR lchmod ()
>
> Ok.
>
> >  system calls change a file's mode bits.
> >  (The file mode consists of the file permission bits plus the
> set-user-ID,
> >  set-group-ID, and sticky bits.)
> > @@ -76,6 +84,11 @@ .SH DESCRIPTION
> >  .BR fchmod ()
> >  changes the mode of the file referred to by the open file descriptor
> >  .IR fd .
> > +.IP \[bu]
> > +.BR lchmod ()
> > +is like
> > +.BR chmod (),
> > +but does not dereference symbolic links.
>
> Ok.
>
> >  .P
> >  The new file mode is specified in
> >  .IR mode ,
> > @@ -203,8 +216,9 @@ .SS fchmodat()
> >  If
> >  .I pathname
> >  is a symbolic link, do not dereference it:
> > -instead operate on the link itself.
> > -This flag is not currently implemented.
> > +instead operate on the link itself,
> > +like
> > +.BR lchmod ().
>
> Ok.
>
> >  .P
> >  See
> >  .BR openat (2)
> > @@ -285,6 +299,7 @@ .SH ERRORS
> >  specified
> >  .BR AT_SYMLINK_NOFOLLOW ,
> >  which is not supported.
> > +(See C library/kernel differences.)
>
> Ok.
>
> >  .TP
> >  .B EPERM
> >  The effective UID does not match the owner of the file,
> > @@ -310,12 +325,22 @@ .SS C library/kernel differences
> >  have a
> >  .I flags
> >  argument.
> > +.P
> > +Linux 6.6 added the
> > +.BR fchmodat2 ()
> > +system call with the POSIX flags argument.
>
> This might be better in the HISTORY section.  What do you think?
>

i dunno ... this seems more like a linux/libc difference to me. a caller
shouldn't need to know what actual system calls are happening? (that
assumes glibc's workarounds aren't leaky, but given the existence of
lchmod(2) there shouldn't be any reason for them to be? and even if they
are, that _definitely_ feels like it belongs in "libc differences"!)


> >  .SS glibc notes
> >  On older kernels where
> > -.BR fchmodat ()
> > +.BR fchmodat2 ()
> >  is unavailable, the glibc wrapper function falls back to the use of
> > -.BR chmod ().
> > -When
> > +.BR fchmodat ()
> > +when no flags are supplied,
> > +or to
> > +.BR chmod ()
> > +otherwise.
> > +In the
> > +.BR chmod ()
> > +fallback, if
>
> Ok.
>
> >  .I pathname
> >  is a relative pathname,
> >  glibc constructs a pathname based on the symbolic link in
> > @@ -324,7 +349,16 @@ .SS glibc notes
> >  .I dirfd
> >  argument.
> >  .SH STANDARDS
> > +.TP
> > +.BR chmod ()
> > +.TQ
> > +.BR fchmod ()
> > +.TQ
> > +.BR fchmodat ()
> >  POSIX.1-2008.
> > +.TP
> > +.BR lchmod ()
> > +Linux.
>
> Ok.  Too bad that OpenBSD lacks it.  The other BSDs have it.  :/
>

yeah, and importantly macOS has it too ... but portable code should
probably prefer fchmodat() anyway.




> >  .SH HISTORY
> >  .TP
> >  .BR chmod ()
> > @@ -336,6 +370,9 @@ .SH HISTORY
> >  POSIX.1-2008.
> >  Linux 2.6.16,
> >  glibc 2.4.
> > +.TP
> > +.BR lchmod ()
> > +Linux 2.6.16, glibc 2.5.
>
> Ok.
>
> >  .SH SEE ALSO
> >  .BR chmod (1),
> >  .BR chown (2),
>
> Cheers,
> Alex
>
>
> --
> <https://www.alejandro-colomar.es/>
>

--000000000000f873210629646af8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Dec 16,=
 2024 at 9:19=E2=80=AFAM Alejandro Colomar &lt;<a href=3D"mailto:alx@kernel=
.org">alx@kernel.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">Hi Elliott,<br>
<br>
On Mon, Dec 16, 2024 at 09:03:47AM GMT, enh wrote:<br>
&gt; On Mon, Dec 16, 2024 at 8:57=E2=80=AFAM Alejandro Colomar &lt;<a href=
=3D"mailto:alx@kernel.org" target=3D"_blank">alx@kernel.org</a>&gt; wrote:<=
br>
&gt; <br>
&gt; &gt; Hi Elliott,<br>
&gt; &gt;<br>
&gt; &gt; On Mon, Dec 16, 2024 at 08:44:59AM GMT, enh wrote:<br>
&gt; &gt; &gt; On Thu, Aug 29, 2024 at 7:44=E2=80=AFPM Alejandro Colomar &l=
t;<a href=3D"mailto:alx@kernel.org" target=3D"_blank">alx@kernel.org</a>&gt=
;<br>
&gt; &gt; wrote:<br>
&gt; &gt; &gt; &gt; &gt; @@ -285,6 +293,7 @@ is a file descriptor referring=
 to a file other<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Would you mind checking this?:<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0$ head -n11 &lt;CONTRI=
BUTING.d/git<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Name<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
Git - instructions for configuring git(1)<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Description<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 git-diff(1), g=
itattributes(5)<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
To produce useful hunk contexts in manual pages, we<br>
&gt; &gt; need to<br>
&gt; &gt; &gt; &gt; hack<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
git(1)&#39;s idea of a function name, and also to tell git<br>
&gt; &gt; what<br>
&gt; &gt; &gt; &gt; is a<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
manual page.<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 $ git config --global diff.man.xfuncname &#39;^\.S[SHsh]<br>
&gt; &gt; &gt; &gt; .*$&#39;;<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 $ echo &#39;*.[0-9]* diff=3Dman&#39;<br>
&gt; &gt; &gt;&gt;~/.config/git/attributes;<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; It helps reviewing diffs for manual pages.=C2=A0 :)<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; ~/man-pages$ echo &#39;*.[0-9]* diff=3Dman&#39; &gt;&gt;~/.g=
it/attributes;<br>
&gt; &gt;<br>
&gt; &gt; You mistyped.=C2=A0 It should be<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt;~/.config/git/attributes=
;<br>
&gt; &gt;<br>
&gt; &gt; not<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;&gt;~/.git/attributes;<br>
&gt; &gt;<br>
&gt; <br>
&gt; well, i edited that line because the copy &amp; pasted command with .c=
onfig<br>
&gt; didn&#39;t work.<br>
<br>
Fixed.=C2=A0 Thanks!<br>
&lt;<a href=3D"https://www.alejandro-colomar.es/src/alx/linux/man-pages/man=
-pages.git/commit/?h=3Dcontrib&amp;id=3Da43746817db68129448e09b2d356fa12f7d=
a6764" rel=3D"noreferrer" target=3D"_blank">https://www.alejandro-colomar.e=
s/src/alx/linux/man-pages/man-pages.git/commit/?h=3Dcontrib&amp;id=3Da43746=
817db68129448e09b2d356fa12f7da6764</a>&gt;<br>
<br>
&gt; <br>
&gt; <br>
&gt; &gt; &gt; -bash: /usr/local/google/home/enh/.git/attributes: No such f=
ile or<br>
&gt; &gt; directory<br>
&gt; &gt;<br>
&gt; &gt; Hmmm, I should mkdir(1) first.<br>
&gt; &gt;<br>
&gt; &gt; &gt; i assume this is meant to be<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; ~/man-pages$ echo &#39;*.[0-9]* diff=3Dman&#39; &gt;&gt;~/.g=
itattributes;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; instead?<br>
&gt; &gt;<br>
&gt; &gt; Nope; I think that won&#39;t work (per your patch, it seems it di=
dn&#39;t).<br>
&gt; &gt;<br>
&gt; &gt; Would you mind creating the directories as appropriate, re-runnin=
g that<br>
&gt; &gt; command, and resending the patch?=C2=A0 (That will also help chec=
k that you<br>
&gt; &gt; ran it correctly.)<br>
&gt; &gt;<br>
&gt; <br>
&gt; attached...<br>
<br>
Thanks!<br>
<br>
&gt; diff --git a/man/man2/chmod.2 b/man/man2/chmod.2<br>
<br>
Would you mind adding a commit message?<br></blockquote><div><br></div><div=
>done.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex">
&gt; index ae53fe3c9..3085840a2 100644<br>
&gt; --- a/man/man2/chmod.2<br>
&gt; +++ b/man/man2/chmod.2<br>
&gt; @@ -11,7 +11,7 @@<br>
&gt;=C2=A0 .\&quot;<br>
&gt;=C2=A0 .TH chmod 2 (date) &quot;Linux man-pages (unreleased)&quot;<br>
&gt;=C2=A0 .SH NAME<br>
&gt; -chmod, fchmod, fchmodat \- change permissions of a file<br>
&gt; +chmod, fchmod, lchown, fchmodat \- change permissions of a file<br>
<br>
s/lchown/lchmod/?<br></blockquote><div><br></div><div>done.</div><div>=C2=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">
&gt;=C2=A0 .SH LIBRARY<br>
&gt;=C2=A0 Standard C library<br>
&gt;=C2=A0 .RI ( libc ,\~ \-lc )<br>
&gt; @@ -21,6 +21,7 @@ .SH SYNOPSIS<br>
&gt;=C2=A0 .P<br>
&gt;=C2=A0 .BI &quot;int chmod(const char *&quot; pathname &quot;, mode_t &=
quot; mode );<br>
&gt;=C2=A0 .BI &quot;int fchmod(int &quot; fd &quot;, mode_t &quot; mode );=
<br>
&gt; +.BI &quot;int lchmod(const char *&quot; pathname &quot;, mode_t &quot=
; mode );<br>
<br>
Ok.<br>
<br>
&gt;=C2=A0 .P<br>
&gt;=C2=A0 .BR &quot;#include &lt;fcntl.h&gt;&quot; &quot;=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0/* Definition of AT_* constants */&quot;<br>
&gt;=C2=A0 .B #include &lt;sys/stat.h&gt;<br>
&gt; @@ -51,6 +52,12 @@ .SH SYNOPSIS<br>
&gt;=C2=A0 .\&quot;=C2=A0 =C2=A0 =C2=A0 =C2=A0 || (_XOPEN_SOURCE &amp;&amp;=
 _XOPEN_SOURCE_EXTENDED)<br>
&gt;=C2=A0 .fi<br>
&gt;=C2=A0 .P<br>
&gt; +.BR lchmod ():<br>
&gt; +.nf<br>
&gt; +=C2=A0 =C2=A0 Since glibc 2.5:<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 _DEFAULT_SOURCE<br>
&gt; +.fi<br>
&gt; +.P<br>
<br>
Ok.<br>
<br>
&gt;=C2=A0 .BR fchmodat ():<br>
&gt;=C2=A0 .nf<br>
&gt;=C2=A0 =C2=A0 =C2=A0 Since glibc 2.10:<br>
&gt; @@ -60,9 +67,10 @@ .SH SYNOPSIS<br>
&gt;=C2=A0 .fi<br>
&gt;=C2=A0 .SH DESCRIPTION<br>
&gt;=C2=A0 The<br>
&gt; -.BR chmod ()<br>
&gt; +.BR chmod (),<br>
&gt; +.BR fchmod (),<br>
&gt;=C2=A0 and<br>
&gt; -.BR fchmod ()<br>
&gt; +.BR lchmod ()<br>
<br>
Ok.<br>
<br>
&gt;=C2=A0 system calls change a file&#39;s mode bits.<br>
&gt;=C2=A0 (The file mode consists of the file permission bits plus the set=
-user-ID,<br>
&gt;=C2=A0 set-group-ID, and sticky bits.)<br>
&gt; @@ -76,6 +84,11 @@ .SH DESCRIPTION<br>
&gt;=C2=A0 .BR fchmod ()<br>
&gt;=C2=A0 changes the mode of the file referred to by the open file descri=
ptor<br>
&gt;=C2=A0 .IR fd .<br>
&gt; +.IP \[bu]<br>
&gt; +.BR lchmod ()<br>
&gt; +is like<br>
&gt; +.BR chmod (),<br>
&gt; +but does not dereference symbolic links.<br>
<br>
Ok.<br>
<br>
&gt;=C2=A0 .P<br>
&gt;=C2=A0 The new file mode is specified in<br>
&gt;=C2=A0 .IR mode ,<br>
&gt; @@ -203,8 +216,9 @@ .SS fchmodat()<br>
&gt;=C2=A0 If<br>
&gt;=C2=A0 .I pathname<br>
&gt;=C2=A0 is a symbolic link, do not dereference it:<br>
&gt; -instead operate on the link itself.<br>
&gt; -This flag is not currently implemented.<br>
&gt; +instead operate on the link itself,<br>
&gt; +like<br>
&gt; +.BR lchmod ().<br>
<br>
Ok.<br>
<br>
&gt;=C2=A0 .P<br>
&gt;=C2=A0 See<br>
&gt;=C2=A0 .BR openat (2)<br>
&gt; @@ -285,6 +299,7 @@ .SH ERRORS<br>
&gt;=C2=A0 specified<br>
&gt;=C2=A0 .BR AT_SYMLINK_NOFOLLOW ,<br>
&gt;=C2=A0 which is not supported.<br>
&gt; +(See C library/kernel differences.)<br>
<br>
Ok.<br>
<br>
&gt;=C2=A0 .TP<br>
&gt;=C2=A0 .B EPERM<br>
&gt;=C2=A0 The effective UID does not match the owner of the file,<br>
&gt; @@ -310,12 +325,22 @@ .SS C library/kernel differences<br>
&gt;=C2=A0 have a<br>
&gt;=C2=A0 .I flags<br>
&gt;=C2=A0 argument.<br>
&gt; +.P<br>
&gt; +Linux 6.6 added the<br>
&gt; +.BR fchmodat2 ()<br>
&gt; +system call with the POSIX flags argument.<br>
<br>
This might be better in the HISTORY section.=C2=A0 What do you think?<br></=
blockquote><div><br></div><div>i dunno ... this seems more like a linux/lib=
c difference to me. a caller shouldn&#39;t need to know what actual system =
calls are happening? (that assumes glibc&#39;s workarounds aren&#39;t leaky=
, but given the existence of lchmod(2) there shouldn&#39;t be any reason fo=
r them to be? and even if they are, that _definitely_ feels like it belongs=
 in &quot;libc differences&quot;!)</div><div>=C2=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
&gt;=C2=A0 .SS glibc notes<br>
&gt;=C2=A0 On older kernels where<br>
&gt; -.BR fchmodat ()<br>
&gt; +.BR fchmodat2 ()<br>
&gt;=C2=A0 is unavailable, the glibc wrapper function falls back to the use=
 of<br>
&gt; -.BR chmod ().<br>
&gt; -When<br>
&gt; +.BR fchmodat ()<br>
&gt; +when no flags are supplied,<br>
&gt; +or to<br>
&gt; +.BR chmod ()<br>
&gt; +otherwise.<br>
&gt; +In the<br>
&gt; +.BR chmod ()<br>
&gt; +fallback, if<br>
<br>
Ok.<br>
<br>
&gt;=C2=A0 .I pathname<br>
&gt;=C2=A0 is a relative pathname,<br>
&gt;=C2=A0 glibc constructs a pathname based on the symbolic link in<br>
&gt; @@ -324,7 +349,16 @@ .SS glibc notes<br>
&gt;=C2=A0 .I dirfd<br>
&gt;=C2=A0 argument.<br>
&gt;=C2=A0 .SH STANDARDS<br>
&gt; +.TP<br>
&gt; +.BR chmod ()<br>
&gt; +.TQ<br>
&gt; +.BR fchmod ()<br>
&gt; +.TQ<br>
&gt; +.BR fchmodat ()<br>
&gt;=C2=A0 POSIX.1-2008.<br>
&gt; +.TP<br>
&gt; +.BR lchmod ()<br>
&gt; +Linux.<br>
<br>
Ok.=C2=A0 Too bad that OpenBSD lacks it.=C2=A0 The other BSDs have it.=C2=
=A0 :/<br></blockquote><div><br></div><div>yeah, and importantly macOS has =
it too ... but portable code should probably prefer fchmodat() anyway.</div=
><div><br></div><div><br></div><div>=C2=A0</div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex">
&gt;=C2=A0 .SH HISTORY<br>
&gt;=C2=A0 .TP<br>
&gt;=C2=A0 .BR chmod ()<br>
&gt; @@ -336,6 +370,9 @@ .SH HISTORY<br>
&gt;=C2=A0 POSIX.1-2008.<br>
&gt;=C2=A0 Linux 2.6.16,<br>
&gt;=C2=A0 glibc 2.4.<br>
&gt; +.TP<br>
&gt; +.BR lchmod ()<br>
&gt; +Linux 2.6.16, glibc 2.5.<br>
<br>
Ok.<br>
<br>
&gt;=C2=A0 .SH SEE ALSO<br>
&gt;=C2=A0 .BR chmod (1),<br>
&gt;=C2=A0 .BR chown (2),<br>
<br>
Cheers,<br>
Alex<br>
<br>
<br>
-- <br>
&lt;<a href=3D"https://www.alejandro-colomar.es/" rel=3D"noreferrer" target=
=3D"_blank">https://www.alejandro-colomar.es/</a>&gt;<br>
</blockquote></div></div>

--000000000000f873210629646af8--
--000000000000f873220629646afa
Content-Type: application/octet-stream; 
	name="0001-man-man2-chmod.2-add-lchmod-clarify-fchmodat.patch"
Content-Disposition: attachment; 
	filename="0001-man-man2-chmod.2-add-lchmod-clarify-fchmodat.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_m4r5tt370>
X-Attachment-Id: f_m4r5tt370

RnJvbSAxZTg3YjExMTY4NGQzYzBiNjdlYmQxZTg0YzQxNWFmYjk3OWU1MDMxIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBFbGxpb3R0IEh1Z2hlcyA8ZW5oQGdvb2dsZS5jb20+CkRhdGU6
IE1vbiwgMTYgRGVjIDIwMjQgMTQ6NTY6NTAgKzAwMDAKU3ViamVjdDogW1BBVENIXSBtYW4vbWFu
Mi9jaG1vZC4yOiBhZGQgbGNobW9kKCksIGNsYXJpZnkgZmNobW9kYXQoKS4KCi0tLQogbWFuL21h
bjIvY2htb2QuMiB8IDUzICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKyst
LS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQ1IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvbWFuL21hbjIvY2htb2QuMiBiL21hbi9tYW4yL2NobW9kLjIKaW5kZXgg
YWU1M2ZlM2M5Li5kYzU0MGU4YjYgMTAwNjQ0Ci0tLSBhL21hbi9tYW4yL2NobW9kLjIKKysrIGIv
bWFuL21hbjIvY2htb2QuMgpAQCAtMTEsNyArMTEsNyBAQAogLlwiCiAuVEggY2htb2QgMiAoZGF0
ZSkgIkxpbnV4IG1hbi1wYWdlcyAodW5yZWxlYXNlZCkiCiAuU0ggTkFNRQotY2htb2QsIGZjaG1v
ZCwgZmNobW9kYXQgXC0gY2hhbmdlIHBlcm1pc3Npb25zIG9mIGEgZmlsZQorY2htb2QsIGZjaG1v
ZCwgbGNobW9kLCBmY2htb2RhdCBcLSBjaGFuZ2UgcGVybWlzc2lvbnMgb2YgYSBmaWxlCiAuU0gg
TElCUkFSWQogU3RhbmRhcmQgQyBsaWJyYXJ5CiAuUkkgKCBsaWJjICxcfiBcLWxjICkKQEAgLTIx
LDYgKzIxLDcgQEAgLlNIIFNZTk9QU0lTCiAuUAogLkJJICJpbnQgY2htb2QoY29uc3QgY2hhciAq
IiBwYXRobmFtZSAiLCBtb2RlX3QgIiBtb2RlICk7CiAuQkkgImludCBmY2htb2QoaW50ICIgZmQg
IiwgbW9kZV90ICIgbW9kZSApOworLkJJICJpbnQgbGNobW9kKGNvbnN0IGNoYXIgKiIgcGF0aG5h
bWUgIiwgbW9kZV90ICIgbW9kZSApOwogLlAKIC5CUiAiI2luY2x1ZGUgPGZjbnRsLmg+IiAiICAg
ICAgICAgICAvKiBEZWZpbml0aW9uIG9mIEFUXyogY29uc3RhbnRzICovIgogLkIgI2luY2x1ZGUg
PHN5cy9zdGF0Lmg+CkBAIC01MSw2ICs1MiwxMiBAQCAuU0ggU1lOT1BTSVMKIC5cIiAgICAgICAg
fHwgKF9YT1BFTl9TT1VSQ0UgJiYgX1hPUEVOX1NPVVJDRV9FWFRFTkRFRCkKIC5maQogLlAKKy5C
UiBsY2htb2QgKCk6CisubmYKKyAgICBTaW5jZSBnbGliYyAyLjU6CisgICAgICAgIF9ERUZBVUxU
X1NPVVJDRQorLmZpCisuUAogLkJSIGZjaG1vZGF0ICgpOgogLm5mCiAgICAgU2luY2UgZ2xpYmMg
Mi4xMDoKQEAgLTYwLDkgKzY3LDEwIEBAIC5TSCBTWU5PUFNJUwogLmZpCiAuU0ggREVTQ1JJUFRJ
T04KIFRoZQotLkJSIGNobW9kICgpCisuQlIgY2htb2QgKCksCisuQlIgZmNobW9kICgpLAogYW5k
Ci0uQlIgZmNobW9kICgpCisuQlIgbGNobW9kICgpCiBzeXN0ZW0gY2FsbHMgY2hhbmdlIGEgZmls
ZSdzIG1vZGUgYml0cy4KIChUaGUgZmlsZSBtb2RlIGNvbnNpc3RzIG9mIHRoZSBmaWxlIHBlcm1p
c3Npb24gYml0cyBwbHVzIHRoZSBzZXQtdXNlci1JRCwKIHNldC1ncm91cC1JRCwgYW5kIHN0aWNr
eSBiaXRzLikKQEAgLTc2LDYgKzg0LDExIEBAIC5TSCBERVNDUklQVElPTgogLkJSIGZjaG1vZCAo
KQogY2hhbmdlcyB0aGUgbW9kZSBvZiB0aGUgZmlsZSByZWZlcnJlZCB0byBieSB0aGUgb3BlbiBm
aWxlIGRlc2NyaXB0b3IKIC5JUiBmZCAuCisuSVAgXFtidV0KKy5CUiBsY2htb2QgKCkKK2lzIGxp
a2UKKy5CUiBjaG1vZCAoKSwKK2J1dCBkb2VzIG5vdCBkZXJlZmVyZW5jZSBzeW1ib2xpYyBsaW5r
cy4KIC5QCiBUaGUgbmV3IGZpbGUgbW9kZSBpcyBzcGVjaWZpZWQgaW4KIC5JUiBtb2RlICwKQEAg
LTIwMyw4ICsyMTYsOSBAQCAuU1MgZmNobW9kYXQoKQogSWYKIC5JIHBhdGhuYW1lCiBpcyBhIHN5
bWJvbGljIGxpbmssIGRvIG5vdCBkZXJlZmVyZW5jZSBpdDoKLWluc3RlYWQgb3BlcmF0ZSBvbiB0
aGUgbGluayBpdHNlbGYuCi1UaGlzIGZsYWcgaXMgbm90IGN1cnJlbnRseSBpbXBsZW1lbnRlZC4K
K2luc3RlYWQgb3BlcmF0ZSBvbiB0aGUgbGluayBpdHNlbGYsCitsaWtlCisuQlIgbGNobW9kICgp
LgogLlAKIFNlZQogLkJSIG9wZW5hdCAoMikKQEAgLTI4NSw2ICsyOTksNyBAQCAuU0ggRVJST1JT
CiBzcGVjaWZpZWQKIC5CUiBBVF9TWU1MSU5LX05PRk9MTE9XICwKIHdoaWNoIGlzIG5vdCBzdXBw
b3J0ZWQuCisoU2VlIEMgbGlicmFyeS9rZXJuZWwgZGlmZmVyZW5jZXMuKQogLlRQCiAuQiBFUEVS
TQogVGhlIGVmZmVjdGl2ZSBVSUQgZG9lcyBub3QgbWF0Y2ggdGhlIG93bmVyIG9mIHRoZSBmaWxl
LApAQCAtMzEwLDEyICszMjUsMjIgQEAgLlNTIEMgbGlicmFyeS9rZXJuZWwgZGlmZmVyZW5jZXMK
IGhhdmUgYQogLkkgZmxhZ3MKIGFyZ3VtZW50LgorLlAKK0xpbnV4IDYuNiBhZGRlZCB0aGUKKy5C
UiBmY2htb2RhdDIgKCkKK3N5c3RlbSBjYWxsIHdpdGggdGhlIFBPU0lYIGZsYWdzIGFyZ3VtZW50
LgogLlNTIGdsaWJjIG5vdGVzCiBPbiBvbGRlciBrZXJuZWxzIHdoZXJlCi0uQlIgZmNobW9kYXQg
KCkKKy5CUiBmY2htb2RhdDIgKCkKIGlzIHVuYXZhaWxhYmxlLCB0aGUgZ2xpYmMgd3JhcHBlciBm
dW5jdGlvbiBmYWxscyBiYWNrIHRvIHRoZSB1c2Ugb2YKLS5CUiBjaG1vZCAoKS4KLVdoZW4KKy5C
UiBmY2htb2RhdCAoKQord2hlbiBubyBmbGFncyBhcmUgc3VwcGxpZWQsCitvciB0bworLkJSIGNo
bW9kICgpCitvdGhlcndpc2UuCitJbiB0aGUKKy5CUiBjaG1vZCAoKQorZmFsbGJhY2ssIGlmCiAu
SSBwYXRobmFtZQogaXMgYSByZWxhdGl2ZSBwYXRobmFtZSwKIGdsaWJjIGNvbnN0cnVjdHMgYSBw
YXRobmFtZSBiYXNlZCBvbiB0aGUgc3ltYm9saWMgbGluayBpbgpAQCAtMzI0LDcgKzM0OSwxNiBA
QCAuU1MgZ2xpYmMgbm90ZXMKIC5JIGRpcmZkCiBhcmd1bWVudC4KIC5TSCBTVEFOREFSRFMKKy5U
UAorLkJSIGNobW9kICgpCisuVFEKKy5CUiBmY2htb2QgKCkKKy5UUQorLkJSIGZjaG1vZGF0ICgp
CiBQT1NJWC4xLTIwMDguCisuVFAKKy5CUiBsY2htb2QgKCkKK0xpbnV4LgogLlNIIEhJU1RPUlkK
IC5UUAogLkJSIGNobW9kICgpCkBAIC0zMzYsNiArMzcwLDkgQEAgLlNIIEhJU1RPUlkKIFBPU0lY
LjEtMjAwOC4KIExpbnV4IDIuNi4xNiwKIGdsaWJjIDIuNC4KKy5UUAorLkJSIGxjaG1vZCAoKQor
TGludXggMi42LjE2LCBnbGliYyAyLjUuCiAuU0ggU0VFIEFMU08KIC5CUiBjaG1vZCAoMSksCiAu
QlIgY2hvd24gKDIpLAotLSAKMi40Ny4xLjYxMy5nYzI3ZjRiN2E5Zi1nb29nCgo=
--000000000000f873220629646afa--

