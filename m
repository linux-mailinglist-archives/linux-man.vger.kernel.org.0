Return-Path: <linux-man+bounces-4368-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A620CAA6CE
	for <lists+linux-man@lfdr.de>; Sat, 06 Dec 2025 14:32:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 063A9305F38C
	for <lists+linux-man@lfdr.de>; Sat,  6 Dec 2025 13:32:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7703C1EEA55;
	Sat,  6 Dec 2025 13:32:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ire7BQPb"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A83311E9B0B
	for <linux-man@vger.kernel.org>; Sat,  6 Dec 2025 13:32:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765027964; cv=none; b=S9BXD4uyrUrbFfcfgtdN14WQiM0PlwLDkijoRgio047YfbaiXS/WQB4RgasahBMOIXBxOpc7f8pGITbpqZq97SlupULI9RCMdzOWWmvh3PUzKfFpM8jj9AbelF8Qu/RHi1hT0BBPqVBIlxzO699fxYTUgRsiBhL4pAJNLPUj8RQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765027964; c=relaxed/simple;
	bh=MWoYAKkcSTutppkL0GsseQ1JoVbxye2e0fqPPheW1BU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=D7SgNG9Vf3f2VpsYFxymmAVoFI6mQ5+aTFVpputHGmynM2dukh+uJCOzRoCenQfPpWGGB6YfApgfjG39tZuizj8NQHdJghUfqfZFN+WfG3ExMzon5bL8d91MkXQpNfVQj7IjeZC32ZR+zId5ESbUTjw8GkzcDx6AGEHusKuwIug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ire7BQPb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7018EC4CEF5;
	Sat,  6 Dec 2025 13:32:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765027964;
	bh=MWoYAKkcSTutppkL0GsseQ1JoVbxye2e0fqPPheW1BU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ire7BQPbjwVyILcSrOJMq27iCcwPPJONaaexCz7kRacq0hxcL2wfmhn7xCzBTggOF
	 CKT77qj73xbDLTZdtS/TTV5tEdI7tTdPewUoHg5BRM1Io2Jc52XSLPwmHP//Hrmqat
	 ELSYXYBnOE4f7CpXBukY4esG+D5Mr8TFCktZSQo9Wcg6L+FFlqg5MwGbTDnhaHSaE0
	 zMOBdJ1J1P+lOogTRAce5HGZHyBfDqMRe7ah+y/LbSN+gQIO20idASbbzhThUtu96E
	 yvbkh52izbZZMwJZZsVbvTuCOQqauERe37cKLsGbZguaG9YZ3SyREQLEtffNatsiqY
	 WojVIfd67Ensg==
Date: Sat, 6 Dec 2025 14:32:40 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: serge@hallyn.com
Subject: Re: [PATCH 2/2] man/man3/snprintf.3: BUGS: snprintf(3) with a
 negative size is essentially UB
Message-ID: <hnvmgfwqf4tjg7d5o56wxmwntbvym53g2v65vlesfgmv3t3pbu@zdyiafbysfpc>
References: <cover.1764964289.git.alx@kernel.org>
 <d00ed9434174e97f45f2ce3fdbd65e87555f91b6.1764964289.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6q5r4kcd6bfalmxz"
Content-Disposition: inline
In-Reply-To: <d00ed9434174e97f45f2ce3fdbd65e87555f91b6.1764964289.git.alx@kernel.org>


--6q5r4kcd6bfalmxz
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: serge@hallyn.com
Subject: Re: [PATCH 2/2] man/man3/snprintf.3: BUGS: snprintf(3) with a
 negative size is essentially UB
Message-ID: <hnvmgfwqf4tjg7d5o56wxmwntbvym53g2v65vlesfgmv3t3pbu@zdyiafbysfpc>
References: <cover.1764964289.git.alx@kernel.org>
 <d00ed9434174e97f45f2ce3fdbd65e87555f91b6.1764964289.git.alx@kernel.org>
