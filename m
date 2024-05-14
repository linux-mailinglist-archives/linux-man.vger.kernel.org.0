Return-Path: <linux-man+bounces-916-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 45BD98C5BDA
	for <lists+linux-man@lfdr.de>; Tue, 14 May 2024 21:54:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F048A1F225E6
	for <lists+linux-man@lfdr.de>; Tue, 14 May 2024 19:54:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05EE5181318;
	Tue, 14 May 2024 19:54:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EuJ/zA7w"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB8C12AF09
	for <linux-man@vger.kernel.org>; Tue, 14 May 2024 19:54:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715716485; cv=none; b=oh6H5yq+UvP3JKcev9Ot7kpF94ySn3aWTrw/q/i/MmEXW/k11YjeYjYwdr2GQpbKShC2495LfiUVdOaWXlaN1OyXW2IO9A3tFRjT44R1z8wovmzSCZMEtRFqKe/I5HNcoIzfr5awJg055pb4iyIheoLFbphN9sLhyMRw6YHuEtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715716485; c=relaxed/simple;
	bh=K4GGXiNpXCnM/9RowyuWU/bli7eqLgkXDwRSIxWKJW0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kG5149Sed6lCvqConHN5pwWLADT4CNGOt9hb9PmCR4eEWqRgkRWakIBMfSqjm71+MBXzHLnRa2vUVRQ4qThmd5wO+YEvD0LkN0a+dwZoADGNxvC3EXQS44T9lwHKBxl5cF9f5dosOczVVifC1zr0yLwH/z5Wcl8r0ozV1Ns5shk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EuJ/zA7w; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C858C2BD10;
	Tue, 14 May 2024 19:54:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715716485;
	bh=K4GGXiNpXCnM/9RowyuWU/bli7eqLgkXDwRSIxWKJW0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EuJ/zA7wEZT6NbbuuOpGk73Kxylh1Wnkphyl/Ns8wvbqNxxOQAc9961hbGm7pQxrz
	 eEcwl3ZvdomXk3teMX3ndTI8X17n94NGl6B+dnR/1B8x04qqDjmwHrK6NYMttQZ4Ah
	 1fI2uSb7PG9ot7KejjZwTm+E8iEKSg7o7G3Zbc1yGESIjbkIppdp7rv9IN08msgsEK
	 50+t+nKvUn5HL4dw/+x0OXZ812SAw5ery9CN9y0JFnu+iBXVmDn7bIpGHcu8N0wEdE
	 j/zdQ9P20BeIXYs8852DT/Ik1qtZc07B3ph35QYA71RJfN92sEr+vSr4NzbFxtLf4W
	 CW4fVEMIgNKFg==
Date: Tue, 14 May 2024 21:54:42 +0200
From: Alejandro Colomar <alx@kernel.org>
To: technoboy85@gmail.com
Cc: linux-man@vger.kernel.org, Matteo Croce <teknoraver@meta.com>
Subject: Re: [PATCH v2] proc.5: document 'subset' mount option.
Message-ID: <kum6or4dlxvb3t3td5jcssv7pzwnbr3sygsowq4aqm6yrf5crd@os52p4yb24kp>
References: <20240514192110.84881-1-technoboy85@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="c6a2ugleeozuwgyr"
Content-Disposition: inline
In-Reply-To: <20240514192110.84881-1-technoboy85@gmail.com>


--c6a2ugleeozuwgyr
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: technoboy85@gmail.com
Cc: linux-man@vger.kernel.org, Matteo Croce <teknoraver@meta.com>
Subject: Re: [PATCH v2] proc.5: document 'subset' mount option.
References: <20240514192110.84881-1-technoboy85@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20240514192110.84881-1-technoboy85@gmail.com>

On Tue, May 14, 2024 at 09:21:10PM GMT, technoboy85@gmail.com wrote:
> From: Matteo Croce <teknoraver@meta.com>
>=20
> The 'subset=3Dpid' option was added in commit 6814ef2d, document it.
>=20
> Signed-off-by: Matteo Croce <teknoraver@meta.com>
> ---
>  man/man5/proc.5 | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man5/proc.5 b/man/man5/proc.5
> index 8022ca49e..2567387d3 100644
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
> +.BR subset "=3D\fBpid\fP (since Linux 5.8)"

This can be simplified as:

=2EBR subset =3D pid " (since Linux 5.8)"

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
A client is hiring kernel driver, mm, and/or crypto developers;
contact me if interested.

--c6a2ugleeozuwgyr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZDwYIACgkQnowa+77/
2zKjew/+KjaaS5SXimCuxU3vPFAd/0NJ8zgfXedNrAtUJnaDB5a+awvv95Kg/mxE
R3aTXR84BDSNNDvQGK9nZ3jFsr1t8vS+rsR4p6fBkjZWL4V4cxln+1HuoqrEQugv
aBeYPpnM0RuwwCKo9mBU0EWQoio7/pA9aQHEHhrzuWbIwWbvB4QukRGg/ycuzDxc
RryX0cqEkwacCNnL7qt3PcXnWSwQdozUfXnklkGv9ozAusswphys/tws7q1DIyW9
cMAtZRVuOejgqr5r8s0H/XQ1xP7qwCYY7uVG2Gr1lJAmyxY77GWxOHJ4xOF8r+Wd
Cwn4Yb3n+X7Bp+Ldg96XQEgEhfKMXjn9t6YJk04gTQyb9hnWUeoLuaD6xOq4OOWh
soHJN+tVPXIIW9Y4Yj1xJC/WDGmq/ebkMKNUwqGm5w6oAgMeE1HPvaCxKMPRWqm7
0TTYpQ6PWnBbedulLz1gwRozNBf64HgRfJw2tR5QcFekHeJCghr/H4bVN2UcgG4q
Z0Hbg0EJ+nkzR9In62+QFi3XVl+p1/Tt7NLue/oHTc0SJhstVc8unQUKKRT63Pl/
vngsXtsoSVYAQ5bGtf7j2Xp6sqS33g/+BqkosNW6hnVXgSWJYfrcr3U5cDnBtUh3
kcbPmiCmNBZ4twNCwK7WGf7tycJ5GsyIf4IVlhBkrqqylZSAVzA=
=zLG+
-----END PGP SIGNATURE-----

--c6a2ugleeozuwgyr--

