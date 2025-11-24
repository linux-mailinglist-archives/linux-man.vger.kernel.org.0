Return-Path: <linux-man+bounces-4313-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E42C81896
	for <lists+linux-man@lfdr.de>; Mon, 24 Nov 2025 17:23:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D4E1C3AE32C
	for <lists+linux-man@lfdr.de>; Mon, 24 Nov 2025 16:21:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E1A6315765;
	Mon, 24 Nov 2025 16:21:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kwsZcv/R"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0B3731327F
	for <linux-man@vger.kernel.org>; Mon, 24 Nov 2025 16:21:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764001298; cv=none; b=euaG5UQnPaIWQgTPzqCMep7v3ucQJCNSths2UmvhcuaYWn1GywsUIJD72TLdM2KqucwLIjTHup4NSp9PjO1rEsdrwRxk5xlOVEqMrC/DkfSsVCdEs3O+7TkvFMNsDi9BqOMFGghWIx3VbSK4xp7IAZ4bfZueEhBQbpWzuOlAJ+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764001298; c=relaxed/simple;
	bh=SJhePVOvUb8cdILy43HRnCc8Y1JUwXlUdDawqC92ufo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Sbu97yR/ZQgvVtXCAPont5n4ipl+j56x7TEqmx9w8OnuKntmAQvG3P+F4jlCtxbIrAgCoH3w9JdBuamrAAVt8VRGGb9QLzjZHs1Z0vW8aMtUaIrRCVYm4uJ7n3kxf8h57H2gXTocJOYKMampGwpkcu14fTPz6hRBcprztbMLhtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kwsZcv/R; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B53C6C4CEF1;
	Mon, 24 Nov 2025 16:21:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764001298;
	bh=SJhePVOvUb8cdILy43HRnCc8Y1JUwXlUdDawqC92ufo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kwsZcv/RjftGTJ7wfd1AEPqrdyRHtcw/t7gWOoIiGaef1bU9A1fBgAN/PDxcQqzxY
	 tLQC9VcLikTtNypp3Dm3OKK/mmStblZVVAbihvN1ur9CI5FQ/7ER/rToh9FH2Gig9u
	 FppfdG0gVn52VGdVVNxpN2BEUBQI94Iux5IuDcbHxW8pbiKeWbZcJ+AYKAJcyZ/iiV
	 sSq7SOqhTqVm5omMVrAXz6KdDSVYPrWbawFVUKdNrLOD/5HOPRRZpWFhd2QxqSTlsv
	 MJV/Iz9VCrJWOlQm1zq3LYFsmaXLSg67JAdg+pKXS2YYGoGIGekJFCwWyiAoF/hu2x
	 +XDqL612SQwOw==
Date: Mon, 24 Nov 2025 17:21:35 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Teika Kazura <teika@gmx.com>
Cc: linux-man@vger.kernel.org
Subject: AI-derived contributions are not allowed
Message-ID: <fj44rt5nmegh7vi3yv2bfuxdylfs7m6ntpxbl63d6cotqogy22@2cmd6rnuylce>
References: <20251110.165618.2111633615163528521.teika@gmx.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="swhuszgvp6jxgrh5"
Content-Disposition: inline
In-Reply-To: <20251110.165618.2111633615163528521.teika@gmx.com>


--swhuszgvp6jxgrh5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Teika Kazura <teika@gmx.com>
Cc: linux-man@vger.kernel.org
Subject: AI-derived contributions are not allowed
Message-ID: <fj44rt5nmegh7vi3yv2bfuxdylfs7m6ntpxbl63d6cotqogy22@2cmd6rnuylce>
References: <20251110.165618.2111633615163528521.teika@gmx.com>
MIME-Version: 1.0
In-Reply-To: <20251110.165618.2111633615163528521.teika@gmx.com>

Hi Teika,

On Mon, Nov 10, 2025 at 04:56:18PM +0900, Teika Kazura wrote:
> #!/usr/bin/python
>=20
> '''Based on a code written by GPT-5. Released to the public domain.
[...]

> #!/usr/bin/python
>=20
> '''Based on a code written by GPT-5. Released to the public domain.
[...]

