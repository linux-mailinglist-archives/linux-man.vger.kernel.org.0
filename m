Return-Path: <linux-man+bounces-1809-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A57399B91DE
	for <lists+linux-man@lfdr.de>; Fri,  1 Nov 2024 14:20:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5C0D31F22891
	for <lists+linux-man@lfdr.de>; Fri,  1 Nov 2024 13:20:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25FE416F900;
	Fri,  1 Nov 2024 13:20:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JVBFu9lE"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA8324594D
	for <linux-man@vger.kernel.org>; Fri,  1 Nov 2024 13:20:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730467229; cv=none; b=PcibjD+7qaXxa4/6HLZ+CzwTEtSicVbQWqBxD5Js184ptKeM1VlaNGksdvohx/MstLdOfkyThSkhp/i59CKYSncISx+MEd/vpXso14Ahz1yrkYcOEKZ0mBvINIimw2zIiBHYweouOdIYFgZPrFpUJw94ssH3wRs2lJLc1PntG3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730467229; c=relaxed/simple;
	bh=kmrf7zLrJglNKIbx9z8w0oEcMXmt1baHlJz0zSc+FqU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Is2Nu9zmv6u2MUBjLUl2qPvOV2XmjwwOqSXCYOxqsjLWsLguHhizXDnnVAOHimxJ2Im5LcDyJT32QoEC2jIqChH8jNN039mTK4rGXvteKG8dwZ5MjLxH0fYl9PgKM99u26QJS0zLB1ZycoMiwjF3hXLzviATfJGwYb4QPhyb3X4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JVBFu9lE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C1FCC4CED2;
	Fri,  1 Nov 2024 13:20:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730467229;
	bh=kmrf7zLrJglNKIbx9z8w0oEcMXmt1baHlJz0zSc+FqU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JVBFu9lENvzEgzjhHhfxpaYNQZpRLY+m+OLxMT3j6UBrve7w+YWpX85Kog1mv5LD/
	 TKZocdv8ZfxJVZHmbnV6OrIBsdL72SoGxjbTJ5isMRM2ESR6Nb7HzMFOEDfYuBMpn7
	 gVghmS4+QrG3auFsUxD7Ho/VkXFMjrGHg07QnUop6Mo8vggiIlp/NmfxpcBtOewzGC
	 f8UFBQFVjbm+vtkSIrvI6fXKcB9nBrF2aQCj3wZ41gfnpuuC+IQHOyv2YQ+PorHf/N
	 y1X1cxsqTzKmdxWV3LcDz19n3XUrkyiIOaFsMprNn5W9sCGzdo7cn1kO+N6OWI/yoS
	 Y01a+4efrGyhw==
Date: Fri, 1 Nov 2024 14:20:25 +0100
From: Alejandro Colomar <alx@kernel.org>
To: tyberry@redhat.com
Cc: linux-man@vger.kernel.org, lgoncalv@redhat.com
Subject: Re: [PATCH] madvise: MADV_SOFT_OFFLINE requests can return -EBUSY
Message-ID: <20241101132025.t3cfxacvafp6lyav@devuan>
References: <ZwhJXaNGoA4Y1UNz@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kror5itixn2szwrr"
Content-Disposition: inline
In-Reply-To: <ZwhJXaNGoA4Y1UNz@redhat.com>


--kror5itixn2szwrr
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] madvise: MADV_SOFT_OFFLINE requests can return -EBUSY
MIME-Version: 1.0

Hi Tyonnchie,

On Thu, Oct 10, 2024 at 05:41:38PM -0400, tyberry@redhat.com wrote:
> If any page(s) within the add+length range could not be offlined madvise
> will return -EBUSY. This might occur if the page is currently in use or
> locked.
>=20
> Signed-off-by: Tyonnchie Berry <tyberry@redhat.com>
>=20
> ---
>=20
> diff --git a/man/man2/madvise.2 b/man/man2/madvise.2
> index 441edfbc1..13ee7957c 100644
> --- a/man/man2/madvise.2
> +++ b/man/man2/madvise.2
> @@ -702,6 +702,11 @@ The map exists, but the area maps something that isn=
't a file.
>  .BR MADV_COLLAPSE )
>  Could not charge hugepage to cgroup: cgroup limit exceeded.
>  .TP
> +.B EBUSY
> +(for
> +.B MADV_SOFT_OFFLINE )
> +If any page(s) within the add+length range could not be offlined madvise=
 will return -EBUSY. This might occur if the page is currently in use or lo=
cked.

"any pages" includes the possible value 1; there's no need for "()".

Please use semantic newlines.  See man-pages(7).

$ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
   Use semantic newlines
     In  the  source of a manual page, new sentences should be started
     on new lines, long sentences should be split into lines at clause
     breaks (commas, semicolons, colons, and so on), and long  clauses
     should be split at phrase boundaries.  This convention, sometimes
     known  as  "semantic newlines", makes it easier to see the effect
     of patches, which often operate at the level of  individual  sen=E2=80=
=90
     tences, clauses, or phrases.


Have a lovely day!
Alex

> +.TP
>  .B EFAULT
>  .I advice
>  is
>=20

--=20
<https://www.alejandro-colomar.es/>

--kror5itixn2szwrr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmck1ZkACgkQnowa+77/
2zKRIxAAmsSCu1S7d0pNciH3jfyX8DETWmEJ56xuuepeL8Ym3Z2D0WjtgU2pF2l5
xwsT7Uc1elMKoYTmEn+2ikWvt6qTj3Ww2lL1OGX8jtU88aDXzfG1MC8KLHVRXUtz
Rwh9H0bgu9p8yel2qX9gSHJOFj1shsgo0VsRKHZcFuoMwxSLqeEUN46pQ7FigeGW
7sJ9mec3ZUKyKK/zrJRnAP0ssGt2f9YlndNysaW9jzlBiBjsAkk1je6fYfU0gowq
07yftgEKO40NYiRiHAln3Ira5Gan+jPYsp+gbnq15pFblXZUGj8kNbyJcG7VKk8x
51sDYoUIYjlnbSDBwd5yAMVtcUq+9QyKtjcI0N530syW91qw1j0viTKtLXgMRKzr
XP5Kcj407IGC51eWd4c2fp4zl8aJq6K+TAzedWFTBwlAlI7pUlEKuRDHceQmnrxu
uvUaJklo55oAv0P0WkUS6yuYpl64oVAidY3KaP8lOWCInBQyVAdY0qaU94rEJcUc
M1V8W8zoyMszGcT0iAN3qV9nfO6oVcszT8sj0YtWR+LuGo8+eXIvTbaLNDsf35OG
wUy+DHbuIDiudp2BvKzD2tCQjJ8CyKC5JLqEAxeV19rhNRs7L1B3WSyDIp70sOs6
EEex1xqr2oF6sB0ej6M56ESohjWbdnFJvA0UUgmzgFODkQ+H2mg=
=PwV5
-----END PGP SIGNATURE-----

--kror5itixn2szwrr--

