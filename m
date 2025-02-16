Return-Path: <linux-man+bounces-2459-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F06A37761
	for <lists+linux-man@lfdr.de>; Sun, 16 Feb 2025 21:02:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A67433A288B
	for <lists+linux-man@lfdr.de>; Sun, 16 Feb 2025 20:02:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B63778F4B;
	Sun, 16 Feb 2025 20:02:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TG2jpJCf"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 581009454
	for <linux-man@vger.kernel.org>; Sun, 16 Feb 2025 20:02:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739736167; cv=none; b=a9ZBbrvMHe99eGwOIubFhJvNdrPIsL/hA8vzRRSGhUgKhi741S8oo/L/CIUjorzhMy5pixba302oW6ZkdPpGUSLmFpX8ScAGjdRPcm6FMdDvMRpkN6g0Wu5AWvAP3zAtYzvQTsLTQjg5yFBz2htti0qyYiWeiFVaESUzWmthaZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739736167; c=relaxed/simple;
	bh=lXvIakvj5G3YAIRzWLOIgQfE6irDsIjGAYk+m6l150w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UmxxmWQ3/cb0bYLK1xordfUKzHLCcXbr+p2QNirbBwiSn3rX7czB2XKZ6+5o6bmjyjha44FmLZXRHjulAxZjEGnTIelGnilPru7pbRk3JwHIw/WAXqSUJQFtdd8WzWKBq/nPe3lvU1hg9+LLXiSehGgC03nYC/hGxNjaoEf9Kx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TG2jpJCf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F9AAC4CEDD;
	Sun, 16 Feb 2025 20:02:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739736166;
	bh=lXvIakvj5G3YAIRzWLOIgQfE6irDsIjGAYk+m6l150w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TG2jpJCfzGGS6Xe4HH4AbzMk4gerbYhRvwCD39s5ybL+RdJHq/0aDoyVl8nCxVbRr
	 lgb65f9DjcYDVbkB1Kle8MZsK5ToDJwTTFGVFqzNN5UvIpRVotlR9HYJ+N+NZAu8L7
	 aoOhjfWmVlS6rObZG7NdviWcqTHE1sWzANjbaU1t3ZC5XKMB1H/vSgUThN6T0xiRqJ
	 L8X8VhsOwndKI06cCX3ZWk0Z9B1nqIRNsDMZd0LWdssHPG6zl+E90rQX8ShzzDTt5d
	 aFYUju2Rty8ju9xzzPMHj1gnRppPfxhlrakYakM4GTxszuyZ5ufWkVUlqjP2w77UmP
	 UkVFOzFGh3yvw==
Date: Sun, 16 Feb 2025 21:03:26 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?R8O2cmFu?= Uddeborg <goeran@uddeborg.se>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man7/mount_namespaces.7: Fix an incorrect path in an
 example
Message-ID: <czlhag3vhtszn4kjf6eckqkkdqlf664xkvk44is236fhiytroi@hd3vjydz4l4y>
References: <26546.13734.573762.288144@gargle.gargle.HOWL>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sy62wzpoujlpbbwg"
Content-Disposition: inline
In-Reply-To: <26546.13734.573762.288144@gargle.gargle.HOWL>


--sy62wzpoujlpbbwg
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?R8O2cmFu?= Uddeborg <goeran@uddeborg.se>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man7/mount_namespaces.7: Fix an incorrect path in an
 example
References: <26546.13734.573762.288144@gargle.gargle.HOWL>
MIME-Version: 1.0
In-Reply-To: <26546.13734.573762.288144@gargle.gargle.HOWL>

Hi G=C3=B6ran,

On Sun, Feb 16, 2025 at 07:59:50PM +0100, G=C3=B6ran Uddeborg wrote:
> In the example showing how locked mounts in a less privileged mount
> namespace can not be split, first /etc/shadow is bind mounted, then an
> attempt is done to unmount /mnt/dir, which gives an error complaining
> that /etc/shadow is not mounted. The unmount should also refer to
> /etc/shadow.
>=20
> Signed-off-by: G=C3=B6ran Uddeborg <goeran@uddeborg.se>

Thanks!  I've applied the patch.  I applied some tweaks to it.  As you
suggested, I added a tag for linking to the bugzilla entry.  I also
added a tag that shows the commit that introduced the bug.

