Return-Path: <linux-man+bounces-327-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C97DC8213A1
	for <lists+linux-man@lfdr.de>; Mon,  1 Jan 2024 12:50:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 75FD11F2177B
	for <lists+linux-man@lfdr.de>; Mon,  1 Jan 2024 11:50:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AB851FB0;
	Mon,  1 Jan 2024 11:50:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ecneW3mg"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4395720FD
	for <linux-man@vger.kernel.org>; Mon,  1 Jan 2024 11:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18583C433C8;
	Mon,  1 Jan 2024 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704109854;
	bh=6llfcg5au1nuh+eWJafKeRTEGhTVbcMYcFkd/Y2eYlA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ecneW3mgjpeyZ1Zm22JuV1JudNT5LG0HH8eVT3WWsslLwtBypxruR/ms+Q0JLr3FE
	 ZPp1XhmGlPbnq3+UcsQyS8IMDx8ZiUPJJ1kjZJq7rLVB8ugXXzw6sj8BJkQEZWwD4y
	 8fS4YJCkdrsBmTGxNATNLSRrw2t3lvMOLbr5qDxOXzhP8HWQenCQYjk9FyWLB1EliT
	 2Aa2Yj2ocIdMrsHUmQgVRm5t2kUb1/cC8O9PsJHbTv3tE8Rnz9rkY7g5HXS1Mq32L/
	 uGnTRI6hRoMAEciIudnni5Ke4ViUrgWc2WoI0wq1bL7mQlVDrIejVACNeR3IaALoar
	 Ab7OyHqIB7kGQ==
Date: Mon, 1 Jan 2024 12:50:51 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Rajesh Pandian <r.pandian@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] bugzilla_217709
Message-ID: <ZZKnGzK-6CKx2lW6@debian>
References: <20231226122341.14444-1-r.pandian@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rKh+jWcpkhR3TNZW"
Content-Disposition: inline
In-Reply-To: <20231226122341.14444-1-r.pandian@gmail.com>


--rKh+jWcpkhR3TNZW
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 1 Jan 2024 12:50:51 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Rajesh Pandian <r.pandian@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] bugzilla_217709

Hi Rajesh,

On Tue, Dec 26, 2023 at 05:53:41PM +0530, Rajesh Pandian wrote:
> ---

This patch is missing a commit message.  Check the CONTRIBUTING file to
learn the format of the commit message (or inspect a few commits with
git(1)).

Have a lovely year,
Alex

>  man7/mount_namespaces.7 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man7/mount_namespaces.7 b/man7/mount_namespaces.7
> index 1f0a1b41f..736dd91bd 100644
> --- a/man7/mount_namespaces.7
> +++ b/man7/mount_namespaces.7
> @@ -1127,7 +1127,7 @@ in the following step:
>  .EX
>  # \fBunshare \-\-user \-\-map\-root\-user \-\-mount \e\fP
>                 \fBstrace \-o /tmp/log \e\fP
> -               \fBumount /mnt/dir\fP
> +               \fBumount /etc/shadow\fP
>  umount: /etc/shadow: not mounted.
>  # \fBgrep \[aq]\[ha]umount\[aq] /tmp/log\fP
>  umount2("/etc/shadow", 0)     =3D \-1 EINVAL (Invalid argument)
> --=20
> 2.39.2
>=20

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--rKh+jWcpkhR3TNZW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmWSpxsACgkQnowa+77/
2zINgA//b2ZxGGr9Z6Y1T/QboRSgbC0CQ+Gq7+xR5M3eT61ILaDIMVKbf8mEelYp
BKObuKBuiOocMSMaSsa22e3N8VESE/Fva43iSgxBKtOh7pwaANmU2ezIdkd9lEO3
vFANX63+N9eaCKqJw3jdd27WhmmWvqFymDZvl373WVUgwpu8GqzGKDK/LMVSeqrQ
pO0SMAEVJww0UzscU+k4Tk4dTpTtL/QA2zMImEWp3fbgsbH2tuKF8zUHW4orSyH9
qvlsrK5/vv+4/JWA8fcMPgegcgUSBTDcsyDcUnpH/a7J62th+ZGG1OelnlR7kB1Z
YlcF6IY2UAZbeB4lMmlK08/KFckTblej/TGvYWQEBya13JhjRxmETiT2N63nuaJf
xvgF0tqVgkzogrrosP99OjvAxRLsEENYuD3ns5VVBMUlPMb1iUs91kAw7XvXQ+6j
ctz14GfIMwkx/MQsgDBtNMclSzK3NYpbhCEMPjYOCc8xVlgEjbOBSn9bxxlAS4W6
fmHmAAvoJ9PdLzD3umgUfq4saCE+H7cxIrQ59pLcKjkw6JfrBP0lTZflNXDdsutE
hMGciae7WCPqGlb2gkumQ8GC8DM6N0vybQmIqFCmlYF8A8HZBLxwdQR6aZflk+ys
jqkF4Cqf7iXSwjcdxE2rabDRbwCP7tPdMjD1Fkku6KaWttLuG2s=
=tOQs
-----END PGP SIGNATURE-----

--rKh+jWcpkhR3TNZW--

