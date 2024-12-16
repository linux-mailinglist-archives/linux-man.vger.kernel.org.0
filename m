Return-Path: <linux-man+bounces-2159-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B889F31E8
	for <lists+linux-man@lfdr.de>; Mon, 16 Dec 2024 14:47:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9F60B188846B
	for <lists+linux-man@lfdr.de>; Mon, 16 Dec 2024 13:46:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A351F205E07;
	Mon, 16 Dec 2024 13:45:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="VcLNTjhY"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A4B8204F92
	for <linux-man@vger.kernel.org>; Mon, 16 Dec 2024 13:45:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734356716; cv=none; b=l7O/DkwrhytyloRxETXwcTSEelYBiBfrvQVStUgA3hLT0OTa970Oc3ytfvb8u7lWDgTialsicjz9VeAa4/Mn13h4cTnprKx108xPnbmsZF6PppYnC8rpJkL0iX2qEkbTXsOojDJ0dLhfpC2sk12vzSi+G7EKPW4HA/b4f71QLvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734356716; c=relaxed/simple;
	bh=UfAeY2kRGD2mfeicOlMM0vPsO6lS/K894WuNV/12czQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Yy2iT0H2qYDknkB4fsorOjNdU22yuherg6iuMPCYIEhkAzpcd1CTpkk18pDXpVZ/p9vKRtu+Mpvh96KGK4ZDy1/9wOghl3VWIw0NYa6ZolXSgpOu7KB35VRNec0go566q3FVl0NTTkbGBqFUlBXDaIb11NZBh/mLZuSu4vW7J/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=VcLNTjhY; arc=none smtp.client-ip=209.85.219.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-6d89a727a19so48221516d6.0
        for <linux-man@vger.kernel.org>; Mon, 16 Dec 2024 05:45:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1734356713; x=1734961513; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=T+q25qoz/9q2y8k3Q9G5Bmp4kz1mqfB2vCqsK9AG0Ag=;
        b=VcLNTjhYDB6Ur1tXEKHMxY/sKLj5VsqKpJkwtUvJFJ8bAr1TieFun+NZOfkApS3OTi
         t6rCcQxF+1JhE9NSYv6XYsdvy4ZSn5QaoVtLQ7+X8sxPSrDUxzVsarrX7uBZjDbfhTtG
         y1kawyiPCd6dijqXSVtwBs7iOtVW13iYw4IX5IqlS+DGEMoI48nqkbThHuRsI1h7KrV6
         rgszoYC6VTjbm4A8m9WE6hTnc7wAY2iYIEROo3N04Fgl9Ld74HByU1PBMqU7ONgDAknu
         jFPu+5XoHNyh6CFsjSTtlk7Sby/XHZauQw5AW63G7cs0ZIYSJ8RPQipq3IoMAIXCOfTv
         n4Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734356713; x=1734961513;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T+q25qoz/9q2y8k3Q9G5Bmp4kz1mqfB2vCqsK9AG0Ag=;
        b=rJ7y0Btcj3AcgeCZ1ehxQClns3tc4JoaxhpTDFjK/7jSvK46IspF7f0UWKGjXlRa0l
         ol/RGa777yPL4ATpsMwg5lbLw6qaGlNtILMDh4Gu4CdnSiiKy544HF/fZyMJBdlb3BEr
         Iiok+ElUwipb5s+7DAP/HucoGeXgKJ/WWyFiGd1JwHoSMeTfpBPHIYWFNvaEtDSHMo62
         J0hW+Gzc1FgrZG08Ry5ooPBi/v1QjD1X8i6KjpflGF2PoNgWUj10Ef6qjyey1cRNS373
         ri88lGu9rtePZTskvCXmAH4rr3kdJKIAc1Eg4D4DmEuvZhYhuPNR16MnRbJ+ZCvAvT7B
         spJQ==
