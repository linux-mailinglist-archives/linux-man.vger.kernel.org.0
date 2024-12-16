Return-Path: <linux-man+bounces-2162-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC6F9F3228
	for <lists+linux-man@lfdr.de>; Mon, 16 Dec 2024 15:04:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8BD1F167068
	for <lists+linux-man@lfdr.de>; Mon, 16 Dec 2024 14:04:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E350E204C09;
	Mon, 16 Dec 2024 14:04:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="RA4QXh5T"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09DE9F9DA
	for <linux-man@vger.kernel.org>; Mon, 16 Dec 2024 14:03:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734357841; cv=none; b=i+rOEJsCpCH/KpgkzOZtwo8au25RXI3qLHPnQSWOy7Qoy+bwUvXQkDlri2h8+izSz6Rp4HX1NrQO4bsCq0c+kEpNteKHx0lo+WlP9oNO7owSSOTM+FJ+rDZZpri5Fj4s7eyCdGLpwoj8lvnHq1B9hKPpbFsip7Wg2ANX0N+IA6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734357841; c=relaxed/simple;
	bh=hkE4T7aYH7SNHevEbxwQx4hFtigjxErwwfq1PMEWJok=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=i2EDcW4QTnmkSJ8bkCu9HELkIkZRmMnhsxK/XFYI2xQvG0PUwDnJ6jEEGNkKhjEa4e1fa7/mT/9MVxp/5xUqwsyO/RIuC2iWuE000b9qI2UNQL4pgoNNB7zkYwlNGLhZMjM9MU42Yncm4tOjx1N0VLtpuAeRdxBFqjVeYKpn85g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=RA4QXh5T; arc=none smtp.client-ip=209.85.219.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-6d91653e9d7so39518986d6.1
        for <linux-man@vger.kernel.org>; Mon, 16 Dec 2024 06:03:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1734357839; x=1734962639; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+20sM2gd/nP/ZtSCUlSXhKtbke/Q+BZKd7OF51S4QCU=;
        b=RA4QXh5TJN1762VR22rx0Uxg4MBQX6666dyJIoyXZYa5O4wn4d8gcVXjSjnihjYjoa
         iqqKA2IpQRH35TpdcXIIskvBMh4foUDI2XSHh6ICcWHEIpVj4/407N+I1O16wrAeuWKK
         hzqRD5z49rpWjumXYRih7xaFv1HzZFzOz44BkOUT31TQE5fmqZ6PGKWFl+YCeAXFkt28
         Hxf6WbBJRjeQuPksdcCEFRldKkAoggYplv0/Q4Lu0ciJ2YCKgmYHi/KzyJk1KR8wERjL
         CYTq7zblnkdEUjvXd+XkgTH+SiftDhi3V3L7gfqvwAAMPVdGcfQOfRg4uIko/czim2t5
         1EGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734357839; x=1734962639;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+20sM2gd/nP/ZtSCUlSXhKtbke/Q+BZKd7OF51S4QCU=;
        b=EvnKVZfJxCEx89MNPvR2U5gZi/AzQiPcwJpaN9yr33tsVqKjgsQdrSNOSQGMJ4YBTE
         PUyyomkXMt2iMN/9qMA3p3lm5OJ2KnVpllAo9x/OLG+sVc/Br+aN4cHehmh/eAMb2QxO
         Qfn4L1t4VGR5mhx54QwB+7zgzLsSnmcSaALyKm3EszVOl9SZbWtUPYvf4g5JK3A63fkz
         bJ5Nee63fdeScFteQ16F7j0UrjYIq8fUW38uhBopqyDpHHI36oqe7hvyvsbrjlLR9YdO
         qbNE7nD1U0Ve9myZPFk0VtXvHYVaC+5g73TXeU+VH063u+psMfANeOtdl2Dm5/XDNbEo
         MDHw==
X-Gm-Message-State: AOJu0YxQCcQvkE1lXYoTsW2GTsNvFz5HHvVJCYGrr7jqPP+G5Lcx3qJ+
	hIKcYDsQIzRJi/iWSp0EAO2puT+KeP2MeOAlweOPdhH+2ORDD0yK+ix8+qCj2RLihKioU+mg0Y1
	OMz++bqcokHpkARtg6yqg+PesC9NZOD2GB7hG
