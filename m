Return-Path: <linux-man+bounces-2701-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 33CF7A762EE
	for <lists+linux-man@lfdr.de>; Mon, 31 Mar 2025 11:06:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 62AD17A3202
	for <lists+linux-man@lfdr.de>; Mon, 31 Mar 2025 09:05:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DB6618A6A9;
	Mon, 31 Mar 2025 09:06:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UiqQO38v"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0B77FC0B
	for <linux-man@vger.kernel.org>; Mon, 31 Mar 2025 09:06:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743411972; cv=none; b=Ky413Lv7vCZpEdm6otIt3/NhZaUBKYtjIT47CVVP40Z5h20BlK9TNCaLfKlqbSGfILfmJDOBwYDj+FH/EiFAYJq4LqE5y/6mhWdC3snJgkMKVi1cs7lecYlti9pT7TTelm4T3Cne7povSFruWr2xfpPZDrbCadQAOnodou6phsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743411972; c=relaxed/simple;
	bh=/+kW2Z13j+apz4cFH2jEATt3+wVCsxCz921SP0n1oYQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ikBOdp+E1REJtZPjwEwgOdFvY9VIP1EHWKYAHg0RRQwyd3PNTWHqhcsAeN/yEadoox1Vo4NyV43KKGEGLMGMKrv6gNbjR/pSjRcd+g8kew5DpNGMVtjzqTv5GNPxEN+3nhg5nHavC6eEMDt+1BdTr3tB+CmOLHEzF+Spr0U4JlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UiqQO38v; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B33EC4CEE3;
	Mon, 31 Mar 2025 09:06:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743411972;
	bh=/+kW2Z13j+apz4cFH2jEATt3+wVCsxCz921SP0n1oYQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UiqQO38vAeSYe7Q9AAmOmmDYVu0xvE2aqHwdZmHURqM0Qyk09dJ0tQkbL/g931DDF
	 hF93Go3qxA6WPQEM3R0bRNKsSeZBRpNDmpgdoIhisoOYz19TYWY6vZ7zgL0GzSBjRf
	 J6OtRj34kUAGZagAj3df3IEoXbhkSlU1CncgPekOhhcg6kDi8wh2A21+6eI0LM8Ovy
	 JF62VCdm6gVGQ2dwr0CC4/Qj30sOn0LJVrtt3ZhhhaWr0m/bcM0jLklYT0A78tPO3A
	 6Z5dLfaE2zWS6nTJHTLZH8s1suWw9xNetTK8R2ookl7l4RIIj4VhxkSg7e9vvqXl47
	 +vNI9Pfuzzvsw==
Date: Mon, 31 Mar 2025 11:06:09 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Amir Goldstein <amir73il@gmail.com>
Cc: Alejandro Colomar <alx.manpages@gmail.com>, Jan Kara <jack@suse.cz>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH v2 3/3] fanotify.7: Document FAN_DENY_ERRNO()
Message-ID: <hbpb2nzwngo4m3337uhjrmtgn7cytoekf52tcyi3onufr7jwqv@ju5cnp5ny4pw>
References: <20250331082759.1424401-1-amir73il@gmail.com>
 <20250331082759.1424401-3-amir73il@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fev6v6umq3z6t3v3"
Content-Disposition: inline
In-Reply-To: <20250331082759.1424401-3-amir73il@gmail.com>


--fev6v6umq3z6t3v3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Amir Goldstein <amir73il@gmail.com>
Cc: Alejandro Colomar <alx.manpages@gmail.com>, Jan Kara <jack@suse.cz>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH v2 3/3] fanotify.7: Document FAN_DENY_ERRNO()
References: <20250331082759.1424401-1-amir73il@gmail.com>
 <20250331082759.1424401-3-amir73il@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20250331082759.1424401-3-amir73il@gmail.com>

Hi Amir,

