Return-Path: <linux-man+bounces-5185-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id hwNoF6IIm2lxqgMAu9opvQ
	(envelope-from <linux-man+bounces-5185-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 14:46:10 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DECD16F415
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 14:46:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2168C300DF5C
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 13:46:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C5262AE68;
	Sun, 22 Feb 2026 13:46:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vz5bxUEM"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00B753EBF1E
	for <linux-man@vger.kernel.org>; Sun, 22 Feb 2026 13:46:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771767967; cv=none; b=paOLnTs12zI6I+0zq4j8d9VdFDr05Y5A8X8Z8f0QcI64ZskkCHPXVxdsBg+YlVC9bvPo5rz0uBbngsCK1KrTKby/lHZmx3MefAl8vqKcovqRyafBOhp0cHOW6Eb5fKoPiLPB1cBDbJi+wnQnSBtyHFLR/Z8wA5+/V2SIbSSlp3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771767967; c=relaxed/simple;
	bh=DjOU1lJt0DjFyQ8pjN8TISH6cfiLVyzlTIaTTiTC3Yk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=F3Mz1ZJVAxa1HOe+EglPtEHrvHb0qW+UqaserSuxsqbxqcdxBhTqkTM9PfhOp+GqTGvS+JUQyvyxgDzOv/7jyudx/mspHyNNwiY8L4wJbgYJkKJzMhbagc+zb2M0iSqoraDAcZ5AV7jcSnA3OrBmvfZnV27pOH1KRL7RKKi1zTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vz5bxUEM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 592A4C116D0;
	Sun, 22 Feb 2026 13:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771767966;
	bh=DjOU1lJt0DjFyQ8pjN8TISH6cfiLVyzlTIaTTiTC3Yk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Vz5bxUEMEKeYzHoso72+/1pDbxJYWsXeJn5rLmL775XN3f7WzoAJwUpmZaHisa31Z
	 V6qwdaCWOIEY+xxUsak5jMPsEWqBNLbjPlCZpihkQlLVZnwvqi7OzulZsOeId+1o8X
	 3jXERUyK1OnbO8Cqdf8z83bQjCVUDZk/cPB+CjltaFkAz0oZCuvosRIv1QTdUorIR2
	 HHNT72mSpLE+vyKgejPuorpXEl1i8KEjOR7rQ0UfSRo0TYUZiRimMuKr95pWKIAH+n
	 iGQUdncsDUzcoyE0Pb1S4A/wezYI+wX9t1tGaC+IeIuPMILXsICvyN5TrI5zxD6NKH
	 R8lkoHXWSRACA==
Date: Sun, 22 Feb 2026 14:46:02 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org, bug-gnulib@gnu.org
Subject: Re: [PATCH v1 1/1] man/man3/strnul.3: New page
Message-ID: <aZsIJhUxHa1L1cme@devuan>
References: <cover.1771686088.git.alx@kernel.org>
 <7b2c4b363f656b51b19d23eec172b3825e931d8c.1771686088.git.alx@kernel.org>
 <a6bffb3c-6b81-4ed1-a13c-d111fd5948fc@cs.ucla.edu>
 <aZrmh5XLcUcKJz4b@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wfydm5squ2ulsfsq"
Content-Disposition: inline
In-Reply-To: <aZrmh5XLcUcKJz4b@devuan>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5185-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,alejandro-colomar.es:url,ucla.edu:email]
X-Rspamd-Queue-Id: 9DECD16F415
X-Rspamd-Action: no action


--wfydm5squ2ulsfsq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org, bug-gnulib@gnu.org
Subject: Re: [PATCH v1 1/1] man/man3/strnul.3: New page
Message-ID: <aZsIJhUxHa1L1cme@devuan>
References: <cover.1771686088.git.alx@kernel.org>
 <7b2c4b363f656b51b19d23eec172b3825e931d8c.1771686088.git.alx@kernel.org>
 <a6bffb3c-6b81-4ed1-a13c-d111fd5948fc@cs.ucla.edu>
 <aZrmh5XLcUcKJz4b@devuan>
