Return-Path: <linux-man+bounces-831-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 826378B4527
	for <lists+linux-man@lfdr.de>; Sat, 27 Apr 2024 10:41:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1FB541F21D76
	for <lists+linux-man@lfdr.de>; Sat, 27 Apr 2024 08:41:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D4BE63BF;
	Sat, 27 Apr 2024 08:41:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MOMR2upI"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B24064C
	for <linux-man@vger.kernel.org>; Sat, 27 Apr 2024 08:41:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714207308; cv=none; b=FU60SLZornZ72LUbHf4oTdpLZ0IPPIOxK/81hkrG/+FIsbFhx5POXnA1FJRdMDuXuYF25tNYXk5r034HkfXtWLUwff6rkNwxpoPtxdHnbS97/rOJd1E/5IkgaAWF9o9EY8qnXKvWrh4sahHbBJDqfebQEZNR/T9uvaRRqmilS2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714207308; c=relaxed/simple;
	bh=gzpUnSSYQrmDcjWSoduzoqUHnyVVxQs83pVcZuu2W/I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EXICq0ObQXo/BoHTbbovP9qedZmE/i7gjgpM+Ij2tanGtmw1YSykqhRua2kyn78V+Ab0u2DIEz63N/e3zkluS2nF5Sj7AYV84qC2jXyi8JBIRTJSqwWzvIlu4UqxkuY13hHnG3JU1hIxjw64MgMsmNK1nxQZNU62AibQjJMKYgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MOMR2upI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9A58C113CE;
	Sat, 27 Apr 2024 08:41:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714207307;
	bh=gzpUnSSYQrmDcjWSoduzoqUHnyVVxQs83pVcZuu2W/I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MOMR2upI5VqGrxkiI5+odldItwAKKItNJ68v9mHZR8z6exvA6zWyOi4Ji5CBSrd/3
	 /yrFCbGr7WzRX0j58A6CWkhmBYFASsWvCVIenm9BAu5pRXbO9DX9lE0AH+eU5h5wOt
	 YVyxUM2c2ZI2hPM9RfhJDvBZcx2XTFvXeYpT5pW6WxiAhgsn6zyboirzB1J++oYPWB
	 GFuxLZOcuWLuXEtZtLM8Ch5eKrovoSXhmkR6dhw4oU13K9TPqJYX8a0hS0pj0NclSV
	 eAfaWVvFEbnQn28tYMHiGJqq4YOpORRi4XrRyr9OAayCSNQIgpTkRrw9jUDSCaL/+J
	 2BvsyGz0hLjlQ==
Date: Sat, 27 Apr 2024 10:41:44 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Alexis <flexibeast@gmail.com>
Cc: groff <groff@gnu.org>, linux-man@vger.kernel.org
Subject: Re: man(7) <-> mdoc(7) (approximate) correspondence table?
Message-ID: <Ziy6SLSeanPrcKaW@debian>
References: <87h6fnwcqv.fsf@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vGGe19UH/WLI2jtR"
Content-Disposition: inline
In-Reply-To: <87h6fnwcqv.fsf@gmail.com>


--vGGe19UH/WLI2jtR
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 27 Apr 2024 10:41:44 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Alexis <flexibeast@gmail.com>
Cc: groff <groff@gnu.org>, linux-man@vger.kernel.org
Subject: Re: man(7) <-> mdoc(7) (approximate) correspondence table?

Hi Alexis,

On Sat, Apr 27, 2024 at 04:17:28PM +1000, Alexis wrote:
> [ Not subscribed to the linux-man list, so please cc me if replying there=
=2E ]
>=20
> Hi all,
>=20
> As someone who's much more familiar with mdoc(7) than man(7), is there an
> approximate 'correspondence table' somewhere that gives at least a rough
> sense of which man(7) macros to use when, in an mdoc(7) context, one would
> use a given mdoc(7) macro? Such a table might look something like (to use
> some obvious probable correspondences):
>=20
> | mdoc(7) | man(7) | Notes
> +---------+--------+-------
> | Lk      | UR     |
> | Op      | OP     |
> | Sh      | SH     |
> | Ss      | SS     |
> | =E2=8B=AE       | =E2=8B=AE      |
>=20
> i recognise that there's no bijection in general, and that specific mappi=
ngs
> might differ between projects (e.g. the Linux man-pages project might use=
 a
> certain man(7) macro where a different project uses another), but even a
> project-specific table would be helpful to me.

I have similar problems when writing mdoc(7).  What I tend to do is look
at good (e.g., OpenBSD) mdoc(7) pages' output, and then look at their
source to see what they use.

I can only recommend you look at pages in the Linux man-pages project,
and follow what you see (you can ask me if a page is a good reference).
I try to have them all with perfect source, but there are too many of
them.

> i thought there might be such a table in either groff_man(7) or
> groff_man_style(7), but nothing leapt out ....

It would be interesting if there would exist such a thing.

> Alexis.

Have a lovely weekend!
Alex

--=20
<https://www.alejandro-colomar.es/>

--vGGe19UH/WLI2jtR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYsukgACgkQnowa+77/
2zJ0SBAAgrz0Uft9ECY0MtsDbOw5wAuUCtExj/8B1xz0XCpiXBMoXZ0vwa2n8US+
AlI18mDxvQ3kc7AeqpyusZaXynkcSLWA64wE/ZydB7f7UgfsvfH2zoHte7L7crw2
gh5GnR2j40fqhq0imMvoz8xxb631IkH3n8YjADzxK7+XeXYg48qsvnsdZdjYvWzf
xiuMxV0QXMcKfi7Vx6cqCSNeoh6Xxoh3PR2o/Xd0coEMD8e+iJrbzA3kFT/C4tbv
SzBQKd5A/IcD2JG2pbbSZVMnTUSM9DOQBBvaTU5uYmS0gjXT3Fepy07v02DJ4K4A
7eg36/fJtZEIoJNedDdpIxK44FFE3Fc/PGRv41OHtlGjORaVdtDpm+Qhn7SrdLn2
9bJba3bcW1V5NfvCDP2ZwEdQ1dlkQYJLcZtVPiWibI4GlETG87lnEHVto9vptdrx
pCaACUi5039ESGSiiO5IG0GrMv5/JCf/ZOyQRQYSLHHwNCJ9OxKrL6okbEdbZI7I
4lQ5BFFzjb9Znte/+GGV3YgIGlgyC02FIlh8g/VG0kWtbGgsrw8IfpeePV/9V4gi
3As4qmHyJFpzDGqr8PvxPUWDB+2DR6+y1HsF7pbHVRLwQw3v0knShCOI/o130bgH
oyNxai7tsqgTzrTpTpbadOaOvdNtA9dhMQ5vgID72kd1cvBAiVA=
=B7jZ
-----END PGP SIGNATURE-----

--vGGe19UH/WLI2jtR--

