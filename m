Return-Path: <linux-man+bounces-5149-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yFWtOSVolGlFDgIAu9opvQ
	(envelope-from <linux-man+bounces-5149-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 17 Feb 2026 14:07:49 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD1014C637
	for <lists+linux-man@lfdr.de>; Tue, 17 Feb 2026 14:07:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C1797302BEA1
	for <lists+linux-man@lfdr.de>; Tue, 17 Feb 2026 13:07:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B132135BDC9;
	Tue, 17 Feb 2026 13:07:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UHJLSu5Y"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F175735C183
	for <linux-man@vger.kernel.org>; Tue, 17 Feb 2026 13:07:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771333666; cv=none; b=eCVvH16NENkgXmC3lOQveLqbVb/PEiT6gswD5gj6Voc8eiKy507zhwJjcFmfCgLkIB+6yakrezJNZ0fcZhnQET6nStTx5yQJuon2O9ppLbcasIHOFPJ3tzrGfs1lsrJY/+xNzYltJpfGrjpI0c02nulmGGg4vNosmqJA8bt2ucM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771333666; c=relaxed/simple;
	bh=qYWMHK8gZ9YkvYKCwe3gouUS0Ibse4SRGBIeFv+TwFg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KZh6E70ykYTHW2cyGXXnruVLN/kOxsqMP8BPl1Qxh1lIhVM4/VfiDmncMEmYMxzX/G2tkYHgIpYbVIqwNu9tTIaCdsFw+yg1DZQl8MYG2ppY2rmNXZNgdk0dmUOV+KCrD7uUbebTZQJSiLVg0+fR7P7R7lscEiMP0C+DoW69CBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UHJLSu5Y; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C51A9C4CEF7;
	Tue, 17 Feb 2026 13:07:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771333665;
	bh=qYWMHK8gZ9YkvYKCwe3gouUS0Ibse4SRGBIeFv+TwFg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UHJLSu5YF6bY/F1O4sMFrujWuUmfoglAHg9rREn2wRa9G3qio0hO9ftcC2tXt7oo9
	 GkY78bTtb3nexKsQwFR9jD2hMwHZYTkdGNtgPZh748BpxfYWl0uhgdIpjqQmKKbrnO
	 aKfBdyt5IPZpu0onvhWS6MtM0YzWqk5r5/yfpfkulG+/cFfhlq/JrapR+EoTo3KnTq
	 MQhrHX3E+iYnLR7PAd5HXD72zFVFhd5qc8R4Z4OvrKWUqLMC6/MpI3NF57yUHlE3hJ
	 PUcBpTC6e3TBc11t9h6kmiJ3QZP5GB9jpecGdWamOwcVXqtGBw/ifSFR669qtkRPEO
	 DFyOvdve7MQLQ==
Date: Tue, 17 Feb 2026 14:07:42 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v12] futex_waitv.2: new page
Message-ID: <aZRnXT1Zwmtt0eIr@devuan>
References: <aZMtRBfvVxkvu9Nd@devuan>
 <cpwlz44rbvyilhpyrxb7bghsrmojbcoljmssluonivqbq2qsmx@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dwowheqhnsmkk3ij"
Content-Disposition: inline
In-Reply-To: <cpwlz44rbvyilhpyrxb7bghsrmojbcoljmssluonivqbq2qsmx@tarta.nabijaczleweli.xyz>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5149-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 4CD1014C637
X-Rspamd-Action: no action


--dwowheqhnsmkk3ij
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v12] futex_waitv.2: new page
Message-ID: <aZRnXT1Zwmtt0eIr@devuan>
References: <aZMtRBfvVxkvu9Nd@devuan>
 <cpwlz44rbvyilhpyrxb7bghsrmojbcoljmssluonivqbq2qsmx@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <cpwlz44rbvyilhpyrxb7bghsrmojbcoljmssluonivqbq2qsmx@tarta.nabijaczleweli.xyz>

Hi,

On 2026-02-16T21:43:14+0100, =D0=BD=D0=B0=D0=B1 wrote:
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>
> ---
> Range-diff against v11:
[...]
>=20
>  man/man2/futex_waitv.2 | 413 +++++++++++++++++++++++++++++++++++++++++
>  man/man7/futex.7       |   9 +-
>  2 files changed, 420 insertions(+), 2 deletions(-)
>  create mode 100644 man/man2/futex_waitv.2
>=20
> diff --git u/man/man2/futex_waitv.2 p/man/man2/futex_waitv.2
> new file mode 100644
> index 000000000..9790779ab
> --- /dev/null
> +++ p/man/man2/futex_waitv.2
> @@ -0,0 +1,413 @@
[...]
> +.TP
> +.B EINVAL
> +.I *timeout
> +is denormal (before epoch or
> +.I tv_nsec
> +more than 999\[aq]999\[aq]999).

I suspect .tv_nsec < 0 is also denormal, and it being a long, that's
certainly possible, right?  Should we specify a range?

The rest looks good to me; I think this is the last question.

(I'll still apply some editorial changes, but don't want to bother you
 more with them.)


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>

--dwowheqhnsmkk3ij
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmUaB4ACgkQ64mZXMKQ
wqn7Mw//Q8c5UN1urBb2BQ1E12wll0BdsVRuSTC5j2BxPP3AzPcOhQJpEwTfiiqK
K+VL98ixGG9J3N3HbLi18KJym0r6S/lCG2CxwimJ1gkkHKnOotkX72eN/pTyJR5U
EKrfoLQ8X1/d70SpAtHdTY0ofhVRz9uzwMo6CzetJbOt/EG2yGOc7lrAK2Un2GZE
OGL5ON6t/+mwuSELO2xzezXTTkRCgHQrKdN3pu7ghCRIU+PUxts59jMP5krghr6g
2rbJAv35LiPhWehPsM8a2btYinsWv4/oZcm7LmzSdgf5NZ4HgWd7lMYZoDetzNZc
zeaMN/AGhmVp+x1jNntZsiaARc+7M1YEhgVIdQZTKz7l5fELoD9vQX5W6GnEnf5v
TWJ1PqMHnNTDT7V+DIevE4pWvu6tI2HLJ4R0ToZIAiVAJ4ight06u5F2MwIQr8Mf
rHxht7OOiW3BbEysfJpQnKHGooZTYhggqpFEczZGm4D54adMpESwUg7X0wYjr5hZ
7VMI8r87mYnOn3LSqyTHULlh/FKGkCGatYWlu7Z6kzmKSKF7nygSkZYTglQKpR0h
J0jjlsYSX4/tFG9qzZZM6I7JIimVTuxzjijKy2GVdFpTOC/rRi4Rfc6e0jphLCEu
lYCpDIBP5F5hCuOtmxo1mVDgdn5bc1ZsL9G/+THng82q3P2iRuo=
=Py5Y
-----END PGP SIGNATURE-----

--dwowheqhnsmkk3ij--

