Return-Path: <linux-man+bounces-3111-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 616EBAD02C7
	for <lists+linux-man@lfdr.de>; Fri,  6 Jun 2025 15:05:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A54B63AA1D4
	for <lists+linux-man@lfdr.de>; Fri,  6 Jun 2025 13:05:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BACA288CBE;
	Fri,  6 Jun 2025 13:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X47nhj+e"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0806E288CA2
	for <linux-man@vger.kernel.org>; Fri,  6 Jun 2025 13:05:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749215122; cv=none; b=HRPSksIL9n6q8oKwaIG0uln3ZF3nJRfZ7CeVapT4HnxwWuZSDq2Qz5cNucF8gZ3gzPRklp0x00B60pSNm7CiNChOyM8BiMkmds9xenTOdl6CZ4UuNWI+gYwbiSy7gIWz4n6KaTNQR8zMVVdQoYqAnDcH3pewnuo8ydEKJbMXW0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749215122; c=relaxed/simple;
	bh=WH7dKSxw2LyX40NO6lR3KJfF3LSSOnyxWZ3p6ZLqLNE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GdS8/P8zvBHxg/FV1p+NbkEv7q2f+df7Xy1wo8GolwFP3rp1+TGm1vjuMGGPC92t3z/RxYCeUhVB4l5vgHccpe00cUczoic9/vRA9DtOyw9sBGTWDmxZIZf9hQks4+bnUaoyR4MN2fGzRtto1n35QOVjTmeBN/4qCLHFutdi3/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X47nhj+e; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 825DCC4CEEB;
	Fri,  6 Jun 2025 13:05:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749215120;
	bh=WH7dKSxw2LyX40NO6lR3KJfF3LSSOnyxWZ3p6ZLqLNE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=X47nhj+e+lwJFIZadXKmLtRoYQQryap5l7Xl5uYU4RtspMEA/Ayj3w1oC+i4iuGPz
	 kOTP8Y6ohXm4cVh1hOOtRRe5QY6Nrl0CyGnwZx+EzzRoj4kuEG7Fkydt6t4ctogd4z
	 0WsJNFNpt+kUqrARpwWjk5AC8pkFVWRwnTv58tPSsqQEUHlJhvF3KYczNj3hXM+88L
	 9/6yeLASmKw2syH1TA+CVlejyGl97Gc2ko3SZKdPw5uOxuOEuZj/YKe12MaDBfWHb3
	 rxDlNj0bXt1r09lwI5YG6Bg6iqzqRJX52wCrD6vyxxf8IeWXIWelNtsooyo8POJhzZ
	 14aDSpzzgUzHw==
Date: Fri, 6 Jun 2025 15:05:17 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Mark Naughton <mnaughto@redhat.com>
Cc: Mark Harris <mark.hsj@gmail.com>, linux-man@vger.kernel.org, 
	Joseph Myers <josmyers@redhat.com>
Subject: Re: Forward Deceleration Changes
Message-ID: <6pl7yzeeeecjl6oifcynye5gkhc4hr3vnvt4xtqasgvjx2sndv@64rgybogzm3d>
References: <CACdZg2UAkDE2KZ=0tCN+pV+-mjupeY=qdGALYPshS3Q0BrHnzw@mail.gmail.com>
 <7zkvtkaafxycu2si3r4jl6qaynzfkedvphhh26rfjibq3kbxc7@56katuftwykv>
 <CACdZg2XOB9gmH0aJRLZVn4gfsd8xHyn78ohB7=wwo2ppzsXzig@mail.gmail.com>
 <kghzj5sfvb7dmkdg5iqtt2l25unqw4voxps3jcy6s7wcznr4gx@e2dn6h3geupq>
 <CAMdZqKFhcNgH-xWSUZa=N6X0kkpH=XqtZNxnBCmgoCT+XY=7Bg@mail.gmail.com>
 <CACdZg2W6+EuYn+GJYUAr+6OdU7M886GChn1+uMUC-iNxCsV7pA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="57yk2y2a47y4rg7q"
Content-Disposition: inline
In-Reply-To: <CACdZg2W6+EuYn+GJYUAr+6OdU7M886GChn1+uMUC-iNxCsV7pA@mail.gmail.com>


--57yk2y2a47y4rg7q
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Mark Naughton <mnaughto@redhat.com>
Cc: Mark Harris <mark.hsj@gmail.com>, linux-man@vger.kernel.org, 
	Joseph Myers <josmyers@redhat.com>
