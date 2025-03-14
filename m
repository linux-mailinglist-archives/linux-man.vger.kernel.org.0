Return-Path: <linux-man+bounces-2597-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE89A611BF
	for <lists+linux-man@lfdr.de>; Fri, 14 Mar 2025 13:50:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 402F21B61E94
	for <lists+linux-man@lfdr.de>; Fri, 14 Mar 2025 12:50:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 513E11FECBB;
	Fri, 14 Mar 2025 12:50:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cRj2wK+t"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E0701FE45C
	for <linux-man@vger.kernel.org>; Fri, 14 Mar 2025 12:50:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741956628; cv=none; b=RRR9m1eUx9SBREkuuNUiBRgOn5BsHwvrCdDCDy2U23EQksoHtamXtanh+xnpz3Cbg80/djlevV+6Ingn7N0fWVg/IB0Xq3j9lFr7a5CZYWfp0sllqV+PtjjXFTDXlHu1TRUUx1jJIlZpzVMZzpy4HoQXyI07I9s9sHbOCnYTPA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741956628; c=relaxed/simple;
	bh=cgTle/GxbD/cfHHU8GcNjth5jVWjFeHpv4T/D8/fjBA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UCw5ev8lmRigJno2qb4+O3rOtuzFmWi0v/xBR4Zv7rCUI9MXSHQUA/eZyD/bcTOlgxsbNRpgnUBVaS8Gah+xAbrV8zXOKyFOGJoV6QZemUzrrq2DoMFF+m55V8E4g8KFibQCRmLfJWEaTgPodBoo3qjdpG7FrZhh1dY9Zrh9Ev8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cRj2wK+t; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 712D5C4CEE3;
	Fri, 14 Mar 2025 12:50:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741956627;
	bh=cgTle/GxbD/cfHHU8GcNjth5jVWjFeHpv4T/D8/fjBA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cRj2wK+tg3ECLwwctdKi1K4WWRx3hrs/vN4XJj5RPgSJwQ0wI9xi+LBwlFUNUbCXM
	 KVBnmEo0gjIkFaUuRcrHcEy5ZhlR00JQ33jglwwS31c44OPXOKBCE+ide/1D9KCkoL
	 b+2jPT87/fbbBo5RBJzcalxzWUcqzGsM6KqVAOdXb5cRewm2/rz/tFBsehZ6L+2PN8
	 tRAnPj0ss2EFMd91mLEbaB2QHvq7/7+jCLY7b7AZwL5zJ03M64h+NHikgWefZ8RF09
	 u+NZRgFFbMtFkK3uOo37GYeyw2KKdFqct9r+S8p/EvbSXOxlv+KAfiFwbGfZNZ6l7q
	 kbuw/Lx5neGzA==
Date: Fri, 14 Mar 2025 13:50:24 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Chris Bazley <Chris.Bazley@arm.com>, Martin Uecker <muecker@tugraz.at>, 
	Joseph Myers <josmyers@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Qualifiers on forward-declared function parameters
Message-ID: <feewumb24clwwajp26z2wgmjgw5bum5eiazuatv364dfrfa5s5@fujm757h3cgu>
References: <7ompngc3nmu2lsvk5svydr7tadmrbw3lrx26empdb4bdnh6iim@66bytwwnt7zl>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6tqrpnjrdpjkssd2"
Content-Disposition: inline
In-Reply-To: <7ompngc3nmu2lsvk5svydr7tadmrbw3lrx26empdb4bdnh6iim@66bytwwnt7zl>


--6tqrpnjrdpjkssd2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Chris Bazley <Chris.Bazley@arm.com>, Martin Uecker <muecker@tugraz.at>, 
	Joseph Myers <josmyers@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Qualifiers on forward-declared function parameters
References: <7ompngc3nmu2lsvk5svydr7tadmrbw3lrx26empdb4bdnh6iim@66bytwwnt7zl>
MIME-Version: 1.0
In-Reply-To: <7ompngc3nmu2lsvk5svydr7tadmrbw3lrx26empdb4bdnh6iim@66bytwwnt7zl>

