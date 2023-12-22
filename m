Return-Path: <linux-man+bounces-282-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 61BDA81C80A
	for <lists+linux-man@lfdr.de>; Fri, 22 Dec 2023 11:20:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E52AE1F22B6B
	for <lists+linux-man@lfdr.de>; Fri, 22 Dec 2023 10:20:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39CC611189;
	Fri, 22 Dec 2023 10:20:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WdThYrkB"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 054A611718
	for <linux-man@vger.kernel.org>; Fri, 22 Dec 2023 10:20:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D21BC433C7
	for <linux-man@vger.kernel.org>; Fri, 22 Dec 2023 10:20:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703240447;
	bh=/gdiP1K1no0WRUH1QCwPKBIcwReAL5/EzFYftrA5hRc=;
	h=Date:From:To:Subject:From;
	b=WdThYrkBNo6iuIO/ExA+LcvEAMW6KtklUJWuqlfT2Yo0l/RPDfCb3WHmI4ZdYvZ8s
	 Nl22GraPK9b6Scfba7bWNGonLuli7QKp/SRMfniQd26NFeelCkS77Hk+PjNeIlcUjn
	 ARAkxlYC7ArXYdYaSuPQQMHzzZLEtt4BKs11wG6aopjKtb8+NwaCXioixPCjL1L+O/
	 +IMJl8FOIiYLg/fKvnNtCVMlF3Tykaf0u/NWF5dlaeqxlCewNdLzfEWiiOJKZwFPuy
	 xEaSW4SMtNovyEIhLRbrODvh/6i/e9CrtIK4KnHW9awKZyojHsjyysERnJSHiWL2zA
	 do4aS0ovNvVDA==
Date: Fri, 22 Dec 2023 11:20:44 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Subject: test attachment
Message-ID: <ZYVi_GVI6ESR-2z-@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rmGiwSY4lVD5flBc"
Content-Disposition: inline


--rmGiwSY4lVD5flBc
Content-Type: multipart/mixed; protected-headers=v1;
	boundary="4wGVkMvd6C1xDhJk"
Content-Disposition: inline
Date: Fri, 22 Dec 2023 11:20:44 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Subject: test attachment


--4wGVkMvd6C1xDhJk
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

This is just a test to see how attachments are shown in the archives.
--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--4wGVkMvd6C1xDhJk
Content-Type: text/plain; charset=utf-8
Content-Disposition: attachment; filename="attachment.txt"

This is an attachment.

--4wGVkMvd6C1xDhJk--

--rmGiwSY4lVD5flBc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmWFYvwACgkQnowa+77/
2zK0uBAAmlh0z+KHBnA4ilfIBtxoCjLguWsvKXSuRq90ImnLJZMVruY2/C+XMBkW
lWPdhRlUdd1TKU7pA4r5sTNWHTBZUEEzKX+MMbz6zdcbS6VcyxCGdqrPT33jSDjA
wsoXyQy4pMvzT69F/5pzElu/eRP5dyzAdELEXNuCsJz0Qxlj1rCZRFlZs641UJrU
Hh+AQ3112slxyzzIkl5lgP4Rd5frWVY4mkdksO3CBs52/STfWWbR6IcmvZG9SMec
8BO9bW0weTdH65VbanPpnlW7fRqoBf9DB06s7AismqKEBDjGx+G+zJHxET5wDuEE
3wgenfMMluhIgr0M5NLCBjmm5UCCjAOEKXq+McUmyQDD9i4KnEOwHDqwCRlJN+iO
4QOClCMHvEOPz1i6mCr7fHr26PkHfDio5zrgc92bTahcFtxwvk4+BWNu9tqoeJCu
Rj7LNJWN943d3tj1JW4+4bXkRWONQUIzBVWgEZfAFmgwczh75YQcrJ24vaqkKtkd
Zv0C/Jku7g0auo0gvNtItZJIIL5+l//k5Da0DsflL2IVNWgCP930aW8hhgIt1pfa
ETeLb3hoOonWovhBKeRS27OLBv1AuoSeJ7lGZAaPmiP0Mh/f5hjWhogL3VNBmRkA
6LlnJivn4HeRC/OqUOYq2tLlfoHs6EbxV3cxuyVXLu7K44w+7mk=
=kcFr
-----END PGP SIGNATURE-----

--rmGiwSY4lVD5flBc--