MIME-Version: 1.0
In-Reply-To: <d00ed9434174e97f45f2ce3fdbd65e87555f91b6.1764964289.git.alx@kernel.org>


Hi,

On Fri, Dec 05, 2025 at 09:14:14PM +0100, Alejandro Colomar wrote:
> Reported-by: Serge Hallyn <serge@hallyn.com>
> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> ---
>  man/man3/snprintf.3 | 21 ++++++++++++++++++++-
>  1 file changed, 20 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man3/snprintf.3 b/man/man3/snprintf.3
> index dca9fc3ef..e6bb9547d 100644
> --- a/man/man3/snprintf.3
> +++ b/man/man3/snprintf.3
> @@ -54,7 +54,8 @@ .SH DESCRIPTION
>  write at most
>  .I size
>  bytes (including the terminating null byte (\[aq]\[rs]0\[aq])) to
> -.IR str .
> +.I str
> +(but see BUGS).
>  .P
>  The functions
>  .BR vsprintf ()
> @@ -242,6 +243,24 @@ .SS sprintf(), vsprintf()
>  .BR asprintf (3)
>  and
>  .BR vasprintf (3)).
> +.SS snprintf(), vsnprintf()
> +If
> +.I size
> +is negative,
> +these functions will behave
> +as if the size was some unreasonably high value.
> +This turns these functions essentially equivalent to
> +.RB [ v ] sprintf (),
> +and thus likely to overflow the buffer.
> +It is the programmer's responsibility to pass a non-negative
> +.IR size .
> +.P
> +For historic reasons,
> +the
> +.I size
> +parameter is of type
> +.IR int ,
> +which makes it relatively easy to pass a negative value.

Actually, I was completely wrong.  The parameter is of type size_t.
Only the return value is of type int.


Have a lovely day!
Alex

>  .\" .P
>  .\" Linux libc4.[45] does not have a
>  .\" .BR snprintf (),
> --=20
> 2.51.0
>=20

--=20
<https://www.alejandro-colomar.es>

--6q5r4kcd6bfalmxz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmk0MHMACgkQ64mZXMKQ
wqkedxAAkOuxyfSRJR1H6US1y7z4p3zblcD2dF8i9kADcCPAEYtXTw5GqGe/YuF3
cqOLIEA5m+8RTWmiFaSSvDbZ89fxYk4QOGNzWc3stO9Cmen/ScWmrc8pRlaJWZpe
h0z5Hf9qCik3N1Q9UoXvN7fsx3aU4XkWrdT6+xRMBqPwSc1LFYKy036gT3HebJS1
bPGo4gKBTDMcCqvEn6dl6cnPZesbT4iFWgTij4LRf9ch29rf+nlaQhorkYAzM2jW
ScqFXEj3VKm6THoNxgzdYmcuRZ6sW1n8FB++UgxB5ryJUOXNOnX3vH1J0VH00JPA
0eUwWR6oXYHVo24uMYcReInq6o6veNABxfjn6WYpHEIu/+i/MUsAKsgXjBxVEGAj
YQWuYyKjW7hlfFBbmzC7Y1EI56YWiNiDBmqp1cPMn9T1Z/nsBlEgiOuHiYppDHel
xszEU4ZtQS0t0VhZWCAJnUrhge8wW9ICPkM2Csxu1YnCNVTGPcTwXNO+4uvfBmI3
raZc/B2IMYJu1IJWdKhjEJsaB83/w1EJ6YOT4CLYt/t5DBFx3Nuwb3tHZ1zjYfZR
D15xSfb+9fuO5lVBsFy55hyTcrEJhwVbs3P2+xLM0pZiyUwXwSXDKrbrl77/26Tx
udmuZf6rQfManPCHWmkgMgB1Tc8mt7tre4DqP4bZezGdUjnHHY8=
=PHsc
-----END PGP SIGNATURE-----

--6q5r4kcd6bfalmxz--

