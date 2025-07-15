Return-Path: <linux-man+bounces-3266-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D22B0536C
	for <lists+linux-man@lfdr.de>; Tue, 15 Jul 2025 09:38:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 75D967B30DF
	for <lists+linux-man@lfdr.de>; Tue, 15 Jul 2025 07:32:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B51DD6BB5B;
	Tue, 15 Jul 2025 07:32:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ocw9ib96"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C76A27147F
	for <linux-man@vger.kernel.org>; Tue, 15 Jul 2025 07:32:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752564759; cv=none; b=OD+6X0YcCYSl3+FrSpHPA+F2buqjD23SqBQc70Tiuxq8u+jQCXYxWOCEFuse50M7rA6YebOiHXU3/wNOOyWjoVLwrF9ictz3KpQUr+UZ4qpHJQw5en5O4Zabq+++uY8F+x224+8PoAeR1jgQ2mQuaVSgtg0+ziADgsne58wjZ9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752564759; c=relaxed/simple;
	bh=o9wPAtirXZ/CUOLkmqwAKzMO8aBp2CB2Bs75lv2aBvw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ByrdGWntUUjc0boRZY1Ejs8zsPjcm/iZ85qerXcs/MDwjm9QZaCu6M3yLOzL4XlonNoIsgXXmHsUDkj0Z/f/bIWsOIHNVPokok7zDtT7tu1abmgnixeYbG0/NLUqNz8nUHzUkSHiZmjDgYAzGc+jk0fuPQOSD8U+0lDxaoj9g+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ocw9ib96; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 044A1C4CEE3;
	Tue, 15 Jul 2025 07:32:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752564755;
	bh=o9wPAtirXZ/CUOLkmqwAKzMO8aBp2CB2Bs75lv2aBvw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ocw9ib96SYznsMA8isk7dC8oXB+FTusto0+zBaJwq7skeFeYnCgYb/3KdMBcumyqe
	 C+wo4/7KddI7rHKfDGxl4hMRXBba+YdGo3HGwF7V/y8IR5hbB6JcQJIE8AqyfMsWpp
	 b3bUvxy3qIFtTBn+AVnKOjloMEVQl1/qfwNnjvJKvmXhic1fb224SOGCOxUQgIWC1V
	 sSYfVjfqXZjJtpyKSqCI8olgHR2khj6eowBdf9AY2pKUGFxkIz1ytSdo3o9gZ3OJHc
	 wDLeBHVtANmqyEnv5fufWsaum+Ou60sYqyamNcZ0tPvT7iqAhN7ZJoYJQDE1yS4X9B
	 yi/YQ4Z8f9d4Q==
Date: Tue, 15 Jul 2025 09:32:32 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Terence Kelly <tpkelly@eecs.umich.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: _exit(2) vs. syscall(SYS_exit)  (was: Re: for man seccomp)
Message-ID: <454tvrymgu64ftaapnog2e5xzrgtpuqfpdq4iyinybjo6fjpuf@q6zthgfcbpli>
References: <45c2afdf-729d-d137-e15a-074123f5c87b@eecs.umich.edu>
 <4oxc4pfspkqg3v7exajv42lw7s6tgy7xcji2yjyx2bi6b3pcya@sl7bllkflzcg>
 <259aabe5-aa71-5165-8ec1-f55baa04036e@eecs.umich.edu>
 <ima6z2tqxkogu4zevqd2dww6oglouienk26qa25nk2sjere5h5@3ve4lzz2utgv>
 <37dc9e2f-e478-9573-bbd6-2987ac6809aa@eecs.umich.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wlppaiesli26kbhw"
Content-Disposition: inline
In-Reply-To: <37dc9e2f-e478-9573-bbd6-2987ac6809aa@eecs.umich.edu>


--wlppaiesli26kbhw
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Terence Kelly <tpkelly@eecs.umich.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: _exit(2) vs. syscall(SYS_exit)  (was: Re: for man seccomp)
References: <45c2afdf-729d-d137-e15a-074123f5c87b@eecs.umich.edu>
 <4oxc4pfspkqg3v7exajv42lw7s6tgy7xcji2yjyx2bi6b3pcya@sl7bllkflzcg>
 <259aabe5-aa71-5165-8ec1-f55baa04036e@eecs.umich.edu>
 <ima6z2tqxkogu4zevqd2dww6oglouienk26qa25nk2sjere5h5@3ve4lzz2utgv>
 <37dc9e2f-e478-9573-bbd6-2987ac6809aa@eecs.umich.edu>
MIME-Version: 1.0
In-Reply-To: <37dc9e2f-e478-9573-bbd6-2987ac6809aa@eecs.umich.edu>

Hi Terence,

On Mon, Jul 14, 2025 at 07:46:00PM -0400, Terence Kelly wrote:
> Hi Alejandro,
>=20
> [separating out different sub-threads of the conversation]
>=20
> The attached tarball "exit_example.tar.gz" shows why I don't use "_exit(2=
)"
> per your suggesion.  On a late-vintage Ubuntu 24.04, it doesn't do what I
> expect, but my way does: Compile and run both my way and yours with
> "run.csh" and look at the output I get from that script in "run.csh.out".
>=20
> I'm not sure I ever figured out why this happens.  Any idea what's going =
on?
> Maybe the C wrapper function is making a syscall that seccomp bans.

Ahhh, I see why it happens.  It's in the seccomp(2) manual page:

     SECCOMP_SET_MODE_STRICT
            The  only system calls that the calling thread is permitted
            to  make  are  read(2),   write(2),   _exit(2)   (but   not
            exit_group(2)),  and  sigreturn(2).

The libc wrapper _exit() calls exit_group(2), so indeed, it is necessary
to use SYS_exit.  Well, since filters are usually single-threaded
programs, it's fine to use SYS_exit, I guess.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--wlppaiesli26kbhw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmh2BAoACgkQ64mZXMKQ
wqmpqw//TBJbXNKCuF+gEeqNnYXGm0tVtrpzfVsndH9LxP+FD7hPrAUrhDlyQb0q
Hnb/csvwWlPnD72fHWf2/qaT1UwQ3G8xLI7HQ0valN1IkZOLr+ow5CM5vs55gUU5
HCJmFkTJk6ZYGCqohn97bpjwqPRkfRmG68FqBHhQwRSFQvt8lGUHh7t1zL4BdRNc
2kUvCZ8XguM+Krgc16KDT1PmhLci8CXTGSs/zttGBdAywucIcomvz/lRUO0DkbSv
0egFYt64FqzTlQBS5KlEtAAOR+t0uv5/oMMEYCvEgAVSHISaCn/FQMVLV9Nh+Psf
fCBfhdCWNLtYQip6LgXPzhZKDCUnbvSN7Z3vpuwXhcfoJaIdBq1ba163ut9LfLNP
GBp+/pqdYBwB9xoE/dEtRoD9NxogzCg0guCG3OgbDksk+jysxoZzfCSAbzxXaWKv
GPLY5pPfnDSnUhfLshCT36oMq29REsTA1IHT13gNRnWY4W2d9ADJaFqp+uFJZzWo
d2A7SZZhzgWzXvdMWd19JEsxwBiy8rLL9wOB9cFlDBTPVIc2g0r+YMirQq/Tg21H
sSuoHYuaVHYl8ru/fsgFLMDbMYMqYKdAAV4ViZZbFTPP+sItTVU5sJOS/788FIsp
gDP5FY3psW4ph56+JtyQ53rg18FQd6jjTIZfbFWcNMA24oObXTY=
=sYjP
-----END PGP SIGNATURE-----

--wlppaiesli26kbhw--