MIME-Version: 1.0
In-Reply-To: <aZrmh5XLcUcKJz4b@devuan>

On 2026-02-22T12:21:34+0100, Alejandro Colomar wrote:
> Hi Paul,
>=20
> On 2026-02-21T17:48:30-0800, Paul Eggert wrote:
> > On 2026-02-21 07:02, Alejandro Colomar wrote:
> > > +.BI char\~*streq(const\~char\~* s );
> >=20
> > I see you fixed the misspelling of "strnul". However, there's a more
> > important issue here: that's not the type of Gnulib strnul. Gnulib strn=
ul is
> > a qualifier-generic macro, and (unlike C23 strchr) there is no underlyi=
ng
> > function named "strnul". This needs to be documented clearly.
>=20
> Yup, if there are no plans to have a function, I'll document the
> const-generic macro.  Thanks!

I've pushed the following patch:

	commit e29efc9b6bdbb644a44c2b9e3d6bfbf06ce4ec62 (HEAD -> contrib)
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   2026-02-22 14:34:36 +0100

	    man/man3/strnul.3: SYNOPSIS: Use QChar
	   =20
	    Reported-by: Paul Eggert <eggert@cs.ucla.edu>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man/man3/strnul.3 b/man/man3/strnul.3
	index 714b4d191cae..f84e13fdc82b 100644
	--- a/man/man3/strnul.3
	+++ b/man/man3/strnul.3
	@@ -12,7 +12,7 @@ .SH SYNOPSIS
	 .nf
	 .B #include <string.h>
	 .P
	-.BI char\~*strnul(const\~char\~* s );
	+.BI QChar\~*strnul(QChar\~* s );
	 .fi
	 .SH DESCRIPTION
	 .BR strnul ()

I might document QChar is a separate page, eventually.  I'm still
thinking about whether to do it or not, and what to document in such
a page.  Patches are welcome, if anyone has some ideas.


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>

--wfydm5squ2ulsfsq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmbCJoACgkQ64mZXMKQ
wqnyAhAAmSyDBlMkhw18C5zqRp9Eaxxiho/jBoFIBLJp4qMNzcxar/IX8eRCcScq
7LBOEiCUn3YnWRZ4Qnwprv35q0wrOwrXH0yA0atR9RJc9MvjBZI0vDt1h+Zs+6fT
YMPjdgD1Z1wwUgB2jrkGyQjXLWXnSayCPUIwwLH/9J6EBjvudVaOhT0zN2xt0OnJ
7jgr1GNANHxndQCPuNqQJwfK2TlAeOKGDt8oorkmNqK9VZITl9Pz/xtgkp8GQHZr
NrtnZyAFjCmTIJxmdZmdLh5CD5UszXnoZQ6I70WBPiWnAhbRZgYTjJrTvdpw+pgp
0YsAGxQIjOTrBDeLJ1ICy9STj8AgJpScfWPwlk+346dPKhKKwBf9VslnzAYueQ3x
EzUxk7eyrlD2zyq3lh1dHzsvxl9YUwxIB7yWtG4Y1M4hrpfGHLWJLuETcw4RhIkp
PkYyWD6rJhTbYq1Rrey6tEZ9+SD7Riu6UQlpmJLaIzSJ7jJirt7NmpZp2avNlbLi
dGMAF+gh3KChoa8xQQrUVSgfSX3qap2Q/4XMDY5v9zdPiU8fpdh5tIVZnET8F4zX
V6fl8hkpfSHyTdRWOhdaPhWrOZ6ZWq48blCXwOINc/p40RfMjh3xszVs9nP4kdZq
1j0CNholsCpAJZrbWQWaVpNstRVIz778jOoxm+YJPo56lHnxXM4=
=jOYc
-----END PGP SIGNATURE-----

--wfydm5squ2ulsfsq--

