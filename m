Return-Path: <linux-man+bounces-2599-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1542EA61273
	for <lists+linux-man@lfdr.de>; Fri, 14 Mar 2025 14:20:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 896CC7AE048
	for <lists+linux-man@lfdr.de>; Fri, 14 Mar 2025 13:18:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3E2E1FF5EB;
	Fri, 14 Mar 2025 13:19:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="twdzkhJo"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7232F1FF5E9
	for <linux-man@vger.kernel.org>; Fri, 14 Mar 2025 13:19:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741958390; cv=none; b=TThieVMHix3+aLH2zL0CbpNal8QZaw5GUXadXZ1h2mnxyAYTb3q0jiv1jwFuWJjgK7SNy8rCWy6QqoCkZLEgbXcqZjSvtVQacwSMPZqpzVnLs18cIYX2dpEgLHpTuXNANZ1C6Mmq0nfnPYzzO7Hzj+rGu9Vv4HnsAo8s45etWr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741958390; c=relaxed/simple;
	bh=wjhaTNXsbGn25+Y8av1l1nWCONnCmie5Fpn29Rc4/DE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iqKSeGa9FXu/qbxb0cp37AeOYxp7tz1TwUwm5omLFmT8EmBPR/jjDkoduZPHZDCqoLC0uV7I5xS+E3KjBQUlr811vxktCRRp7zBejzaTMvlwte+yfdY2F75/kU/7WXs2j2EJP+i8e0Wv1hO3thF87vFpXycJnAlqCkequo2ty5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=twdzkhJo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E71DEC4CEE9;
	Fri, 14 Mar 2025 13:19:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741958389;
	bh=wjhaTNXsbGn25+Y8av1l1nWCONnCmie5Fpn29Rc4/DE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=twdzkhJoO0xWK18d4ty6UKVDzfhTTpWNjNb6JzyCX6+bSd27rVqY7TItrQnjoQA70
	 JiJOv9WZi+TKsH1vS0I9GxOS13PTrKGKZDC6/yvYe9JsuHiAqZ7onNBtaD273GqzuB
	 vRNX6e7Gs8pxu5/Ooe+jPJ61wXVDInCmfqbXmREbyJFqeNlBHtYvtoVYdUHOHxeKAJ
	 MMFJ4XuHsLoCGTUv+sOQAFg8Jh925+liE8/Hn+3dRccly9JPkwr4XeDMlf8Y2Yn7g+
	 D4uCrpk9jfh+xmc7kjqtsO1yqV1y3cRgV9pKoS9NsUTkJukC8X1b+nxzA/Zc4GPkxv
	 JxsLFq7+FT+4Q==
Date: Fri, 14 Mar 2025 14:19:46 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Chris Bazley <Chris.Bazley@arm.com>, Martin Uecker <uecker@tugraz.at>, 
	Joseph Myers <josmyers@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Qualifiers on forward-declared function parameters
Message-ID: <vb42ek6hgl3lfyogod3trrjvf2hwt46a2yz7ghb3avptunucce@wpbcym4tbvgk>
References: <7ompngc3nmu2lsvk5svydr7tadmrbw3lrx26empdb4bdnh6iim@66bytwwnt7zl>
 <feewumb24clwwajp26z2wgmjgw5bum5eiazuatv364dfrfa5s5@fujm757h3cgu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="opggsn2hkvndteq2"
Content-Disposition: inline
In-Reply-To: <feewumb24clwwajp26z2wgmjgw5bum5eiazuatv364dfrfa5s5@fujm757h3cgu>


--opggsn2hkvndteq2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Chris Bazley <Chris.Bazley@arm.com>, Martin Uecker <uecker@tugraz.at>, 
	Joseph Myers <josmyers@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Qualifiers on forward-declared function parameters
References: <7ompngc3nmu2lsvk5svydr7tadmrbw3lrx26empdb4bdnh6iim@66bytwwnt7zl>
 <feewumb24clwwajp26z2wgmjgw5bum5eiazuatv364dfrfa5s5@fujm757h3cgu>
MIME-Version: 1.0
In-Reply-To: <feewumb24clwwajp26z2wgmjgw5bum5eiazuatv364dfrfa5s5@fujm757h3cgu>

