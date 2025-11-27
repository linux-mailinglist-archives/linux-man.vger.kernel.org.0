Return-Path: <linux-man+bounces-4340-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C70C8EA9D
	for <lists+linux-man@lfdr.de>; Thu, 27 Nov 2025 15:00:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 0D8783515EA
	for <lists+linux-man@lfdr.de>; Thu, 27 Nov 2025 13:59:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48F9633032B;
	Thu, 27 Nov 2025 13:58:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pnQ5V2QT"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06BB93321BC
	for <linux-man@vger.kernel.org>; Thu, 27 Nov 2025 13:58:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764251936; cv=none; b=bv5Gv3hl0+FfIKKAlQMoymOq6WncK5PoHe2gs7M8wV1QLDZ3PgqZCkZkvSxzK0Ua6LdXFGxce4cIIMkIhQDOUWAToN+muZeuXseleIvdEeTm59f8dQKVY1/ZMOijRP6KGxSq3U1P81++Z9hAgY0JgT01AxtRY6S/8hLoz1IpT9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764251936; c=relaxed/simple;
	bh=cu2eP19iKy/+vVjaBpS/3ZIdh6eAUI0Wek5BzRYVt+4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=t5W/jx7GIF6ygC9jBXZqTBT1k9Bq63bUb2h28RDXTf9FsRo8CW2rE1kOWGYCCQqL6i8ThGEnq9hWIjmaPfr357tw3/BomdY71maX/y0TQ6bKKzK30hKZ+opNnadkMNgpv+qmCQS8xYcr6tCYUmUTin9cj8hrdiFssUEYA0x1YR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pnQ5V2QT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0ECE0C4CEF8;
	Thu, 27 Nov 2025 13:58:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764251935;
	bh=cu2eP19iKy/+vVjaBpS/3ZIdh6eAUI0Wek5BzRYVt+4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pnQ5V2QT9BzKauhzJpwFGg+jLZBAD5K7b6MvywYLZsQKhuBtP+aY0XbT9JcI7txS4
	 fZk/p/PapyXzAkTGXovVRCI8lJawysdKfQd5m44hIvsfTFoH5zkdJNzX7dCrH83MvC
	 ggIw1sj7XDwbP9Wx8mYcDN6jT6mZjMtaHOFXQT+0sWEcM6ERBKQUxgKRqoxfpmR5vi
	 C2f8wTPsJcKkZOqaCTGoG44sNld0J3knhAQQU+/NzLWsbzkhnx/NpcEOFDbDreHMwH
	 2vbvR64ShK25OxV9yhndan2oTQrx6tLjvNMxqrawO9g3fAz/oNpcYIVvk4imyjRaMa
	 WmBGjmPoaOXAg==
Date: Thu, 27 Nov 2025 14:58:52 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: linux-man@vger.kernel.org, Yedidyah Bar David <didi@redhat.com>
Subject: Re: [PATCH v2 1/2] man3/getgrnam: fix ATTRIBUTES table after adding
 R-functions
Message-ID: <nu3w6dbewuvq3jj6k42irjn52eys2vwo7cgp674pauzovntpwj@hjr3f56ctn3h>
References: <20251127132249.3566-1-champbreed1@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ecpexx4sokjbvwh3"
Content-Disposition: inline
In-Reply-To: <20251127132249.3566-1-champbreed1@gmail.com>


--ecpexx4sokjbvwh3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: linux-man@vger.kernel.org, Yedidyah Bar David <didi@redhat.com>
Subject: Re: [PATCH v2 1/2] man3/getgrnam: fix ATTRIBUTES table after adding
 R-functions
Message-ID: <nu3w6dbewuvq3jj6k42irjn52eys2vwo7cgp674pauzovntpwj@hjr3f56ctn3h>
References: <20251127132249.3566-1-champbreed1@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20251127132249.3566-1-champbreed1@gmail.com>

[Dropped "Simon" from recipient list]
[Dropped alex@ from recipient list]
[CC +=3D Yedidyah]

> Cc: alex@manpages.org, linux-man@vger.kernel.org

Lol.  I wonder if this is how stupid AI is at the moment, or if someone
is playing with us on purpose.

> Subject: Re: [PATCH v2 1/2] man3/getgrnam: fix ATTRIBUTES table after add=
ing R-functions

More lol.


Cheers,
Alex

On Thu, Nov 27, 2025 at 01:22:31PM +0000, Simon Essien wrote:
> ---
>  man/man3/getgrnam.3 | 1 -
>  1 file changed, 1 deletion(-)
>=20
> diff --git a/man/man3/getgrnam.3 b/man/man3/getgrnam.3
> index 7d6365caa..87eaf39d5 100644
> --- a/man/man3/getgrnam.3
> +++ b/man/man3/getgrnam.3
> @@ -1,4 +1,3 @@
> -'\" t
>  .\" Copyright, the authors of the Linux man-pages project
>  .\"
>  .\" SPDX-License-Identifier: Linux-man-pages-copyleft
> --=20
> 2.50.1
>=20
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--ecpexx4sokjbvwh3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkoWRwACgkQ64mZXMKQ
wqljig/+O537/SFn6+/sWNSJAk05MjIFnQAjK0ZAJroZaVnS1gR8Ltt2d0NpStv1
lNCCBGZLOTI/2d0vrQmzPjup1SmAxFXdhrEMI4xg0KO1837f4FjMhwNHPYhat9R6
RvMOdjWOMWH1MOAz7N0JdejaHg4zQMqP6xIbXyyX5D2kBqvyX5nJTtnR8kZ7o/zp
vQ026KVEuEJjKFx0qVxIQKEuFJa1wc33nC85WnZrAIyzGNqFF58Ib/HoWJN8B4d7
FH4T5IyjTmhPCQ1SEKbLLhJDu/dmBgrcxjm5tjS8fDEqRwsP6LZvPgLT9+wjo1eF
87eQyzqD48rv4ucCCw5h51HG2+m27YgoprzhSTOQbcenSgS+XK2Mg7P1v3ttaC4d
4qIvAYTLr6a9vTCgWBoFTKPMNnBuv++MEkwX42gIsjUxksfBROrHXHKp5jz4PQkv
aZC0odqTYRr/6+xCMmOHj6VKioncvP5+RN2s63Z67+GYzmE0ZpxzTnouAbJuZl84
6M0ORR4v2FTEC/aeRCaB6CF01bFwIeS5I1+fgi6TI1rnUlawhwo1PlkvIjXwhtaI
4AgSGSD/eLIahdkAQh8trnfSDudh0spQEEp239yLgBnLSQI/2Cdu4lWyx9AX9/aP
bECyWw2T4WRVK3zkifJ8sJDgU0xehzzj7PkyKrgMbkuDPJI1WQ8=
=fnus
-----END PGP SIGNATURE-----

--ecpexx4sokjbvwh3--

