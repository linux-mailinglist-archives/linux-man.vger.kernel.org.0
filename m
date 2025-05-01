Return-Path: <linux-man+bounces-2838-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE67AA653C
	for <lists+linux-man@lfdr.de>; Thu,  1 May 2025 23:21:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 62ED41BA682B
	for <lists+linux-man@lfdr.de>; Thu,  1 May 2025 21:21:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A43B921C18D;
	Thu,  1 May 2025 21:21:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p/5r7R5L"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60EAC7083A
	for <linux-man@vger.kernel.org>; Thu,  1 May 2025 21:21:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746134486; cv=none; b=byCEGx68t2KF8qWNVVuMjoKSkltzBis0vbWE8Ya+rMjEtzEoVXyWcHSVVyy+woz4hetk/iJ+fwdc4lnXgBqgmF9pts1xGroBX+Gxw/0FZo9pcJUZ1WvV6K7BrohvQIXvV5kBIf4HLOvoc4hQ0QCGTqVR5dLQSpX47hUq6l4xq04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746134486; c=relaxed/simple;
	bh=QDSpu5tPG2g4CRpUH1swNQZ111P26C2Eue0BapGEi8g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dnDGkU4tKt5HYGorFNDfiVxWhfurjaiQoDe7tUE43pC8PI2SBEzJonqCzoqDdk1sKjoVKDIdvk09zvlqo2q/WQABOJX2QN4aSA1udXv8u6HkwawANI9CV6aNNI0e92u2HDFYkxv35qvWYD4mG3AWMtXXKazkFu67V0Mio3RkSlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p/5r7R5L; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0115CC4CEE3;
	Thu,  1 May 2025 21:21:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746134485;
	bh=QDSpu5tPG2g4CRpUH1swNQZ111P26C2Eue0BapGEi8g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=p/5r7R5L2r4pu4odqm2bHVhVRPd+0dhhwFPo+ILCjPpYw23zkZH3PWceYvXn9vQUd
	 Vr73wEWY5oi6UipYcCvW1EnljLtUKaYAFKu475nqZC9FhkKJcTV+4VP2y+UKSDMU2w
	 WZnl0bmGwHIVKdQ3n54xYfrbQ+X30opcMKKNb73yrinC1KUWBBOivsrV+rgBR6liPv
	 yyKv95aLyUlb9/im8otoVoKLwwqAiM/88c6IHwXKsl7XnlM2V5GJSS8HeIzV5jXqp6
	 Fae6SvQkDnxghURK4nyQmh0a55fuzcCoNBsVgbij1o6GUexrN/NaP5HbsUMbeoq6A0
	 2RK3hrh0lF1Xg==
Date: Thu, 1 May 2025 23:21:22 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?VGhpw6liYXVk?= Weksteen <tweek@google.com>
Cc: linux-man@vger.kernel.org, Mike Rapoport <rppt@kernel.org>
Subject: Re: [PATCH v2] man/man2/memfd_secret.2: Update default state
Message-ID: <noapvznvijxtvybcap6qso3r2wv54cvbwpqj4y3fxgh7gmzvah@tzposocmmuzp>
References: <20250428020252.1569621-1-tweek@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="eyipejjngk6zatvv"
Content-Disposition: inline
In-Reply-To: <20250428020252.1569621-1-tweek@google.com>


--eyipejjngk6zatvv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?VGhpw6liYXVk?= Weksteen <tweek@google.com>
Cc: linux-man@vger.kernel.org, Mike Rapoport <rppt@kernel.org>
Subject: Re: [PATCH v2] man/man2/memfd_secret.2: Update default state
References: <20250428020252.1569621-1-tweek@google.com>
MIME-Version: 1.0
In-Reply-To: <20250428020252.1569621-1-tweek@google.com>

Hi=20

On Mon, Apr 28, 2025 at 12:02:52PM +1000, Thi=C3=A9baud Weksteen wrote:
> In commit b758fe6df50 ("mm/secretmem: make it on by default"),
> memfd_secret was updated to be enabled by default.
>=20
> Signed-off-by: Thi=C3=A9baud Weksteen <tweek@google.com>

