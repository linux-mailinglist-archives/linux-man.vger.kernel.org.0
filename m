Return-Path: <linux-man+bounces-2598-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DF73AA6126E
	for <lists+linux-man@lfdr.de>; Fri, 14 Mar 2025 14:19:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A9AC31B62D2F
	for <lists+linux-man@lfdr.de>; Fri, 14 Mar 2025 13:19:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF3EC1FF1D2;
	Fri, 14 Mar 2025 13:19:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G3Zr7niQ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DEE11FF1B3
	for <linux-man@vger.kernel.org>; Fri, 14 Mar 2025 13:19:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741958365; cv=none; b=CnQEXO3zwfjHHsDLnJTGIF0lfZbkH7Sf6YaZ6MfDt3CS/GG7g+k8JuypfGaOcfLK+mBQmizSHHrOfDsO1J3qv3jGxcD8XXWX1KCL75rmGRwOQ+tdPFRTeSfKpFnlNEQsmNJen/W6Y2rr6hYW5Fw9mgXYQsYyb8q8ZImP43hPtRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741958365; c=relaxed/simple;
	bh=Xq7EInWCHzreZIihzM9AyVpSCj86MZp/scc4XAkW5dU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RLWB0M+A+IkEKEqc8h9lHxEHo0XsIzkcATz5FTQqFZMygAy1gIQT4qqM0rpXvGKjrDbWPQZReUy7PEeacFrRS5k7iBnsZp4L4JwfflbIyKAekW0Eht6bLWsLy0QhYd8l1x8brx0hOB9iDa+bEAnq7iBF9169GsHLJOZQBF2er98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G3Zr7niQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EFC27C4CEE9;
	Fri, 14 Mar 2025 13:19:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741958364;
	bh=Xq7EInWCHzreZIihzM9AyVpSCj86MZp/scc4XAkW5dU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=G3Zr7niQspifyGbPxxlCt1ovWWp/Cgj+xmSubzukn7y99m/2LQacbFew9ptXds/6y
	 5NIKWU3wh8qzBsGy7E6U6bP0laNEuw4jx4JHU1dv5JzuOrH4fU0XC6+axhB3XwrlrM
	 HWWfkr68iQxDCE4Tr8aTpGxfGWGtskUXtYLWdOAgF4Hca7hl7AuOqBCDUxT02lMYAS
	 4gU3KHlWUgOEslBvtXMzGfghTrW+Z84VNEWIS503I/WvFTaHUsZanjgBGXLceeASdD
	 n/zZ+Jd8YlUh+37chbE+VhiADjcAzfN4LCCyEZzeXkWUgvpKZerqNV5n5FImMTNLM9
	 JWYHhEKeS4jNQ==
Date: Fri, 14 Mar 2025 14:19:21 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Chris Bazley <Chris.Bazley@arm.com>, Martin Uecker <uecker@tugraz.at>, 
	Joseph Myers <josmyers@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Qualifiers on forward-declared function parameters
Message-ID: <did66hlzbdr625igsoyqp6qhthfxmrtkzp5cba4h24bkt7wfal@qxupoveu5eyk>
References: <7ompngc3nmu2lsvk5svydr7tadmrbw3lrx26empdb4bdnh6iim@66bytwwnt7zl>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="s4lxtgjk2euypzek"
Content-Disposition: inline
In-Reply-To: <7ompngc3nmu2lsvk5svydr7tadmrbw3lrx26empdb4bdnh6iim@66bytwwnt7zl>


--s4lxtgjk2euypzek
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Chris Bazley <Chris.Bazley@arm.com>, Martin Uecker <uecker@tugraz.at>, 
	Joseph Myers <josmyers@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Qualifiers on forward-declared function parameters
References: <7ompngc3nmu2lsvk5svydr7tadmrbw3lrx26empdb4bdnh6iim@66bytwwnt7zl>
MIME-Version: 1.0
In-Reply-To: <7ompngc3nmu2lsvk5svydr7tadmrbw3lrx26empdb4bdnh6iim@66bytwwnt7zl>

[Oops; I had a typo in Martin's address]

On Fri, Mar 14, 2025 at 01:49:29PM +0100, Alejandro Colomar wrote:
> Hi Chris, Martin, Joseph,
>=20
> I'm patching the Linux man-pages project to use forward-declaration
> syntax --I'm following Chris's model, (,,,;,,,)--, insted of the
> [.identifier] syntax I was using.
>=20
> I've come up with some pages that need special attention, to make sure
> that the standard wording supports them.  I think it doesn, but we
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

--s4lxtgjk2euypzek
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfULNMACgkQ64mZXMKQ
wqnozQ/+P1Q8en0gdFkQOGx+eOUJRZ7L7X/bzNl5G2cvAnODSWNhuu6HGfRtJMH0
SEZM3Li+T4+DAB5CNEJOy+ef1xTceo//7VNNbocbgPW8SUVQRT3MtyYnw4ANPMzm
UvXdFIKRu7iGccR07M6ssWtvz8EGN8y6NkCNK3LWh/UkAv2j1FuVYQB+w4wEhRUX
xYsAKsuhpYNbZFLADIQRCMC9xMZyFKsltKsExEEEx5fAuATtb+ZMNdVGVvoKQt/A
NSmuNcT29jbP9Y/Wm9WbKzaxuBtqxfswxKCXiaG7HmYTna3afwa8umh8B0WloRQX
slYgzdGbiw2XUpTlZl6pb8SZbKFLiXIwAK+T8ph//SHCUHJHTPkC/awJ7Zz0EcfH
yjtT7xC+0J9Ahouq4clwRStaMHT8oIAzu6qB/ibwEPrG4dXRONh3wRj2IJZr96aH
IsB1LEpBo9SbxtH9iWpHyAyvl7e/3hvVZgHPr8Uuvc4GVT3kyrSziz7zohbKD3Gx
sAWsiBS1U1Nb+UbtGhZqXrxC40Yha6+FojTcfwzD99ZY9WqHD8FHHWQbpmRd8U5f
GhPd6zA89UrD4LzBIjqm9fvFb+XfwLAzrPNrc2/UQcRKbaPZ4PSAyjPC8PWEX9+2
nhmDvFVo07LYoflMl03yCUX17yatyxoZwlqmbY9vKgrNftryIdQ=
=8DkS
-----END PGP SIGNATURE-----

--s4lxtgjk2euypzek--

