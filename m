Return-Path: <linux-man+bounces-1289-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C277B91BCB1
	for <lists+linux-man@lfdr.de>; Fri, 28 Jun 2024 12:35:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1EFB92851FD
	for <lists+linux-man@lfdr.de>; Fri, 28 Jun 2024 10:35:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F95515358F;
	Fri, 28 Jun 2024 10:35:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p9aYbpNn"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D94241103
	for <linux-man@vger.kernel.org>; Fri, 28 Jun 2024 10:35:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719570931; cv=none; b=t1W+lo2ZT3o0EzDQXIwtCdHni6P3gOUcx6VqiykGLxfWQIqvcEPVt0LJt1/uk9W1A4IENsbrisyoH0WEt5Qs1iGvxpO8Yu+JDGwDP2x7ixPZZ1w4m+n2ylw028nwiwEl+Ny7m6fRqbiV3GDBYIOZzuuCQbp13oKh6DrDhaDrjxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719570931; c=relaxed/simple;
	bh=j2yfmfbYnA7Yp0/MENevG4CqtEBnDD15GpgMUF9IdFA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Tr4ZLdEBOKEcrdn9bk9uL70/x25+Z43IEzot7rmN41DEkzIOKdGnepioBRJ/0V/WgLKusDHYMAkRjzGXEcvdAshcQP9ul1muEFE5I5QGUGp2X7JZ9/196lziKg3OHKUZp/dDsheNiskiAcrn3tkNnUt0kMMp5fTGYlz/9e2enWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p9aYbpNn; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 29E26C116B1;
	Fri, 28 Jun 2024 10:35:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719570930;
	bh=j2yfmfbYnA7Yp0/MENevG4CqtEBnDD15GpgMUF9IdFA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=p9aYbpNnQ3pVi+glduC+xDb7R80S8svn0TkRB8PfQR3lq/4h+p23WRlo5Q3FxpzOW
	 C1B7zn0VwKsyzH44Sv3cX0xuULt90DdfQpmq0WUeMnxuMiKPQvfk7MJJz+6TmNpg9/
	 /muP1zkCU5rpdi1dgj3U1fyiF/LoTAxU7Mxgf0RrplZzMOYKMRbmVK846/0LLjufi0
	 JdTmLWjLakb8YEp58vvc80BqCnjW/AdN+YKO8HnJYgo31UnbNX4q9SiQZqzg7/aPxf
	 25Tpd644fPiVvfpKbtqw7DBcbbYcEP9SkhvppPUU+8AE7WdFQo1uzrRPC4O8fWNNvr
	 kK7oiJc73uouA==
Date: Fri, 28 Jun 2024 12:35:27 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Bruno Haible <bruno@clisp.org>
Cc: linux-man@vger.kernel.org
Subject: Re: setcontext was removed in POSIX.1-2008
Message-ID: <qhi5oglxihr5ztjpp34bzgqh26l7nhegoja7hxj3xue2jrdzxz@34vhgndb5sql>
References: <28696710.B0YPrGVBQ4@nimes>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="npfenocnw5mcfsj4"
Content-Disposition: inline
In-Reply-To: <28696710.B0YPrGVBQ4@nimes>


--npfenocnw5mcfsj4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Bruno Haible <bruno@clisp.org>
Cc: linux-man@vger.kernel.org
Subject: Re: setcontext was removed in POSIX.1-2008
References: <28696710.B0YPrGVBQ4@nimes>
MIME-Version: 1.0
In-Reply-To: <28696710.B0YPrGVBQ4@nimes>

On Fri, Jun 28, 2024 at 11:08:00AM GMT, Bruno Haible wrote:
> Hi,

Hi Bruno!

> man/man3/getcontext.3, which describes getcontext and setcontext, says
> "POSIX.1-2008 removes the specification of getcontext",
> making it look like setcontext was still present in POSIX.1-2008.
>=20
> It isn't. setcontext is removed as well. See
> https://pubs.opengroup.org/onlinepubs/9699919799.2008edition/xrat/V4_xsh_=
chap01.html
> in the table "Removed Functions and Symbols in Issue 7".
>=20
> It's just the rationale section
> https://pubs.opengroup.org/onlinepubs/9699919799.2008edition/xrat/V4_xsh_=
chap03.html
> where getcontext is mentioned but setcontext was forgotten.

