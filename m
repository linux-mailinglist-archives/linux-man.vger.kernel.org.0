Return-Path: <linux-man+bounces-2946-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 21698ABAC89
	for <lists+linux-man@lfdr.de>; Sat, 17 May 2025 23:16:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A335E7A80FC
	for <lists+linux-man@lfdr.de>; Sat, 17 May 2025 21:15:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76923256C60;
	Sat, 17 May 2025 21:16:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qcuzIl7d"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342DE2566DF
	for <linux-man@vger.kernel.org>; Sat, 17 May 2025 21:16:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747516586; cv=none; b=jnm2+VfPat5VoBu2ZriRwlHRBO895ry3KzmyXnglGb79NE12GOXzNJjhK7skHwR24/f+ZEMQb3XOvcM6XjUB3pLOyMTwCZCt6XhOqyzFz/TGYBCydxQMWkVPl9CszV34QBbKcnxTqNUpkcA1GGUO+pn42fp7yif0Vapj4hzRlvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747516586; c=relaxed/simple;
	bh=+VOLb2MonUH5tJQNkBJnjL4uPrF91HmlyICJdoRfDlY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QwxT/wMHyWO3URp4KOpZpPKr6DK6kMWlcclKphfv7NFqpJ2VDfvlsPIp8AMlZmG8oPJWrwpaw4MOMxYzKI5aLD/eIn39kkd+SiibiJ8N/j8V2n8Q6XofQnKJ8giQex8gV7IntwHpv5uIwzCUDgtZizUcJX7Uw1vODQLx9iVLwl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qcuzIl7d; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E086C4CEE3;
	Sat, 17 May 2025 21:16:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747516585;
	bh=+VOLb2MonUH5tJQNkBJnjL4uPrF91HmlyICJdoRfDlY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qcuzIl7dNqV9v9FnGRJnfSmev5hAp9q6Mo1DEI5AovNAO2rqhLji804sBLWIuHRND
	 vtSD4YP6OalBUw+981zlnOjBknuf+xZXBNRq+PI278KBlDYjVreuxNPyz5lupnZR7b
	 p6J+hMRImPALMlrlO8qHsIazdBjI6hOnP81Oo7v/7/FlP/MpbmCsV+l+xrURj7nU4t
	 6REDNVBEf+WrWL9AwS8n3iJo8totYZU7g4KBhuxtkuNyTSmjbBmK/xGZUGDdemqW50
	 0vaWrVlk7KD+yIRqxCNn22VMFcbTWzrpOB/vUP0/SBNIjhLudqyljEbFWZVrs6QG85
	 8/6pkTD6EvNTg==
Date: Sat, 17 May 2025 23:16:20 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/3] man/man7/signal.7: Mention SIGWINCH was standardized
 in POSIX-1.2024
Message-ID: <dfcy75vkqhlitfddrvbtaufcir3mour2g6cczxstpp32fhkedn@wj7k34u2rk6l>
References: <6abbe99f5e8710202650bfee5d41e6fceaff4d1c.1747515178.git.collin.funk1@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xf3wpsb65l5gqn7r"
Content-Disposition: inline
In-Reply-To: <6abbe99f5e8710202650bfee5d41e6fceaff4d1c.1747515178.git.collin.funk1@gmail.com>


--xf3wpsb65l5gqn7r
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/3] man/man7/signal.7: Mention SIGWINCH was standardized
 in POSIX-1.2024
References: <6abbe99f5e8710202650bfee5d41e6fceaff4d1c.1747515178.git.collin.funk1@gmail.com>
MIME-Version: 1.0
In-Reply-To: <6abbe99f5e8710202650bfee5d41e6fceaff4d1c.1747515178.git.collin.funk1@gmail.com>

Hi Collin,

On Sat, May 17, 2025 at 01:53:02PM -0700, Collin Funk wrote:
> Signed-off-by: Collin Funk <collin.funk1@gmail.com>
> ---
>  man/man7/signal.7 | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man7/signal.7 b/man/man7/signal.7
> index 72d4aae47..730e90d12 100644
> --- a/man/man7/signal.7
> +++ b/man/man7/signal.7
> @@ -342,6 +342,8 @@ .SS Standard signals

Nice!  :)

>  in the original POSIX.1-1990 standard;
>  "P2001" indicates that the signal was added or its definition changed
>  in SUSv2 and POSIX.1-2001.
> +"P2024" indicates that the signal was added or its definition changed in
> +POSIX 2024.

This should be "POSIX.1-2024", not "POSIX 2024".

>  .TS
>  l c c l
>  ____
> @@ -390,7 +392,7 @@ .SS Standard signals
>  			see \f[B]setrlimit\f[](2)
>  SIGXFSZ	P2001	Core	File size limit exceeded (4.2BSD);
>  			see \f[B]setrlimit\f[](2)
> -SIGWINCH	\-	Ign	Window resize signal (4.3BSD, Sun)
> +SIGWINCH	P2024	Ign	Window resize signal (4.3BSD, Sun)

LGTM.  Thanks!


Have a lovely night!
Alex

>  .TE
>  .P
>  The signals
> --=20
> 2.49.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--xf3wpsb65l5gqn7r
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgo/KQACgkQ64mZXMKQ
wqnpCg//WsaA8Yz2Auq/3EOmX3nbR6njUc2a5VPlSGRVkSfYRWgzMR8T5XhrShAR
4QyaUiu165MXJno/r/IFRfctBbQzBQdcM9Z1d3bCb69CqcCLd+lFOpoZnRwnrQnV
KA70FxF09V3OGrwlgp4HRj4VKkaZcPjBxgKY4OjStHYZsXSBVD/O1klTBCDhkjE+
wPOmhFHKJY+d5N69MO+W/FNq2MVxvNZWhmeNITpiQR2TPDBBI0P+4qWddrTlIscT
MUmcQdpAc5iHGOFzBx6hUL+UhwB0RdGsHtWiMWLwdoq36GB+bb9LqkzszHgM0OwU
W7s7vtWXZFuEQ4coDXaAi6M+uvru4trJAwCugVd3qrtPt28yccRe1901nqlK88fm
ZI9xloGITeArkQ3MM4zTim6UDZ490blZSsBh3srW7Iy5rYc2R3NycEVgNNn9qtLf
c7BQTRlTamUStnEqVlwEfQ1SaWHIWNuVDjClUJOMHFsF29IxEgglOGAA+ynL4mOu
NR5r0B5CIPxViclNd/2SZFz4kqNQNbpPknEmGu0gXLeU5uHSxp82XjgmFBjcqUhs
14jaVS5f7qp8AwAAQjKDsRelNgEX9HSxRxGkBdP34qNxt+gWf5iAAFI7styXQQPR
cQ68M9sOJKWGG8W/2iegx634hIrRFsB7RH9F5JQYPGRa8dVppcs=
=b2C3
-----END PGP SIGNATURE-----

--xf3wpsb65l5gqn7r--

