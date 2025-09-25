Return-Path: <linux-man+bounces-3977-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CF714B9EF39
	for <lists+linux-man@lfdr.de>; Thu, 25 Sep 2025 13:40:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 13B7D1BC55F3
	for <lists+linux-man@lfdr.de>; Thu, 25 Sep 2025 11:41:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20FF12F7AB7;
	Thu, 25 Sep 2025 11:40:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ahlAZeuK"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D46BE1B21BD
	for <linux-man@vger.kernel.org>; Thu, 25 Sep 2025 11:40:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758800454; cv=none; b=CTt8AAKD4IVI93yTqSc72zChZRbyBqPuFm7ZLSTy+Qn1LBL6IxWmMQXITwBuTI5jYcmuY9SZvJQpg/XgFuSbf9Wq0+LUBBQxa2HAh8RbiTnZyNi6ZAJMUwZEy/Wpl70iDtoOXn4VCxyB5kN3CNiQRX6dwYoAfM42/xnjBNqbBZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758800454; c=relaxed/simple;
	bh=yQ5ZQ/20C1g2Y0iDJNbmHvUXjZ+t2QHI0zjGo7qZw3c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GNmgAhUYTEuRYAbxkzkzL5e+2SBnzJBzvH2XaP1w/PMQTQmQ1eTyQ6QALyUPMvOXUJf749TPvV4uwzTjtGLcwGiAVAhFmHLBjB4utJXzqlU+RafKYlSnxlKcDfZqCBFMq3YclNqCZhK1IrNZspcY17V8tCQwOQKgXit/roImpko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ahlAZeuK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 781B5C4CEF7;
	Thu, 25 Sep 2025 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758800454;
	bh=yQ5ZQ/20C1g2Y0iDJNbmHvUXjZ+t2QHI0zjGo7qZw3c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ahlAZeuKh5jaJUV7ezK9wrJ4VVdiuUWGsnl6V2O0qcGkoFhjEJIS0rI2HQlKGcTne
	 HWbeZxKgInZvFktBJm8ns9wkgsjxjnaqJ5iHW9wbi1C0Dv1EFd/WgBygnjM6mdfk7w
	 GgAiZOldDyQyallVClinVD3cEqrQv8QNfA7O2K+VgheRIkNLRspKH7fth7xZKQcqHZ
	 keYW2uTcqdcsJQNwXOuI91teKfhT7giJTXTrmJbmmh0kaJh/JxNWk3wui+v9beWAXD
	 Rx1dJmlyMc39qRNXhqnUq1kUbdkskGV+u3yhaoR5pXJ5XLEb6zPdoc/MztRf10HXeQ
	 GouFnjV/v8WBg==
Date: Thu, 25 Sep 2025 13:40:51 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Cody Harris <git@hypodyne.net>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/getsockopt.2: tfix
Message-ID: <fhkkikoeey7ndai6zcq3gyoieg77ztu6rsfvbzeb4aj347rkms@wtqjyt2dqquf>
References: <3589b9717dacf9e21bea9317da0840ad9095d7f1.1758570745.git.git@hypodyne.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cfg7sbw2b34gzuaf"
Content-Disposition: inline
In-Reply-To: <3589b9717dacf9e21bea9317da0840ad9095d7f1.1758570745.git.git@hypodyne.net>


--cfg7sbw2b34gzuaf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Cody Harris <git@hypodyne.net>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/getsockopt.2: tfix
Message-ID: <fhkkikoeey7ndai6zcq3gyoieg77ztu6rsfvbzeb4aj347rkms@wtqjyt2dqquf>
References: <3589b9717dacf9e21bea9317da0840ad9095d7f1.1758570745.git.git@hypodyne.net>
MIME-Version: 1.0
In-Reply-To: <3589b9717dacf9e21bea9317da0840ad9095d7f1.1758570745.git.git@hypodyne.net>

Hi Cody,

On Mon, Sep 22, 2025 at 03:52:25PM -0400, Cody Harris wrote:
> ---
>  man/man2/getsockopt.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man/man2/getsockopt.2 b/man/man2/getsockopt.2
> index 27a088d1c..f37b87d20 100644
> --- a/man/man2/getsockopt.2
> +++ b/man/man2/getsockopt.2
> @@ -13,7 +13,7 @@ .SH SYNOPSIS
>  .nf
>  .B #include <sys/socket.h>
>  .P
> -.BR "int getsockopt(" "socklen *restrict optlen;"
> +.BR "int getsockopt(" "socklen_t *restrict optlen;"

Thanks!  I've applied the patch.


Have a lovely day!
Alex

>  .BI "               int " sockfd ", int " level ", int " optname ,
>  .BI "               void " optval "[_Nullable restrict *" optlen ],
>  .BI "               socklen_t *restrict " optlen );
> --=20
> 2.51.0
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--cfg7sbw2b34gzuaf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjVKkIACgkQ64mZXMKQ
wqmBMg/9HyhStZBDc3lc2KCYjlOG6HLvgLon99b7oHgWiFh9QLzwwVRKd7qmguCD
oUsU9eepuAf/LQrzled+BkZIYonphZXC8XMNGhzo/uEXoMt8BtrGOXSuoas5ojR5
g4Z9W1clIW7MmrsyP3B5WT52mjl3vfJqz+7YPBQCTFty5Y6Zp5yFJ33ANLxfTYoZ
v6OUJJvHt2PAXvflxXdz9MR8IuB0IrstW3ZKo009fAcKlIvgg7164uOG9BZ1uzjM
BdMC86pif7O1ebEfILHWKFEqE1YY8Sa629MnlzZ3TSYfCv93owdi4xduc/X7XQ0D
XAmAnskUfgc8OeiywPQjV0pDhEkH6/pHkW2UcB/6XXVrToyW43Jo1491KC/ZxcUK
7eyydAUJmFxXbFb4RH4lMWBtD0vyLlrRRx4YFnGYsNexDCxyuRtTwKTsxoyrbW8o
DNk9UVox40OFFFZbE0D7ap1l/kaRkDuUHSLfOjiNnLSi/iMYJ1Lglefigh/0tRqE
Cj8aibpLrU1oasa2CXxEnDuNucY9vEnShWbwtxefAKdbRPFddSkDjRhFoN8idJpF
JQ14h70Z9bpkQk9gugDalKRSbtjeRYcFCe9yrGF2wXibGRyhaljGLt355Wi2WPro
SMDdCF8rhVqHE/8a8PF4fP2LoUblwMF+ETtJUgSmcylmfHtrQ1M=
=9zRY
-----END PGP SIGNATURE-----

--cfg7sbw2b34gzuaf--

