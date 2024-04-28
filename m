Return-Path: <linux-man+bounces-836-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B618B4ABC
	for <lists+linux-man@lfdr.de>; Sun, 28 Apr 2024 10:37:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4D6611F216C9
	for <lists+linux-man@lfdr.de>; Sun, 28 Apr 2024 08:37:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DF8153E0C;
	Sun, 28 Apr 2024 08:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RagT63nM"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1944EB5C
	for <linux-man@vger.kernel.org>; Sun, 28 Apr 2024 08:37:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714293453; cv=none; b=GO7Os06lofjtioQnJcwD82L9/p16gldsevLII52E8m09H8a0peA619ppqMAx4LNVLTLoZ2/RauL2/kgZZkNKPpiTpykl2xNayk+bsbL5eL4f9TYL9y/9hpoDq9QJjmN/CklJPH0ckcA8JSF2R+NUnB/8gJqIq/tj3TV1Suf/p50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714293453; c=relaxed/simple;
	bh=p5vLEDFfesrF37Lz8pKoNcjkO9tb4J/+ooODNWFel3o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PipYFsjCjMyJ0+hzqgFHZ6WQGvysU8z05kRasS88UgQGlJCyGZK1SdQSz5pkyzVDpWJ1kqvA7WgrMOoMJfuF7C4Hzb2f6/CS5s44Eyyo0FHpmC8XCG8ZpHdhKZDLVNeVzjPCQhUjaKmqdvNXcH2kXef4KlqxIUe8rm894Fem4Yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RagT63nM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 042D9C113CC;
	Sun, 28 Apr 2024 08:37:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714293452;
	bh=p5vLEDFfesrF37Lz8pKoNcjkO9tb4J/+ooODNWFel3o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RagT63nM6FhFBtlxo9gBz+w4DhVK0Ch5F27nNSDWqAQCHYxYwa1Oe2YWd8YwN/HeM
	 TkON2iSOwNjt+qnEYf8y5VWJ1J9q0/YGZ0a3ZX3SFrupt02WoR2dMdpDMD8/9sC4NO
	 nJpWWn2LpPolv2NAjdhgJIYff5OeyYtO4KtphfUn8StLq2jpK/35rDzPP9gRKnRAoM
	 cbQArDLaceu5XWpEJ3kEV9zTqRVcvnzSu79yDeyp7OrPUeFaj9ifDu47VbXtxo60gq
	 0IZ5DP1lUDhgg8eUwwZmht8CT8dHOXL1XifSBSOKWxBKQBm34JvCx1RDpk9wemcs/C
	 Cz6HWVpQVBvQw==
Date: Sun, 28 Apr 2024 10:37:23 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Sam James <sam@gentoo.org>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: Please consider reducing build system churn
Message-ID: <Zi4KyftBnQZtr82G@debian>
References: <87ttjm8ero.fsf@gentoo.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="9T/w3NgVHgOBvRdO"
Content-Disposition: inline
In-Reply-To: <87ttjm8ero.fsf@gentoo.org>


--9T/w3NgVHgOBvRdO
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 28 Apr 2024 10:37:23 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Sam James <sam@gentoo.org>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: Please consider reducing build system churn

Hey Sam!

On Sun, Apr 28, 2024 at 02:19:55AM +0100, Sam James wrote:
> Hi,
>=20
> I had a request to bump man-pages in Gentoo [0] and I must admit that
> I've been fatigued recently, both by other work, but also the large
> number of build system changes between man-pages releases.
>=20
> I already try to review all build system changes but Recent Events (TM)
> means that one must take even more care and not be fatigued by changes.

Yup, I had the same feeling.  :-)

> man-pages in particular is a critical package and if I can't review its
> changes properly, I can't package updates to it.
>=20
> There's a lot of churn commits like
> * d0d2e2f9a21e623db208b599643e7728d71e7e6f,

The rationale for that is that I diffed the whole build system of this
project with liba2i's, to reduce maintainance work.  Any spurious
difference was removed if it was unnecessary.

> * 57d0f8b4f1ba43fd4c4bfbe826d1b255c6ef9fd5,
> * cdb8bd9563dd8a0d32138de40bc64f0c3475790c,

This one was because man2html(1) crashed on a page from tzdb (which we
import).  I guess that's a necessary change.

> * 6658bc41a8d66afbf348126f8adcffe86227e2e1,
> * d7b3f23c53d83ff714dd829c929a27f2c05aab23,
> * 7de1139b82571dfe55224022e05e095a32b1ea89

This one was requested by Debian, so that known lint failures don't
pollute their packaging checks.

> and many others.

Those that I didn't comment, or the many others, were triggered by your
feedback that the build system was complex and hard to understand.  I've
been trying to keep it very organized.  But yeah, all that was prior to
Recent Events (TM), and I want to reduce build system churn
significantly from now on.

>=20
> With regard to d0d2e2f9a21e623db208b599643e7728d71e7e6f specifically, it
> might be worth explaining: a) what liba2i is; b) what commits were
> actually pulled in (possibly with 'cherry-picked from ...' or shortlog
> output or something at least.)

I didn't cherry-pick anything specifically; I run diffoscope(1) between
both trees, and tried to remove the trivial differences such as white
space, so that it only shows the important diff.

> Alex already knows my feelings on homebrew complex Makefiles so I won't
> repeat them here, but I will say that homebrew complex Makefiles
> combined with a high amount of regular refactoring makes life much
> harder.
>=20
> Please consider either getting all the refactoring out of the way if
> possible or reducing the amount of churn in the build system.

Agree.

Have a lovely Sunday!
Alex

> [0] https://bugs.gentoo.org/930798
>=20
> thanks,
> sam



--=20
<https://www.alejandro-colomar.es/>
A client is hiring kernel driver, mm, and/or crypto developers;
contact me if interested.

--9T/w3NgVHgOBvRdO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYuCsMACgkQnowa+77/
2zK+rQ/+LcdFY/0Mpt6rrbzI+9rcDKmZUECm/CX1CBP4nTk8WlCOxO0cwKKrGynD
db1z7iCIBRiw4Abg65KxCkQIm5fl1nPuQf630xbxXADMtaaqloWcQ/vbo7q3xFt5
3oI90Pm+AAnGHzdikrHQQs5MuYqhRQ+C5J7rhTkGd9cLBXzOUZGH2gvRTa+b1Wvi
JrOwOFbsPpF3ujwPchYpWSsAcCNEyN3Lb+x1MkZ50K0QGJdUaQ/0Rki4O2lqvjI+
XifZHrQojtvSv0ER8mmZomtE0zylONIpwRGlxlCbmrmvZUSL87I+oNE0yw3xT5rE
3LP/VhXTx8OPAU7g2jEWyoLU5hYjC+3UnuKB8C7VQ3jqyihveV3TaieUVmZici+1
zqbFo3NH3/UDmGZlmfqh7Rpenb4IPTeADOeEC76BDWK7ocY2vWIOA5T81TVgqHjO
H5rSyCflcRRerwpWUUHs/t80CXd2bG/7UefyMu7xdfqYM5m0iIrn0T41NIe1bZMd
wEQgycYadYlqkr71y9E+bfKdF4gK9QIXs028UGbEwhJZvG5deqALHRz2y30P69td
ihXxWjwWZYrMKyE1M3uxEtfNcYOeoz+yRCVAQ38dVNA9KGo1O2aMe7cSrTBe9qce
/iWknmNn4rj0BvMSEagkeibIZJcRNwFhJFDl2kAK7FgnLX/JurU=
=n4f8
-----END PGP SIGNATURE-----

--9T/w3NgVHgOBvRdO--