Thanks!  I've applied the patch.  I've amended with some tweaks to line
breaks to reduce the diff:

	diff --git c/man/man2/memfd_secret.2 w/man/man2/memfd_secret.2
	index b3896b12d..30853d65b 100644
	--- c/man/man2/memfd_secret.2
	+++ w/man/man2/memfd_secret.2
	@@ -140,9 +140,9 @@ .SH HISTORY
	 Before Linux 6.5,
	 .\" commit b758fe6df50daf68fef089d8f3c1cd49fc794ed2
	 .BR memfd_secret ()
	-was disabled by default and only available if the system
	-administrator turned it on using "secretmem.enable=3Dy" kernel
	-parameter.
	+was disabled by default and only available
	+if the system administrator turned it on using
	+"secretmem.enable=3Dy" kernel parameter.
	 .SH NOTES
	 The
	 .BR memfd_secret ()

<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D84521911eab71ce5ff83365c75dfce846d12ce97>


Have a lovely night!
Alex

> ---
> Changes since v1:
> - Move the paragraph to the HISTORY section.
> - Drop reference to the performance concern.
> - Follow semantic newlines rule.
>  man/man2/memfd_secret.2 | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
>=20
> diff --git a/man/man2/memfd_secret.2 b/man/man2/memfd_secret.2
> index 322d67a41..b3896b12d 100644
> --- a/man/man2/memfd_secret.2
> +++ b/man/man2/memfd_secret.2
> @@ -136,6 +136,13 @@ or has not been enabled on the kernel command-line w=
ith
>  Linux.
>  .SH HISTORY
>  Linux 5.14.
> +.P
> +Before Linux 6.5,
> +.\" commit b758fe6df50daf68fef089d8f3c1cd49fc794ed2
> +.BR memfd_secret ()
> +was disabled by default and only available if the system
> +administrator turned it on using "secretmem.enable=3Dy" kernel
> +parameter.
>  .SH NOTES
>  The
>  .BR memfd_secret ()
> @@ -182,13 +189,6 @@ or spawn a new privileged user-space process to perf=
orm
>  secrets exfiltration using
>  .BR ptrace (2).
>  .P
> -The way
> -.BR memfd_secret ()
> -allocates and locks the memory may impact overall system performance,
> -therefore the system call is disabled by default and only available
> -if the system administrator turned it on using
> -"secretmem.enable=3Dy" kernel parameter.
> -.P
>  To prevent potential data leaks of memory regions backed by
>  .BR memfd_secret ()
>  from a hybernation image,
> --=20
> 2.49.0.850.g28803427d3-goog
>=20

--=20
<https://www.alejandro-colomar.es/>

--eyipejjngk6zatvv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgT5dEACgkQ64mZXMKQ
wqnsrA//edzJsxRMZchhcU3sr4tWvR3gHpPdajgSFuLhlH1xuzjpAB1XsNZdUHN3
Tr9cYazioXHXf1vi2lCuocc//+3Wef+uhRWhqx5wuggFA2BaIENf64eIgRkJMQkH
yvGk5dEMBu25GabsmhKyJQnVfXDH1koCDEoVF5T47IDXEyN2oCXw5UZvOGGQcDdS
NfyHAXfStD9GObq22WvczQYA/swVHjiNu9190DyITms9OtTb8n3meyvS9zVTZYrh
m11rg/00kq1i6EbqZ/aRBsIf/tUCZ9laBJELyp3yE9lbHY9RH5O/zMUSleh3wV1C
iBVJ+ZvfXxzVsJitBRpuDyvKI49um63RRfBYfLB79xzOLPCP1285uddNWvMU8WJH
3XUnXoCv08FVaumo56Lys5KyrNiFkU/6gCZjO3KvqX3z1rUnTExIBlKFfqXspeTn
PP74KUTcNZQd51HPSceqCjyQvIbSXp8r2ik2Vye08OHx5VPDDf3tuYLMTHDuCtec
mLr2w175PeV/irJb5XePbIKFJCp/+Bm/7rM5jSO+6wGpUdogddcFSKnWpXRUAa0C
0Q4Nw3Kg4drnH3GSVS43tEctUu5AwFhIBWMpchSfPNzipq7RzYCylm05IQ4EMdeW
YxN1/1jz7zZRat/SvMI5BPjtKsdm1TGaYdGoIvpisn5Iys1YcFU=
=9MBI
-----END PGP SIGNATURE-----

--eyipejjngk6zatvv--