<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D4b307134ee68cd0f3568a3d2d9c2119bd5a8adf6>

	commit 4b307134ee68cd0f3568a3d2d9c2119bd5a8adf6
	Author: G=C3=B6ran Uddeborg <goeran@uddeborg.se>
	Date:   Sun Feb 16 19:59:50 2025 +0100

	    man/man7/mount_namespaces.7: Fix an incorrect path in an example
	   =20
	    In the example showing how locked mounts in a less privileged mount
	    namespace can not be split, first </etc/shadow> is bind mounted, then =
an
	    attempt is done to unmount </mnt/dir>, which gives an error complaining
	    that </etc/shadow> is not mounted.  The unmount should also refer to
	    </etc/shadow>.
	   =20
	    Fixes: 906ab4945cd3 (2021-08-20; "mount_namespaces.7: Rewrite locked m=
ounts examples to use/etc/shadow")
	    Closes: <https://bugzilla.kernel.org/show_bug.cgi?id=3D217709>
	    Signed-off-by: G=C3=B6ran Uddeborg <goeran@uddeborg.se>
	    Cc: Rajesh <r.pandian@gmail.com>
	    Message-ID: <26546.13734.573762.288144@gargle.gargle.HOWL>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>


Have a lovely night!
Alex

> ---
>  man/man7/mount_namespaces.7 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man/man7/mount_namespaces.7 b/man/man7/mount_namespaces.7
> index a1645e9e2..0e1223f99 100644
> --- a/man/man7/mount_namespaces.7
> +++ b/man/man7/mount_namespaces.7
> @@ -1128,7 +1128,7 @@ .SS Restrictions on mount namespaces
>  .EX
>  # \fBunshare \-\-user \-\-map\-root\-user \-\-mount \[rs]\fP
>                 \fBstrace \-o /tmp/log \[rs]\fP
> -               \fBumount /mnt/dir\fP
> +               \fBumount /etc/shadow\fP
>  umount: /etc/shadow: not mounted.
>  # \fBgrep \[aq]\[ha]umount\[aq] /tmp/log\fP
>  umount2("/etc/shadow", 0)     =3D \-1 EINVAL (Invalid argument)
> --=20
> 2.40.1

--=20
<https://www.alejandro-colomar.es/>

--sy62wzpoujlpbbwg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmeyRI4ACgkQ64mZXMKQ
wqmi/w/9EFXNXZLVdEPFl8ybpCz9sWF2Z+d7ONQbLCu61HV3+EdyiiM4nL/nSBWO
gnizypObuHQZ4w14xWq74nmkmSvkH2m4LiGvOosFt9JHQgZTy4i72aKqg37+5/mt
iP09rPLB7aHGXIGBvqFbx4YvLaQ9qTmCxHyRaNqiZ9HDRzfdlglBX8WvQZkkN9uH
hlYol6TAh+yWMrD8VLg2xI7o10HJ+K931MMr0zv5wNcYc/IPHbeOyqIHnnGE0d1z
hHHcr4ewbwV4TsmK+wcKf4Lqg4aFIiaRWiMTlWyBfKLknlLN4RQVHrAJ0Bmkzid1
m0rGpLvpve+SCXsG+PwdugMLDmBDzViL+xdm1e91PO+SUu2dmYjwSqZVhZ7S97QT
DwlCvsznAQXu6wI7BGyLm4D2NZREbZcNDNWr7+n6RuWrywNaPkeVpidzUq8cxsDk
yfRifWnvO0dt6bCKxqnFnk5ZTm7YLq0skR/8xGyrzYn79UEv06ZkzPv/mbgZIqb/
9ehr3ef67OL1Z+K95n5BDVQhad3cmJSkuC32RP8MHPCLqIFPE1GznxN0yGvv3iUu
m03JJN3c9vhPe1jBjoCzS9XGl5KpTuU/UhLypoTqFYUmEQkDPW5dY4UkQCPQY/KB
gvRTazTYfO9CVXCJUNbBy6YoQ7DE8iVgTsNCHWR0Fx2UYHOK8EE=
=peui
-----END PGP SIGNATURE-----

--sy62wzpoujlpbbwg--

