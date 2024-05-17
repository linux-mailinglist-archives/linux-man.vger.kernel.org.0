Return-Path: <linux-man+bounces-932-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 92EC38C8DA5
	for <lists+linux-man@lfdr.de>; Fri, 17 May 2024 23:21:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 464581F2256A
	for <lists+linux-man@lfdr.de>; Fri, 17 May 2024 21:21:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B768913DDAF;
	Fri, 17 May 2024 21:21:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ojGczHqq"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7635F1DFE1
	for <linux-man@vger.kernel.org>; Fri, 17 May 2024 21:21:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715980867; cv=none; b=r4486xz/Zyxm7Dj4pKjJziV96pYl5Fcgkz5rENXC7qdIlibrTQsVJ126El8hnHcYBm6dFPbjvXjDV9AtykJXkr5fBmc37s6M0JgvG7pGRqXvqFPXQDwKri9d4O+4Qr/5ci6RCvWrB1Hydg8PhIeb5VhDb9nSG1tuCQBiPCx0DeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715980867; c=relaxed/simple;
	bh=ws25KsWARl8Mh/4BlGHPJraf208dhs7E8h/cnHzsiyQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=F/6K7MReGUwuvYR8x6R+VWZn9aeh+M8p/WkXTHuc6LJj+rbfTYN81yYAkcstF/XJe7fbBOwTxn8VLwCfX45H2rmU/WarjqgZmwyrRdbD06rvSB0iqpJdR75Fp0oiP6TduBAAeCAiXr3RV5WKYnccBcc0DwkJR6N1ixx01bF8dcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ojGczHqq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B834C2BD10;
	Fri, 17 May 2024 21:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715980867;
	bh=ws25KsWARl8Mh/4BlGHPJraf208dhs7E8h/cnHzsiyQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ojGczHqqBb6vZnYBeDDur1b/LBHQPHrw0CjTJP5NBtkzAJBQG025lVisl5ee9W0i+
	 4kTBJtigpoOvNXyRkmpd9ejrBAsjl3JJsMb5Ptevlp+/AYxgD/2woZf7XBaHpXhUUr
	 UDOgbqhfR16X847A34Ls665Qqedk9m/VxMPUcNY0kyUrilmkbqi+7VnE++v3FMuhI0
	 lbos9I+zf8airlvnxO6U3w0i6w4VQ4oiUGXrgvpxZT0OyseBT4FUcIC2m++Mwh6VfJ
	 A4kqEQSDy86o4t9Im6hCa7+ydPWOEdSNMsE8NgNd3f4T7tIHxOdwdUzWLzrWwUdrkZ
	 PZ0kDbWokbDGA==
Date: Fri, 17 May 2024 23:21:03 +0200
From: Alejandro Colomar <alx@kernel.org>
To: technoboy85@gmail.com
Cc: linux-man@vger.kernel.org, Matteo Croce <teknoraver@meta.com>, 
	"G. Branden Robinson" <branden@debian.org>
Subject: Re: [PATCH v3] proc.5: document 'subset' mount option.
Message-ID: <7q5ijed6ww24xmhmdfonnamrbcxhjn32vkuxx3l6b6g6b2tzsn@dvb2yz4hb72z>
References: <20240514202819.95347-1-technoboy85@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mietnw2ckaxgqkjy"
Content-Disposition: inline
In-Reply-To: <20240514202819.95347-1-technoboy85@gmail.com>


--mietnw2ckaxgqkjy
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: technoboy85@gmail.com
Cc: linux-man@vger.kernel.org, Matteo Croce <teknoraver@meta.com>, 
	"G. Branden Robinson" <branden@debian.org>
Subject: Re: [PATCH v3] proc.5: document 'subset' mount option.
References: <20240514202819.95347-1-technoboy85@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20240514202819.95347-1-technoboy85@gmail.com>

Hi Matteo,

On Tue, May 14, 2024 at 10:28:19PM GMT, technoboy85@gmail.com wrote:
> From: Matteo Croce <teknoraver@meta.com>
>=20
> The 'subset=3Dpid' option was added in commit 6814ef2d, document it.
> This option mounts a procfs where only the numeric directories related
> to the PIDs are present.
>=20
> 	# mount -t proc proc_pid pid -o subset=3Dpid
> 	# mount |grep -w proc_pid
> 	proc_pid on /tmp/proc/pid type proc (rw,relatime,subset=3Dpid)
>=20
> 	# ll -d pid/{1,$$,cmdline,version}
> 	ls: cannot access 'pid/cmdline': No such file or directory
> 	ls: cannot access 'pid/version': No such file or directory
> 	dr-xr-xr-x. 9 root root 0 May 14 09:43 pid/1
> 	dr-xr-xr-x. 9 root root 0 May 14 09:43 pid/25146
>=20
> The only non-numeric entries in that procfs instance are
> 'self' and 'thread-self':
>=20
> 	# ls pid |grep -vx '[[:digit:]]*'
> 	self
> 	thread-self
> 	#
>=20
> Signed-off-by: Matteo Croce <teknoraver@meta.com>

I've applied the patch, with minor fixes (grep for 'semantic newlines'
in man-pages(7)), such as a comma, and different line breaks.

<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Ddd465607bc5817819f1e90eb66468e7d9cf9e0b1>

Have a lovely night!
Alex

> ---
>  man/man5/proc.5 | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man5/proc.5 b/man/man5/proc.5
> index 8022ca49e..cdb4aa859 100644
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
> +.BR subset =3D pid " (since Linux 5.8)"
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

--mietnw2ckaxgqkjy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZHyj8ACgkQnowa+77/
2zKllBAAlcu3IHKjymfAh1Lx96tx5Y3xvM9kclaa4989ldfIoU4CGpalKMi32NOE
pVVlNiSgWmz5F+xQku3qx0ROccbrPyJWmHv87TMdgWTB2HN9iuQo5ZTlLEVtS+tV
gc96g7Bf1wS3utGkKeCMPYqs7VndxuUHTSO3h7HtfJasSi/K5P6fX4/snui8H+x8
rtJn4YXKknTGKrgeLyWfqaoP2hbUXEr8E4j8abLyVovE5Qvhi6BHPRkoHF0SJk9a
1ilfISdhCGuXIziFETm2l3/QS/Oox5+7vxNahm5BiFxuieLbriU3e9NpCZgOtpvL
m1HgUt3hpnwgXHBOBahImA/+BKlly/Dw4WSdIBZEouKZdKpOJAXW+nvzZhqrR+C+
nzSiIIhf27BbVoZuETJAUor/SadNp10MfuPyeBN69iiqfh6ZSm+hco1MxdRcmPRs
MkFZxf4VV9k8qKCx9YTLrKJs3WaB+Kj6m+j0H6Gd7pwHEZ8csTTJFP8MgqmZFUt3
ElCwkJLqMl47DmBul9V8kCiMUWCflzBHqwYXOxwmyJ0QUq877G0OkSNmBLcXL40F
2hbaPY/93bN9cer9uULAEOqge9VeSex89T7Ak28tXrWERuOhrNEsmQVQkaLjoYL2
KZCOP58n+QOwvsCNfczujn4jDnoC8VZUA64LPMKPZ0DApM7pIMc=
=jctl
-----END PGP SIGNATURE-----

--mietnw2ckaxgqkjy--