X-Gm-Message-State: AOJu0Yxcv4TPJ0HLXmHI1mgCDL47gYWXVUlGFShH4AC1KnnPRTOb30ln
	NSahmFXcLTFYhDic3NIQrMRZOX0T8YXJley5bC7PlyOFuELcE99s7LFal3xgSvLRTg2xXGmGO0P
	jqW2aPr0gDhDT6ypO1vHeRONIAjFcmqZUwMBGK7DycTqSx5WpR1Rmbmk=
X-Gm-Gg: ASbGncsrrJKfZJEa0WROqx843lD3TsjR0I0Ar+yhATMXJhBNnvKEfMbClW/+atJS3dg
	33oS8W0OzKErfkZNOZJj1EP3OwVsxjSlld1g=
X-Google-Smtp-Source: AGHT+IHXDqMCcnRaL7CxPOuq1c52fx2F0akzIXp7InOIbsdU3C2WwjZGYJQrSnlbqXpt9FX4MzuV78Ms4sBCuu5Xw00=
X-Received: by 2002:a05:6214:2388:b0:6d9:fb5:d496 with SMTP id
 6a1803df08f44-6db0f529671mr293040066d6.24.1734356711645; Mon, 16 Dec 2024
 05:45:11 -0800 (PST)
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
 <CAJgzZornYRGFRmUF6KaOCDgsgYSKdJ=V6GKxVsxNSJDCyZc+SQ@mail.gmail.com>
 <kmig5buwz7eydpyk5in7hqzdmvykrq5kvajnkdixarfjzpeqaj@msyiruggayrx>
 <CAJgzZopav8Z_FEAnPNDHmw0aYuS8zk6F9nU5ocn5ZdK2RYBJDQ@mail.gmail.com> <5lvpbbvk7azxadhlfalfssera5hmxadpce7c22e7eyis6ra3tv@mikedqdtx7en>
In-Reply-To: <5lvpbbvk7azxadhlfalfssera5hmxadpce7c22e7eyis6ra3tv@mikedqdtx7en>
From: enh <enh@google.com>
Date: Mon, 16 Dec 2024 08:44:59 -0500
Message-ID: <CAJgzZopVMJ4NOLSVpjPgOZ1EJgz=ygVc4Fue_AGUJ3LOoKEruQ@mail.gmail.com>
Subject: Re: fchmodat(2) does support AT_SYMLINK_NOFOLLOW now, no?
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man <linux-man@vger.kernel.org>
Content-Type: multipart/mixed; boundary="000000000000b6fb05062963632c"

--000000000000b6fb05062963632c
Content-Type: multipart/alternative; boundary="000000000000b6fb04062963632a"

--000000000000b6fb04062963632a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 29, 2024 at 7:44=E2=80=AFPM Alejandro Colomar <alx@kernel.org> =
wrote:

> Hi Elliott,
>
> On Tue, Aug 27, 2024 at 03:07:54PM GMT, enh wrote:
> > oh, i can definitely make a start...
> >
> > (i was going to at least send you the easiest patch, but then i
> > realized even there there's a bit of a bikeshed opportunity, so i'll
> > just give you all the pieces and let you decide what to do with them!)
>
> Thanks!
>
> >
> > so i think we have these things to say:
> >
> > 1. AT_SYMLINK_NOFOLLOW _is_ supported for fchmodat(2).
> > 2. but only since Linux 6.6 (except see 4).
> > 3. there's no mention of lchmod().
> > 4. that function is very old, but it doesn't actually work on glibc
> > until 2.32 (https://sourceware.org/bugzilla/show_bug.cgi?id=3D14578#c16=
)
> > where it uses the O_PATH trick that musl and bionic also use (and so
> > doesn't need Linux 6.6).
> >
> > heh, actually trying to write the bits down is probably easiest done
> > as a diff anyway...
> >
> > diff --git a/man/man2/chmod.2 b/man/man2/chmod.2
> > index ae53fe3c9..c6c54eeca 100644
> > --- a/man/man2/chmod.2
> > +++ b/man/man2/chmod.2
> > @@ -11,7 +11,7 @@
> >  .\"
> >  .TH chmod 2 (date) "Linux man-pages (unreleased)"
> >  .SH NAME
> > -chmod, fchmod, fchmodat \- change permissions of a file
> > +chmod, fchmod, lchown, fchmodat \- change permissions of a file
> >  .SH LIBRARY
> >  Standard C library
> >  .RI ( libc ,\~ \-lc )
> > @@ -21,6 +21,7 @@ Standard C library
> >  .P
> >  .BI "int chmod(const char *" pathname ", mode_t " mode );
> >  .BI "int fchmod(int " fd ", mode_t " mode );
> > +.BI "int lchmod(const char *" pathname ", mode_t " mode );
>
> Does lchmod() need any feature test macros?
>