On Fri, Mar 14, 2025 at 01:49:32PM +0100, Alejandro Colomar wrote:
> Hi Chris, Martin, Joseph,
>=20
> I'm patching the Linux man-pages project to use forward-declaration
> syntax --I'm following Chris's model, (,,,;,,,)--, insted of the
> [.identifier] syntax I was using.
>=20
> I've come up with some pages that need special attention, to make sure
> that the standard wording supports them.  I think it doesn, but we

s/doesn/does/

> better make sure.
>=20
> getsockopt(2) needs to forward declare a pointer, because the function
> updates the size.  Also, the pointer is restrict-qualified, so the
> qualifiers should match in the forward declaration and the actual
> parameter.
>=20
> gethostbyaddr_r(3) is one case where I've had to forward-declare more
> than one parameter.
>=20
> Joseph, I hope you'll be happy that I'm doing this change?  Should I put
> you as Reported-by as you complained about the syntax I'm replacing?
>=20
>=20
> Have a lovely day!
> Alex
>=20
>=20
> $ git diff -- man2/getsockopt.2
> diff --git i/man/man2/getsockopt.2 w/man/man2/getsockopt.2
> index e4f47662c..c79894b14 100644
> --- i/man/man2/getsockopt.2
> +++ w/man/man2/getsockopt.2
> @@ -23,11 +23,13 @@ .SH SYNOPSIS
>  .nf
>  .B #include <sys/socket.h>
>  .P
> -.BI "int getsockopt(int " sockfd ", int " level ", int " optname ,
> -.BI "               void " optval "[restrict *." optlen ],
> +.BI "int getsockopt(socklen *restrict " optlen ;
> +.BI "               int " sockfd ", int " level ", int " optname ,
> +.BI "               void " optval "[restrict *" optlen ],
>  .BI "               socklen_t *restrict " optlen );
> -.BI "int setsockopt(int " sockfd ", int " level ", int " optname ,
> -.BI "               const void " optval [. optlen ],
> +.BI "int setsockopt(socklen_t " optlen ;
> +.BI "               int " sockfd ", int " level ", int " optname ,
> +.BI "               const void " optval [ optlen ],
>  .BI "               socklen_t " optlen );
>  .fi
>  .SH DESCRIPTION
> $ mansect SYNOPSIS man2/getsockopt.2 | MANWIDTH=3D72 man /dev/stdin | cat;
> getsockopt(2)             System Calls Manual             getsockopt(2)
>=20
> SYNOPSIS
>      #include <sys/socket.h>
>=20
>      int getsockopt(socklen *restrict optlen;
>                     int sockfd, int level, int optname,
>                     void optval[restrict *optlen],
>                     socklen_t *restrict optlen);
>      int setsockopt(socklen_t optlen;
>                     int sockfd, int level, int optname,
>                     const void optval[optlen],
>                     socklen_t optlen);
>=20
> Linux man=E2=80=90pages (unreleased)     (date)                   getsock=
opt(2)
>=20
>=20
> $ git diff -- man3/gethostbyname.3
> diff --git i/man/man3/gethostbyname.3 w/man/man3/gethostbyname.3
> index 690a3b82e..a1cb8f129 100644
> --- i/man/man3/gethostbyname.3
> +++ w/man/man3/gethostbyname.3
> @@ -37,7 +37,8 @@ .SH SYNOPSIS
>  .B [[deprecated]] extern int h_errno;
>  .P
>  .BI "[[deprecated]] struct hostent *gethostbyname(const char *" name );
> -.BI "[[deprecated]] struct hostent *gethostbyaddr(const void " addr [. s=
ize ],
> +.BI "[[deprecated]] struct hostent *gethostbyaddr(socklen_t " size ;
> +.BI "                                             const void " addr [ si=
ze ],
>  .BI "                                             socklen_t " size ", in=
t " type );
>  .P
>  .BI "[[deprecated]] void herror(const char *" s );
> @@ -50,28 +51,32 @@ .SH SYNOPSIS
>  .B [[deprecated]]
>  .BI "struct hostent *gethostbyname2(const char *" name ", int " af );
>  .P
> -.BI "int gethostent_r(struct hostent *restrict " ret ,
> -.BI "                 char " buf "[restrict ." bufsize "], size_t " bufs=
ize ,
> +.BI "int gethostent_r(size_t " bufsize ;
> +.BI "                 struct hostent *restrict " ret ,
> +.BI "                 char " buf "[restrict " bufsize "], size_t " bufsi=
ze ,
>  .BI "                 struct hostent **restrict " result ,
>  .BI "                 int *restrict " h_errnop );
>  .P
>  .B [[deprecated]]
> -.BI "int gethostbyaddr_r(const void " addr "[restrict ." size "], sockle=
n_t " size ,
> +.BI "int gethostbyaddr_r(socklen_t " size ", size_t " bufsize ;
> +.BI "                 const void " addr "[restrict " size "], socklen_t =
" size ,
>  .BI "                 int " type ,
>  .BI "                 struct hostent *restrict " ret ,
> -.BI "                 char " buf "[restrict ." bufsize "], size_t " bufs=
ize ,
> +.BI "                 char " buf "[restrict " bufsize "], size_t " bufsi=
ze ,
>  .BI "                 struct hostent **restrict " result ,
>  .BI "                 int *restrict " h_errnop );
>  .B [[deprecated]]
> -.BI "int gethostbyname_r(const char *restrict " name ,
> +.BI "int gethostbyname_r(size_t " bufsize ;
> +.BI "                 const char *restrict " name ,
>  .BI "                 struct hostent *restrict " ret ,
> -.BI "                 char " buf "[restrict ." bufsize "], size_t " bufs=
ize ,
> +.BI "                 char " buf "[restrict " bufsize "], size_t " bufsi=
ze ,
>  .BI "                 struct hostent **restrict " result ,
>  .BI "                 int *restrict " h_errnop );
>  .B [[deprecated]]
> -.BI "int gethostbyname2_r(const char *restrict " name ", int " af,
> +.BI "int gethostbyname2_r(size_t " bufsize ;
> +.BI "                 const char *restrict " name ", int " af,
>  .BI "                 struct hostent *restrict " ret ,
> -.BI "                 char " buf "[restrict ." bufsize "], size_t " bufs=
ize ,
> +.BI "                 char " buf "[restrict " bufsize "], size_t " bufsi=
ze ,
>  .BI "                 struct hostent **restrict " result ,
>  .BI "                 int *restrict " h_errnop );
>  .fi
> $ mansect SYNOPSIS !$ | MANWIDTH=3D72 man /dev/stdin | cat;
> mansect SYNOPSIS man3/gethostbyname.3 | MANWIDTH=3D72 man /dev/stdin | ca=
t;
> gethostbyname(3)        Library Functions Manual       gethostbyname(3)
>=20
> SYNOPSIS
>      #include <netdb.h>
>=20
>      void sethostent(int stayopen);
>      void endhostent(void);
>=20
>      [[deprecated]] extern int h_errno;
>=20
>      [[deprecated]] struct hostent *gethostbyname(const char *name);
>      [[deprecated]] struct hostent *gethostbyaddr(socklen_t size;
>                                                   const void addr[size],
>                                                   socklen_t size, int typ=
e);
>=20
>      [[deprecated]] void herror(const char *s);
>      [[deprecated]] const char *hstrerror(int err);
>=20
>      /* System V/POSIX extension */
>      struct hostent *gethostent(void);
>=20
>      /* GNU extensions */
>      [[deprecated]]
>      struct hostent *gethostbyname2(const char *name, int af);
>=20
>      int gethostent_r(size_t bufsize;
>                       struct hostent *restrict ret,
>                       char buf[restrict bufsize], size_t bufsize,
>                       struct hostent **restrict result,
>                       int *restrict h_errnop);
>=20
>      [[deprecated]]
>      int gethostbyaddr_r(socklen_t size, size_t bufsize;
>                       const void addr[restrict size], socklen_t size,
>                       int type,
>                       struct hostent *restrict ret,
>                       char buf[restrict bufsize], size_t bufsize,
>                       struct hostent **restrict result,
>                       int *restrict h_errnop);
>      [[deprecated]]
>      int gethostbyname_r(size_t bufsize;
>                       const char *restrict name,
>                       struct hostent *restrict ret,
>                       char buf[restrict bufsize], size_t bufsize,
>                       struct hostent **restrict result,
>                       int *restrict h_errnop);
>      [[deprecated]]
>      int gethostbyname2_r(size_t bufsize;
>                       const char *restrict name, int af,
>                       struct hostent *restrict ret,
>                       char buf[restrict bufsize], size_t bufsize,
>                       struct hostent **restrict result,
>                       int *restrict h_errnop);
>=20
>  Feature    Test    Macro    Requirements    for    glibc   (see   fea=E2=
=80=90
>  ture_test_macros(7)):
>=20
>      gethostbyname2(),  gethostent_r(),  gethostbyaddr_r(),  gethostby=E2=
=80=90
>      name_r(), gethostbyname2_r():
>          Since glibc 2.19:
>              _DEFAULT_SOURCE
>          glibc up to and including 2.19:
>              _BSD_SOURCE || _SVID_SOURCE
>=20
>      herror(), hstrerror():
>          Since glibc 2.19:
>              _DEFAULT_SOURCE
>          glibc 2.8 to glibc 2.19:
>              _BSD_SOURCE || _SVID_SOURCE
>          Before glibc 2.8:
>              none
>=20
>      h_errno:
>          Since glibc 2.19
>              _DEFAULT_SOURCE || _POSIX_C_SOURCE < 200809L
>          glibc 2.12 to glibc 2.19:
>              _BSD_SOURCE || _SVID_SOURCE || _POSIX_C_SOURCE < 200809L
>          Before glibc 2.12:
>              none
>=20
> Linux man=E2=80=90pages (unreleased)     (date)                gethostbyn=
ame(3)
>=20
>=20
>=20
>=20
>=20
>=20
> --=20
> <https://www.alejandro-colomar.es/>



