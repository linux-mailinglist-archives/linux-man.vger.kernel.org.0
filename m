Return-Path: <linux-man+bounces-5142-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +KxBN7Aik2kX1wEAu9opvQ
	(envelope-from <linux-man+bounces-5142-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 16 Feb 2026 14:59:12 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 078A4144544
	for <lists+linux-man@lfdr.de>; Mon, 16 Feb 2026 14:59:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C96C4301E0C4
	for <lists+linux-man@lfdr.de>; Mon, 16 Feb 2026 13:43:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 686BE2FF65F;
	Mon, 16 Feb 2026 13:41:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C78cLBSc"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2697030DD0C
	for <linux-man@vger.kernel.org>; Mon, 16 Feb 2026 13:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771249315; cv=none; b=kWnrMxoQo8a1lL4Y3lNIVaq+xwUFZvplEG9qHriI9tbeBXlNQCZbvfibMabv+Q8Eq+A4p5S02QU3/IEtyRyzPd9oRBwhfWSrjO+qnqCEt6Zq8nTtdM8elBIVFJvgMEjZ3L8+AePmwNKzwJdeRZcax90Hp7UfnHeE1DnuBm5nqM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771249315; c=relaxed/simple;
	bh=azOT+kJRu0+9M9arC8lP6e88y6heK9mJ2SU9nbvKDHs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Mr7l2MlPue7eMsQEzJPe/wSPOdoiYlfeGttOU+Vz2nIk4U2RlpmOUq4DKllEAjtBqY/cFyMQCeCJKvuJGhS3mAEywukPjKTqR2vSb2oUtIspfg8niSpl3WEVe4a6P4WIGQLwJ6B/zLoNUOFqeNaD03Br6RMNY+UE+DzrK9DN76g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C78cLBSc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1EE88C19423;
	Mon, 16 Feb 2026 13:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771249314;
	bh=azOT+kJRu0+9M9arC8lP6e88y6heK9mJ2SU9nbvKDHs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=C78cLBScvKrqjhrerJq3GnjNrUk4uRnVXkDnP8I2fUtiOAbK/5WAvKSCnsdpzj398
	 uR1s0bpPbGRRtERE8MHfxP6/zt/WdIspiIipb7ATuLUfwWAvCdfgWSBCBrtqCJZ8tw
	 56Ikd+pTFRPufFWYjS2WkrTBDv1v7+zXLsU5fWZRfMNLwbcu48l6fNF2rZzLGfb4YU
	 ku1uaFTNpi6c1/C8KlKVBFAY5vFQP4z2BjPlYeB6RisIDhvnozzJQQIm0DG/CnXvBd
	 3lfkYc5DVX2S+0YKuutX/L+yhAgw25McHyDC+hcDQ5/8vy1fYXxeSk6OhdfeGD3n4a
	 HBLCFSPtsFFtA==
Date: Mon, 16 Feb 2026 14:41:51 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <dev@sethm.id.au>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/1] man/man2/mincore.2: HISTORY: Update appearances
 of mincore(2)
Message-ID: <aZMdDCM62nbBhGiM@devuan>
References: <cover.1769429341.git.sethmcmail@pm.me>
 <cover.1771232583.git.dev@sethm.id.au>
 <b1b6f011a7d36cda53abe8c561da44bff08d381b.1771232583.git.dev@sethm.id.au>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ah44z5mdxxtvct2f"
Content-Disposition: inline
In-Reply-To: <b1b6f011a7d36cda53abe8c561da44bff08d381b.1771232583.git.dev@sethm.id.au>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5142-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,openbsd.org:url,netbsd.org:url]
X-Rspamd-Queue-Id: 078A4144544
X-Rspamd-Action: no action


--ah44z5mdxxtvct2f
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <dev@sethm.id.au>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/1] man/man2/mincore.2: HISTORY: Update appearances
 of mincore(2)
Message-ID: <aZMdDCM62nbBhGiM@devuan>
References: <cover.1769429341.git.sethmcmail@pm.me>
 <cover.1771232583.git.dev@sethm.id.au>
 <b1b6f011a7d36cda53abe8c561da44bff08d381b.1771232583.git.dev@sethm.id.au>
MIME-Version: 1.0
In-Reply-To: <b1b6f011a7d36cda53abe8c561da44bff08d381b.1771232583.git.dev@sethm.id.au>

Hi Seth,