Subject: Re: Forward Deceleration Changes
References: <CACdZg2UAkDE2KZ=0tCN+pV+-mjupeY=qdGALYPshS3Q0BrHnzw@mail.gmail.com>
 <7zkvtkaafxycu2si3r4jl6qaynzfkedvphhh26rfjibq3kbxc7@56katuftwykv>
 <CACdZg2XOB9gmH0aJRLZVn4gfsd8xHyn78ohB7=wwo2ppzsXzig@mail.gmail.com>
 <kghzj5sfvb7dmkdg5iqtt2l25unqw4voxps3jcy6s7wcznr4gx@e2dn6h3geupq>
 <CAMdZqKFhcNgH-xWSUZa=N6X0kkpH=XqtZNxnBCmgoCT+XY=7Bg@mail.gmail.com>
 <CACdZg2W6+EuYn+GJYUAr+6OdU7M886GChn1+uMUC-iNxCsV7pA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CACdZg2W6+EuYn+GJYUAr+6OdU7M886GChn1+uMUC-iNxCsV7pA@mail.gmail.com>


Hi Marks,

On Tue, Jun 03, 2025 at 03:52:59PM +0100, Mark Naughton wrote:
> Agreed, Mark.
>=20
> Mark
>=20
> On Tue, Jun 3, 2025 at 3:48=E2=80=AFPM Mark Harris <mark.hsj@gmail.com> w=
rote:
> >
> > > > When I open a man page I want to see "what arguments do I pass and =
in
> > > > what order". With this change you have to parse the prototype for t=
he
> > > > semi-colon
> > > > to see the start of the args.
> > >
> > > I tried to use a style that makes the ';' stand out more, by breaking
> > > the line after it.  But I agree that the first times you look at it, =
it
> > > can be a bit confusing and hard to distinguish.
> >
> > The main issue with the forward declaration syntax is that it is easy
> > to mistake the forward declarations for arguments, especially when
> > just quickly checking the man page to remind yourself which argument
> > is first.  If you want to retain this syntax, what might help is to
> > remove the bold font style from the forward declarations, or change
> > their formatting in some other way to be different than that of the
> > arguments.

I've pushed a change to my branch.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Dfda4e7b0c420f42f704dedd71733d6766a8eb41c>

You can check the PDF online with the new formatting:
<https://www.alejandro-colomar.es/share/dist/man-pages/git/HEAD/man-pages-H=
EAD.pdf#fread.3>

Here's an excerpt of the commit showing just the changes in fread(3):

	$ git show -- man/man3/fread.3
	commit fda4e7b0c420f42f704dedd71733d6766a8eb41c (HEAD -> main, alx/main, a=
lx/contrib, alx/HEAD, contrib)
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Fri Jun 6 13:27:02 2025 +0200

	    man/: Don't highlight forward declarations of function parameters
	   =20
	    Previously, many people confused these for actual parameters, since it=
