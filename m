Return-Path: <linux-man+bounces-5457-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eM+UI+a692malgIAu9opvQ
	(envelope-from <linux-man+bounces-5457-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 03 May 2026 23:15:18 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F33F4B7703
	for <lists+linux-man@lfdr.de>; Sun, 03 May 2026 23:15:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 04D893004C95
	for <lists+linux-man@lfdr.de>; Sun,  3 May 2026 21:15:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 206F93A7F41;
	Sun,  3 May 2026 21:14:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p9miXcN/"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D81B33A7859
	for <linux-man@vger.kernel.org>; Sun,  3 May 2026 21:14:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777842895; cv=none; b=YDww/d2wTJzicuLYyBRbFJp7rVAp35uj7DwzXJkyA67e+ri+dFqqbFOoGX/cMwBnVNQK9uVwl57xX3wUZwuXLtGR86qB0c4ekbHlNz+i9a8qCcNISIn9CaGm+mYoZJfiZxP4aTuKgh3H/iUm5chi63tMage60SGVyDy8bl7Ek+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777842895; c=relaxed/simple;
	bh=CvLesn/ouFmK1YXD7nCXvjcxAMKxuw0YHe1iyo0s4i8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Cudm/gLznGSWkqeI2FYSCXCgZ8NGmpDqDNigKnqgbAvY3+SoUJcWzSVlYiAS21rsv4dfcS1wj7Wxok4H7Hf5vKdU/uI2s4KEEu+c2J1j47sR1BuogNmaLqlGQWZnPiFdLnL4fXcreBlYN7PZ5FbUoxchoDXxHLEyaou7dImhH2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p9miXcN/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D5E49C2BCC4;
	Sun,  3 May 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777842895;
	bh=CvLesn/ouFmK1YXD7nCXvjcxAMKxuw0YHe1iyo0s4i8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=p9miXcN/iTdtsQkcAmBhkFlf+GLNoUV6ieTFajOhWpeE9xFrBBNYZ16xzdY1kQdA5
	 eORbYaJ8S3zDZGSx3WeZ3EJDgWFCob9gf8HU9AfWBrHnqHUInu9PyhMS9pmVR/UeyL
	 spQg9ZoMxX49JiJjhiY22TRaBu0f+ZH29KuI0PdkgPnqqSXsyCeadOkQ4HcI/iTE8b
	 lsBDvbd9NgSk0DLij4jxXX5LQkEOpOVSRZaSeSf+5inBbZpYDwQh6ezyPWbxyPWFX/
	 C589jdu81Omqc9eTUBtzRqmVB065NyGeahULfXwdLbHVXSvTEsQsh+Ck41oJkf0i47
	 L9YAB9JS0LQTA==
Date: Sun, 3 May 2026 23:14:51 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Tomasz Kramkowski <tomasz@kramkow.ski>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/ioctl_tty.2: Fix references to TCSETS(2const)
Message-ID: <afe6kmdqSAY6HrR7@devuan>
References: <20260501145701.66573-1-tomasz@kramkow.ski>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ayqeqipzuz5vzgd7"
Content-Disposition: inline
In-Reply-To: <20260501145701.66573-1-tomasz@kramkow.ski>
X-Rspamd-Queue-Id: 6F33F4B7703
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5457-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,kramkow.ski:email]


--ayqeqipzuz5vzgd7
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Tomasz Kramkowski <tomasz@kramkow.ski>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/ioctl_tty.2: Fix references to TCSETS(2const)
Message-ID: <afe6kmdqSAY6HrR7@devuan>
References: <20260501145701.66573-1-tomasz@kramkow.ski>
MIME-Version: 1.0
In-Reply-To: <20260501145701.66573-1-tomasz@kramkow.ski>

Hi Tomasz,

On 2026-05-01T15:57:01+0100, Tomasz Kramkowski wrote:
> Change the duplicate references to refer to all of the different
> variants of the TC{GET,SET{S,S2,W}{,W,F}} constants.
>=20
> This looks to be a bug which was introduced during a restructuring.

Would you mind adding a Fixes:' tag for that bug?  It would help for
reviewing.

See <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTR=
IBUTING.d/patches/trailer#n16>
and <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTR=
IBUTING.d/git#n46>.


Have a lovely night!
Alex

>=20
> Signed-off-by: Tomasz Kramkowski <tomasz@kramkow.ski>
> ---
>  man/man2/ioctl_tty.2 | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
>=20
> diff --git a/man/man2/ioctl_tty.2 b/man/man2/ioctl_tty.2
> index 1d6e279c0..cb2776867 100644
> --- a/man/man2/ioctl_tty.2
> +++ b/man/man2/ioctl_tty.2
> @@ -42,21 +42,21 @@ whenever possible.
>  .TQ
>  .BR TCSETSF (2const)
>  .TP
> -.BR TCGETS (2const)
> +.BR TCGETS2 (2const)
>  .TQ
> -.BR TCSETS (2const)
> +.BR TCSETS2 (2const)
>  .TQ
> -.BR TCSETSW (2const)
> +.BR TCSETSW2 (2const)
>  .TQ
> -.BR TCSETSF (2const)
> +.BR TCSETSF2 (2const)
>  .TP
> -.BR TCGETS (2const)
> +.BR TCGETA (2const)
>  .TQ
> -.BR TCSETS (2const)
> +.BR TCSETA (2const)
>  .TQ
> -.BR TCSETSW (2const)
> +.BR TCSETAW (2const)
>  .TQ
> -.BR TCSETSF (2const)
> +.BR TCSETAF (2const)
>  .SS Locking the termios structure
>  .TP
>  .BR TIOCGLCKTRMIOS (2const)
> --=20
> 2.51.0
>=20

--=20
<https://www.alejandro-colomar.es>

--ayqeqipzuz5vzgd7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmn3ussACgkQ64mZXMKQ
wqlOLA/7BsgZrgnIe1h8478X0leMFcNVKqRc+DhZr4tzjRkrsoaojxYmKrivBOHd
o3T4Frtpes8nIuchE7kNR7WWLnnbOPyI/j2WKhjbqd1GuhuTb5Muec2q6ISb9pxe
ec03lw4XYOKDhrctsN7KawyD9FRFi1kogqCthHPIwvja5tWlOYm2pf2GNfVnNspL
azKkmDGdpte4yl5E3niwz6tfKLvsSqKQ/Bh1kEwMAq81LAQTOUzMk148hzZSbf7N
NuRLsYVyvehR0MjxEGfs9LpWFNQj4XoVbeYv7hprDspKljvzfPvEswqulfpl6dYJ
YfLLYi+YNQVDPSEgSTtXdA85KQQ8CTNUBTufULi0mia+mNMA7jLaJPGw9fEx1fBv
vZ+ZrRnbUnOTlqk+WE9mVtuZQ5UJ/Ri344IlAxwvCs88BrarcECKoujb4Ry18rem
bHBkzgYGg908+I+2QD5mAGYyNNfvJlmHVHw71BDDBS6a3nS9cWf5j/+AXj6CQZog
PCagpYbb4TrujB73zEtBgf8fahkNePMOOWlCezOVMo3sDmoVtJrBacRBZ675XVxI
nV0rB3O9K5G0d1sy7eGLpCODqufwnMxVCZKCyReRJ7Tv2tNb/2FBID9iV3IlQsQZ
k9w/VwtSmIo8Z17hCql8o/zzI3Srda3vG9DmE2lqiDPOanZRoU4=
=Eaxw
-----END PGP SIGNATURE-----

--ayqeqipzuz5vzgd7--