Thanks for the report!

This was fixed in

$ git describe --contains 4131356cdab8d37fc395ca5466a0401c8573380c
man-pages-6.04~26
$ git show 4131356cdab8d37fc395ca5466a0401c8573380c -- man3/getcontext.3
commit 4131356cdab8d37fc395ca5466a0401c8573380c
Author: Alejandro Colomar <alx@kernel.org>
Date:   Fri Mar 17 17:08:01 2023 +0100

    man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY: Reorganize sections
   =20
    -  Add a new HISTORY section that covers the history of an API, both
       regarding implementations and regarding old standards.  This was
       previously covered in VERSIONS, and in some cases in STANDARDS.
   =20
    -  Repurpose VERSIONS to cover differing implementations in _current_
       systems.
   =20
    -  STANDARDS is reduced to only cover current versions of standards.
       That basically means only C11 (C99 has been superseeded by C11; C17
       is just a bugfix of C11, so not really a new version), and
       POSIX.1-2008 (*-2001 was superseeded by *-2008; *-2017 was just a
       bugfix for *-2008).  The section also mentions for example 'Linux',
       'GNU' or 'BSD' when a non-standard API is Linux- or GNU-only or if
       it's (de-facto) standard in the BSDs.
   =20
    -  In some cases content that should go into one of these sections was
       in NOTES.  Move it from there to where it corresponds.
   =20
    -  In the SYNOPSIS, I added [[deprecated]] in some functions that I
       found are deprecated by the relevant standards.
   =20
    -  A few other related changes...
   =20
    Cc: Oskari Pirhonen <xxc3ncoredxx@gmail.com>
    Signed-off-by: Alejandro Colomar <alx@kernel.org>

diff --git a/man3/getcontext.3 b/man3/getcontext.3
index c9561fbf4..3a35afca1 100644
--- a/man3/getcontext.3
+++ b/man3/getcontext.3
@@ -157,9 +157,11 @@ .SH ATTRIBUTES
 .ad
 .sp 1
 .SH STANDARDS
+None.
+.SH HISTORY
 SUSv2, POSIX.1-2001.
-POSIX.1-2008 removes the specification of
-.BR getcontext (),
+.PP
+POSIX.1-2008 removes these functions,
 citing portability issues, and
 recommending that applications be rewritten to use POSIX threads instead.
 .SH NOTES

>=20
> Bruno

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--npfenocnw5mcfsj4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZ+ke8ACgkQnowa+77/
2zII5Q/8CkvRZrmO7Z05b3IkVAHICCpTM4ArL1EwhCm5NN5pf0IZDv2MLKFrlcR8
zePId7u/M6akNAoH5bTkBEQbC67lOCVwokOAlZHQeae7l8pU5pjhRtokf7fVpzgs
lOej8R4UATst1scO4Eqhz6TnX7848g3WK8glpyeldp0GxEHtC0qnb0OrjrAiop+a
vMkmKhdxSnFLzFmlFJo7hTyW5VO1mQnC2jjzayA5yUIzylvT+Myulm80ZtrdAo7P
6RT5SR6foz4vYccwg3C1609ObOPVkQk6eBp0ZCkduQSho8251vJfDk9StzgEUmgX
kA78aqkL08gEpEQ/a2KdRTavfmKuxSAmP3jepn/Ix5yLWGUrYrXUnGyCeDc4a+HN
trZ8s9CddVG1cPljH0gAYbTLFKcxpqZwjcEHbOwsygkR9fxC+ix04Y7C8n+kS1e9
V8QXZm53e5mA5fGdulAnXQbpOHfyaO5r1b0BvMRoUczWZhIj+Gf/Jh0OzOMo7vzi
LprBEdY6UorAkM6SNj4pNcqQkFiMma9T4KFQp+xcs7ankVN7Mawkx3envqZXh30B
XKA4Y949UD+rYZonilP4driL2Aj1Zz7oVwU8rBhZBywHSOShdJP88sTzIq5PT3+l
LDx/tYZ2MyMV/ohIztmukziZf0sfm/RzOz7EeHa7Wea3l5D3x5Y=
=pS+F
-----END PGP SIGNATURE-----

--npfenocnw5mcfsj4--