done.


> >  .P
> >  .BR "#include <fcntl.h>" "           /* Definition of AT_* constants *=
/"
> >  .B #include <sys/stat.h>
> > @@ -60,9 +61,10 @@ Feature Test Macro Requirements for glibc (see
> >  .fi
> >  .SH DESCRIPTION
> >  The
> > -.BR chmod ()
> > -and
> > +.BR chmod (),
> >  .BR fchmod ()
>
> We use Oxford comma.
>

done.


> > +and
> > +.BR lchmod ()
> >  system calls change a file's mode bits.
> >  (The file mode consists of the file permission bits plus the
> set-user-ID,
> >  set-group-ID, and sticky bits.)
> > @@ -76,6 +78,11 @@ which is dereferenced if it is a symbolic link.
> >  .BR fchmod ()
> >  changes the mode of the file referred to by the open file descriptor
> >  .IR fd .
> > +.IP \[bu]
> > +.BR lchmod ()
> > +is like
> > +.BR chmod (),
> > +but does not dereference symbolic links.
> >  .P
> >  The new file mode is specified in
> >  .IR mode ,
> > @@ -203,8 +210,9 @@ can either be 0, or include the following flag:
> >  If
> >  .I pathname
> >  is a symbolic link, do not dereference it:
> > -instead operate on the link itself.
> > -This flag is not currently implemented.
> > +instead operate on the link itself,
> > +like
> > +.BR lchmod ().
> >  .P
> >  See
> >  .BR openat (2)
> > @@ -285,6 +293,7 @@ is a file descriptor referring to a file other
>
> Would you mind checking this?:
>
>         $ head -n11 <CONTRIBUTING.d/git
>         Name
>                Git - instructions for configuring git(1)
>
>         Description
>            git-diff(1), gitattributes(5)
>                To produce useful hunk contexts in manual pages, we need t=
o
> hack
>                git(1)'s idea of a function name, and also to tell git wha=
t
> is a
>                manual page.
>
>                    $ git config --global diff.man.xfuncname '^\.S[SHsh]
> .*$';
>                    $ echo '*.[0-9]* diff=3Dman' >>~/.config/git/attribute=
s;
>
> It helps reviewing diffs for manual pages.  :)
>

~/man-pages$ echo '*.[0-9]* diff=3Dman' >>~/.git/attributes;
-bash: /usr/local/google/home/enh/.git/attributes: No such file or director=
y

i assume this is meant to be

~/man-pages$ echo '*.[0-9]* diff=3Dman' >>~/.gitattributes;

instead?


> > than a directory.
> >  specified
> >  .BR AT_SYMLINK_NOFOLLOW ,
> >  which is not supported.
> > +(See C library/kernel differences.)
> >  .TP
> >  .B EPERM
> >  The effective UID does not match the owner of the file,
> > @@ -310,12 +319,22 @@ This interface differs from the underlying Linux
> > system call, which does
> >  have a
> >  .I flags
> >  argument.
> > +.P
> > +Linux 6.6 added the
> > +.BR fchmodat2 ()
> > +system call with the POSIX flags argument.
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
> >  .I pathname
> >  is a relative pathname,
> >  glibc constructs a pathname based on the symbolic link in
> >
> > something along those lines?
>
> Sounds good.  I'd like to also add entries in HISTORY for lchmod() and
> fchmodat2().  And STANDARDS should also be updated.
>

