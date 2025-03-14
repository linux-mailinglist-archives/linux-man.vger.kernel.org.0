Return-Path: <linux-man+bounces-2596-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 28EE1A611BB
	for <lists+linux-man@lfdr.de>; Fri, 14 Mar 2025 13:49:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CC3427AA25E
	for <lists+linux-man@lfdr.de>; Fri, 14 Mar 2025 12:48:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DB4D1FECD0;
	Fri, 14 Mar 2025 12:49:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S038ggcT"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C361FECBC
	for <linux-man@vger.kernel.org>; Fri, 14 Mar 2025 12:49:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741956573; cv=none; b=e1hxBIr7KqX1KNB/7nv/KZD6Kj1NkHowm8zq1EqUdgWyNFqsKcBqQmiK5irvo0mtvBVSBKYxJdyFrbbNTv1xpg5OvQ62FulAmqWHjzbUyQFOaUYQ9Pocw8AUbAZdYA71x50bsBrkkRvyVW+cuD7554BKhOItRDKQsr3HSl645Lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741956573; c=relaxed/simple;
	bh=6LVF2bY4EylIhEJXM90/zGHENWX/sJ9M7Q2lngCHB0Q=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=Ywef1sCPSmY65jQpzRrL8pEAqN4BSJ0zs1byP8VV9MXCegHFlDqlln4Z9b4iqk33WKhmPUUXQtxKPj1w2bFJL423ppUBqowb7PC/QZuaI6a9cmZzV2dYcjtTZGuP7peagVzMZjFTziyxyHfU4U+cq2mXm/4Df0zLkMP6/+YLSlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S038ggcT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83A11C4CEE3;
	Fri, 14 Mar 2025 12:49:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741956572;
	bh=6LVF2bY4EylIhEJXM90/zGHENWX/sJ9M7Q2lngCHB0Q=;
	h=Date:From:To:Cc:Subject:From;
	b=S038ggcT3ViysgsoQXIN7NwdVtDV1dyiw3y6QkHxNUrD85blRgv/ZmomRHmGPUSr+
	 auuX8cePsO5AvzXuuzcZ6HaYNg5BPgsf87xryZ7kuJbaKOcRL+hNQJHnel88LTSiQJ
	 kFREp6jCvDc4D80RF+3jP6gSeyr36pq62c76CtnvDlub3lbWWuPtuvqh5cBT2rzN/I
	 zov2B4sJb8EwQCVH/lQmxhZ2H2faf9ZYL3XUiDxOQpqikBO/oAbVlHvYVVVisDRO9/
	 wTXMgXBTi8fOapqDgVRZKY+987abD6QrxNf0jTF7Jq2SJk2HFH+/6IuIAENc0tM/jn
	 sk4E2cBT9ZoWw==
Date: Fri, 14 Mar 2025 13:49:29 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Chris Bazley <Chris.Bazley@arm.com>, Martin Uecker <muecker@tugraz.at>, 
	Joseph Myers <josmyers@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: Qualifiers on forward-declared function parameters
Message-ID: <7ompngc3nmu2lsvk5svydr7tadmrbw3lrx26empdb4bdnh6iim@66bytwwnt7zl>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="csj6fe77smzksfdf"
Content-Disposition: inline


--csj6fe77smzksfdf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Chris Bazley <Chris.Bazley@arm.com>, Martin Uecker <muecker@tugraz.at>, 
	Joseph Myers <josmyers@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: Qualifiers on forward-declared function parameters
MIME-Version: 1.0

Hi Chris, Martin, Joseph,

I'm patching the Linux man-pages project to use forward-declaration
syntax --I'm following Chris's model, (,,,;,,,)--, insted of the
[.identifier] syntax I was using.

I've come up with some pages that need special attention, to make sure
that the standard wording supports them.  I think it doesn, but we
better make sure.

getsockopt(2) needs to forward declare a pointer, because the function
updates the size.  Also, the pointer is restrict-qualified, so the
qualifiers should match in the forward declaration and the actual
parameter.

gethostbyaddr_r(3) is one case where I've had to forward-declare more
than one parameter.

Joseph, I hope you'll be happy that I'm doing this change?  Should I put
you as Reported-by as you complained about the syntax I'm replacing?


Have a lovely day!
Alex


$ git diff -- man2/getsockopt.2
diff --git i/man/man2/getsockopt.2 w/man/man2/getsockopt.2
index e4f47662c..c79894b14 100644
--- i/man/man2/getsockopt.2
+++ w/man/man2/getsockopt.2
@@ -23,11 +23,13 @@ .SH SYNOPSIS
 .nf
 .B #include <sys/socket.h>
 .P
-.BI "int getsockopt(int " sockfd ", int " level ", int " optname ,
-.BI "               void " optval "[restrict *." optlen ],
+.BI "int getsockopt(socklen *restrict " optlen ;
+.BI "               int " sockfd ", int " level ", int " optname ,
+.BI "               void " optval "[restrict *" optlen ],
 .BI "               socklen_t *restrict " optlen );