On 2026-02-16T21:45:30+1000, Seth McDonald wrote:
> mincore(2) was implemented in FreeBSD on 1995-10-21,[1] and was first
> included in the FreeBSD 2.2 release on 1997-03.[2]
>=20
> It was implemented in NetBSD on 1999-06-15,[3] and was first included in
> the NetBSD 1.5 release on 2000-12-06,[4] (despite the commit message
> stating its intended inclusion in NetBSD 1.4.1).
>=20
> It was implemented in OpenBSD on 2001-03-09,[5] and was first included
> in the OpenBSD 2.9 release on 2001-06-01.[6]
>=20
> All other listed systems are taken at face value and rearranged in
> chronological-ish order.
>=20
> [1] Dyson, John (21 Oct 1995).  "Implement mincore system call."
> FreeBSD source tree (Git repository).  Commit
> 02c04a2f6c83ee28ed637d120296d04da8f03372.
> [2] The FreeBSD Project (29 Nov 2025).  "Prior Releases =E2=80=93 EOL".
> <https://www.freebsd.org/releases>
> [3] Thorpe, Jason (15 Jun 1999).  "Several changes, developed and tested
> concurrently:".  NetBSD src (CVS repository).
> <https://cvsweb.netbsd.org/bsdweb.cgi/src/sys/uvm/uvm_mmap.c?rev=3D1.22>
> [4] The NetBSD Foundation (2026).  "History of NetBSD releases".
> <https://www.netbsd.org/releases/formal.html>
> [5] art (9 Mar 2001).  "More syncing to NetBSD."  OpenBSD src (CVS
> repository).
> <https://cvsweb.openbsd.org/src/sys/uvm/uvm_mmap.c?rev=3D1.7&content-type=
=3Dtext/x-cvsweb-markup>
> [6] de Raadt, Theo (1 Jun 2001).  "OpenBSD 2.9".
> <https://www.openbsd.org/29.html>
>=20
> Signed-off-by: Seth McDonald <dev@sethm.id.au>

Thanks!  I've applied the patch.

I had to amend it with this:

	diff --git i/man/man2/mincore.2 w/man/man2/mincore.2
	index c3ff474cf654..015dd281096c 100644
	--- i/man/man2/mincore.2
	+++ w/man/man2/mincore.2
	@@ -123,7 +123,6 @@ .SH HISTORY
	 NetBSD 1.5,
	 OpenBSD 2.9,
	 AIX 5.1.
	-.P
	 .SH BUGS
	 Before Linux 2.6.21,
	 .BR mincore ()

as CI reported an issue:

	...
	remote: MANDOC		.tmp/man/man2/mincore.2.lint-man.mandoc.touch
	remote: mandoc: .tmp/man/man2/mincore.2:126:2: WARNING: skipping paragraph=
 macro: PP empty
	remote: make: *** [/home/alx/src/linux/man-pages/man-pages/contrib/share/m=
k/lint/man/mandoc.mk:30: .tmp/man/man2/mincore.2.lint-man.mandoc.touch] Err=
or 1

You can check <CONTRIBUTING.d/lint> in case you want to check these
issues.  However, I don't mind sporadic issues in patches, since my CI
catches them anyway, so I can just amend them when I find them.


Have a lovely day!
Alex

> ---
>  man/man2/mincore.2 | 13 ++++++++-----
>  1 file changed, 8 insertions(+), 5 deletions(-)
>=20
> diff --git a/man/man2/mincore.2 b/man/man2/mincore.2
> index 3fafdf0c8f76..c3ff474cf654 100644
> --- a/man/man2/mincore.2
> +++ b/man/man2/mincore.2
> @@ -114,13 +114,16 @@ .SH ERRORS
>  .SH STANDARDS
>  None.
>  .SH HISTORY
> +SunOS 4.1,
> +4.4BSD,
> +FreeBSD 2.2,
> +Solaris 8,
>  Linux 2.3.99pre1,
> -glibc 2.2.
> +glibc 2.2,
> +NetBSD 1.5,
> +OpenBSD 2.9,
> +AIX 5.1.
>  .P
> -First appeared in 4.4BSD.
> -.P
> -NetBSD, FreeBSD, OpenBSD, Solaris 8,
> -AIX 5.1, SunOS 4.1.
>  .SH BUGS
>  Before Linux 2.6.21,
>  .BR mincore ()
> --=20
> 2.53.0.1
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--ah44z5mdxxtvct2f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmTHp8ACgkQ64mZXMKQ
wqnKtA//b1cJGZqbEB2BCp0euNGFXP4I5knaim3o/L79RqbiNu3pr5ust3Kg9bt3
D1NJkmwIF8xOeao9+YBuDD3M+gBLb1F6AJKJQE1HldQ65KK/OyxfRF01dfR7K4wR
Ph/8+PbFIiG19PoYhbxJsq9+Smk6O/aJilL45caqauizEaKtiRTPYOHBudu3AA6q
T6/K9Z4+G6F9Ie7zth+kUKWSjOquKMdKdX+gpzxhIcgzXpn8Ie0b4OQbiwNbEPFe
RkuQG8jiwPH8dHnYLtB22WA3pl30WJwsxx4hDJ86a8OcEvSyfjuI20ad3JDUNSXg
ikh3rT+0pmYaTrzMD759my7olsH8kCLZ+5LA8djmF2wOjUBNnB/I92KWmLQGo8Vx
LUYv/su4D2HqFNiLX1pq7/tXrqhCR4g6KmGAn6NftbPuarqAEGYYSmTnX1/Dz3y3
JPTgyxy6C+ekVIidW3tOwiz6aDaq68cLLLP1eOHkMbhET+SFttskkesLp32q+vzw
MeSbbafiRQBWHVIDstFSI22HECFPatGupr8BM0Z0HkvTDWZrWSxVfZSg1XT0Si9z
kvYVk1GFSnyJawI8RhssM8QQHGQT7dl1QDARgRtLw3Kc1LhJYsdP+Cq3kvED3Pai
H6lGlXSYjzffTHFkwmjM52Y8jyOW3s6dJ8IM91wPQjDJtj5Exu0=
=UFHo
-----END PGP SIGNATURE-----

--ah44z5mdxxtvct2f--

