Return-Path: <linux-man+bounces-5281-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yDzlH3JgvWl09QIAu9opvQ
	(envelope-from <linux-man+bounces-5281-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 20 Mar 2026 15:57:54 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 216C72DC22E
	for <lists+linux-man@lfdr.de>; Fri, 20 Mar 2026 15:57:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id ED90C3062840
	for <lists+linux-man@lfdr.de>; Fri, 20 Mar 2026 14:49:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B645A28643A;
	Fri, 20 Mar 2026 14:48:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C2tD/89y"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79FE93783CB
	for <linux-man@vger.kernel.org>; Fri, 20 Mar 2026 14:48:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774018106; cv=none; b=iEsbp3KGm0e1CLo0BDwWOQwoKIk1qPi/kTrKFt1CvAV9L7Ng74Xp6qrSyCLW8b6ZE2BACaDMJd/aM2nzCnKzsB3h1S0nsmvBYbOgtNa+rJZlSpcJ9G7gE+WpcdB6JgUU4TVXCKhRb8WG+GUESMqyBELlEc8wI6Uqaf76JKerVn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774018106; c=relaxed/simple;
	bh=RmNy8ZbWE61ZCwyBSsDCnn521mwfCQea7yFTMO/efYs=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PxxNs5eDZkz/OlkgnVExOOWFcE6cQCr1ypZya+aurMvGhEvApWGU0qOG0MVvYIkKRJuUcmDx5sG1YzkOWKCPAwNYUfw45dWhXkdXIgzK3JrgezEYYVd+8ww69X1ryAUvUFFeUOnNfAHbRL8FaE9BAfv54wZo+Eu4zd1c5F9hQa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C2tD/89y; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B06F2C4CEF7
	for <linux-man@vger.kernel.org>; Fri, 20 Mar 2026 14:48:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774018106;
	bh=RmNy8ZbWE61ZCwyBSsDCnn521mwfCQea7yFTMO/efYs=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=C2tD/89y18pucd0xvbMMaIB6aGUYfB2lCEShrrSgYH3vl9/f4pdjpZHk3ujIpSear
	 tmhB4moJ7DB6O32J4V36UAqhgbpL+CoZq00UghZ/C+GWdSgdLTKEPRKzslpLqD/Ks5
	 W1SltQJTuBs0Jm68IsZIxRbwXfrjb3UpNv+dmrAgaSJ6LoWtiHPv2RbqBBSdV5yzc9
	 HGZSgoOtUccK9odp2xHqxCQU+iN5km4rytbekOkD+a41SPc/f3WHgJdVfCEu6QgQBC
	 hbch72r+pg2uW/+IbjMLK8dfkwtboebXfnnEnD/QiHcPvRl+WyEoWmgoHCASW2EDoB
	 f/Doq8rgcfZWA==
Date: Fri, 20 Mar 2026 15:48:23 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Subject: -utils binary package (was: man-pages-6.17 released)
Message-ID: <ab1dAyK2kFtxnxO6@devuan>
References: <aYy41v6tYda2Qc_1@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yewd33zkmsovhi7h"
Content-Disposition: inline
In-Reply-To: <aYy41v6tYda2Qc_1@devuan>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5281-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 216C72DC22E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--yewd33zkmsovhi7h
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Subject: -utils binary package (was: man-pages-6.17 released)
Message-ID: <ab1dAyK2kFtxnxO6@devuan>
References: <aYy41v6tYda2Qc_1@devuan>
MIME-Version: 1.0
In-Reply-To: <aYy41v6tYda2Qc_1@devuan>

Hi,

On 2026-02-11T18:57:19+0100, Alejandro Colomar wrote:
> Gidday!
>=20
> I'm proud to announce:
>=20
> 	man-pages-6.17 - manual pages for GNU+Linux

[...]
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D NEWS =3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> This release adds several new programs.  We recommend that distributions
> package all of our src/bin/ scripts in a separate binary package, called
> something like manpages-utils (this happens to be the name I'd suggest
> specifically for Debian, for consistency with manpages and
> manpages-dev).
>=20
> -  src/bin/grepc
> -  src/bin/grepc_c
> -  src/bin/grepc_mk
> -  src/bin/mansectf

I have some updates from distros:

-  Arch added the package manpages-utils immediately.
-  Debian has now added the binary package manpages-utils in 6.17-2.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>

--yewd33zkmsovhi7h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmm9Xi4ACgkQ64mZXMKQ
wqm/pw/+I/zY7PhbaIeRSWPbbTOtJv5LqFT+gymRNnvVRpp8wFrrNsxHtsCMJ9bb
esgEb6lmPjebCnKMGLL9SjIurRbvJ9JNOQvvPVa0Q85CPFOmo8p4L64Z4o9zquot
bZAVjl/lPIRv3xMMVTHd3Np4OWhIIrYdgjvhYnnRvWmKZmHN04CPbWeJT/MzpVbD
7mPRwUgkLY71Ev8nvEWuSNh8nY0mP8aWGSVcTOyyjw++8Pof1psUA15XYg4LuSbO
7Y+Ybvcu03wSsXEfS7mWysSKMsJ8ypamBvnaTdGkS6DlCi6MIlk3vWLYFV1fITfX
ubYAQEhi0pMyig0TZqeEUbjP6Y1/iN1C7mW7d/Eg+RrvEOr+KaHnlsffo4Fxvu/K
PRCDFgTUxX3kslrprg9b3+UfxAJXTrhP9PU5fXnDTSKtO0LCxsY5md89+UPrGLO9
n1bqWGyfPaUFf0O7nEzKeIyBw/P6CZypFkjKDM5biOVYgxCrbmA/lAY4t6Oqn7O4
m3Nb63QNkmPpBNucNnerxjh9oM58Il/cWDfD2ePT8n/AEfVfn0l5ob0LUMKa7QIJ
0YlgdfBGlg5c9DyQHGgWeLml2eZyaOFIKEAr0/quQ8AQDaYAg49lFgVMigsea1XD
7xg/HbDwZn1+QUBvnyq5+JYSwcQREpqVUjYv0bgUB2GXFAOpEjw=
=8SnZ
-----END PGP SIGNATURE-----

--yewd33zkmsovhi7h--

