Return-Path: <linux-man+bounces-364-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5491382D2A3
	for <lists+linux-man@lfdr.de>; Mon, 15 Jan 2024 01:10:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C041D1F211F6
	for <lists+linux-man@lfdr.de>; Mon, 15 Jan 2024 00:10:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29DFB188;
	Mon, 15 Jan 2024 00:10:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GxmoDjxk"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E063D160
	for <linux-man@vger.kernel.org>; Mon, 15 Jan 2024 00:10:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63CA4C433F1;
	Mon, 15 Jan 2024 00:10:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705277449;
	bh=yyRn2glg6Rob9rkv5Wd2F2TyRCWepl7hhFn702wNFA0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GxmoDjxkc1G9AOjFuq1pZffO3MFiTaZ+En+9ft2wxJBmL8WbQkCCmZdza+jO5lTvo
	 p6X9WdEcY1SFeKsTq95xOj3I6T2V1k+qb1iK9rGOHk8ApwQ1agE0CwqmKbyonVu4GZ
	 SfG1RU9yljT7xYuMN5mGW38E73k8nC+Ax2+pX0iy/+IAhq/xysNB9Tu6KlUilBzOol
	 Uj1Th3jJ6inm9UFTezUvMCjlXNxNRHaCUX9UveT0CufD3XzQz2q7o2gIhfcEXHaMTE
	 B9J6mpiJutTlDdpmnL7rGSK441B3cBM505TtG2koNLgF0g1xOZJ2Ygmi6b3ndY5Sb4
	 LFv6mHkL/jRWg==
Date: Mon, 15 Jan 2024 01:10:45 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>,
	Ingo Schwarze <schwarze@usta.de>
Subject: Re: [RECIPE] Pull the trigger on Mister Sed? (MR macro migration)
Message-ID: <ZaR4BqahP7QNVxMe@debian>
References: <20240114154225.5tyuiqrgwyltqmj3@illithid>
 <ZaQmd0aP1XlFiAKA@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="DPbqLWOK1IXExYv4"
Content-Disposition: inline
In-Reply-To: <ZaQmd0aP1XlFiAKA@debian>


--DPbqLWOK1IXExYv4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jan 2024 01:10:45 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>,
	Ingo Schwarze <schwarze@usta.de>
Subject: Re: [RECIPE] Pull the trigger on Mister Sed? (MR macro migration)

Hi Branden,

On Sun, Jan 14, 2024 at 07:22:47PM +0100, Alejandro Colomar wrote:
> Hi MR. sed,
>=20
> On Sun, Jan 14, 2024 at 09:42:25AM -0600, G. Branden Robinson wrote:
=2E..
> > I'm attaching two scripts, "MR-migrate.sh" and "MR.sed".  Drop them in
> > the directory of your man-pages checkout, and run the first with a POSIX
> > shell.
=2E..
> > Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>
> >=20
> > Regards,
> > Branden
> >=20
> > [0] https://lore.kernel.org/linux-man/20231025185341.mqvn7qlm3iby4zgm@i=
llithid/
> > [1] https://lists.gnu.org/archive/html/info-gnu/2023-07/msg00001.html
> > [2] https://repology.org/project/groff/versions
> > [3] You can of course find out how in groff_man(7).
>=20
>=20
> > # Handle simplest cases: ".BR foo (1)" and ".IR foo (1)".
> > s/^.[BI]R \(\\%\)*\([.@_[:alnum:]\\-]\+\) (\([1-9a-z]\+\))$/.MR \2 \3/
> > # Handle case: trailing punctuation, as in ".IR foo (1),".
> > s/^.[BI]R \(\\%\)*\([.@_[:alnum:]\\-]\+\) (\([1-9a-z]\+\))\([^[:space:]=
]\+\)$/.MR \2 \3 \4/
> > # Handle case: leading punctuation, as in ".RI ( foo (1)".
> > s/^.R[BI] \(\\%\)*\([^[:space:]]\+\) \([.@_[:alnum:]\\-]\+\) (\([1-9a-z=
]\+\))\([^[:space:]]\+\)$/\\%\2\\c\n.MR \3 \4 \5/
> > # Handle case: 3rd+ arguments or trailing comments.  This case is rare
> > # and will require manual fixup if there are 4+ arguments to MR.  Use
> > # groff -man -rCHECKSTYLE=3D1 to have them automatically reported.
> > s/^.[BI]R \(\\%\)*\([.@_[:alnum:]\\-]\+\) (\([1-8a-z]\+\))\( .*\)/.MR \=
2 \3\4/
>=20
> Recipe applied. =20
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/c=
ommit/?h=3Dcontrib&id=3Dd02c2e2a15b6b9f5c35d1bef150e23cff27372d0>

I was checking the book script from Deri (Deri, could you simplify the
script now that we use MR?  So dropping support for old BR?), and
noticed about syscalls.2, which has man-page references inside a tbl.

That hasn't been migrated by the script.  I guess you'd want to also
migrate those, right, Branden?

Have a lovely night,,
Alex

> It's still not in master, so if you want to tweak the commit message,
> feel free to suggest an edit.  I'll push tomorrow to master.

BTW, I've amended now the author, which I forgot.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib>

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--DPbqLWOK1IXExYv4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmWkeAUACgkQnowa+77/
2zKFjw//YBFiBNI4/u0d5bVa2yecT8rXIPQJL2EdECff5sYv059+b2NzG4TneBxP
HyYQs7QKuR6CT0TtQ2Nye81rcCjMjfKh2LOXTuN/9k0po3j5FibuHH4vo1+Vsfy4
GkL724wivc3exhNQxB/sEFZ/zIm82/Ji7uveNXbO16DQ+0Q5H7gO+Ii/EjLYrNnx
FqFTjM4S/3YBfKCF3s5nz6F1NIVPFFotu8Prph2IE5eERgMgmBnRudfF/bpj9+UC
XOCgNcVjD4ftwUCyjTvV2A2HVOXREHZg0pTccRF+vOn9Wb/a+adEuUUMR++kaGvz
mIl3CxDm51DPAMpOM3fNnsbrXzlOQg3nKCggjNHmRvwg/CadeTMZPh2Z/PEgyyAC
FD5gppU8bLfIKwQUyEWsxvvGbb8ZZtIxd1BoEQAYnYpFuLYXAXqsgYvuhQBhVE+q
ztiPiZzB8QzeB2XH3McHJ4QPzIlSi00t3K8LjOvS0Rz0/IQ7/W87hnrOuzIf8P/P
IqK2JRhxF3001n66fyFrX4f+dz0a/tHOhwNZsouSbD325jyw+TrV1D2cljcPfgh2
zbzayz7B4hRCtZ0zSXOCPPz+wXJqcSnAoe5yDMbGAgH36T9kPTdPHh24GTIgKiOI
EM33Qesb2UF52LAquelmGLPQeCMkC7ybv7cTCynUUnKZGM9XucM=
=9Mo0
-----END PGP SIGNATURE-----

--DPbqLWOK1IXExYv4--

