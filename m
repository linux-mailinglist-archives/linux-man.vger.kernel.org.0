Return-Path: <linux-man+bounces-639-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4879287DD11
	for <lists+linux-man@lfdr.de>; Sun, 17 Mar 2024 12:39:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 810B32815D4
	for <lists+linux-man@lfdr.de>; Sun, 17 Mar 2024 11:39:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0ABBF17BDC;
	Sun, 17 Mar 2024 11:39:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C416vuMr"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEC59136A
	for <linux-man@vger.kernel.org>; Sun, 17 Mar 2024 11:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710675563; cv=none; b=ix01zybomdMnfpsbx5Cn5CyTDJqidGDQEs1xfEOd5Q3wiXvd5V3HhBSRmaa4TouPbkNzphCDvO1UGNCRDeyRHskRLvvyyXHqiCMpq0ctYGYNqa2XZ2B22SphyvLLyHaCeB9+B5qnPNFOx6FWuezGRlrRXCqMzUtZr4bpDmeP7+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710675563; c=relaxed/simple;
	bh=Uw3F1ygf9faLkKYtCdLpY2zwCASGoCAYRa41f7IVu74=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hk++M2CEE8VmssOFL0PCiX+zzRKDmU9V4xb8c4YhCRMFgCX7TP9CJK3kwDlbDLv7sUSogNYuw6sz0fHUnmxvpCwRwZu6kFg/2Q9xmKuo+c55/L/FmUDwj37tcX0MtV61snyj+S5cIvMIsl1s7v7ZZI+MZro+a8LU4XOzfhhu76E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C416vuMr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5131C433F1;
	Sun, 17 Mar 2024 11:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710675563;
	bh=Uw3F1ygf9faLkKYtCdLpY2zwCASGoCAYRa41f7IVu74=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=C416vuMrdAuc25Va4WVj5If3qkCM8a2N7opLl9Yo2Vah0547nhpX1a/u6gr5EcBw2
	 tA7g4QoMqlRgA6RcqyoHsY8OfBWiTPrzJgijgMXh4KpC8ZjUWAgfiPJbCVeMF5rKS/
	 0A1ZbSSJs6MECrjPI/1oIiHBdP3haJJ30gej9QN6/R7vwcJ9ua4djEDVw7s/HKN8zc
	 e1/KpdzgyDGI3eVnma3RQ2bAAbRgckF6fVu2NcOyL/O68Yk+jCv0xNe0g0ZRixUK8M
	 XS4N91MIICQ76+PFW2DFg712BFWXLUMAxAgxzObUGqtX0EIF7d8tih92zyj8KtO6G2
	 L0DLS7z+IUVyQ==
Date: Sun, 17 Mar 2024 12:39:14 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/2] proc_pid_io.5: stats include children
Message-ID: <ZfbWaLu0o6towx2W@debian>
References: <1513ee2073bcf0fae7bb720bcee8a8de847e5cf5.1710339990.git.nabijaczleweli@nabijaczleweli.xyz>
 <4eb567da5a26a4886478c65ee90fe73d570e291f.1710673156.git.nabijaczleweli@nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6tGeMx3G+NHGBToE"
Content-Disposition: inline
In-Reply-To: <4eb567da5a26a4886478c65ee90fe73d570e291f.1710673156.git.nabijaczleweli@nabijaczleweli.xyz>


--6tGeMx3G+NHGBToE
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 17 Mar 2024 12:39:14 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/2] proc_pid_io.5: stats include children

Hi =D0=BD=D0=B0=D0=B1!

On Sun, Mar 17, 2024 at 12:01:43PM +0100, =D0=BD=D0=B0=D0=B1 wrote:

[...]

> Just s/process/& and its waited-for children/ but re-broken per review.
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>

Patch applied.  (And /^Just/d )  Thanks!

Have a lovely day!
Alex

