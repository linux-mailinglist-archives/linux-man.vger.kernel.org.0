Return-Path: <linux-man+bounces-910-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 781698C5AD6
	for <lists+linux-man@lfdr.de>; Tue, 14 May 2024 20:08:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A63631C21172
	for <lists+linux-man@lfdr.de>; Tue, 14 May 2024 18:08:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED4DA1802C2;
	Tue, 14 May 2024 18:08:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IR4jw3d+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC1221E487
	for <linux-man@vger.kernel.org>; Tue, 14 May 2024 18:08:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715710107; cv=none; b=Mo3lkjAx22W5se4tVMEGQj+osH0zOvtDuQzTpge6wfMHJ+1WXHGiH3bHFHyH5xkSEELEfH7qQKa+SrGXgUNCrTVpTBDOh6rCzQ1lx40qy4Pzl7W3RKn8KB1kxn12h96KjRbY2FABneG20Kad3zIzK/PUYEUdpyJpfv5Pizspevo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715710107; c=relaxed/simple;
	bh=DeucyXmW47dtRSnIEX6tr1K2yrDtlyozskCiSJjKkV0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lO/SksuqDXQ64C4JACSPExodDrnEJccyBB+9XARbR6f1Z+n1ZaB1NJJciSb28MtCe84UtUKxy54xATfF3/EAux6z/2MEj2zShiRj0jJ1psq0TVsos6T6n7bCB6fHLWV58amdAcELMwshZi7+JCqz5a3uURr4oOSZxB58LZh9Lik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IR4jw3d+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7892BC2BD10;
	Tue, 14 May 2024 18:08:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715710107;
	bh=DeucyXmW47dtRSnIEX6tr1K2yrDtlyozskCiSJjKkV0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IR4jw3d+DOzV1iyOg4BMYBXpnb2gHqkoyLJCheGKybShEiIfe3uis/OoVMjiqnzFi
	 NCWHnIhiui7Sr3aUYWFNbdk4/vHnjFIl6JBSfaKbZN1nsuIlEtLIIcopsi95utRrOi
	 uPMKuCmAXrYtIhuAnWAE2jzWa/lLni/R9DNt7mR0Kx/tg4x3HKZleoRx67166eWZHx
	 9g05dlUM8YsEd9lgqcS0ZFeshuGjVV8HigGqH06e31vYl51omJ38lnLEH7zQM7HKhm
	 onJekfzCqmvre2EJQOSzFlZSkbXlwBzc+/iKN468G1oUCD9rH+hIe1KmtFHBaCUuS7
	 wv+ab8pqPbgBg==
Date: Tue, 14 May 2024 20:08:24 +0200
From: Alejandro Colomar <alx@kernel.org>
To: technoboy85@gmail.com
Cc: linux-man@vger.kernel.org, Matteo Croce <teknoraver@meta.com>
Subject: Re: [PATCH] proc.5: document 'subset' mount option.
Message-ID: <jp6oa3ge3qs2kl77kg4p5ns6u6yob5qyomhbdbqcoti55cj3je@tieeceztop3b>
References: <20240514175449.68721-1-technoboy85@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7rtvnu2fqcspnsbq"
Content-Disposition: inline
In-Reply-To: <20240514175449.68721-1-technoboy85@gmail.com>


--7rtvnu2fqcspnsbq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: technoboy85@gmail.com
Cc: linux-man@vger.kernel.org, Matteo Croce <teknoraver@meta.com>
Subject: Re: [PATCH] proc.5: document 'subset' mount option.
References: <20240514175449.68721-1-technoboy85@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20240514175449.68721-1-technoboy85@gmail.com>

Hi Matteo,

On Tue, May 14, 2024 at 07:54:49PM GMT, technoboy85@gmail.com wrote:
> From: Matteo Croce <teknoraver@meta.com>
>=20
> The 'subset=3Dpid' option was added in commit 6814ef2d, document it.
>=20
> Signed-off-by: Matteo Croce <teknoraver@meta.com>
> ---
>  man/man5/proc.5 | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man5/proc.5 b/man/man5/proc.5
> index 8022ca49e..b1e358cb4 100644
> --- a/man/man5/proc.5
> +++ b/man/man5/proc.5
> @@ -105,7 +105,12 @@ This group should be used instead of approaches such=
 as putting
>  nonroot users into the
>  .BR sudoers (5)
>  file.
> -.\"
> +.RE
> +.TP
> +.BR subset "=3D\fIpid\fP (since Linux 5.8)"

What is the accepted format?  A CSV of pid numbers? =20

Have a lovely day!
Alex

> +.\" commit 6814ef2d992af09451bbeda4770daa204461329e
> +Show only the specified subset of procfs hiding all top level files
> +and directories in the procfs that are not related to tasks.
>  .SS Overview
>  Underneath
>  .IR /proc ,
> --=20
> 2.43.0
>=20

--=20
<https://www.alejandro-colomar.es/>
A client is hiring kernel driver, mm, and/or crypto developers;
contact me if interested.

--7rtvnu2fqcspnsbq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZDqJgACgkQnowa+77/
2zKVzA/8De7R0NdtUIEElaWvBCfqAUf4XGU5QfsbpUhWa/g6wv3P5P6n6Ms9+wLt
PZh5WjH0zAuDCdWykBLdwYRGBlf9GhJMq6KNYNhahQCro89tBXc5QWppqeKfrlee
EiOFUDcB7ABrkHN39KG7N6NiD93i5guY+BGCZpVrAlfyp7HjTpZ6W2Lbo0mfMYO1
yxZzfAcaxWC27wado3oNFnLLvaw/9jvQ781iw0BGRElnrFtXkImILG/XYJFLmJCX
hoBij9EYZjj8fJPLeL/S8WvukVbmsANWEe++mm1KtX7eYYQcfadQxyWCw5PfiT+F
/c3AchfnGdLwisbTAGDQA2X+OUcC0uXMQ1jbOOm7QvlTj7vvoSKRI8RdafGr72RY
/u+KQ4wdLiqKVbdpMvCVIElvICGTT7/emH4DLpg96yrWQvJGJiG52OHACd7aiMEg
YLe4PZMWYYPSCeoGYLP61Ff8I9TWzTbkk1oLqVeXK+IbMgWNKgHyJuyEq9SkDYFl
BcMhzz/Rqn9i5WDXEjl0MBDcPBliXKyEPP1vZkNQGH3jewD8YLAFdTY9Pz1zLoWn
48Jh5PtInnEpj3Wct98oO2IAe8DNL4EkemYR3ns2kAv5aswbkSYjA9Mi06vaixs9
G1c1dYKQ4zcSs/H0XIcp7KG/FHOvq4K7i8fsnZxquaFEXhZstq4=
=+nB9
-----END PGP SIGNATURE-----

--7rtvnu2fqcspnsbq--

