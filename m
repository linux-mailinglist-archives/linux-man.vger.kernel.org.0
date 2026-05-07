Return-Path: <linux-man+bounces-5467-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UCL+Ki39/GmxVwAAu9opvQ
	(envelope-from <linux-man+bounces-5467-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 07 May 2026 22:59:25 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ABBBC4EF0FF
	for <lists+linux-man@lfdr.de>; Thu, 07 May 2026 22:59:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9D4263001CD4
	for <lists+linux-man@lfdr.de>; Thu,  7 May 2026 20:59:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAA84331A46;
	Thu,  7 May 2026 20:59:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CVpFPpZq"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A0D7274B53
	for <linux-man@vger.kernel.org>; Thu,  7 May 2026 20:59:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778187558; cv=none; b=g/zkxNttefBdLrgFX3uomC1hLqWhm0giKAePM6fpnsxAKg+frq29ZFLmKnt7uTgO1hwh9iLvSrt65HzHILSY1N6zZp9RBpmGI/h4k64+gUR4B8x31OEsk5V3uOFWEO/mjFICpiiVMjkyzv7500zsFUWigLc9wzHL5b8ZC+pzaH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778187558; c=relaxed/simple;
	bh=qmdfUfTIeyQTXMID3ULJeSUxWWlg1Euf+2xm1rfoLOg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Hs7V6BNxKyWXu46i0wFj5SxlE/G6kDVJS75PQPZJ3QQ1xN5sd/1zt72NBZYRfWQs5J2kRMgeyBraxrhBblCBWnK1+G4IsaKdw6wgHdCNcYwkIBQlubPEJY1dmDW5Mu22JvNoA6S4GNBEHb19RtQs82FjPJsvxf/s8mkMfpoS6tI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CVpFPpZq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 567B1C2BCB2;
	Thu,  7 May 2026 20:59:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778187558;
	bh=qmdfUfTIeyQTXMID3ULJeSUxWWlg1Euf+2xm1rfoLOg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CVpFPpZq08e2yzc1vy3ueDloCQ4ulhdv1Zox1P+lZoyCqygbAPgPqVPXDn+7l+QPt
	 oO5w3Kve8qXls1YzIGWXJsbiTFJkG/yRhSpgt8UgGb5axQ5EJVIrZc4sADjkngM7iw
	 jwlfxgCXzVurP21tOgm/3x+unYiFz8rxZwmbwU79hfkep9VblrukE50dXHmcGl/PCa
	 MHh3DtHMuEr18SMH5M2pS4fuBwP3RFS8+OJs6/AqGgjTvjKoK/GCrxq4iYN16DSxXV
	 SxnxhkePJmg3n5Dfg6yjUV5R8SNKP+irY5li+x6JC7FG+6k2G2lWer/M3rnPmlZKNR
	 9IoEQo5EhnhFw==
Date: Thu, 7 May 2026 22:59:14 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Patsy Griffin <patsy@redhat.com>
Cc: linux-man@vger.kernel.org, Carlos O'Donell <carlos@redhat.com>
Subject: Re: [PATCH 2/2] man/man5/core.5: Update compression format for
 systemd-coredump
Message-ID: <afz6oASktRUsElC8@devuan>
References: <20260507190508.386186-1-patsy@redhat.com>
 <20260507190508.386186-2-patsy@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kadh3zx4ue2wst4x"
Content-Disposition: inline
In-Reply-To: <20260507190508.386186-2-patsy@redhat.com>
X-Rspamd-Queue-Id: ABBBC4EF0FF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5467-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action


--kadh3zx4ue2wst4x
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Patsy Griffin <patsy@redhat.com>
Cc: linux-man@vger.kernel.org, Carlos O'Donell <carlos@redhat.com>
Subject: Re: [PATCH 2/2] man/man5/core.5: Update compression format for
 systemd-coredump
Message-ID: <afz6oASktRUsElC8@devuan>
References: <20260507190508.386186-1-patsy@redhat.com>
 <20260507190508.386186-2-patsy@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20260507190508.386186-2-patsy@redhat.com>

Hi Patsy, Carlos,

On 2026-05-07T15:05:08-0400, Patsy Griffin wrote:
> As of version 246, systemd-coredump defaults to zstd compression
> for core dumps, rather than lz4.
>=20
> Signed-off-by: Patsy Griffin <patsy@redhat.com>
> ---
>  man/man5/core.5 | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
>=20
> diff --git a/man/man5/core.5 b/man/man5/core.5
> index 4da5819b6..ee34eded3 100644
> --- a/man/man5/core.5
> +++ b/man/man5/core.5
> @@ -515,9 +515,13 @@ program:
>  In this case, core dumps will be placed in the location configured for
>  .BR systemd\-coredump (8),
>  typically as
> -.BR lz4 (1)
> -compressed files in the directory
> +.BR zstd (1)
> +compressed files
> +.\" Since Systemd 246:
> +.\" commit ef5924aa313d1892bb491c870ba3c429454dfc76
> +in the directory
>  .IR /var/lib/systemd/coredump/ .
> +Compression on or off is configurable via coredump.conf(5).

Thanks!  I've reformatted it, and moved the comment to the commit
message, where it's less noisy.

	commit XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
	Author: Patsy Griffin <patsy@redhat.com>
	Date:   2026-05-07 15:05:08 -0400

	    man/man5/core.5: Update compression format for systemd-coredump
	   =20
	    As of version 246, systemd-coredump defaults to zstd compression
	    for core dumps, rather than lz4.
	   =20
	    systemd.git ef5924aa (2020-05-04; "coredump: add zstandard support for=
 coredumps")
	   =20
	    Signed-off-by: Patsy Griffin <patsy@redhat.com>
	    Message-ID: <20260507190508.386186-2-patsy@redhat.com>
	    Reviewed-by: Carlos O'Donell <carlos@redhat.com>
	    Message-ID: <eb5c6c20-48a3-46a9-9918-12beffb8e6bc@redhat.com>
	    [alx: Minor tweaks]
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man/man5/core.5 b/man/man5/core.5
	index 4da5819b..7b02bd5b 100644
	--- a/man/man5/core.5
	+++ b/man/man5/core.5
	@@ -515,9 +515,11 @@ .SS Core dumps and systemd
	 In this case, core dumps will be placed in the location configured for
	 .BR systemd\-coredump (8),
	 typically as
	-.BR lz4 (1)
	+.BR zstd (1)
	 compressed files in the directory
	 .IR /var/lib/systemd/coredump/ .
	+Compression on or off is configurable via
	+.BR coredump.conf (5).
	 One can list the core dumps that have been recorded by
	 .BR systemd\-coredump (8)
	 using

Carlos, I've kept your Rb tag, as nothing has changed meaningfully.
Would you all mind confirming this is okay?


Have a lovely night!
Alex

>  One can list the core dumps that have been recorded by
>  .BR systemd\-coredump (8)
>  using
> --=20
> 2.51.1
>=20

--=20
<https://www.alejandro-colomar.es>

--kadh3zx4ue2wst4x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmn8/R0ACgkQ64mZXMKQ
wqm/Og//cqPnVEFxqsRb710WppQ6qW9eA+cY5kmCCgm3clrze5Ddye4MSTdFsacs
+7nlpGR8adFW4KooGYkIZsY+zDCCvWEBVsLIhmyg4/Fta6Hy/6XVsGinZ7lNe6Jo
lEFIZ1UFGe8mTw0SS31bnuUJT0rmBGDEzIJz7dmWXNeuwsYHu/4Iw0Okuwu19hy0
/wXBzUcn033ecYXuw84tdaoxM9ZW8R3GWfzS7Ye/gkQ7ZKfYyVTaCAbJLGFCBYox
L7uCmFzaqgGyndfS7DGi+oOrWviegN+mmgVnQ22cLZFGOq8ZPOSNWQV9PlRZiQH2
xhZACzz3khwyaX9gVCieUvbbdR5MCJARySDWQp4QKyxZo968OjOOrvZhY8IGcxoR
C4ib8ESkKOaaPLCf7AMqx5weibJ9PedBfwO20rAdvojs3BvxlGaebMH3fyO2YZ6T
8Qu+FBRAfhDt92tdmkY9l3NCEv3CMpsSGVrf25+6jBcgW1C66jIt6ateXPXZbPW9
2iBlHS6NEn9ltPXiLytBqt8TBib50L1b21qE9CxhtW2HbrMSzXGv1vLPZf8mAPf0
IH5D0wpbw6IlnaH/f0v4ifId9TFXdK/9I3lSCf73FFEruJG7IGrHiH9l9OR+rTk5
dfV+suP/XO0wrXZ13pd8xIW/PZlOUWX78POFywFU9MU5c4sh0MQ=
=Yr70
-----END PGP SIGNATURE-----

--kadh3zx4ue2wst4x--

