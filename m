Return-Path: <linux-man+bounces-4527-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A1FCDCBA8
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 16:39:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8439C30505B5
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:37:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41FDC2DE6F1;
	Wed, 24 Dec 2025 15:37:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lvPu19Dw"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CC57242D6A
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 15:37:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766590643; cv=none; b=JFVrfk8GM/Vcek8xCG8HPTU7S0w0UDyHGq7dfBaqMqxDFLWk2410GJXCmklK1Y85OFfjpOtr1si5q/+tQWjbquyCXSvLxmI0A+vklnMrKk2ojuNfThlo8u3TFuWEsgrzLPArMQMhvI1z72ffftRT0OyCqV9iDEkfhE+z2Gvv/hI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766590643; c=relaxed/simple;
	bh=QznMMSiUhkWanr7IPu+SnjAj14/+x8bbk74Vs/ENadg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WBu7rUPjk+njm4b0xAXBUMsBUCkFz7bXo+Fob/DMFtFSmQqA2cR9gDjJGjE4KH3GO+hO7qtzqcSZhgYNUmEwQa5k/vHwM7HBo2FUC7Hz0e7z3S50ynC+VRxbuG/E9wjOTx4QCUE6ZZIhhn50Ivwt2hxa2GatByV7t1OxHDHAvhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lvPu19Dw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0243C16AAE;
	Wed, 24 Dec 2025 15:37:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766590642;
	bh=QznMMSiUhkWanr7IPu+SnjAj14/+x8bbk74Vs/ENadg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lvPu19Dwmef0ge6N/UTw7fGwQ2YTlWn2ldnPvTKX3S77OP2L3lp3dea1k/j5KDFHX
	 EQJ9b4KS34cLqWOTiT2b8AhqdfCMOTa7OVe1MO2EQl6yGMzT3OJPiay4Pzt22f6ZXp
	 QyCvkS0Thkzx2jU3cIkq7dJseBImQaELwythXuiQboQtKPLknTtG/POahuIRg4oX6f
	 dQpmjMm4ScJQMJzDr4hQHBecAhvBR3qNEZtxBm7pO4Rf3YcrEzW6OjgBGjdhqbJ6Md
	 cFiFS0A4UsBlCZ2hsKV9MdoDW4ygKbfSjthoJUiov6MOvTcEbarSQYiPwtxssXwYeU
	 VIYZYkJA6/9LQ==
Date: Wed, 24 Dec 2025 16:37:19 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page PR_CAPBSET_DROP.2const
Message-ID: <aUwIpK0YjUsvfSKk@devuan>
References: <aUv63R0KGppYAaZx@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="khp7gzwbjm75b7w2"
Content-Disposition: inline
In-Reply-To: <aUv63R0KGppYAaZx@meinfjell.helgefjelltest.de>


--khp7gzwbjm75b7w2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page PR_CAPBSET_DROP.2const
Message-ID: <aUwIpK0YjUsvfSKk@devuan>
References: <aUv63R0KGppYAaZx@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aUv63R0KGppYAaZx@meinfjell.helgefjelltest.de>

On Wed, Dec 24, 2025 at 02:38:21PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    B<PR_CAPBSET_READ>(2const)  B<libcap>(3), =E2=86=92 B<PR_CAPBSE=
T_READ>(2const), B<libcap>(3),

Already fixed in

	commit f16c1222ff1541fda69e45aab81e537a6cd76ff6
	Author:     Alejandro Colomar <alx@kernel.org>
	AuthorDate: Sun Aug 24 22:05:06 2025 +0200
	Commit:     Alejandro Colomar <alx@kernel.org>
	CommitDate: Sun Aug 24 22:21:14 2025 +0200

	    man/man2const/PR_CAPBSET_DROP.2const: pfix
	   =20
	    Reported-by: Helge Kreutzmann <debian@helgefjell.de>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man/man2const/PR_CAPBSET_DROP.2const b/man/man2const/PR_CAPBS=
ET_DROP.2const
	index da4e67b94..38aa11677 100644
	--- a/man/man2const/PR_CAPBSET_DROP.2const
	+++ b/man/man2const/PR_CAPBSET_DROP.2const
	@@ -53,6 +53,6 @@ .SH HISTORY
	 Linux 2.6.25.
	 .SH SEE ALSO
	 .BR prctl (2),
	-.BR PR_CAPBSET_READ (2const)
	+.BR PR_CAPBSET_READ (2const),
	 .BR libcap (3),
	 .BR cap_drop_bound (3)

>=20
> "B<prctl>(2), B<PR_CAPBSET_READ>(2const)  B<libcap>(3), B<cap_drop_bound>=
(3)"
>=20

--=20
<https://www.alejandro-colomar.es>

--khp7gzwbjm75b7w2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlMCK8ACgkQ64mZXMKQ
wqlJlw//QJnZR5Kvfu65LMpkSxvisD8sRRVD/ZEWvlU2Avv2s+ViWnIA9jiGDV4f
NGgC1aQYp0Tz1/i+IqMDcpgmfszbFj75u2HXD5pmUUr2a/3qgscfa7qhfZJLtzF4
9OI9Lw3sHT7Ws56sKyKMmFwSSCENw3M9iuXrHx/ZZhpeXnYAcZgcMmx+2BJaPGAl
sd0PNM8wOk35X7YCEbpNqY5ds50JQw01JY7TxTA+k/mdFUiU4kvyFlH4is4foElK
FrjVG23OhVA0juFHB+6XyR8WOI3jP4Egc0nNXg9VA1AH7VvX+N8h3hTXknbmcp4Y
392hU367SMjRnTTPxLob70Tr9hTfyPVO0HvOz3Xix3C6yR1y99qxo+UgydqUVkay
BJP5lOrtQD7qc3XhnjRVw9f6lJLDeI0rMaFgnwapI0u46EM3J28C4w2OPU88Sn1l
LooBJXQTNUKgDM92EjHCv8TGrIiRLNc2NCnJuYdu03u3qYl5cMmjcfuMrCdkFe9C
OyiwZdxH8FbAJvFbmg8ZNg4KccvzDNkCvgvSIqWZpvPtZ2miZJpR+i6eQ/FV8pt9
txnN+ZKpzQiYINVXtKMPzausfnoyO20JwMkHE4px4+ljgaM/vd/SfZAAAp6pzArq
8a1/hGCaMGsnvzQMDR58wmxLK9qLLO7WhgOkHIHo7zKUNSElBc0=
=M48w
-----END PGP SIGNATURE-----

--khp7gzwbjm75b7w2--