done.


> Have a lovely night!
> Alex
>
> --
> <https://www.alejandro-colomar.es/>
>

--000000000000b6fb04062963632a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Aug 29,=
 2024 at 7:44=E2=80=AFPM Alejandro Colomar &lt;<a href=3D"mailto:alx@kernel=
.org">alx@kernel.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">Hi Elliott,<br>
<br>
On Tue, Aug 27, 2024 at 03:07:54PM GMT, enh wrote:<br>
&gt; oh, i can definitely make a start...<br>
&gt; <br>
&gt; (i was going to at least send you the easiest patch, but then i<br>
&gt; realized even there there&#39;s a bit of a bikeshed opportunity, so i&=
#39;ll<br>
&gt; just give you all the pieces and let you decide what to do with them!)=
<br>
<br>
Thanks!<br>
<br>
&gt; <br>
&gt; so i think we have these things to say:<br>
&gt; <br>
&gt; 1. AT_SYMLINK_NOFOLLOW _is_ supported for fchmodat(2).<br>
&gt; 2. but only since Linux 6.6 (except see 4).<br>
&gt; 3. there&#39;s no mention of lchmod().<br>
&gt; 4. that function is very old, but it doesn&#39;t actually work on glib=
c<br>
&gt; until 2.32 (<a href=3D"https://sourceware.org/bugzilla/show_bug.cgi?id=
=3D14578#c16" rel=3D"noreferrer" target=3D"_blank">https://sourceware.org/b=
ugzilla/show_bug.cgi?id=3D14578#c16</a>)<br>
&gt; where it uses the O_PATH trick that musl and bionic also use (and so<b=
r>
&gt; doesn&#39;t need Linux 6.6).<br>
&gt; <br>
&gt; heh, actually trying to write the bits down is probably easiest done<b=
r>
&gt; as a diff anyway...<br>
&gt; <br>
&gt; diff --git a/man/man2/chmod.2 b/man/man2/chmod.2<br>
&gt; index ae53fe3c9..c6c54eeca 100644<br>
&gt; --- a/man/man2/chmod.2<br>
&gt; +++ b/man/man2/chmod.2<br>
&gt; @@ -11,7 +11,7 @@<br>
&gt;=C2=A0 .\&quot;<br>
&gt;=C2=A0 .TH chmod 2 (date) &quot;Linux man-pages (unreleased)&quot;<br>
&gt;=C2=A0 .SH NAME<br>
&gt; -chmod, fchmod, fchmodat \- change permissions of a file<br>
&gt; +chmod, fchmod, lchown, fchmodat \- change permissions of a file<br>
&gt;=C2=A0 .SH LIBRARY<br>
&gt;=C2=A0 Standard C library<br>
&gt;=C2=A0 .RI ( libc ,\~ \-lc )<br>
&gt; @@ -21,6 +21,7 @@ Standard C library<br>
&gt;=C2=A0 .P<br>
&gt;=C2=A0 .BI &quot;int chmod(const char *&quot; pathname &quot;, mode_t &=
quot; mode );<br>
&gt;=C2=A0 .BI &quot;int fchmod(int &quot; fd &quot;, mode_t &quot; mode );=
<br>
&gt; +.BI &quot;int lchmod(const char *&quot; pathname &quot;, mode_t &quot=
; mode );<br>
<br>
Does lchmod() need any feature test macros?<br></blockquote><div><br></div>=
<div>done.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">
&gt;=C2=A0 .P<br>
&gt;=C2=A0 .BR &quot;#include &lt;fcntl.h&gt;&quot; &quot;=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0/* Definition of AT_* constants */&quot;<br>
&gt;=C2=A0 .B #include &lt;sys/stat.h&gt;<br>
&gt; @@ -60,9 +61,10 @@ Feature Test Macro Requirements for glibc (see<br>
&gt;=C2=A0 .fi<br>
&gt;=C2=A0 .SH DESCRIPTION<br>
&gt;=C2=A0 The<br>
&gt; -.BR chmod ()<br>
&gt; -and<br>
&gt; +.BR chmod (),<br>
&gt;=C2=A0 .BR fchmod ()<br>
<br>
We use Oxford comma.<br></blockquote><div><br></div><div>done.</div><div>=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
&gt; +and<br>
&gt; +.BR lchmod ()<br>
&gt;=C2=A0 system calls change a file&#39;s mode bits.<br>
&gt;=C2=A0 (The file mode consists of the file permission bits plus the set=
-user-ID,<br>
&gt;=C2=A0 set-group-ID, and sticky bits.)<br>
&gt; @@ -76,6 +78,11 @@ which is dereferenced if it is a symbolic link.<br>
&gt;=C2=A0 .BR fchmod ()<br>
&gt;=C2=A0 changes the mode of the file referred to by the open file descri=
ptor<br>
&gt;=C2=A0 .IR fd .<br>
&gt; +.IP \[bu]<br>
&gt; +.BR lchmod ()<br>
&gt; +is like<br>
&gt; +.BR chmod (),<br>
&gt; +but does not dereference symbolic links.<br>
&gt;=C2=A0 .P<br>
&gt;=C2=A0 The new file mode is specified in<br>
&gt;=C2=A0 .IR mode ,<br>
&gt; @@ -203,8 +210,9 @@ can either be 0, or include the following flag:<br=
>
&gt;=C2=A0 If<br>
&gt;=C2=A0 .I pathname<br>
&gt;=C2=A0 is a symbolic link, do not dereference it:<br>
&gt; -instead operate on the link itself.<br>
&gt; -This flag is not currently implemented.<br>
&gt; +instead operate on the link itself,<br>
&gt; +like<br>
&gt; +.BR lchmod ().<br>
&gt;=C2=A0 .P<br>
&gt;=C2=A0 See<br>
&gt;=C2=A0 .BR openat (2)<br>
&gt; @@ -285,6 +293,7 @@ is a file descriptor referring to a file other<br>
<br>
Would you mind checking this?:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 $ head -n11 &lt;CONTRIBUTING.d/git<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Name<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Git - instructions f=
or configuring git(1)<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Description<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0git-diff(1), gitattributes(5)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0To produce useful hu=
nk contexts in manual pages, we need to hack<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0git(1)&#39;s idea of=
 a function name, and also to tell git what is a<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0manual page.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0$ git =
config --global diff.man.xfuncname &#39;^\.S[SHsh] .*$&#39;;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0$ echo=
 &#39;*.[0-9]* diff=3Dman&#39; &gt;&gt;~/.config/git/attributes;<br>
<br>
It helps reviewing diffs for manual pages.=C2=A0 :)<br></blockquote><div><b=
r></div><div>~/man-pages$ echo &#39;*.[0-9]* diff=3Dman&#39; &gt;&gt;~/.git=
/attributes;<br>-bash: /usr/local/google/home/enh/.git/attributes: No such =
file or directory<br></div><div><br></div><div>i assume this is meant to be=
</div><div><br></div><div>~/man-pages$ echo &#39;*.[0-9]* diff=3Dman&#39; &=
gt;&gt;~/.gitattributes;<br></div><div><br></div><div>instead?</div><div>=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
&gt; than a directory.<br>
&gt;=C2=A0 specified<br>
&gt;=C2=A0 .BR AT_SYMLINK_NOFOLLOW ,<br>
&gt;=C2=A0 which is not supported.<br>
&gt; +(See C library/kernel differences.)<br>
&gt;=C2=A0 .TP<br>
&gt;=C2=A0 .B EPERM<br>
&gt;=C2=A0 The effective UID does not match the owner of the file,<br>
&gt; @@ -310,12 +319,22 @@ This interface differs from the underlying Linux=
<br>
&gt; system call, which does<br>
&gt;=C2=A0 have a<br>
&gt;=C2=A0 .I flags<br>
&gt;=C2=A0 argument.<br>
&gt; +.P<br>
&gt; +Linux 6.6 added the<br>
&gt; +.BR fchmodat2 ()<br>
&gt; +system call with the POSIX flags argument.<br>
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
&gt;=C2=A0 .I pathname<br>
&gt;=C2=A0 is a relative pathname,<br>
&gt;=C2=A0 glibc constructs a pathname based on the symbolic link in<br>
&gt; <br>
&gt; something along those lines?<br>
<br>
Sounds good.=C2=A0 I&#39;d like to also add entries in HISTORY for lchmod()=
 and<br>
fchmodat2().=C2=A0 And STANDARDS should also be updated.<br></blockquote><d=
iv><br></div><div>done.</div><div>=C2=A0</div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex">
Have a lovely night!<br>
Alex<br>
<br>
-- <br>
&lt;<a href=3D"https://www.alejandro-colomar.es/" rel=3D"noreferrer" target=
=3D"_blank">https://www.alejandro-colomar.es/</a>&gt;<br>
</blockquote></div></div>

--000000000000b6fb04062963632a--
--000000000000b6fb05062963632c
Content-Type: text/plain; charset="US-ASCII"; name="chmod.2.patch.txt"
Content-Disposition: attachment; filename="chmod.2.patch.txt"
Content-Transfer-Encoding: base64
Content-ID: <f_m4r371kx0>
X-Attachment-Id: f_m4r371kx0

ZGlmZiAtLWdpdCBhL21hbi9tYW4yL2NobW9kLjIgYi9tYW4vbWFuMi9jaG1vZC4yCmluZGV4IGFl
NTNmZTNjOS4uMzA4NTg0MGEyIDEwMDY0NAotLS0gYS9tYW4vbWFuMi9jaG1vZC4yCisrKyBiL21h
bi9tYW4yL2NobW9kLjIKQEAgLTExLDcgKzExLDcgQEAKIC5cIgogLlRIIGNobW9kIDIgKGRhdGUp
ICJMaW51eCBtYW4tcGFnZXMgKHVucmVsZWFzZWQpIgogLlNIIE5BTUUKLWNobW9kLCBmY2htb2Qs
IGZjaG1vZGF0IFwtIGNoYW5nZSBwZXJtaXNzaW9ucyBvZiBhIGZpbGUKK2NobW9kLCBmY2htb2Qs
IGxjaG93biwgZmNobW9kYXQgXC0gY2hhbmdlIHBlcm1pc3Npb25zIG9mIGEgZmlsZQogLlNIIExJ
QlJBUlkKIFN0YW5kYXJkIEMgbGlicmFyeQogLlJJICggbGliYyAsXH4gXC1sYyApCkBAIC0yMSw2
ICsyMSw3IEBAIFN0YW5kYXJkIEMgbGlicmFyeQogLlAKIC5CSSAiaW50IGNobW9kKGNvbnN0IGNo
YXIgKiIgcGF0aG5hbWUgIiwgbW9kZV90ICIgbW9kZSApOwogLkJJICJpbnQgZmNobW9kKGludCAi
IGZkICIsIG1vZGVfdCAiIG1vZGUgKTsKKy5CSSAiaW50IGxjaG1vZChjb25zdCBjaGFyICoiIHBh
dGhuYW1lICIsIG1vZGVfdCAiIG1vZGUgKTsKIC5QCiAuQlIgIiNpbmNsdWRlIDxmY250bC5oPiIg
IiAgICAgICAgICAgLyogRGVmaW5pdGlvbiBvZiBBVF8qIGNvbnN0YW50cyAqLyIKIC5CICNpbmNs
dWRlIDxzeXMvc3RhdC5oPgpAQCAtNTEsNiArNTIsMTIgQEAgRmVhdHVyZSBUZXN0IE1hY3JvIFJl
cXVpcmVtZW50cyBmb3IgZ2xpYmMgKHNlZQogLlwiICAgICAgICB8fCAoX1hPUEVOX1NPVVJDRSAm
JiBfWE9QRU5fU09VUkNFX0VYVEVOREVEKQogLmZpCiAuUAorLkJSIGxjaG1vZCAoKToKKy5uZgor
ICAgIFNpbmNlIGdsaWJjIDIuNToKKyAgICAgICAgX0RFRkFVTFRfU09VUkNFCisuZmkKKy5QCiAu
QlIgZmNobW9kYXQgKCk6CiAubmYKICAgICBTaW5jZSBnbGliYyAyLjEwOgpAQCAtNjAsOSArNjcs
MTAgQEAgRmVhdHVyZSBUZXN0IE1hY3JvIFJlcXVpcmVtZW50cyBmb3IgZ2xpYmMgKHNlZQogLmZp
CiAuU0ggREVTQ1JJUFRJT04KIFRoZQotLkJSIGNobW9kICgpCisuQlIgY2htb2QgKCksCisuQlIg
ZmNobW9kICgpLAogYW5kCi0uQlIgZmNobW9kICgpCisuQlIgbGNobW9kICgpCiBzeXN0ZW0gY2Fs
bHMgY2hhbmdlIGEgZmlsZSdzIG1vZGUgYml0cy4KIChUaGUgZmlsZSBtb2RlIGNvbnNpc3RzIG9m
IHRoZSBmaWxlIHBlcm1pc3Npb24gYml0cyBwbHVzIHRoZSBzZXQtdXNlci1JRCwKIHNldC1ncm91
cC1JRCwgYW5kIHN0aWNreSBiaXRzLikKQEAgLTc2LDYgKzg0LDExIEBAIHdoaWNoIGlzIGRlcmVm
ZXJlbmNlZCBpZiBpdCBpcyBhIHN5bWJvbGljIGxpbmsuCiAuQlIgZmNobW9kICgpCiBjaGFuZ2Vz
IHRoZSBtb2RlIG9mIHRoZSBmaWxlIHJlZmVycmVkIHRvIGJ5IHRoZSBvcGVuIGZpbGUgZGVzY3Jp
cHRvcgogLklSIGZkIC4KKy5JUCBcW2J1XQorLkJSIGxjaG1vZCAoKQoraXMgbGlrZQorLkJSIGNo
bW9kICgpLAorYnV0IGRvZXMgbm90IGRlcmVmZXJlbmNlIHN5bWJvbGljIGxpbmtzLgogLlAKIFRo
ZSBuZXcgZmlsZSBtb2RlIGlzIHNwZWNpZmllZCBpbgogLklSIG1vZGUgLApAQCAtMjAzLDggKzIx
Niw5IEBAIGNhbiBlaXRoZXIgYmUgMCwgb3IgaW5jbHVkZSB0aGUgZm9sbG93aW5nIGZsYWc6CiBJ
ZgogLkkgcGF0aG5hbWUKIGlzIGEgc3ltYm9saWMgbGluaywgZG8gbm90IGRlcmVmZXJlbmNlIGl0
OgotaW5zdGVhZCBvcGVyYXRlIG9uIHRoZSBsaW5rIGl0c2VsZi4KLVRoaXMgZmxhZyBpcyBub3Qg
Y3VycmVudGx5IGltcGxlbWVudGVkLgoraW5zdGVhZCBvcGVyYXRlIG9uIHRoZSBsaW5rIGl0c2Vs
ZiwKK2xpa2UKKy5CUiBsY2htb2QgKCkuCiAuUAogU2VlCiAuQlIgb3BlbmF0ICgyKQpAQCAtMjg1
LDYgKzI5OSw3IEBAIGlzIGEgZmlsZSBkZXNjcmlwdG9yIHJlZmVycmluZyB0byBhIGZpbGUgb3Ro
ZXIgdGhhbiBhIGRpcmVjdG9yeS4KIHNwZWNpZmllZAogLkJSIEFUX1NZTUxJTktfTk9GT0xMT1cg
LAogd2hpY2ggaXMgbm90IHN1cHBvcnRlZC4KKyhTZWUgQyBsaWJyYXJ5L2tlcm5lbCBkaWZmZXJl
bmNlcy4pCiAuVFAKIC5CIEVQRVJNCiBUaGUgZWZmZWN0aXZlIFVJRCBkb2VzIG5vdCBtYXRjaCB0
aGUgb3duZXIgb2YgdGhlIGZpbGUsCkBAIC0zMTAsMTIgKzMyNSwyMiBAQCBUaGlzIGludGVyZmFj
ZSBkaWZmZXJzIGZyb20gdGhlIHVuZGVybHlpbmcgTGludXggc3lzdGVtIGNhbGwsIHdoaWNoIGRv
ZXMKIGhhdmUgYQogLkkgZmxhZ3MKIGFyZ3VtZW50LgorLlAKK0xpbnV4IDYuNiBhZGRlZCB0aGUK
Ky5CUiBmY2htb2RhdDIgKCkKK3N5c3RlbSBjYWxsIHdpdGggdGhlIFBPU0lYIGZsYWdzIGFyZ3Vt
ZW50LgogLlNTIGdsaWJjIG5vdGVzCiBPbiBvbGRlciBrZXJuZWxzIHdoZXJlCi0uQlIgZmNobW9k
YXQgKCkKKy5CUiBmY2htb2RhdDIgKCkKIGlzIHVuYXZhaWxhYmxlLCB0aGUgZ2xpYmMgd3JhcHBl
ciBmdW5jdGlvbiBmYWxscyBiYWNrIHRvIHRoZSB1c2Ugb2YKLS5CUiBjaG1vZCAoKS4KLVdoZW4K
Ky5CUiBmY2htb2RhdCAoKQord2hlbiBubyBmbGFncyBhcmUgc3VwcGxpZWQsCitvciB0bworLkJS
IGNobW9kICgpCitvdGhlcndpc2UuCitJbiB0aGUKKy5CUiBjaG1vZCAoKQorZmFsbGJhY2ssIGlm
CiAuSSBwYXRobmFtZQogaXMgYSByZWxhdGl2ZSBwYXRobmFtZSwKIGdsaWJjIGNvbnN0cnVjdHMg
YSBwYXRobmFtZSBiYXNlZCBvbiB0aGUgc3ltYm9saWMgbGluayBpbgpAQCAtMzI0LDcgKzM0OSwx
NiBAQCB0aGF0IGNvcnJlc3BvbmRzIHRvIHRoZQogLkkgZGlyZmQKIGFyZ3VtZW50LgogLlNIIFNU
QU5EQVJEUworLlRQCisuQlIgY2htb2QgKCkKKy5UUQorLkJSIGZjaG1vZCAoKQorLlRRCisuQlIg
ZmNobW9kYXQgKCkKIFBPU0lYLjEtMjAwOC4KKy5UUAorLkJSIGxjaG1vZCAoKQorTGludXguCiAu
U0ggSElTVE9SWQogLlRQCiAuQlIgY2htb2QgKCkKQEAgLTMzNiw2ICszNzAsOSBAQCBQT1NJWC4x
LTIwMDguCiBQT1NJWC4xLTIwMDguCiBMaW51eCAyLjYuMTYsCiBnbGliYyAyLjQuCisuVFAKKy5C
UiBsY2htb2QgKCkKK0xpbnV4IDIuNi4xNiwgZ2xpYmMgMi41LgogLlNIIFNFRSBBTFNPCiAuQlIg
Y2htb2QgKDEpLAogLkJSIGNob3duICgyKSwK
--000000000000b6fb05062963632c--

