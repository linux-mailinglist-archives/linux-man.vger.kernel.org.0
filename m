Return-Path: <linux-man+bounces-745-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C65A8A4210
	for <lists+linux-man@lfdr.de>; Sun, 14 Apr 2024 13:37:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CB148281A96
	for <lists+linux-man@lfdr.de>; Sun, 14 Apr 2024 11:37:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D98C538DC0;
	Sun, 14 Apr 2024 11:37:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MAkFkOy3"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B121374FE
	for <linux-man@vger.kernel.org>; Sun, 14 Apr 2024 11:37:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713094652; cv=none; b=FwnENPdNwltykJ+waGSxMiPtcn4haEWsBTj28NU1LWo52ZiHpSnp22nW5J4UY9/pg9n6i6RN+aRiuTXzSxBA/4IPnFDQm1wvSj0J5x2yTsyvNUwIdJOrjtXQr3JaR+f03VFdnoM/z7fdP0LwcMdXqyLPLoF4Mv/vaNWbG9qGa8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713094652; c=relaxed/simple;
	bh=xmDqqLEONyG0XfeY6jksLBjSro7GI91LYtpmqoWN6S0=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=QWI2lSPa80T1muG7kGGk6KPIzo4rdEMQiLXl958rpuaCEqH5gyzekXIrV/rvc+qILleEp2VBHqMZcRTBB4tFq0hV/TtiEOJ7isx/SJLT2d/dFhOdWvWHsA+h5R1vGxaabByXQF+lN0eDl0zDBFOiBBwuIUN5GhilnV+NKt+s4zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MAkFkOy3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D077AC072AA;
	Sun, 14 Apr 2024 11:37:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713094651;
	bh=xmDqqLEONyG0XfeY6jksLBjSro7GI91LYtpmqoWN6S0=;
	h=Date:From:To:Cc:Subject:From;
	b=MAkFkOy32G6n/Ythb80ovq85ZG+vOQwTsDPHoKzWnDLkfJv1QFKGH7HqFHOavpBxv
	 kiW03SpkmNXUSTp4BA9X1yCZLR8ZdM8F6MvyCPeScNaQUsVAQOTKqeHG0KDR1etXgG
	 RMOl3dHZvBaMjCHN3CVd48BtkfyY0eWgaaH3Tn+4mcxg+he9COaUkoYBsf5+Im+zr4
	 /0dyYBj76+eVn7P1CPfrRYnRyUxe0ZwvjhdUNPEjI0IQkFSc6Fy+r+wqadQlDCa1i/
	 vQooevH60+M0J8i/ywFLzS62Qz9MKVmKgqGIXXWN7k68FV0vaWlCJ+8J6dNR8NNW6R
	 X9RiiVp7K6h8w==
Date: Sun, 14 Apr 2024 13:37:15 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Deri James <deri@chuzzlewit.myzen.co.uk>
Cc: linux-man@vger.kernel.org
Subject: Linux man-pages PDF book
Message-ID: <Zhu_-FE5sl3vSu1w@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="72oeuKTacPFo2sP0"
Content-Disposition: inline


--72oeuKTacPFo2sP0
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 14 Apr 2024 13:37:15 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Deri James <deri@chuzzlewit.myzen.co.uk>
Cc: linux-man@vger.kernel.org
Subject: Linux man-pages PDF book

Hi Deri,

Since the conversation in groff's bug report was getting off-topic, I'm
opening this email thread.

The makefile target was recently renamed from build-book to
build-pdf-book (for consistency reasons).

I also reorganized the files to put them inside the build system.  Here
are now the files most relevant for generating the book:

	$ find \
		share/mk/configure/build-depends/texlive-fonts-extra/ \
		share/mk/build/fonts/ \
		share/mk/build/pdf/book/ \
		-type f;
	share/mk/configure/build-depends/texlive-fonts-extra/Tinos.pfb.mk
	share/mk/build/fonts/_.mk
	share/mk/build/fonts/TINOR
	share/mk/build/fonts/tinos.mk
	share/mk/build/pdf/book/_.mk
	share/mk/build/pdf/book/prepare.pl
	share/mk/build/pdf/book/front.roff
	share/mk/build/pdf/book/an.tmac

I removed the Tinos.pfa file, since now I generate it at build time
=66rom the Tinos.pfb file (installed with Debian's texlive-fonts-extra).

Either the reorganization, or the generation of the font results in a
new warning:

troff:<standard input>:1649: error: cannot load font 'TINOR' to mark it as =
special

Since I didn't notice any changes in the PDF visually, and I removed a
gigantic binary file, I proceeded with it, even with the new warning.
It would be great if we can do something similar to get rid of the TINOR
file, and generate it at build time.
I would also like to do the same with the Unifont font, which I haven't
yet added because I hate adding gigantic binary files to the repo.

There's also the page issue.  Now it seems to reset the page number for
every TH.

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--72oeuKTacPFo2sP0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYbv+sACgkQnowa+77/
2zLJNBAAqxBi4MpHPWHLmtkb4smQHB3wMTf3R+vGfDfhpIQC7lZO7mK6JjKJ/dYg
9Yl7H9vdu4QB5X5nvf2JD+/hJELnWAaI5J7FtEX4LzNH0mFuI+Pjwqz8/KjSstPn
qJ+/X4Lg1gRHoifMS3tQo/iCoy5lf/5qNPwv7i/DWwvvjk/IUSsyoTNuu4nrr//g
hovyVSV/P0Et1bX5GgPLwJtSujsOFYZYcTlNlh5Z8pFH9xk483RU+ipCIWzlEJHO
xXAdrWRnuOHevLu5aX838gblQbw/ApxuXItH4vkxsdEWeBpukEVJV/FuRR9ZpWqQ
MhUOtYBTmfg7FjIzA6fSnqwDh8iBfz64/mOmd//y7gyusc4DMaX1D0AiGgMg2SPN
So6OqKfspre2bynV2cUT2tp0pcHKrgjQL31HT/2pT1cLAYi4e20gutUyg2coEMwP
iTTem/Op58AyVKfPknXqxFLjgAwKX0nS8+jwptto87qxmwTvwQTErY3SDgnBRP5b
zJhfjhOr+DSPbbxsh8KfLO7E7/mtDeeQK0ZiUhP3IOk9gR7w2C4vy6mxMldkwKVR
BaAIjgOwhmQyAeOUGlB4M7SBfIlQTXq54ViUembTNnnvXlE3SO/HdSsljLqCZ8vN
2BeTgrthhfeyirtt7Q9/jkcFrO4/+vkDkAVz3kMP4eWu1i0tPz8=
=JAn3
-----END PGP SIGNATURE-----

--72oeuKTacPFo2sP0--