On Mon, Mar 31, 2025 at 10:27:59AM +0200, Amir Goldstein wrote:
> Document FAN_DENY_ERRNO(), that was added in v6.13 to
> report specific errors on file access.
>=20
> Cc: Jan Kara <jack@suse.cz>
> Cc: Josef Bacik <josef@toxicpanda.com>
> Signed-off-by: Amir Goldstein <amir73il@gmail.com>
> ---

Thanks!  I've applied the patch.


Cheers,
Alex

>=20
> Changes since v1:
> - Split out to 3 patches
> - Add example of FAN_DENY_ERRNO
>=20
>  man/man7/fanotify.7 | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
>=20
> diff --git a/man/man7/fanotify.7 b/man/man7/fanotify.7
> index 863578bd7..a532a963a 100644
> --- a/man/man7/fanotify.7
> +++ b/man/man7/fanotify.7
> @@ -778,6 +778,28 @@ to deny the file operation.
>  If access is denied, the requesting application call will receive an
>  .B EPERM
>  error.
> +Since Linux 6.13,
> +.\" commit b4b2ff4f61ded819bfa22e50fdec7693f51cbbee
> +if a notification group is initialized with class
> +.BR FAN_CLASS_PRE_CONTENT ,
> +the file operation can be denied with errors other than
> +.BR EPERM .
> +For example, for the requesting application to get the
> +.B EIO
> +error, the event listener can write the response
> +.BR FAN_DENY_ERRNO ( EIO ).
> +At the time of writing,
> +only the following error values could be returned to the application with
> +.BR FAN_DENY_ERRNO
> +macro:
> +.BR EPERM ,
> +.BR EIO ,
> +.BR EBUSY ,
> +.BR ETXTBSY ,
> +.BR EAGAIN ,
> +.BR ENOSPC ,
> +.BR EDQUOT .
> +.P
>  Additionally, if the notification group has been created with the
>  .B FAN_ENABLE_AUDIT
>  flag, then the
> --=20
> 2.34.1
>=20

--=20
<https://www.alejandro-colomar.es/>

--fev6v6umq3z6t3v3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfqWwAACgkQ64mZXMKQ
wqkHoQ/8CBMpjI6has6imp4k0niID9klbjc0w1BvkxL75lpDwo8LVgtq3Ybtqgk6
r3SVj+IniMu+JAECAWMMHmvpaqjkCRCV9um6MQzE9uLRa/qwIlGkdSxKyYBUJTIW
SQFCI8jnwB9MtbVaExcLotb61Tmb4r+s42CaNuiPbZbj+EnQBusIabvqg+yO4H1M
D3XoAnSvDIfp+OAo9SiRdtdO/BtEC3JT3dtg5YGr9YjrWBix1uVz9qvLx1MWH1c4
ZbB/zSpDTrFYGFmYLLMBOJo2kibqeQ90M8KlbEtekwWIeE61XblWAe+eyf3V2ack
+sQCw8IqdrbtUrrqW30mYxIjfJTUBFayp3nW5BfWhwf7JQFuMoL0JeqfV4t+ZcLk
E0HBXxWhd9woJfeJYwMBlG2JR61GMc6xTWZmBH3Dwqx++dvjhOBPHu1dRlXIZ74v
CF9jXoA4u207ZiOeWLlvB0RnGFXTFIN79Awp7jA9weY1t4Tz6V3tehc3jZ+umQhZ
B4EuWXF+cE5Ox03CQDXIes/vKKU26BSHHhOzr98NXKBnP9XYNU5+9ewvZ40fLp7/
8fg3RmXfxYQVYjznaAPaO9tih1qo2a5ITvpAL0B8PUm6mEdi8we3NAERr03WdZGS
HeA4gvEWkFwrYnk/c7Gu7j9Sk+rzqpQBKKWGCyHT8y10yYV/ajk=
=0MZ1
-----END PGP SIGNATURE-----

--fev6v6umq3z6t3v3--