[Fix typo in Martin's address]

On Fri, Mar 14, 2025 at 01:50:24PM +0100, Alejandro Colomar wrote:
> On Fri, Mar 14, 2025 at 01:49:32PM +0100, Alejandro Colomar wrote:
> > Hi Chris, Martin, Joseph,
> >=20
> > I'm patching the Linux man-pages project to use forward-declaration
> > syntax --I'm following Chris's model, (,,,;,,,)--, insted of the
> > [.identifier] syntax I was using.
> >=20
> > I've come up with some pages that need special attention, to make sure
> > that the standard wording supports them.  I think it doesn, but we
>=20
> s/doesn/does/
>=20
> > better make sure.
> >=20
> > getsockopt(2) needs to forward declare a pointer, because the function
> > updates the size.  Also, the pointer is restrict-qualified, so the
> > qualifiers should match in the forward declaration and the actual
> > parameter.
> >=20
> > gethostbyaddr_r(3) is one case where I've had to forward-declare more
> > than one parameter.
> >=20
> > Joseph, I hope you'll be happy that I'm doing this change?  Should I put
> > you as Reported-by as you complained about the syntax I'm replacing?
> >=20
> >=20
> > Have a lovely day!
> > Alex
> >=20
> >=20
> > $ git diff -- man2/getsockopt.2
> > diff --git i/man/man2/getsockopt.2 w/man/man2/getsockopt.2
> > index e4f47662c..c79894b14 100644
> > --- i/man/man2/getsockopt.2
> > +++ w/man/man2/getsockopt.2
> > @@ -23,11 +23,13 @@ .SH SYNOPSIS
> >  .nf
> >  .B #include <sys/socket.h>
> >  .P
> > -.BI "int getsockopt(int " sockfd ", int " level ", int " optname ,
> > -.BI "               void " optval "[restrict *." optlen ],
> > +.BI "int getsockopt(socklen *restrict " optlen ;
> > +.BI "               int " sockfd ", int " level ", int " optname ,
> > +.BI "               void " optval "[restrict *" optlen ],
> >  .BI "               socklen_t *restrict " optlen );
> > -.BI "int setsockopt(int " sockfd ", int " level ", int " optname ,
> > -.BI "               const void " optval [. optlen ],
> > +.BI "int setsockopt(socklen_t " optlen ;
> > +.BI "               int " sockfd ", int " level ", int " optname ,
> > +.BI "               const void " optval [ optlen ],
> >  .BI "               socklen_t " optlen );
> >  .fi
> >  .SH DESCRIPTION
> > $ mansect SYNOPSIS man2/getsockopt.2 | MANWIDTH=3D72 man /dev/stdin | c=
at;
> > getsockopt(2)             System Calls Manual             getsockopt(2)
> >=20
> > SYNOPSIS
> >      #include <sys/socket.h>
> >=20
> >      int getsockopt(socklen *restrict optlen;
> >                     int sockfd, int level, int optname,
> >                     void optval[restrict *optlen],
> >                     socklen_t *restrict optlen);
> >      int setsockopt(socklen_t optlen;
> >                     int sockfd, int level, int optname,
> >                     const void optval[optlen],
> >                     socklen_t optlen);
> >=20
> > Linux man=E2=80=90pages (unreleased)     (date)                   getso=
ckopt(2)
> >=20
> >=20
> > $ git diff -- man3/gethostbyname.3
> > diff --git i/man/man3/gethostbyname.3 w/man/man3/gethostbyname.3
> > index 690a3b82e..a1cb8f129 100644
> > --- i/man/man3/gethostbyname.3
> > +++ w/man/man3/gethostbyname.3
> > @@ -37,7 +37,8 @@ .SH SYNOPSIS
> >  .B [[deprecated]] extern int h_errno;
> >  .P
> >  .BI "[[deprecated]] struct hostent *gethostbyname(const char *" name );
> > -.BI "[[deprecated]] struct hostent *gethostbyaddr(const void " addr [.=
 size ],