-.BI "int setsockopt(int " sockfd ", int " level ", int " optname ,
-.BI "               const void " optval [. optlen ],
+.BI "int setsockopt(socklen_t " optlen ;
+.BI "               int " sockfd ", int " level ", int " optname ,
+.BI "               const void " optval [ optlen ],
 .BI "               socklen_t " optlen );
 .fi
 .SH DESCRIPTION
$ mansect SYNOPSIS man2/getsockopt.2 | MANWIDTH=3D72 man /dev/stdin | cat;
getsockopt(2)             System Calls Manual             getsockopt(2)

SYNOPSIS
     #include <sys/socket.h>

     int getsockopt(socklen *restrict optlen;
                    int sockfd, int level, int optname,
                    void optval[restrict *optlen],
                    socklen_t *restrict optlen);
     int setsockopt(socklen_t optlen;
                    int sockfd, int level, int optname,
                    const void optval[optlen],
                    socklen_t optlen);

Linux man=E2=80=90pages (unreleased)     (date)                   getsockop=
t(2)


$ git diff -- man3/gethostbyname.3
diff --git i/man/man3/gethostbyname.3 w/man/man3/gethostbyname.3
index 690a3b82e..a1cb8f129 100644
--- i/man/man3/gethostbyname.3
+++ w/man/man3/gethostbyname.3
@@ -37,7 +37,8 @@ .SH SYNOPSIS
 .B [[deprecated]] extern int h_errno;
 .P
 .BI "[[deprecated]] struct hostent *gethostbyname(const char *" name );
-.BI "[[deprecated]] struct hostent *gethostbyaddr(const void " addr [. siz=
e ],
+.BI "[[deprecated]] struct hostent *gethostbyaddr(socklen_t " size ;
+.BI "                                             const void " addr [ size=
 ],
 .BI "                                             socklen_t " size ", int =
" type );
 .P
 .BI "[[deprecated]] void herror(const char *" s );
@@ -50,28 +51,32 @@ .SH SYNOPSIS
 .B [[deprecated]]
 .BI "struct hostent *gethostbyname2(const char *" name ", int " af );
 .P
-.BI "int gethostent_r(struct hostent *restrict " ret ,
-.BI "                 char " buf "[restrict ." bufsize "], size_t " bufsiz=
e ,
+.BI "int gethostent_r(size_t " bufsize ;
+.BI "                 struct hostent *restrict " ret ,
+.BI "                 char " buf "[restrict " bufsize "], size_t " bufsize=
 ,
 .BI "                 struct hostent **restrict " result ,
 .BI "                 int *restrict " h_errnop );
 .P
 .B [[deprecated]]
-.BI "int gethostbyaddr_r(const void " addr "[restrict ." size "], socklen_=
t " size ,
+.BI "int gethostbyaddr_r(socklen_t " size ", size_t " bufsize ;
+.BI "                 const void " addr "[restrict " size "], socklen_t " =
size ,
 .BI "                 int " type ,
 .BI "                 struct hostent *restrict " ret ,
-.BI "                 char " buf "[restrict ." bufsize "], size_t " bufsiz=
e ,
+.BI "                 char " buf "[restrict " bufsize "], size_t " bufsize=
 ,
 .BI "                 struct hostent **restrict " result ,
 .BI "                 int *restrict " h_errnop );
 .B [[deprecated]]
-.BI "int gethostbyname_r(const char *restrict " name ,
+.BI "int gethostbyname_r(size_t " bufsize ;
+.BI "                 const char *restrict " name ,
 .BI "                 struct hostent *restrict " ret ,
-.BI "                 char " buf "[restrict ." bufsize "], size_t " bufsiz=
e ,
+.BI "                 char " buf "[restrict " bufsize "], size_t " bufsize=
 ,
 .BI "                 struct hostent **restrict " result ,
 .BI "                 int *restrict " h_errnop );
 .B [[deprecated]]
-.BI "int gethostbyname2_r(const char *restrict " name ", int " af,
+.BI "int gethostbyname2_r(size_t " bufsize ;
+.BI "                 const char *restrict " name ", int " af,
 .BI "                 struct hostent *restrict " ret ,
-.BI "                 char " buf "[restrict ." bufsize "], size_t " bufsiz=
e ,
+.BI "                 char " buf "[restrict " bufsize "], size_t " bufsize=
 ,
 .BI "                 struct hostent **restrict " result ,
 .BI "                 int *restrict " h_errnop );
 .fi
$ mansect SYNOPSIS !$ | MANWIDTH=3D72 man /dev/stdin | cat;
mansect SYNOPSIS man3/gethostbyname.3 | MANWIDTH=3D72 man /dev/stdin | cat;
gethostbyname(3)        Library Functions Manual       gethostbyname(3)