--=20
<https://www.alejandro-colomar.es/>

--6tqrpnjrdpjkssd2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfUJg8ACgkQ64mZXMKQ
wqlV8A//TLc2vbTlmlf8pAvQbkIQhZqgEHaGCfut0G08xBSyBX2cpIImu+oS7Z7L
Aeyll8BV0ZtKIW/IzTOTnPsAwKAro3wwOFyRe6PYcT2Xjt+R6B3NbEKdBn8AqSIP
1DAXnVg90jX0JGrDeW7CtY7isb8NHhrgyyvWHFjstUrQy4BGluua7XFrqDVKh4M8
hzniOyZN3pp972YoIamSviIgvke3RRAuh7aXtNI2+pd36X4x8ZQnHxk14xa+A2xc
s+eUmahgegc8B4/pYtYH8USoLBq42hxul+t2oOZLzHCPMIv8YOV99nyJQ2mXZRtO
RvPp0A2hME73kjcFwE/893G6yNw4bn+6570TA4KPUUdxQz+uD7xCWRLPB0nlzCKO
g1z6QxS9YLp+ExEhbO3LmBE4xeGf4oSZFlEO04Pey6TkosJ4nnOocmr616Qtc/lx
AhyoApFLKm+Gdt07r2nsyDf95I3VfVDhYuf1WJBJFl1augUyo+kHnZm0A8PKzn0Y
ucCtZRVJVUSeTrpEYPuB+s0x9e5mQURtbBOrAWcHJ9OGrBi8L1cM1EEW93/fCRZo
oVVFoynq3aSO5XVqZDWZBL/CczDxBD3HrQf2jZWjYWgNhegBn6ZxGYSYEKdIT+uj
9qR0ty+cHfOZeQWzlP0tf/aS830O+wJlIPuxtHjIpiq9Y2dthCQ=
=omxG
-----END PGP SIGNATURE-----

--6tqrpnjrdpjkssd2--

