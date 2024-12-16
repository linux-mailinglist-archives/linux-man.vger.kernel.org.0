Return-Path: <linux-man+bounces-2166-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 329ED9F33FA
	for <lists+linux-man@lfdr.de>; Mon, 16 Dec 2024 16:05:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E11641886F23
	for <lists+linux-man@lfdr.de>; Mon, 16 Dec 2024 15:05:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FDDF54648;
	Mon, 16 Dec 2024 15:05:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FAlxttKE"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DDE9199B9
	for <linux-man@vger.kernel.org>; Mon, 16 Dec 2024 15:05:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734361503; cv=none; b=GNkh3DMKc/pb5FFAR3TqOjzsH+uWv3QJ7jaNk5pdTICarQ0oeEzW+QskhLFZLyNFKV1v0YxGUzcJ8gspcNS71eLVeYAJClO09Rg4vq9x0Q/CHXW3eMrZjgk+S1cGzmiQR2V4BCbhBlEdDA1g/xWjv/kVTDTxGIm2xDo+5NX3+W4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734361503; c=relaxed/simple;
	bh=nJlSImiw/vJMtu8wVUh0DZalEJvmNYMbi8F5LXTkzpg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mzJBY1PQs7iIK5DzeOlj+pUX7mxcWNRjQpT2Ed8SGLeYmv5hDUXH3oQsgJtbW7LTbz3MUjTSoMyoPq8mk8EiOW3PCMSNs45DUNKvAk4iYrnyaa2QsHGbk2eurwzpuQ2gxCIKtF6VsTNj7Y0dG1G29KQuFwPEzq42PYby/paB0DE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FAlxttKE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 200F9C4CED0;
	Mon, 16 Dec 2024 15:05:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734361502;
	bh=nJlSImiw/vJMtu8wVUh0DZalEJvmNYMbi8F5LXTkzpg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FAlxttKELRtfKctwoHZS1IkABIG5fM3JD/GMXweX4RZZ9+gTCH/UlzTofqtnoKVNE
	 kjfVULcapqUMXIjAVXM2UqWYlgqogU3HsXQklH5aXJZZtUE7PlIkKCqrgoedtAZR6K
	 vsuJBrlCbswQCPXBw0Bm4ASh7sbWWYlYdUHNeMI3vZ3bSaOheixWMd+hArshQ1yyI6
	 p6vEVedl9HlNRwHU4q6ycw3LBUqpWYj5zlsXK0/h+rG/vaTb4p69ImHZdGqWjN2xXO
	 KZ6RNxRARf5PmVadvLLcsSYlYSopqg+xOJgVm5oanEseeHgogh2wKR24rik48BqzbF
	 hfq6sPFNsJxCg==
Date: Mon, 16 Dec 2024 16:05:00 +0100
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>, 
	"Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: Re: [PATCH] getline.3: clarify ERRORS.
Message-ID: <6g5pyogssnwg74waprkv5xsekoidginlz6n2fzv3u7zt356rlv@qjs5xie2ch67>
References: <CAJgzZoruFUg6X=JUNJXCbBOKs13SX=dsNFNdTMct2VecUFG=ww@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="drmk5g5dhzwyrlai"
Content-Disposition: inline
In-Reply-To: <CAJgzZoruFUg6X=JUNJXCbBOKs13SX=dsNFNdTMct2VecUFG=ww@mail.gmail.com>


--drmk5g5dhzwyrlai
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>, 
	"Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Subject: Re: [PATCH] getline.3: clarify ERRORS.
References: <CAJgzZoruFUg6X=JUNJXCbBOKs13SX=dsNFNdTMct2VecUFG=ww@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJgzZoruFUg6X=JUNJXCbBOKs13SX=dsNFNdTMct2VecUFG=ww@mail.gmail.com>

Hi Elliott,

On Mon, Dec 16, 2024 at 08:57:14AM GMT, enh wrote:
> Signed-off-by: Elliott Hughes <enh@google.com>

Patch applied.  Thanks!
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D84ace570934cccd419164f9bae0e8b0cbceaf6b8>

Have a lovely day!
Alex

> diff --git a/man/man3/getline.3 b/man/man3/getline.3
> index e1c5b0d63..ac1040db2 100644
> --- a/man/man3/getline.3
> +++ b/man/man3/getline.3
> @@ -95,11 +95,13 @@ but not including the terminating null byte (\[aq]\[r=
s]0\[aq]).
>  This value can be used
>  to handle embedded null bytes in the line read.
>  .P
> -Both functions return \-1 on failure to read a line (including end-of-fi=
le
> -condition).
> -In the event of a failure,
> +At end of file,
> +both functions return \-1 with the file stream end-of-file indicator set.
> +On error,
> +both functions return \-1 with the file stream error indicator set,
> +and with
>  .I errno
> -is set to indicate the error.
> +set to indicate the error.
>  .P
>  If
>  .I *lineptr


--=20
<https://www.alejandro-colomar.es/>

--drmk5g5dhzwyrlai
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmdgQZsACgkQnowa+77/
2zKcAg/9FKKnLjuLRdvMLiSoZim6XgA3CRMTZnKuBvITIjkpIe2maUxVB0ARaGhW
lqc0N4F9z9q9Lfat+tmjc3UYZvZlBhRl3lh+gJTDP+TiiaLtdvWq9gNlwtm1YIgk
v/RT9jWs+B8nsclatObJEC254cMHzJoKusJTk4ZwKu9c7D+uymFJpWySN2nhbD76
Kk0KN8/a2UY9QLreU2e33NMxZZeXJ14yiI0Kr6IDzWFZEgH6BgIzZwyIEFTESZxT
ZeEoytuJuVLAOQR1Z4E+npOehwZG7SuclhQ7QZUY5SEhp/vXGLn26JMnbEwA1037
Ct+dOkkcylNHEguBuWKWf2y6ZG9HN15Op73xK/65EsuMTlCBRnpnHpCCpcwOZMpE
8Jw9WOESDrHu8jaz+RMLrNmUniqwrVmzMeUInN+lcmO6KJg3UlubL8UH36Ivtm4l
5meLBOnfcqY+48WAwxdZPZHNwVMo3ge9W2AFs0/JsDkCgN5+fFM4WG2/hWDVCD4J
b4sc3crlZmFz4tRWGF9VdjVh8uDzPA8XwRIwoBVVzu4ctVHUa/JCEokXMCzck4+W
UJsLHy47l/1snCez7a/WDAVw9748pbHadCdxH2QE25P23N4wbQD0YgJOWzHciC5u
brDyWJV4DjG5SbLEDMEUEF73RfCsrEO38IfyZ3fM5UnQYHxR3dg=
=PPzK
-----END PGP SIGNATURE-----

--drmk5g5dhzwyrlai--