SYNOPSIS
     #include <netdb.h>

     void sethostent(int stayopen);
     void endhostent(void);

     [[deprecated]] extern int h_errno;

     [[deprecated]] struct hostent *gethostbyname(const char *name);
     [[deprecated]] struct hostent *gethostbyaddr(socklen_t size;
                                                  const void addr[size],
                                                  socklen_t size, int type);

     [[deprecated]] void herror(const char *s);
     [[deprecated]] const char *hstrerror(int err);

     /* System V/POSIX extension */
     struct hostent *gethostent(void);

     /* GNU extensions */
     [[deprecated]]
     struct hostent *gethostbyname2(const char *name, int af);

     int gethostent_r(size_t bufsize;
                      struct hostent *restrict ret,
                      char buf[restrict bufsize], size_t bufsize,
                      struct hostent **restrict result,
                      int *restrict h_errnop);

     [[deprecated]]
     int gethostbyaddr_r(socklen_t size, size_t bufsize;
                      const void addr[restrict size], socklen_t size,
                      int type,
                      struct hostent *restrict ret,
                      char buf[restrict bufsize], size_t bufsize,
                      struct hostent **restrict result,
                      int *restrict h_errnop);
     [[deprecated]]
     int gethostbyname_r(size_t bufsize;
                      const char *restrict name,
                      struct hostent *restrict ret,
                      char buf[restrict bufsize], size_t bufsize,
                      struct hostent **restrict result,
                      int *restrict h_errnop);
     [[deprecated]]
     int gethostbyname2_r(size_t bufsize;
                      const char *restrict name, int af,
                      struct hostent *restrict ret,
                      char buf[restrict bufsize], size_t bufsize,
                      struct hostent **restrict result,
                      int *restrict h_errnop);

 Feature    Test    Macro    Requirements    for    glibc   (see   fea=E2=
=80=90
 ture_test_macros(7)):

     gethostbyname2(),  gethostent_r(),  gethostbyaddr_r(),  gethostby=E2=
=80=90
     name_r(), gethostbyname2_r():
         Since glibc 2.19:
             _DEFAULT_SOURCE
         glibc up to and including 2.19:
             _BSD_SOURCE || _SVID_SOURCE

     herror(), hstrerror():
         Since glibc 2.19:
             _DEFAULT_SOURCE
         glibc 2.8 to glibc 2.19:
             _BSD_SOURCE || _SVID_SOURCE
         Before glibc 2.8:
             none

     h_errno:
         Since glibc 2.19
             _DEFAULT_SOURCE || _POSIX_C_SOURCE < 200809L
         glibc 2.12 to glibc 2.19:
             _BSD_SOURCE || _SVID_SOURCE || _POSIX_C_SOURCE < 200809L
         Before glibc 2.12:
             none

Linux man=E2=80=90pages (unreleased)     (date)                gethostbynam=
e(3)






--=20
<https://www.alejandro-colomar.es/>

--csj6fe77smzksfdf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfUJdIACgkQ64mZXMKQ
wqkOkBAAmlvu68l8kCq5zzktHiBr59WAJq29yZrmK/J59qPTn3/gkgvsRoZ4zYFw
MLr4hbAocTSsEJZZ8RJTrAiuIjyAYNToy/B3GZp9UO4bT8N7UqgwzbdTMe04ptxj
G8jsy+Ie17UTYagWjGwFgN5sEDtatdPYdfo4izJYav87O9PhNc1wzeLemHqg2w7o
/Dj8ii3AdUtqXQwKxhpi01yCgDY/SQZ4IEUDJ0U1TmBEVtu5DpiwtFNlBc/NDyuP
r4/ZkBB0tIi3AnmYcj+Ow1B9kFYDTJKlLC7L7gstQVGzqPebUVYKDnlu365yJmV/
0ni7TznTz0co7v0zN2d7rzNJvG7qo66jxBWymU1Gr3oHhDRfh5GC0Evy8cOjLcJq
3EKeaq4m/oMKdBfe1PY13+C9aolDBQ8AFJR9IteL7FmiQ7j+DS+Xy3yeVzQBzdXM
2se6PffTR72v7YF8UUeO3EsCkOZImfshkKAN28GFmXK2oUrfjH7GcKExjLC1wvOV
qALcIv4oVPSh18ORWlySvVjx94ezAw2Rtm92DpUTQt6pGjWKRi4f3z/u4deR4e8t
XJe7lEaDJqXkm+KbxLeh1EX55o0ohqJXzFuXhfztf2d0FURJniBEVc4sUwsQ+GFV
76We+oWl53zYcVk7Ndx1cvDlFTsYPP5c72jnvhshrry00l1i6qQ=
=59JA
-----END PGP SIGNATURE-----

--csj6fe77smzksfdf--