Please read our policy regarding AI derived contributions.  It's very
clear that these contributions are not allowed.

Please withdraw any patches that are not allowed by our policy.


Have a lovely day!
Alex

---
$ cat CONTRIBUTING.d/ai=20
Name
	AI - artificial intelligence policy

Description
	It is expressly forbidden to contribute to this project any
	content that has been created or derived with the assistance of
	AI tools.

	This includes AI assistive tools used in the contributing
	process, even if such tools do not directly generate the
	contributed code but are used to derive the contribution.  For
	example, AI linters, AI static analyzers, and AI tools that
	summarize input are forbidden.

    Exceptions
	As an exception to the above, AI assistive tools which don't
	have any influence on the contribution other than enabling the
	contributor to work with their computer (e.g., screen reader,
	text to speech) --where the contributor verifies the output to
	the best of their ability-- are allowed, and the contributor
	need not disclose their use.

    Concerns
	Copyright concerns.
		At this point, the regulations concerning copyright of
		generated contents are still emerging worldwide.  Using
		such material could pose a danger of copyright
		violations, but it could also weaken claims to copyright
		and void the guarantees given by copyleft licensing.

	Quality concerns.
		Popular LLMs are really great at generating plausibly
		looking, but meaningless content.  They pose both the
		risk of lowering the quality of a project, and of
		requiring an unfair human effort from contributors and
		maintainers to review contributions and detect the
		mistakes resulting from the use of AI.

	Ethical concerns.
		The business side of AI boom is creating serious ethical
		concerns.  Among them:

		-  Commercial AI projects are frequently indulging in
		   blatant copyright violations to train their models.
		-  Their operations are causing concerns about the huge
		   use of energy, water, and other natural resources.
		-  The advertising and use of AI models has caused
		   a significant harm to employees and reduction of
		   service quality.
		-  LLMs have been empowering all kinds of spam and scam
		   efforts.

Caveats
	This policy can be revisited, should a case be made over such
	a tool that does not pose copyright, quality, or ethical
	concerns.

Copyright
	Text derived from --but different than-- the Gentoo project
	AI policy
	<https://wiki.gentoo.org/wiki/Project:Council/AI_policy>.

	SPDX-License-Identifier: CC-BY-SA-4.0



--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--swhuszgvp6jxgrh5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkkhg8ACgkQ64mZXMKQ
wqn+rxAArxNgR0z3FVub/j9cqGw1c0BrsyUBNOVyD4I5ndDG8e/155a5AXbG7tQJ
qKuC21IZA3wRLfvI5P5pO6M65R+3SCyInm/SRGYf/FATggT4tdDPwPND8d9wHiku
vXjJQmgYbYepA8ITEfxUJnVS43XeATHuj3Ack1FlQhmyRnO5Yo5+pEYlg6FaLWlz
DhSSWSKct6ABTG0Yq9+s0YNf/Zq/BIdwgnrjaTGjItq0cXbG4QhuWfiSq0yUj1t0
VhQb0dN2scqxPCZ+g6rpqMb0DoYU5iUi7EIlVKY4pmMqXYFfQP4VCVgUE5mWOOgb
6KJsvmbZb4OsVJqkFlIg8OVaXgGctWxocwxsCTEkM65E31AIegMORnd8NdnQ67j2
sbm77mFvxyENQiNn7RNBRN7s+WT9ruGh0rHvA8RY4YFfMgdtbzDoGWjljX+T36sA
pFdAPhbiDlldTz2s3A/8QlTflGIfP5l4NU4Ak2u/yVx9SwmtjRkAdKpEK9+ZMiZ8
ouqr+A6j9+8pWEj3BhtZKFjzqAhUWLWEJlUriHU/TtJMCOCwUYabFPAkzRvZXaHy
g0mphmCncnwk7GmEnNGAKGeCDewooEOGlt9gfPGPcinb2ZO1BpeSfi9Mt7y4Job7
suo84DHSlx8446yJK6njRwypypMdEDGrQtVHf3N8/vmISJ761CE=
=uWBz
-----END PGP SIGNATURE-----

--swhuszgvp6jxgrh5--