X-Gm-Gg: ASbGncuX3VnQH+GQR8OEwwbDaUVC32Mwh5pNdcolB0ITwWxtzEeR30ZfHV1UYbgNiKg
	XP4R6ns+3bTyGjNAJzMnmikcdtbXe7df0G7c=
X-Google-Smtp-Source: AGHT+IGXcbzYfTv2mrg7eszLwtUMSiyqia1QVMIOd5dOUIk0Qjc01hgaxWiZDLi4NqzTzQUTSEppAus2qY/xZPd3oDU=
X-Received: by 2002:a05:6214:21eb:b0:6cb:20b6:f398 with SMTP id
 6a1803df08f44-6dc8ca90c87mr228674846d6.21.1734357838649; Mon, 16 Dec 2024
 06:03:58 -0800 (PST)
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
 <CAJgzZopav8Z_FEAnPNDHmw0aYuS8zk6F9nU5ocn5ZdK2RYBJDQ@mail.gmail.com>
 <5lvpbbvk7azxadhlfalfssera5hmxadpce7c22e7eyis6ra3tv@mikedqdtx7en>
 <CAJgzZopVMJ4NOLSVpjPgOZ1EJgz=ygVc4Fue_AGUJ3LOoKEruQ@mail.gmail.com> <qwsphfj22qtmb3g4ldorx4thzwzf3jo5ibhfdcig5bizw5yma4@ujxlvm7pebug>
In-Reply-To: <qwsphfj22qtmb3g4ldorx4thzwzf3jo5ibhfdcig5bizw5yma4@ujxlvm7pebug>
From: enh <enh@google.com>
Date: Mon, 16 Dec 2024 09:03:47 -0500
Message-ID: <CAJgzZoqMtJyyiYpJ+e=Rp000z1W5p4kcjYzrS8TbqijMzRmqQg@mail.gmail.com>
Subject: Re: fchmodat(2) does support AT_SYMLINK_NOFOLLOW now, no?
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man <linux-man@vger.kernel.org>
Content-Type: multipart/mixed; boundary="000000000000e3bd33062963a672"

--000000000000e3bd33062963a672
Content-Type: multipart/alternative; boundary="000000000000e3bd30062963a670"

--000000000000e3bd30062963a670
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 16, 2024 at 8:57=E2=80=AFAM Alejandro Colomar <alx@kernel.org> =
wrote:

> Hi Elliott,
>
> On Mon, Dec 16, 2024 at 08:44:59AM GMT, enh wrote:
> > On Thu, Aug 29, 2024 at 7:44=E2=80=AFPM Alejandro Colomar <alx@kernel.o=
rg>
> wrote:
> > > > @@ -285,6 +293,7 @@ is a file descriptor referring to a file other
> > >
> > > Would you mind checking this?:
> > >
> > >         $ head -n11 <CONTRIBUTING.d/git
> > >         Name
> > >                Git - instructions for configuring git(1)
> > >
> > >         Description
> > >            git-diff(1), gitattributes(5)
> > >                To produce useful hunk contexts in manual pages, we
> need to
> > > hack
> > >                git(1)'s idea of a function name, and also to tell git
> what
> > > is a
> > >                manual page.
> > >
> > >                    $ git config --global diff.man.xfuncname '^\.S[SHs=
h]
> > > .*$';
> > >                    $ echo '*.[0-9]* diff=3Dman'
> >>~/.config/git/attributes;
> > >
> > > It helps reviewing diffs for manual pages.  :)
> > >
> >
> > ~/man-pages$ echo '*.[0-9]* diff=3Dman' >>~/.git/attributes;
>
> You mistyped.  It should be
>
>         >>~/.config/git/attributes;
>
> not
>
>         >>~/.git/attributes;
>

well, i edited that line because the copy & pasted command with .config
didn't work.


> > -bash: /usr/local/google/home/enh/.git/attributes: No such file or
> directory
>
> Hmmm, I should mkdir(1) first.
>
> > i assume this is meant to be
> >
> > ~/man-pages$ echo '*.[0-9]* diff=3Dman' >>~/.gitattributes;
> >
> > instead?
>
> Nope; I think that won't work (per your patch, it seems it didn't).
>
> Would you mind creating the directories as appropriate, re-running that
> command, and resending the patch?  (That will also help check that you
> ran it correctly.)
>

attached...


