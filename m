Return-Path: <linux-man+bounces-1187-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F03D9098AB
	for <lists+linux-man@lfdr.de>; Sat, 15 Jun 2024 16:37:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4DA8F1C20FA1
	for <lists+linux-man@lfdr.de>; Sat, 15 Jun 2024 14:37:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF76B45030;
	Sat, 15 Jun 2024 14:37:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d5ANgMSu"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D72731A8F
	for <linux-man@vger.kernel.org>; Sat, 15 Jun 2024 14:37:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718462245; cv=none; b=BBUBamSOBA3CKwY21z3SzBRFSf5hkRqJfR51Em8OdX9xzMp15V4EguhBxUGqUiMzXgmNbSCtaMTfc04FkH3vX0Z4IX45iNc6TxlkisQot8Ff5N90sy4q3Vz7VNr+j9KWl1cJzI7VeimM76u59rhePXpD+lJ8HTlxZGUIpYe804w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718462245; c=relaxed/simple;
	bh=OeznllX7gtAlh0y55ZMZFuH3uC/KtkktXKwW2Ns9E3A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jdHAAtc1mRzulYujF4cwWbt/ITZUB2ruldhVWrok6iZiBpebbO23hGak0mIiSqGXJu55C7pMePxCLqP1wVsJA06U4LvsAhrv7hUslp8tdt4vuxHs/vPLGl2B/zwM1ijLJjlTrQfFRUPucwkR2b1P5xvWDTe5Fn8poKno7Q2HUOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d5ANgMSu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7EF88C4AF1A;
	Sat, 15 Jun 2024 14:37:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718462245;
	bh=OeznllX7gtAlh0y55ZMZFuH3uC/KtkktXKwW2Ns9E3A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=d5ANgMSuwl0zI2u0J4noJjo93hHrX0AxHDcmaIFshy6F2CwTW0f/nmn9cCvgWajGE
	 hTZa0BP8jOcNX12eg4ouE9cNr6NbX9+1eKBXZyG2/KDT39OC2r2BI19i+rZN0ZD6cL
	 DzzuY8uoOzug3+OPKFJrWqhC7Esjm6L6VHHXEYSQnaMR5x35aqw0De5RB8LIOxaFtw
	 vVxDEdg59Lo2eb1fvhnd6sbUL1LH5dEWtS6qW2SLuPkhGN15b0LL1v8cvSZmEhW9JZ
	 aBTPFEWJTKmtgghxmGWJ3hqtvVyFLpU1vwcaZplZZ3tf94dfBlxE2dUT/Z91+xzlnZ
	 8U4UiJQhfyv6Q==
Date: Sat, 15 Jun 2024 16:37:22 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Adam Sampson <ats@offog.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [patch] FICLONERANGE.2const: Update .so for renamed file
Message-ID: <nqfbzdefykakyj3bknr43rlkrx5axtbeqw36mcq2n3mm77k3dn@bhrujbqzhq2o>
References: <20240615132948.20625-1-ats@offog.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="n3tttwegpheqtv6f"
Content-Disposition: inline
In-Reply-To: <20240615132948.20625-1-ats@offog.org>


--n3tttwegpheqtv6f
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Adam Sampson <ats@offog.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [patch] FICLONERANGE.2const: Update .so for renamed file
References: <20240615132948.20625-1-ats@offog.org>
MIME-Version: 1.0
In-Reply-To: <20240615132948.20625-1-ats@offog.org>

Hi Adam,

On Sat, Jun 15, 2024 at 02:29:27PM GMT, Adam Sampson wrote:
> Fixes: 733e3228017b ("ioctl.2, ioctl_ficlone*.2, FICLONE{,RANGE}.2const: =
Move page to FICLONE.2const")
> Signed-off-by: Adam Sampson <ats@offog.org>

Whooops!  I gotta release 6.9.1.  I'll wait a few days in case some
other bug is found.  Expect a new release on Monday the 17th.

Thanks for the patch!  I've applied it and pushed it.

Have a lovely day!
Alex

> ---
> Range-diff against v0:
> -:  --------- > 1:  479ee7641 FICLONERANGE.2const: Update .so for renamed=
 file
>=20
>  man/man2const/FICLONERANGE.2const | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man/man2const/FICLONERANGE.2const b/man/man2const/FICLONERAN=
GE.2const
> index 1e1cbb2b6..c52dce62f 100644
> --- a/man/man2const/FICLONERANGE.2const
> +++ b/man/man2const/FICLONERANGE.2const
> @@ -1 +1 @@
> -.so man2/ioctl_ficlone.2
> +.so man2const/FICLONE.2const
> --=20
> 2.45.2
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--n3tttwegpheqtv6f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZtpyIACgkQnowa+77/
2zKsmRAApozGP9NmSp2A23AbKqZFm5TDlUor5GDS2gXh5aWpWEPL1pjVf8sG7bzd
+7eF5T5ZOQoB5TzbuD+NA0hK+e8MfKWJPEh3+a04AUTZQMv5FCQLU5ljilNlolNO
2kr7/SVCHuQOZaCtgE10x98r+03HdBLWsok+Kdkr64PwSbyHt2NrzLfZaF59lAW7
c9jzePmySSKfY/tO/BTg7QTkB6iCGtwk6ehaKQQS1c7xliEDBC8H9h2bwhC/4qfg
FcEy76DxE9/Z4yOGQ+jRsiED4O7bqEQAnJxGR7N2uzKfHFeUK40Ld/wHGCUmKbjx
0k5cuJFHP2EY9F/hmqg8PAqju6kh5z3ONzy3zKI8oNZXM6uRK1rvZMsc81hUOc4K
H5FIZqE5QHZ6y/KDt3XfxV1KGNw6AYCoqrs/pT0gL0wnkqqF19q73UidiF/J3mRI
z3hwIEza7kNV12AeA6MLyjg4CSbELIdV6iIFWtnGBw5G/4DhbnNVb88mWRfA+euF
a3VIkfOANEHDJRhOe2Q/q2SdM8DmSw0XMOaFFKxq0h+jVQC1pRTXdGtgUfp4XUID
EFr1TCqYrsIEHMGVsP77aJHe9+CXNPGW13kLF2cy9vT8W86J4J7yDoWRIisTO3Uq
lKEWYvWmlWHDPN81SiEj0vdNbbulhgN+FZjSyP0u1DoNDJ8yGfE=
=xjVa
-----END PGP SIGNATURE-----

--n3tttwegpheqtv6f--

