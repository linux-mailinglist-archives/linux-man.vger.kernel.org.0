Return-Path: <linux-man+bounces-5524-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id bnRaEzpbCGrAkwMAu9opvQ
	(envelope-from <linux-man+bounces-5524-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 16 May 2026 13:55:38 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 98DDC55B910
	for <lists+linux-man@lfdr.de>; Sat, 16 May 2026 13:55:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A3EC4300D876
	for <lists+linux-man@lfdr.de>; Sat, 16 May 2026 11:55:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A0B23D649F;
	Sat, 16 May 2026 11:55:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f8o2+Vob"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D26E037C937
	for <linux-man@vger.kernel.org>; Sat, 16 May 2026 11:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778932534; cv=none; b=U0/ZVmjxBV0QoJ0ylY6x8JNBY++9jUWJPXqLXAONwWCNox/x9sfEkei4W6jFJMmyIU1zvgZjuIAxj/3ThXnM2tSJNG2z2qe+8taT7J8HVf7nn6k6T0gl4S03V/jkVp8GHEhNm3SbC7Y1vUIwFgkUSMVSlaWfhPqsuntnnDTk+qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778932534; c=relaxed/simple;
	bh=WEEfD6/VZV3gIB6y81uzmkahhNR1TuM6ei0MBbWmodU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Dpxmv0VlARBSgC8lbqegJU1zX1gQmNB1R907lyCqlHyuwgMUa6jB3HnisfR9ABvppfO0J0tCFW7cQuYOCAHPXGI0rkTXqwZUd8HkY521NSFli8XdtT2Ga928SjQ8y1vpLDfFL/WHfe3J0O26XBDFudUNoTRY694GXrbNVuSuDLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f8o2+Vob; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F021C19425;
	Sat, 16 May 2026 11:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778932534;
	bh=WEEfD6/VZV3gIB6y81uzmkahhNR1TuM6ei0MBbWmodU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=f8o2+VobnB3jQIqDIEa7es9gSaSj1aYj9LpJi2aZLMtdqwOv3N08ROFA+mjs8M79I
	 Zo61QeJtl43uzlzzYu/EVj+8aLX1WX9onJr+xXucaoBbq0YaSIUyw6L7Fwy6ZZco4p
	 R13a0SatFfxdRpVceZUq7GucrK5oEj6ynv1ifEuUL32MyK3/8neCmWiByDkTxp7Ljl
	 AXLnqQxokYT2zdf2sQlNgEdDlY3i/Rg6QXnm7rEcmw/lbi/vLqCX6kbPYT7SkI37GN
	 RNkjx3gHHKKvxWGecEZynFBsf7b0IrexEDRkXoXuQCz1F80JsNrWP6Xcnzdf25921B
	 y7q3gHiA9iGrQ==
Date: Sat, 16 May 2026 13:55:31 +0200
From: Alejandro Colomar <alx@kernel.org>
To: funsafemath <funsafemath@proton.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2const/PAGEMAP_SCAN.2const: fix typo
Message-ID: <aghbH6k51mGrWrVc@devuan>
References: <agf5NqqQzWRde7IR@nix-mail>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2cix4lgo6dufncff"
Content-Disposition: inline
In-Reply-To: <agf5NqqQzWRde7IR@nix-mail>
X-Rspamd-Queue-Id: 98DDC55B910
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5524-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,proton.me:email,alejandro-colomar.es:url]
X-Rspamd-Action: no action


--2cix4lgo6dufncff
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: funsafemath <funsafemath@proton.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2const/PAGEMAP_SCAN.2const: fix typo
Message-ID: <aghbH6k51mGrWrVc@devuan>
References: <agf5NqqQzWRde7IR@nix-mail>
MIME-Version: 1.0
In-Reply-To: <agf5NqqQzWRde7IR@nix-mail>

Hi,

On 2026-05-16T05:57:31+0100, funsafemath wrote:
> Signed-off-by: funsafemath <funsafemath@proton.me>

Thanks!  I've applied the patch.


Have a lovely day!
Alex

> ---
>  man/man2const/PAGEMAP_SCAN.2const | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man/man2const/PAGEMAP_SCAN.2const b/man/man2const/PAGEMAP_SC=
AN.2const
> index ed2f6b72a..ff6436ec0 100644
> --- a/man/man2const/PAGEMAP_SCAN.2const
> +++ b/man/man2const/PAGEMAP_SCAN.2const
> @@ -197,7 +197,7 @@ .SH ERRORS
>  No memory is available.
>  .TP
>  .B EINTR
> -Fetal signal is pending.
> +Fatal signal is pending.
>  .SH STANDARDS
>  Linux.
>  .SH HISTORY
> --=20
> 2.52.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--2cix4lgo6dufncff
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoIWzIACgkQ64mZXMKQ
wqkcNRAAkOdb3AKR5osBVtewwnKL2ML0Oe6M4ZBcwjnwe5YZ2EW8XGtqo167Go7o
IrSHbIWF09otbKqww4Xj1p/YSNY/P7EU/lucB0XjZRcQsYfQkrNXFQ54fJsTV+0S
sFvSL1Rdjr6yrI4f69jCJ4QiCK2aambDents2uUTCgCg2dx3jZq92d1x9oLS5nK2
UJUweJwq8QNKHV7dddt3XjpdA151ERr41nynfUHCKNdrGGMZDJBv/oAYEk7UNEuA
gJyjvD6LarTLXBD0HEgvs1rTLP4VT12j0bOtDHe3h8+GtYMmcPor5J1pK9KLo1GF
x/XcLM3u/bCjfXBOrOLWMqvSpzRB7FXxHXjZIb2ar3RZKo6D2x1hKxdN70iKJVzw
msyCrLC8LkNa3OZ2iSdhje8fzLxwt+8WqnFNBbhwVV1oUybXpAfIlqsg5EM1bh6O
pc2T0g2ay/04FNrGOdVD/x1gX8aqLqxN8KX6nKaEEyKOFJmQDLl6JHIGpzgcHfF7
oaT3B51FBDDNpQnh0PnLgqQPKUcCGpI2vkC5G4rz2/uxrhiFvPsVQIcXmvUig93N
oQkQtZ78dZsoVETLOtGh/ILzm1A/0AYgsOL23/t4eOryXhtXFrokn/m1wx94W6vv
NRWN8D0lMDuJ7netThGKTojxXVge5XEjyNVlW+N7b7aRopmDVZI=
=0IvD
-----END PGP SIGNATURE-----

--2cix4lgo6dufncff--

