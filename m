Return-Path: <linux-man+bounces-3053-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB84AC8505
	for <lists+linux-man@lfdr.de>; Fri, 30 May 2025 01:36:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C1B6E4E23EF
	for <lists+linux-man@lfdr.de>; Thu, 29 May 2025 23:36:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 478E021CC5B;
	Thu, 29 May 2025 23:36:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ok4+S3Ww"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08B211519A6
	for <linux-man@vger.kernel.org>; Thu, 29 May 2025 23:35:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748561760; cv=none; b=tj+SZQEkeiKLnccXm1odB08Z+kr+G2pYlfteuFs1qeIPV83+RJUBZh8+oJXHO/V1FyT7w/SIrRvqOEqes8SqXILOZ1VjRCSyNmo/IIfG/SiOL2jCXVgQvHihYLzA52r0NT69hb0JZ4StEUrdT25s1fbbRZgUAmGn+euB8zFRJ1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748561760; c=relaxed/simple;
	bh=qGNwmTdyghzJamqymw64znjqKzTqOGVOB9PlkTewWpk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dX30XWEjuZePTIQAn0+Lgjt40V8toP8cx+8JCObJJsXUB2GfuARQhn+JW3xcoVSOufG8dIJQCbaoOpGd2DYCR1txYa1UhBsFjpYQG2XoRvZSQ102QZiznQImlO8mjq9e+dX7VvcuWoqYaAJRhqC5w2eYuMCHUtUWEq2ugE4rqqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ok4+S3Ww; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D843EC4CEE7;
	Thu, 29 May 2025 23:35:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748561759;
	bh=qGNwmTdyghzJamqymw64znjqKzTqOGVOB9PlkTewWpk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ok4+S3Ww8UTmdxTY8cOmsl3DbBUh5l1fB+7nwCYBl7ySaZDgir5bkm4JTN5IwmASg
	 LU9FBRzm9x8tIGrTfK9osevbF1GuM7SaUsiPAy1+8jHnkZSm+6vJiaok7em/XAB2Zr
	 iFPNmi814ncqIjkOa1PKvoRjcRZfhlg6dg248xMMPwTNFa27nRHQQt8qS2JVNXNA9B
	 YcgDKxDUPWpemJAmTVQ5DbWYxbNvtlPwRRgkiWAIgSISUvTxuT3Q/ZQjUReFkzHo3N
	 8hW73vmu55forjfjpIIog9P8D1OqlfcmTNzAPas66gPdIKYkluOCtLwJXmBaePmz2n
	 5HEXGIHFQtxOw==
Date: Fri, 30 May 2025 01:35:55 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?SuKCkeKCmeKCmw==?= Gustedt <jens.gustedt@inria.fr>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org, 
	Ulrich Drepper <drepper@redhat.com>, Ingo Molnar <mingo@kernel.org>, Todd Lewis <todd.lewis@gs.com>, 
	Alexandre Oliva <aoliva@redhat.com>
Subject: Re: bug in futex.2, FUTEX_CMP_REQUEUE
Message-ID: <faluzocc2drh5s4p5do3ucwx47gk5ab7k3aikiw6lcfosh65pb@xzyobyjesyzl>
References: <20250527115303.3304206e@inria.fr>
 <s5ec3atfffzxdetxbkjgkdiarnuk2yucnpi5j3h3ppqr72mxna@ml6zpucwnbz6>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mmrvbxxqrya3es2v"
Content-Disposition: inline
In-Reply-To: <s5ec3atfffzxdetxbkjgkdiarnuk2yucnpi5j3h3ppqr72mxna@ml6zpucwnbz6>


--mmrvbxxqrya3es2v
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?SuKCkeKCmeKCmw==?= Gustedt <jens.gustedt@inria.fr>
Cc: Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org, 
	Ulrich Drepper <drepper@redhat.com>, Ingo Molnar <mingo@kernel.org>, Todd Lewis <todd.lewis@gs.com>, 
	Alexandre Oliva <aoliva@redhat.com>
Subject: Re: bug in futex.2, FUTEX_CMP_REQUEUE
References: <20250527115303.3304206e@inria.fr>
 <s5ec3atfffzxdetxbkjgkdiarnuk2yucnpi5j3h3ppqr72mxna@ml6zpucwnbz6>
MIME-Version: 1.0
In-Reply-To: <s5ec3atfffzxdetxbkjgkdiarnuk2yucnpi5j3h3ppqr72mxna@ml6zpucwnbz6>

Hi Jens,

On Tue, May 27, 2025 at 02:01:13PM +0200, Alejandro Colomar wrote:
> I'll wait a little bit before doing anything to see if someone else
> wants to chime in.  I never used futex(2), so can't comment much.  It
> sounds more or less reasonable.
>=20
> In the meantime, I see some other things that need updates regarding
> futex(2), so I'll work on that (e.g., the futex_requeue() system call).

I've refactored this page into smaller pages for each operation.
I've pushed these changes to my server:

<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/log=
/?h=3Dcontrib&id=3Df0114c4e07162ecd13fd7d442aa14fd9e19c9732>

And will push them to <kernel.org> in the following days.
Now, the documentation about FUTEX_CMP_REQUEUE will be in
FUTEX_CMP_REQUEUE(2const).


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--mmrvbxxqrya3es2v
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmg471oACgkQ64mZXMKQ
wqlesBAAhlxolFaOdFJEhVl8vYtXysea6v5BFt2QI+Zf2AOFz1lTWRVrnziuFo3Q
GjRbDwwG3NBOpHPe5ARrRX8K0F81TDUzQ5t29itEkUfZ0ztNxALod5rx8aGnmvuM
d4sBP2n7fhq5I2r0U7jwRZOGVRAVT4D1uQsjQykTsqGnS6JOewTxsriHPMU+38Ks
iHhv6GsXz5DUxsEXfmK5opvPScvcK7KGQAzjTOHrtjewlWnq8cnNHTK1FIzGUzwU
7BMfYpXEyaI4uOICKVSdRfI31M2XeNKQudZbOmKxGdaSHY/dwBpCvIH4K1Me6NuC
XE/OdwUnQK/LCPTvam6s9+5cvk9P4iG1F+7iLxXqntLIZFadFaGnpxP2peEtab5F
r7VNMCgiuB1Rszx8N5DmXtSLgWmKGtS+D4TPrp8KHwhzj8Ym6mQaqyf47fXXMiRG
rCI7eH1dC/xQYVa8eSRkMezSi9GrdwUw1m09XHBMjlK/TwIE8nsokIsTwa/bC2qD
hmUqbCLIRObsiXHHFfPmHhFQcY/cQ96t2MzNFjqPdfFXXDs5w9EPjm/geLPiPTjD
k/iYaDLEHEQwSXCOvjlckiZ5BRLAt4TP1C2gMFpwvs3nhoMrJWSTNWXiZtseWFOn
XEzmvRAwQsA23DHsbfUX21tNc0oaQ4fiCJzqLRKAagEgrWZFq+Q=
=1Rno
-----END PGP SIGNATURE-----

--mmrvbxxqrya3es2v--