's
	    hard to distinguish a ',' from ';'.  By removing bold/italics from
	    these, it will be easier to distinguish them.
	   =20
	    The cases have been found with a script:
	   =20
		    $ find -type f \
		    | xargs grep -l '^\.TH ' \
		    | sort \
		    | xargs mansect SYNOPSIS \
		    | man /dev/stdin \
		    | grep -e '^[^ ]' -e '[^ ]( [^ )].*[^)];' \
		    | less;
	   =20
	    Reported-by: Mark Naughton <mnaughto@redhat.com>
	    Suggested-by: Mark Harris <mark.hsj@gmail.com>
	    Acked-by: Mark Naughton <mnaughto@redhat.com>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man/man3/fread.3 b/man/man3/fread.3
	index cb259224b..a1eb2e791 100644
	--- a/man/man3/fread.3
	+++ b/man/man3/fread.3
	@@ -16,8 +16,8 @@ .SH SYNOPSIS
	 .fi
	 .P
	 .SY size_t\~fread(
	-.BI size_t\~ size ,
	-.BI size_t\~ n ;
	+size_t\~size,
	+size_t\~n;
	 .br
	 .BI void\~ ptr [restrict\~ size \~*\~ n ],
	 .br
	@@ -27,8 +27,8 @@ .SH SYNOPSIS
	 .BI FILE\~*restrict\~ stream );
	 .YS .
	 .SY size_t\~fwrite(
	-.BI size_t\~ size ,
	-.BI size_t\~ n ;
	+size_t\~size,
	+size_t\~n;
	 .br
	 .BI const\~void\~ ptr [restrict\~ size \~*\~ n ],
	 .br


This is based on another commit which I've been working on these days,
which makes use of SY/YS for formatting function prototypes.

	$ git show fc3664f9e80d -- man/man3/fread.3
	commit fc3664f9e80d84731424cbf4cfe9dd50298cbfba
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Sun Nov 24 21:40:41 2024 +0100

	    man/: SYNOPSIS: Use SY/YS
	   =20
	    This makes it easier to write the SYNOPSIS, which will reduce the
	    learning curve for contributors.
	   =20
	    Another benefit is that the prototypes are wrapped correctly for the
	    terminal width that the reader is using, so it's not hardcoded at 80.
	    It also removes the need for carefully aligning the prototypes by the
	    author of a page.
	   =20
	    It causes a small unwanted problem: a white space is added after the
	    opening parenthesis.  That's a minor trade-off for the benefits it
	    brings.  Once groff 1.24.0 is released, we'll be able to use an
	    extension that it provides, which allows us to remove that space, by
	    using the second argument to SY.
	   =20
	    Use it even in functions that don't need it (0 or 1 parameters), for
	    consistency.  This will make it easier to grep for function prototypes
	    in the source code.
	   =20
	    The cases have been found with a script:
	   =20
		    $ find -type f \
		    | xargs grep -l '^\.TH ' \
		    | sort \
		    | xargs mansect SYNOPSIS \
		    | man /dev/stdin \
		    | grep -e '^[^ ]' -e '[^ ]([^ )].*\(,\|;\)' \
		    | less;
	   =20
	    Suggested-by: "G. Branden Robinson" <branden@debian.org>
	    Cc: Ingo Schwarze <schwarze@openbsd.org>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man/man3/fread.3 b/man/man3/fread.3
	index 55b74b93a..cb259224b 100644
	--- a/man/man3/fread.3
	+++ b/man/man3/fread.3
	@@ -13,16 +13,30 @@ .SH LIBRARY
	 .SH SYNOPSIS
	 .nf
	 .B #include <stdio.h>
	-.P
	-.BI "size_t fread(size_t " size ", size_t " n ;
	-.BI "             void " ptr "[restrict " size " * " n ],
	-.BI "             size_t " size ", size_t " n ,
	-.BI "             FILE *restrict " stream );
	-.BI "size_t fwrite(size_t " size ", size_t " n ;
	-.BI "             const void " ptr "[restrict " size " * " n ],
	-.BI "             size_t " size ", size_t " n ,
	-.BI "             FILE *restrict " stream );
	 .fi
	+.P
	+.SY size_t\~fread(
	+.BI size_t\~ size ,
	+.BI size_t\~ n ;
	+.br
	+.BI void\~ ptr [restrict\~ size \~*\~ n ],
	+.br
	+.BI size_t\~ size ,
	+.BI size_t\~ n ,
	+.br
	+.BI FILE\~*restrict\~ stream );
	+.YS .
	+.SY size_t\~fwrite(
	+.BI size_t\~ size ,
	+.BI size_t\~ n ;
	+.br
	+.BI const\~void\~ ptr [restrict\~ size \~*\~ n ],
	+.br
	+.BI size_t\~ size ,
	+.BI size_t\~ n ,
	+.br
	+.BI FILE\~*restrict\~ stream );
	+.YS
	 .SH DESCRIPTION
	 The function
	 .BR fread ()


I'm not going to release these changes soon, though.  They cause some
minor temporary regressions, so I'm considering when I should do it.
But eventually, these changes will be released.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--57yk2y2a47y4rg7q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhC54wACgkQ64mZXMKQ
wqmLGg/+PHynvYuS5zVgtQ+u9385UAT2JlU3WxfVmt3sEfFhvcsq/X8xUb12VeI0
NyQT4H+B26SPXwxOTPVCfvrAABAGDqmF9dEudE4CCKVbmmJM7cOuRgbbvV08lSbH
CN/xG2bXr1GnKATlRRMI26baDK+RphrEmF+AGaiku8D87ujBCeGt3ATfuTemUT+J
F2nicGo4M8ViBd7XrL42TT5IhB+NqzcV2fh6rWkRpJXZmdCsLgT1+VjA5EL6+Npe
8FjwgLhTCPKP8ACJ1ZE92GYkFLovKPrUDnfbNn1AVV58D90Y+O90pH65b6qvuako
15tGimYC9tGCJocpbTY2Xe39NmjQsYLoMEURuC7aCZ6NEXtp26erRYMNm7RSeZqU
tHOY0uOgxQnVrl+KoaycOX+1wcKDUbhoc+RhXmdGoIsjjqbMlrfadYpDToClmLX7
ontbv5kpg9BM3B7KR0uRiSe+9lHjDNkCw6qi+8Rl1vvAE6Xwlju0h1UAWk6YVuhI
WKsJ+7WxG2GuJz4jM77wc5IA8l6QPbck1hmkA8nHSmwus+X4GDHle2o+Z7c9nPp/
XmiZhyaq3qBVRfk9Ottm4QXaoh0WZlhHbG935dFjLyYfaU5XLrk8gvOZnwMPhg0D
nPvHhKAnZKMlUO74XaWVBXPi15vP4qNpbkhAnHwtCub2YdkCpT4=
=C2hj
-----END PGP SIGNATURE-----

--57yk2y2a47y4rg7q--

