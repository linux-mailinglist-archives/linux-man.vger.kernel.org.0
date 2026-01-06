Return-Path: <linux-man+bounces-4674-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D90ACF841B
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 13:15:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D7D65307B3AA
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 12:08:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBF2A328B43;
	Tue,  6 Jan 2026 12:08:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NEKysEep"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79DAC329E53
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 12:08:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767701288; cv=none; b=o9fubbC+V7LjObjpAGr1o7olCBggdEP/RuMEidWv7oVP85jE6i/4/Ord+2drjw5nPbA27zAb2CyZh+GKIcjXlN3CjwZA/m77O+D0T63myzMhT9jetrHIB3n3gEeNfkhC1zKCSj56L9Q1/LrJcNDBLdyXt93/kMHZxJUbBvsyXXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767701288; c=relaxed/simple;
	bh=dprtqKGYaCdvMPvkEWtQBnL2BtwewiuTAQl4H7BOHgE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MuvfHgYwG/GdiDn7ITlw2bNgCM8LqSK1nfh6aii4kAFtmG7JOX0U/otPtxigHTyiB4I4dzVNQE/9THDh8N++CeI5Xq7cPRF6SnbNzM+EL+m5BzVJC7msRUtJGJyizqgb8Dh25dIkNNqLBr9WkIXgmRB5Sv7n3i816aHEPhRDyTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NEKysEep; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1B56C116C6;
	Tue,  6 Jan 2026 12:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767701288;
	bh=dprtqKGYaCdvMPvkEWtQBnL2BtwewiuTAQl4H7BOHgE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NEKysEeptDc5tbmMXuphd35KuG+cYgFSvNcy3CAAXQM0+ink5HemFkmQv5AE/R2Dg
	 B0aDR1LUX+NwnlXCXFkA1qrSzAQt3FkwHmxQdSxz5oI1LRmJoFgoDypFEVLZOXdEA7
	 iCCGnLNbyolPULwJpjgO8SqOVfj4Cyo5tEOHarXhx0o6kaJyly2W+CEd4vzzVHXAMA
	 xsEofgJKlS0EASC5idBX8CpJaY4p023rrO58ANhzCGE58t0LHzxcJ80OJRRDEwVr+L
	 RtRJwBAYK2fPmanTWlZ6XpYj+ar4RwTeH8XsDbudPSBCBm3m+XiDJIvJIKzcmKicm5
	 telv0lMWczYRw==
Date: Tue, 6 Jan 2026 13:08:03 +0100
From: Alejandro Colomar <alx@kernel.org>
To: helpdesk@kernel.org
Cc: Konstantin Ryabitsev <mricon@kernel.org>, 
	Simon Essien <champbreed1@gmail.com>, linux-man@vger.kernel.org, debian@helgeth.de
Subject: Re: [PATCH] man3/getopt.3: Fix spelling (British -> American)
Message-ID: <aVz5ew5CJcV1BUAv@devuan>
References: <20260106101302.11938-1-champbreed1@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="r4hp33cu5dvrlczh"
Content-Disposition: inline
In-Reply-To: <20260106101302.11938-1-champbreed1@gmail.com>


--r4hp33cu5dvrlczh
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: helpdesk@kernel.org
Cc: Konstantin Ryabitsev <mricon@kernel.org>, 
	Simon Essien <champbreed1@gmail.com>, linux-man@vger.kernel.org, debian@helgeth.de
Subject: Re: [PATCH] man3/getopt.3: Fix spelling (British -> American)
Message-ID: <aVz5ew5CJcV1BUAv@devuan>
References: <20260106101302.11938-1-champbreed1@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260106101302.11938-1-champbreed1@gmail.com>

Hi Konstantin,

On Tue, Jan 06, 2026 at 10:13:01AM +0000, Simon Essien wrote:
> The man-pages project uses American English. Change 'behaviour' to 'behav=
ior'.
>=20
> Reported-by: Helge Kreutzmann <debian@helgeth.de>
> Signed-off-by: Simon Essien <champbreed1@gmail.com>

Could you please block 'Simon Essien <champbreed1@gmail.com>' from using
any and all kernel infrastructure?  It's an LLM malicious bot, and
starting to become very annoying and spammy.

It's also violating the man-pages' contributing guidelines
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUT=
ING.d/ai>.


Have a lovely day!
Alex

> ---
>  man/man3/getopt.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man/man3/getopt.3 b/man/man3/getopt.3
> index 8495719af..387ba9ce8 100644
> --- a/man/man3/getopt.3
> +++ b/man/man3/getopt.3
> @@ -160,7 +160,7 @@ If \[aq]+\[aq] is not the first character of
>  it is treated as a normal option.
>  If
>  .B POSIXLY_CORRECT
> -behaviour is required in this case
> +behavior is required in this case
>  .I optstring
>  will contain two \[aq]+\[aq] symbols.
>  If the first character of
> --=20
> 2.51.0
>=20

--=20
<https://www.alejandro-colomar.es>

--r4hp33cu5dvrlczh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlc+xwACgkQ64mZXMKQ
wqnGwQ//UzD7aYbg1h2kUadKjwrImIBKv7JO4W3MIvx052eGlateyKFobs7ku4da
mDbYiLLw35RTG5HNbk/oNrS9Fr73gYOKjoU8L7aKdCwtI5qE6NOjWuotuDJV0BJG
0gPg1uLH3MSKpsNwlUuuzoMs5KmdixRZZ2zRg/eOb09Fiw9egQgFkab7ZloIYYnz
1k1qiISNFsBduKLFtegt+GKZ9P56lbfacxduE63sRniifM4bKYlCpB7yRqjnH5J4
whCYFsBxcokpa5q6UZJNSaXeY6wsWyrjsqrwCmOoXbhTojT0uxXhKnM/OpY0eO0Z
FUFTKXBAmErLSRCpLMJBq3GB5xLo2xi887mZPcAR+HahxdZwYp0L+n3JUTXpnrhd
k4npLyfMQ0/9pE+yxzHTkvMav1ZqbdL3dxtUXPOrBT8n7LJGbdwBweBOXfL1W0dA
5uPHk/0TnsJmbqb+N8xNfEZfBhAHeq3Rg/c4lzsG6EJiEpEpz98igyCNy9N0GkIG
b85Eg4PgYOIDnOtckyWpRaCAseeLeR3yVopTYYactGR5w3mxhW2tYlEV2FgjyRbT
hPj7h7RUZtUhhSbBJIwXf8AkSCbA6QRVmENMtlNXsZzMThdKzS3l5pR0aXfc2kH6
PMJDjPqcfgiH3hrU2JBdgKA/RUal7F5GE2y+4N48JjvUvpF2SsM=
=mU9S
-----END PGP SIGNATURE-----

--r4hp33cu5dvrlczh--

