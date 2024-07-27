Return-Path: <linux-man+bounces-1546-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 13E7593E0EE
	for <lists+linux-man@lfdr.de>; Sat, 27 Jul 2024 22:31:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BC7341F21A97
	for <lists+linux-man@lfdr.de>; Sat, 27 Jul 2024 20:31:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B358616C874;
	Sat, 27 Jul 2024 20:30:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="awrevdlr"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7049F86126
	for <linux-man@vger.kernel.org>; Sat, 27 Jul 2024 20:30:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722112257; cv=none; b=UsORvtyii4o/3B6lB1O7EYNVl94A5wf2YtoxytRXnN1NPmns/GETYkveba6S9hb4bjSXPVODICv1BVi4toQI+f+EEyGdCLJTWMbDtXeprPl7ndXmcv4g0dvFsctkJAkYFdStvvV0C4A4feeGvBvJMJbFbi6fBxOrOjlqf4tnYu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722112257; c=relaxed/simple;
	bh=fE/ZamV7HWLD571aIz17/85LYodEPG5/X37Jn/PEmOE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TwgIS75ONn6Pb4f/aHSkAp9g8aOKCMFxXMXMOxV4W0tSasqxlM7nLT/wNP2TcYIFtMU7/1VqswR+C8t1r8jlrsv1sYu5qHPRcMTkd6CqtGBCOdt11NvYqWJbckulIHaWR8vxYP9I53jVMI+BxX5eQVNC5zNh8WsZdmxh8CP9ekA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=awrevdlr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43F6FC4AF12;
	Sat, 27 Jul 2024 20:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722112256;
	bh=fE/ZamV7HWLD571aIz17/85LYodEPG5/X37Jn/PEmOE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=awrevdlraA91dnz3JGHQIpKtQJh1fDi04gD35ydmzOmIspSNhObQNdOlXR7l4UoNe
	 yIH+NzKcbQq0OTjdtRRC7/whwfqx7BwkjkPzaSX5ikoqSp+WDdzqDve/K4drHVZgCv
	 8ih5GhV5nQ57v7WQmhNVhYTVHWg4aOI/UzBxPVocrJJf5F4bKhjAmsDTpnOyYjqBz3
	 ywunBTIsIbEX4qTFlHkzNKXQieKBL/ozoZpa7mG5bS4cOLLPSNGxaSsr0lQY7U+1k9
	 MKhgM00qQ0VgKuBN4WjcXNftGOE1qIZnAO76Io3Rc/0ZDV8RndvKmnlfSDsFIZuia7
	 KEnBHODnqNh8A==
Date: Sat, 27 Jul 2024 22:30:54 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 0/3] man/man2/syscalls.2: srcfix (0/3)
Message-ID: <c4qi75zodfn6dxffy5nvqpqj6uagjeuzq6vsnis5q2lam4eyfj@45vgiyz3wlrn>
References: <20240727192727.ldyru77nzhq56r6r@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="q2mg2q56rmaolyzq"
Content-Disposition: inline
In-Reply-To: <20240727192727.ldyru77nzhq56r6r@illithid>


--q2mg2q56rmaolyzq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 0/3] man/man2/syscalls.2: srcfix (0/3)
References: <20240727192727.ldyru77nzhq56r6r@illithid>
MIME-Version: 1.0
In-Reply-To: <20240727192727.ldyru77nzhq56r6r@illithid>

Hi Branden,

On Sat, Jul 27, 2024 at 02:27:27PM GMT, G. Branden Robinson wrote:
> This patch series prepares the Linux man-pages for migration from
> font-related macro calls like `BR` to typeset man page cross references
> to the `MR` macro used by groff 1.23.0 (and which originally appeared in
> Plan 9 from User Space troff's man(7) package).
>=20
> To read more about why `MR` exists, and its advantages over font-based
> macro calls for man page cross references see the groff 1.23.0 release
> notes.
>=20
> https://git.savannah.gnu.org/cgit/groff.git/tree/NEWS?h=3D1.23.0#n237
>=20
> In particular, this series converts man page cross references inside
> tbl(1) tables, which have a more complex textual context (in man(7)
> source) than most others.
>=20
> Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>

Do these changes only apply to syscalls(2)?  No other page has anything
like that?

BTW, I prefer if the patches from a set are replies to the cover letter.
:)

Cheers,
Alex

P.S.: Now I see why the second message.  :)

--=20
<https://www.alejandro-colomar.es/>

--q2mg2q56rmaolyzq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmalWP0ACgkQnowa+77/
2zJNRxAAqW9MgMIA5Ho86dvLmvHOCUqXBpvYQVyFDgE440Agzmeq0N7b/Al2C84e
gjXlbQ0rS4uioFEqUPnU3jwD+VEQAGmzgWNw7mhmvQaTEvruQupxzQVsklfBwG1k
NWUSigVo5ac+Kc33KTEjBxZVUqzFjPe9gAEKi5rl0hdJdyBdi4/Wc54KV8ST3U3R
pcUAnGH8XiFyCZ4VWMcHGA/11h4UkxDvWHSpSUPL39pH8fH5cN2gI6GigHiIIR47
AVlJAefeE9YUSYKXEboE1C5Kf0aJiinHiA9lPPcgRfsmXLR91X8Qn6zpLTM1lD7j
Xd4JGFhzuI/4KLfcTOrJO+mCQKtccFEebHHN7IuhMIM6FFR3SjFDm3C9Eh/PF3tV
uYYh4jmWxF+0bq0zM+iIUNj9LIAqoZ3pHol5nnxPXDzV5x/0T7l1PJKUSWVSKIy5
kUlsiaT5aOiX5pie6ZviiOWDcLLDHa9dpdstjMQEdM4v07fAiM7lvTN99zDF/usG
LlzPLE3B7XDpkoYj+cGR5VSTXaN9hCDIt5Kp3nFzIQfeRlCpfllUGKGHNp67YhxT
hUMd518am+zCK4CQXIV/lDRasoqV/LXXEXYjBoqBZx+oWpUfmoi5+a88PvXR7+TZ
BtDm6dpuNPQ6Y7MS1GTNoX3ypZWHY2nEI2KFEoy3cHKG3O8l6dg=
=AU2m
-----END PGP SIGNATURE-----

--q2mg2q56rmaolyzq--

