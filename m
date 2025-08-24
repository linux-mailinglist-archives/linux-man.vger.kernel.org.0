Return-Path: <linux-man+bounces-3694-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F714B33250
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 21:17:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 46DB9200F76
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 19:17:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D7A41EB195;
	Sun, 24 Aug 2025 19:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l/v7lY4N"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4279214A4F9
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 19:17:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756063042; cv=none; b=VGcsTYJScR9RxImgmoqQPBgZJAPme8Nj68TVMo/GOnkSES9IFEzkuG/z+OqLUyMH01PLAZJSkRwr9aHHcsCkL3oIuK+L9dEmQw7PIPpn2tYLJSWN8Wgbda9Y43Eeu5WeCYxa6CJLwR8dJ3UhdHPpYfEtw8q21MHeGe6vy3C8+EE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756063042; c=relaxed/simple;
	bh=oGYchCFsm7IZyraHxqIdnIanrg1jSaYSDCK5qNc4WQo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=F/z3Jp4bCxiXk3Mj6ky4iZXFxyQLwEqfv4lXcAJe/4INUf7Npx9TJMJ2DXPnkM2h3DM2Ti2DAQPLKi+fvtRGa3QmdgeausIPg851G/gIo3UeTISbV6fpedK1TUitoFe0uo5klpIgMRyIlyVDXqLVSNI8JC4pWz9OLV0dZ9ht1kA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l/v7lY4N; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 376C4C4CEEB;
	Sun, 24 Aug 2025 19:17:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756063041;
	bh=oGYchCFsm7IZyraHxqIdnIanrg1jSaYSDCK5qNc4WQo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=l/v7lY4NUAxbmBEUnOjMIGR9bVZPxxHkIWxzCE9YAJiP8hlzBsqX6Kj8Bfgih1eNE
	 I5e3ud8TwWhOJ8NtGqJgPLuAdYexIKgouTP/DpOAvZoxKM6xKPP7eedj+vzFl3wztx
	 rBN+UiZrMCtX6wDu0tXW6y+NOCJqQwTNd4ApFGxyBU8rdFziGicfpwTPc/udPrUx3i
	 74VUMB/SjqEgqrxmaaOYVE7QoJb4qGUUt2nzN3opi33SXVpaBBuqzdx06md6r6IcKy
	 f1PVGmMQVElLoZavj+qsZBdXDjk9619rrSW2EYT5OlCL3cDXYp9rs3zh7kPqcGSfd5
	 kCgs4TTl8eVig==
Date: Sun, 24 Aug 2025 21:17:17 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page puts.3
Message-ID: <x3lv64ggfak356bkfnnar365tfid73c4zi2ccyv62trmknw5sh@fcdakf7cz2bu>
References: <aKsmUJzsFnD-5WjZ@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qactzb625yiyh5nk"
Content-Disposition: inline
In-Reply-To: <aKsmUJzsFnD-5WjZ@meinfjell.helgefjelltest.de>


--qactzb625yiyh5nk
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page puts.3
References: <aKsmUJzsFnD-5WjZ@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmUJzsFnD-5WjZ@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Aug 24, 2025 at 02:48:48PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue 1:  I<putchar(c)> =E2=86=92 B<putchar(>I<c>B<)>
> Issue 2:  I<putc(c,\\ stdout)> =E2=86=92 B<putc(>I<c>B<, >I<stdout>B<)>
>=20
> "I<putchar(c)> is equivalent to I<putc(c,\\ stdout)>."

These are correct.  See man-pages(7):

       Expressions, if not written on a separate indented line,
       should be specified in italics.


Cheers,
Alex


--=20
<https://www.alejandro-colomar.es/>

--qactzb625yiyh5nk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmirZTwACgkQ64mZXMKQ
wqmvng/+KrYjxOJVYLbKO16Wc2ewQcyXucyoAtz+im9D18ZQZ27/NIO1M0tzgj0S
gO15dm8EuCkkSSRbL9mEufEV6Ysz5ABjpeSY3kKUzmCY8BMVBMI/KkQLgMkzVFKP
OESCdkKWC9bzx7X8GNbz9Nbn7auiUfaLgycKjjrMDFXA8q1jyStS0c01t790f0sS
3MNNlmcWR65W1x5Uyv44zXkDLJz4z1U54CaYlVMesCdZixgpUkbCaE3T3uG3T6oH
ynKQ8wG7CA+cdHGzCREnTKu7C65H4nJqjQH1TEMFO4Fyh/hyA2mIEFm1zzgYItMs
2Y4RrvO7sCQIAVVmA9EcTnBKOIXu35FZORnkIq/D6AyudA2n7DVNlvhdhV7Vecwg
QHlhwQA/CnUSC8J8eJ6nDfSuBgGDtDJef1IxH5driX5DVQEleat+J2U6HuXLy5EF
0TZvtgBIwAEVOi5qRKv8dV+IXB4edWuDwTIQqaCjbc1ujjC8HQdr4Pb7pindBi3b
F+Q5ydC6y8f/CuxYdJBjIlkKPddpI06PaX9Epz+n4wiR5zHyEpXCD7Ckp8RuIcu+
KnAOPASJAfL8yfkdG7/+1Ruqz6JF4/C8r5YxB8Ok0CcPQh8eHxfkZNzc13u7HRKx
DcIpQCFx0remrUhifpjObpiwlSqRpeBKsG8bPA1UAgyuM8at0pM=
=Lm1w
-----END PGP SIGNATURE-----

--qactzb625yiyh5nk--

