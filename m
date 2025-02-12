Return-Path: <linux-man+bounces-2421-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EB557A333BE
	for <lists+linux-man@lfdr.de>; Thu, 13 Feb 2025 00:59:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A78C316688E
	for <lists+linux-man@lfdr.de>; Wed, 12 Feb 2025 23:59:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53AEF211469;
	Wed, 12 Feb 2025 23:58:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R7uyWYaX"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13FB9126C05
	for <linux-man@vger.kernel.org>; Wed, 12 Feb 2025 23:58:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739404737; cv=none; b=ouzgY4iyGwzLwyKbJAXYJ4Iit0u2Tqxldv9v2fJa96y6UILAgS2sVKAofRgUL16okcHx2L2zKrw2QLQW8oV/96rJzpgzHvs41QA5r4XebOq9veqLus1xz68TgbZcgdlb0k5saPmrKOY8Pj6Ei3UFU4Cz9crT5eb2He+z7RFiZmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739404737; c=relaxed/simple;
	bh=UzkCKfPLO4HYp4J8bCfHiyrmnAr3D1eSSWN6s1yWVFw=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=HPbuL9X6CoaT+tpm0MJ1mjhOnNXP6+nHcKHaOtWgwjdQwlVNsz6CEshSDKV1PgROcAO8rKRHSILQYkGhzL+sH5nHj26x3NwZwlTFtrOoabyOPIACVHPolLV7YzMLbVB2KiybQ40wUox8/99HO7k8E4LMVarCWU43xuDM2gRgMRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R7uyWYaX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB520C4CEDF;
	Wed, 12 Feb 2025 23:58:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739404736;
	bh=UzkCKfPLO4HYp4J8bCfHiyrmnAr3D1eSSWN6s1yWVFw=;
	h=Date:From:To:Cc:Subject:From;
	b=R7uyWYaX3OrxQS1BNpiHms2FZmdGL+aASwg0f7b/AiCcmM5uSozPHAduLTEaU1NB8
	 HgXY3LW2dX9oeK2dVbQBMEd1brkFZvTCcRRbQ/ruDkp++LWCwy5FamPYypbXDcx6qP
	 B4biTY1JxqljHa8by2eoGjf/iJ36recSRnxyQqthSaeC8tf1qm4ko3hpCIe+EYftSe
	 y8NBcALpBKv+/XdmQ2OENApyU6FwmLEF1XvXfswS608MU4GNRaQE52lNrWtGm/Lr2P
	 C9wqwKaXtgZTuU8ICRHm1LJeOoZ/qCuPwFXMYTz8ouuS6C7HaI2rFhEhBlbHOgHFDt
	 YaPS8dNmxqLGg==
Date: Thu, 13 Feb 2025 00:59:33 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Unix V10 Volume 2 PDFs
Message-ID: <6jefoqbmf6fwzjjvonee7npjvpvwayksydqjcouijbfufipn4z@adrjauck4ov4>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ipqxs6g7bxuse4ju"
Content-Disposition: inline


--ipqxs6g7bxuse4ju
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Unix V10 Volume 2 PDFs
MIME-Version: 1.0

Hi =D0=BD=D0=B0=D0=B1!

Just wondering...  why not build a new PDF from source, instead of
scanning the book?  Doesn't groff(1) handle the Unix sources?  I expect
the answer is not licenses (because I expect redistributing the scanned
original will be as bad as generating an apocryphal PDF in terms of
licensing).  I sometimes wondered if I should run the Linux man-pages
build system on the sources of Unix manual pages to generate an
apocryphal PDF book of Volume 1 of the different Unix systems.  I never
ended up doing so for fear of AT&T lawyers (or whoever owns the rights
to their manuals today), but I find it would be useful.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--ipqxs6g7bxuse4ju
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmetNd8ACgkQnowa+77/
2zK68g//TSS5k2stf4vgUOmmBf3/jbe2m+D4SvHIJeh04GrNCr4YXBVLyVj4/lTk
Fa3wCwWQWTwkuVqAnkBViro00y7U7m5h/s5/K2OKlkMVcSUNiCDfPf0HZBvF6KTF
Nr7HaDXJWWb3iys5Nx3uzLDHFZdmyQEaxCuAvh45aW4Eo3CmH2Fbz7tvDcAjDFJo
U023bnpVwVmS95CVO1qPWhLMyD1TH6dD++EEdu3t1JQtuTPGE+KUUeT9SHucp+sE
Jon0Fm3/UOI97AnRlyKiUQoXIOz5nI4rgZVxYm6HNKQymTZsz040YkRzuO2d27TV
Iro1+y6zZ2OjqnRb6SWcIXCIf6mASEQ3alumPkbZGSijBjCnr+GbACv8qasiqZBL
oM4uELemXyPmaYnbUyrgO5wPbuBVuKVg7R0JQ7VW4K54evsM+uKRrH2Em70Cc2cr
g3oIGOWlOaoqB4Y+dIF54o97Dp2l+PkpJngEVi48tUJbT8Ux3885uYa1f4T4nWuk
9xbpwNFgttab32SY++RHj3pCYHjQ0yZLc9fR0LF6QLu8kHFZD2BJDUhO2vLEu8MF
UYdyk0Iwza+5C53oXKPkv8NdVm5N/Qq7g2bbQ4rEqvBfazN2k+FR2rNC6tAU5y7O
V6tjVFeV31A07C18YdZ3XuKAOgtYB98EKqyTrhBZrV7lIUzbEhI=
=YKoq
-----END PGP SIGNATURE-----

--ipqxs6g7bxuse4ju--