> Have a lovely day!
> Alex
>
> --
> <https://www.alejandro-colomar.es/>
>

--000000000000e3bd30062963a670
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Dec 16,=
 2024 at 8:57=E2=80=AFAM Alejandro Colomar &lt;<a href=3D"mailto:alx@kernel=
.org">alx@kernel.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">Hi Elliott,<br>
<br>
On Mon, Dec 16, 2024 at 08:44:59AM GMT, enh wrote:<br>
&gt; On Thu, Aug 29, 2024 at 7:44=E2=80=AFPM Alejandro Colomar &lt;<a href=
=3D"mailto:alx@kernel.org" target=3D"_blank">alx@kernel.org</a>&gt; wrote:<=
br>
&gt; &gt; &gt; @@ -285,6 +293,7 @@ is a file descriptor referring to a file=
 other<br>
&gt; &gt;<br>
&gt; &gt; Would you mind checking this?:<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0$ head -n11 &lt;CONTRIBUTING.d/g=
it<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Name<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Git - inst=
ructions for configuring git(1)<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Description<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 git-diff(1), gitattribut=
es(5)<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 To produce=
 useful hunk contexts in manual pages, we need to<br>
&gt; &gt; hack<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 git(1)&#39=
;s idea of a function name, and also to tell git what<br>
&gt; &gt; is a<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 manual pag=
e.<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 $ git config --global diff.man.xfuncname &#39;^\.S[SHsh]<br>
&gt; &gt; .*$&#39;;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 $ echo &#39;*.[0-9]* diff=3Dman&#39; &gt;&gt;~/.config/git/attributes;<=
br>
&gt; &gt;<br>
&gt; &gt; It helps reviewing diffs for manual pages.=C2=A0 :)<br>
&gt; &gt;<br>
&gt; <br>
&gt; ~/man-pages$ echo &#39;*.[0-9]* diff=3Dman&#39; &gt;&gt;~/.git/attribu=
tes;<br>
<br>
You mistyped.=C2=A0 It should be<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;~/.config/git/attributes;<br>
<br>
not<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt;~/.git/attributes;<br></blockquote><div=
><br></div><div>well, i edited that line because the copy &amp; pasted comm=
and with .config didn&#39;t work.</div><div>=C2=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
&gt; -bash: /usr/local/google/home/enh/.git/attributes: No such file or dir=
ectory<br>
<br>
Hmmm, I should mkdir(1) first.<br>
<br>
&gt; i assume this is meant to be<br>
&gt; <br>
&gt; ~/man-pages$ echo &#39;*.[0-9]* diff=3Dman&#39; &gt;&gt;~/.gitattribut=
es;<br>
&gt; <br>
&gt; instead?<br>
<br>
Nope; I think that won&#39;t work (per your patch, it seems it didn&#39;t).=
<br>
<br>
Would you mind creating the directories as appropriate, re-running that<br>
command, and resending the patch?=C2=A0 (That will also help check that you=
<br>
ran it correctly.)<br></blockquote><div><br></div><div>attached...</div><di=
v>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
Have a lovely day!<br>
Alex<br>
<br>
-- <br>
&lt;<a href=3D"https://www.alejandro-colomar.es/" rel=3D"noreferrer" target=
=3D"_blank">https://www.alejandro-colomar.es/</a>&gt;<br>
</blockquote></div></div>

--000000000000e3bd30062963a670--
--000000000000e3bd33062963a672
Content-Type: text/plain; charset="US-ASCII"; name="chmod.2.patch.txt"
Content-Disposition: attachment; filename="chmod.2.patch.txt"
Content-Transfer-Encoding: base64
Content-ID: <f_m4r3v9sb0>
X-Attachment-Id: f_m4r3v9sb0