> > +.BI "[[deprecated]] struct hostent *gethostbyaddr(socklen_t " size ;
> > +.BI "                                             const void " addr [ =
size ],
> >  .BI "                                             socklen_t " size ", =
int " type );
> >  .P
> >  .BI "[[deprecated]] void herror(const char *" s );
> > @@ -50,28 +51,32 @@ .SH SYNOPSIS
> >  .B [[deprecated]]
> >  .BI "struct hostent *gethostbyname2(const char *" name ", int " af );
> >  .P
> > -.BI "int gethostent_r(struct hostent *restrict " ret ,
> > -.BI "                 char " buf "[restrict ." bufsize "], size_t " bu=
fsize ,
> > +.BI "int gethostent_r(size_t " bufsize ;
> > +.BI "                 struct hostent *restrict " ret ,
> > +.BI "                 char " buf "[restrict " bufsize "], size_t " buf=
size ,
> >  .BI "                 struct hostent **restrict " result ,
> >  .BI "                 int *restrict " h_errnop );
> >  .P
> >  .B [[deprecated]]
> > -.BI "int gethostbyaddr_r(const void " addr "[restrict ." size "], sock=
len_t " size ,
> > +.BI "int gethostbyaddr_r(socklen_t " size ", size_t " bufsize ;
> > +.BI "                 const void " addr "[restrict " size "], socklen_=
t " size ,
> >  .BI "                 int " type ,
> >  .BI "                 struct hostent *restrict " ret ,
> > -.BI "                 char " buf "[restrict ." bufsize "], size_t " bu=
fsize ,
> > +.BI "                 char " buf "[restrict " bufsize "], size_t " buf=
size ,
> >  .BI "                 struct hostent **restrict " result ,
> >  .BI "                 int *restrict " h_errnop );
> >  .B [[deprecated]]
> > -.BI "int gethostbyname_r(const char *restrict " name ,
> > +.BI "int gethostbyname_r(size_t " bufsize ;
> > +.BI "                 const char *restrict " name ,
> >  .BI "                 struct hostent *restrict " ret ,
> > -.BI "                 char " buf "[restrict ." bufsize "], size_t " bu=
fsize ,
> > +.BI "                 char " buf "[restrict " bufsize "], size_t " buf=
size ,
> >  .BI "                 struct hostent **restrict " result ,
> >  .BI "                 int *restrict " h_errnop );
> >  .B [[deprecated]]
> > -.BI "int gethostbyname2_r(const char *restrict " name ", int " af,
> > +.BI "int gethostbyname2_r(size_t " bufsize ;
> > +.BI "                 const char *restrict " name ", int " af,
> >  .BI "                 struct hostent *restrict " ret ,
> > -.BI "                 char " buf "[restrict ." bufsize "], size_t " bu=
fsize ,
> > +.BI "                 char " buf "[restrict " bufsize "], size_t " buf=
size ,
> >  .BI "                 struct hostent **restrict " result ,
> >  .BI "                 int *restrict " h_errnop );
> >  .fi
> > $ mansect SYNOPSIS !$ | MANWIDTH=3D72 man /dev/stdin | cat;
> > mansect SYNOPSIS man3/gethostbyname.3 | MANWIDTH=3D72 man /dev/stdin | =
cat;
> > gethostbyname(3)        Library Functions Manual       gethostbyname(3)
> >=20
> > SYNOPSIS
> >      #include <netdb.h>
> >=20
> >      void sethostent(int stayopen);
> >      void endhostent(void);
> >=20
> >      [[deprecated]] extern int h_errno;
> >=20
> >      [[deprecated]] struct hostent *gethostbyname(const char *name);
> >      [[deprecated]] struct hostent *gethostbyaddr(socklen_t size;
> >                                                   const void addr[size],
> >                                                   socklen_t size, int t=
ype);
> >=20
> >      [[deprecated]] void herror(const char *s);
> >      [[deprecated]] const char *hstrerror(int err);
> >=20
> >      /* System V/POSIX extension */
> >      struct hostent *gethostent(void);
> >=20
> >      /* GNU extensions */
> >      [[deprecated]]
> >      struct hostent *gethostbyname2(const char *name, int af);
> >=20
> >      int gethostent_r(size_t bufsize;
> >                       struct hostent *restrict ret,
> >                       char buf[restrict bufsize], size_t bufsize,
> >                       struct hostent **restrict result,
> >                       int *restrict h_errnop);
> >=20
> >      [[deprecated]]
> >      int gethostbyaddr_r(socklen_t size, size_t bufsize;
> >                       const void addr[restrict size], socklen_t size,
> >                       int type,
> >                       struct hostent *restrict ret,
> >                       char buf[restrict bufsize], size_t bufsize,
> >                       struct hostent **restrict result,
> >                       int *restrict h_errnop);
> >      [[deprecated]]
> >      int gethostbyname_r(size_t bufsize;
> >                       const char *restrict name,
> >                       struct hostent *restrict ret,
> >                       char buf[restrict bufsize], size_t bufsize,
> >                       struct hostent **restrict result,
> >                       int *restrict h_errnop);
> >      [[deprecated]]
> >      int gethostbyname2_r(size_t bufsize;
> >                       const char *restrict name, int af,
> >                       struct hostent *restrict ret,
> >                       char buf[restrict bufsize], size_t bufsize,
> >                       struct hostent **restrict result,
> >                       int *restrict h_errnop);
> >=20
> >  Feature    Test    Macro    Requirements    for    glibc   (see   fea=
=E2=80=90
> >  ture_test_macros(7)):
> >=20
> >      gethostbyname2(),  gethostent_r(),  gethostbyaddr_r(),  gethostby=
=E2=80=90
> >      name_r(), gethostbyname2_r():
> >          Since glibc 2.19:
> >              _DEFAULT_SOURCE
> >          glibc up to and including 2.19:
> >              _BSD_SOURCE || _SVID_SOURCE
> >=20
> >      herror(), hstrerror():
> >          Since glibc 2.19:
> >              _DEFAULT_SOURCE
> >          glibc 2.8 to glibc 2.19:
> >              _BSD_SOURCE || _SVID_SOURCE
> >          Before glibc 2.8:
> >              none
> >=20
> >      h_errno:
> >          Since glibc 2.19
> >              _DEFAULT_SOURCE || _POSIX_C_SOURCE < 200809L
> >          glibc 2.12 to glibc 2.19:
> >              _BSD_SOURCE || _SVID_SOURCE || _POSIX_C_SOURCE < 200809L
> >          Before glibc 2.12:
> >              none
> >=20
> > Linux man=E2=80=90pages (unreleased)     (date)                gethostb=
yname(3)
> >=20
> >=20
> >=20
> >=20
> >=20
> >=20
> > --=20
> > <https://www.alejandro-colomar.es/>
>=20
>=20
>=20
> --=20
> <https://www.alejandro-colomar.es/>