> ---
>  man5/proc_pid_io.5 | 27 ++++++++++++++++++---------
>  1 file changed, 18 insertions(+), 9 deletions(-)
>=20
> diff --git a/man5/proc_pid_io.5 b/man5/proc_pid_io.5
> index d6eaebf5d..dc75a91de 100644
> --- a/man5/proc_pid_io.5
> +++ b/man5/proc_pid_io.5
> @@ -11,7 +11,9 @@ .SH DESCRIPTION
>  .TP
>  .IR /proc/ pid /io " (since Linux 2.6.20)"
>  .\" commit 7c3ab7381e79dfc7db14a67c6f4f3285664e1ec2
> -This file contains I/O statistics for the process, for example:
> +This file contains I/O statistics
> +for the process and its waited-for children,
> +for example:
>  .IP
>  .in +4n
>  .EX
> @@ -30,7 +32,9 @@ .SH DESCRIPTION
>  .RS
>  .TP
>  .IR rchar ": characters read"
> -The number of bytes which this task has caused to be read from storage.
> +The number of bytes
> +which this task and its waited-for children
> +have caused to be read from storage.
>  This is simply the sum of bytes which this process passed to
>  .BR read (2)
>  and similar system calls.
> @@ -40,8 +44,9 @@ .SH DESCRIPTION
>  pagecache).
>  .TP
>  .IR wchar ": characters written"
> -The number of bytes which this task has caused, or shall cause to be wri=
tten
> -to disk.
> +The number of bytes
> +which this task and its waited-for children
> +have caused, or shall cause to be written to disk.
>  Similar caveats apply here as with
>  .IR rchar .
>  .TP
> @@ -60,20 +65,24 @@ .SH DESCRIPTION
>  .BR pwrite (2).
>  .TP
>  .IR read_bytes ": bytes read"
> -Attempt to count the number of bytes which this process really did cause=
 to
> -be fetched from the storage layer.
> +Attempt to count the number of bytes
> +which this process and its waited-for children
> +really did cause to be fetched from the storage layer.
>  This is accurate for block-backed filesystems.
>  .TP
>  .IR write_bytes ": bytes written"
> -Attempt to count the number of bytes which this process caused to be sen=
t to
> -the storage layer.
> +Attempt to count the number of bytes
> +which this process and its waited-for children
> +caused to be sent to the storage layer.
>  .TP
>  .IR cancelled_write_bytes :
>  The big inaccuracy here is truncate.
>  If a process writes 1 MB to a file and then deletes the file,
>  it will in fact perform no writeout.
>  But it will have been accounted as having caused 1 MB of write.
> -In other words: this field represents the number of bytes which this pro=
cess
> +In other words:
> +this field represents the number of bytes
> +which this process and its waited-for children
>  caused to not happen, by truncating pagecache.
>  A task can cause "negative" I/O too.
>  If this task truncates some dirty pagecache,
> --=20
> 2.39.2
>=20



--=20
<https://www.alejandro-colomar.es/>

--6tGeMx3G+NHGBToE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmX21mIACgkQnowa+77/
2zKPFw/+P6pr88VBgpP6z/4IvNpTtnrm2T0PoFzRYAaREFX7f3JG19WmRbCoJApR
1aBa4mx1JSREAao9KnIOLGn4+fc8Un8h4uolqXp4oSUwrecguw/e4TR/npJxZOpm
vTpU0PP81jO5yJ4ukaSvMpJ3KzlTYErP136m3SByDbMRcpwW84VQQHI2M8AV2vF7
7kgwFBMefFZLwptLE/8cKctHZSLXDrfScAubHCt318+nyDPxEivQFhkTuoySYHt7
ghMqrVCUH8oJo6XmCLb3/5lnuzXw1d7Hxyq6BDki9elnxVzQbj9oSyxKK632rvFb
8dYodfSRd4+GEog93OZwoCoAfL4ScsHHS+eUGPUJlYX46ed0gfLPBsgwd3X53QhK
Zc5snUfnOREd/Z+bF78ZhYitUkZQhHnu2OG+GpAqQwyXvt8/mKv4And6wOodF2tV
mP/KJV3GTdfbgUqplJbkWS1o5x4axT7ia3eAbTwqyD2VQfC35LCfh80FbyR5jhb5
olfqoAqwPbb2pOTcTjEMV/dzHCXsa8GZa0eX7tScpG02mBWRDF0IfTfxw6kczHg0
/dMhBNW2O+igoggEcBiMJXSJCcwKeYbdNZryrgtKeChygARNa2qnIfNJXUrgXBu3
W2+IewPtwocRTg+Hmg8SafGq2Ub2GgC8I0P4e5dUtOa+V5lQEl8=
=yf/i
-----END PGP SIGNATURE-----

--6tGeMx3G+NHGBToE--