ZGlmZiAtLWdpdCBhL21hbi9tYW4yL2NobW9kLjIgYi9tYW4vbWFuMi9jaG1vZC4yCmluZGV4IGFl
NTNmZTNjOS4uMzA4NTg0MGEyIDEwMDY0NAotLS0gYS9tYW4vbWFuMi9jaG1vZC4yCisrKyBiL21h
bi9tYW4yL2NobW9kLjIKQEAgLTExLDcgKzExLDcgQEAKIC5cIgogLlRIIGNobW9kIDIgKGRhdGUp
ICJMaW51eCBtYW4tcGFnZXMgKHVucmVsZWFzZWQpIgogLlNIIE5BTUUKLWNobW9kLCBmY2htb2Qs
IGZjaG1vZGF0IFwtIGNoYW5nZSBwZXJtaXNzaW9ucyBvZiBhIGZpbGUKK2NobW9kLCBmY2htb2Qs
IGxjaG93biwgZmNobW9kYXQgXC0gY2hhbmdlIHBlcm1pc3Npb25zIG9mIGEgZmlsZQogLlNIIExJ
QlJBUlkKIFN0YW5kYXJkIEMgbGlicmFyeQogLlJJICggbGliYyAsXH4gXC1sYyApCkBAIC0yMSw2
ICsyMSw3IEBAIC5TSCBTWU5PUFNJUwogLlAKIC5CSSAiaW50IGNobW9kKGNvbnN0IGNoYXIgKiIg
cGF0aG5hbWUgIiwgbW9kZV90ICIgbW9kZSApOwogLkJJICJpbnQgZmNobW9kKGludCAiIGZkICIs
IG1vZGVfdCAiIG1vZGUgKTsKKy5CSSAiaW50IGxjaG1vZChjb25zdCBjaGFyICoiIHBhdGhuYW1l
ICIsIG1vZGVfdCAiIG1vZGUgKTsKIC5QCiAuQlIgIiNpbmNsdWRlIDxmY250bC5oPiIgIiAgICAg
ICAgICAgLyogRGVmaW5pdGlvbiBvZiBBVF8qIGNvbnN0YW50cyAqLyIKIC5CICNpbmNsdWRlIDxz
eXMvc3RhdC5oPgpAQCAtNTEsNiArNTIsMTIgQEAgLlNIIFNZTk9QU0lTCiAuXCIgICAgICAgIHx8
IChfWE9QRU5fU09VUkNFICYmIF9YT1BFTl9TT1VSQ0VfRVhURU5ERUQpCiAuZmkKIC5QCisuQlIg
bGNobW9kICgpOgorLm5mCisgICAgU2luY2UgZ2xpYmMgMi41OgorICAgICAgICBfREVGQVVMVF9T
T1VSQ0UKKy5maQorLlAKIC5CUiBmY2htb2RhdCAoKToKIC5uZgogICAgIFNpbmNlIGdsaWJjIDIu
MTA6CkBAIC02MCw5ICs2NywxMCBAQCAuU0ggU1lOT1BTSVMKIC5maQogLlNIIERFU0NSSVBUSU9O
CiBUaGUKLS5CUiBjaG1vZCAoKQorLkJSIGNobW9kICgpLAorLkJSIGZjaG1vZCAoKSwKIGFuZAot
LkJSIGZjaG1vZCAoKQorLkJSIGxjaG1vZCAoKQogc3lzdGVtIGNhbGxzIGNoYW5nZSBhIGZpbGUn
cyBtb2RlIGJpdHMuCiAoVGhlIGZpbGUgbW9kZSBjb25zaXN0cyBvZiB0aGUgZmlsZSBwZXJtaXNz
aW9uIGJpdHMgcGx1cyB0aGUgc2V0LXVzZXItSUQsCiBzZXQtZ3JvdXAtSUQsIGFuZCBzdGlja3kg
Yml0cy4pCkBAIC03Niw2ICs4NCwxMSBAQCAuU0ggREVTQ1JJUFRJT04KIC5CUiBmY2htb2QgKCkK
IGNoYW5nZXMgdGhlIG1vZGUgb2YgdGhlIGZpbGUgcmVmZXJyZWQgdG8gYnkgdGhlIG9wZW4gZmls
ZSBkZXNjcmlwdG9yCiAuSVIgZmQgLgorLklQIFxbYnVdCisuQlIgbGNobW9kICgpCitpcyBsaWtl
CisuQlIgY2htb2QgKCksCitidXQgZG9lcyBub3QgZGVyZWZlcmVuY2Ugc3ltYm9saWMgbGlua3Mu
CiAuUAogVGhlIG5ldyBmaWxlIG1vZGUgaXMgc3BlY2lmaWVkIGluCiAuSVIgbW9kZSAsCkBAIC0y
MDMsOCArMjE2LDkgQEAgLlNTIGZjaG1vZGF0KCkKIElmCiAuSSBwYXRobmFtZQogaXMgYSBzeW1i
b2xpYyBsaW5rLCBkbyBub3QgZGVyZWZlcmVuY2UgaXQ6Ci1pbnN0ZWFkIG9wZXJhdGUgb24gdGhl
IGxpbmsgaXRzZWxmLgotVGhpcyBmbGFnIGlzIG5vdCBjdXJyZW50bHkgaW1wbGVtZW50ZWQuCitp
bnN0ZWFkIG9wZXJhdGUgb24gdGhlIGxpbmsgaXRzZWxmLAorbGlrZQorLkJSIGxjaG1vZCAoKS4K
IC5QCiBTZWUKIC5CUiBvcGVuYXQgKDIpCkBAIC0yODUsNiArMjk5LDcgQEAgLlNIIEVSUk9SUwog
c3BlY2lmaWVkCiAuQlIgQVRfU1lNTElOS19OT0ZPTExPVyAsCiB3aGljaCBpcyBub3Qgc3VwcG9y
dGVkLgorKFNlZSBDIGxpYnJhcnkva2VybmVsIGRpZmZlcmVuY2VzLikKIC5UUAogLkIgRVBFUk0K
IFRoZSBlZmZlY3RpdmUgVUlEIGRvZXMgbm90IG1hdGNoIHRoZSBvd25lciBvZiB0aGUgZmlsZSwK
QEAgLTMxMCwxMiArMzI1LDIyIEBAIC5TUyBDIGxpYnJhcnkva2VybmVsIGRpZmZlcmVuY2VzCiBo
YXZlIGEKIC5JIGZsYWdzCiBhcmd1bWVudC4KKy5QCitMaW51eCA2LjYgYWRkZWQgdGhlCisuQlIg
ZmNobW9kYXQyICgpCitzeXN0ZW0gY2FsbCB3aXRoIHRoZSBQT1NJWCBmbGFncyBhcmd1bWVudC4K
IC5TUyBnbGliYyBub3RlcwogT24gb2xkZXIga2VybmVscyB3aGVyZQotLkJSIGZjaG1vZGF0ICgp
CisuQlIgZmNobW9kYXQyICgpCiBpcyB1bmF2YWlsYWJsZSwgdGhlIGdsaWJjIHdyYXBwZXIgZnVu
Y3Rpb24gZmFsbHMgYmFjayB0byB0aGUgdXNlIG9mCi0uQlIgY2htb2QgKCkuCi1XaGVuCisuQlIg
ZmNobW9kYXQgKCkKK3doZW4gbm8gZmxhZ3MgYXJlIHN1cHBsaWVkLAorb3IgdG8KKy5CUiBjaG1v
ZCAoKQorb3RoZXJ3aXNlLgorSW4gdGhlCisuQlIgY2htb2QgKCkKK2ZhbGxiYWNrLCBpZgogLkkg
cGF0aG5hbWUKIGlzIGEgcmVsYXRpdmUgcGF0aG5hbWUsCiBnbGliYyBjb25zdHJ1Y3RzIGEgcGF0
aG5hbWUgYmFzZWQgb24gdGhlIHN5bWJvbGljIGxpbmsgaW4KQEAgLTMyNCw3ICszNDksMTYgQEAg
LlNTIGdsaWJjIG5vdGVzCiAuSSBkaXJmZAogYXJndW1lbnQuCiAuU0ggU1RBTkRBUkRTCisuVFAK
Ky5CUiBjaG1vZCAoKQorLlRRCisuQlIgZmNobW9kICgpCisuVFEKKy5CUiBmY2htb2RhdCAoKQog
UE9TSVguMS0yMDA4LgorLlRQCisuQlIgbGNobW9kICgpCitMaW51eC4KIC5TSCBISVNUT1JZCiAu
VFAKIC5CUiBjaG1vZCAoKQpAQCAtMzM2LDYgKzM3MCw5IEBAIC5TSCBISVNUT1JZCiBQT1NJWC4x
LTIwMDguCiBMaW51eCAyLjYuMTYsCiBnbGliYyAyLjQuCisuVFAKKy5CUiBsY2htb2QgKCkKK0xp
bnV4IDIuNi4xNiwgZ2xpYmMgMi41LgogLlNIIFNFRSBBTFNPCiAuQlIgY2htb2QgKDEpLAogLkJS
IGNob3duICgyKSwK
--000000000000e3bd33062963a672--