--=20
<https://www.alejandro-colomar.es/>

--opggsn2hkvndteq2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfULPIACgkQ64mZXMKQ
wqlgcBAAjyasQjOiMTXt8Sw5fuG2JnHem8PKe0e6febSulFnlclpa2encX92fKvX
tm5vtjcz78rLpND9N1ODHYQHELYrWxeWlsjcPTfR5SoKLNTlTPogJS3Pw/kg2WEB
1gnt1BnJ4ng+99kxcL6bd8HwjKHJBCQojsIqyTzj7NM5X1wQ/knDC0LBpOHZVLn+
ETTAke72CkxsY/+AYobIJUzAfFceG06/pNZCFBXA11NfOWAgtdpwprQYfVXTStc4
gmHz+RQMmfohXwljHCUksP5B9E6rfBFwC5icanKjqQkS597FJk3A1ha/aQDEwbIv
Kot7VlCa6bnhbXzUiwb8Xc/7WbN8otIuQUwo70aCpZMULBrC7LFVOcSL8ZInCkrC
Mi4FCGs9dFCA/z1zNQE1lEGCQelB98cK+CIYm27yGmoi8asAMWXjRsOkBBkJr+EL
KO6VE28R974SywZezZa9ZMH+4LqADly4v5g97H5cuXpKLVJhfLmVeTodRLXCeyrE
5MrDZVOyEtdI2MFDNhVw9NG6D2gG7+DhRO+06WqgUwazx6aae4Su3L5d1BfEJJzJ
BTPzwjqwfVA8o/hGlgGFJ65sPG4F+/0fZeEFuC0lwlR/o6OpSckv+r8fVq2lp0La
VJ/TxjYG7xVnwZduebvvexA4BwHAku10WeFB+dMiC2z7ohcEF9A=
=iVsB
-----END PGP SIGNATURE-----

--opggsn2hkvndteq2--

