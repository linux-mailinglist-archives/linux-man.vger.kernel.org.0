Return-Path: <linux-man+bounces-4002-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A355DBA8E60
	for <lists+linux-man@lfdr.de>; Mon, 29 Sep 2025 12:34:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6FE92165867
	for <lists+linux-man@lfdr.de>; Mon, 29 Sep 2025 10:34:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E81642FBDF4;
	Mon, 29 Sep 2025 10:33:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y21c8GbV"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A61A42FBE1B
	for <linux-man@vger.kernel.org>; Mon, 29 Sep 2025 10:33:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759142026; cv=none; b=YLEtyY5YEbpMGFD2BpYNjZrNp2G+doQkNPmHGQkkE65f3+IQ6wNkf4+V7QhSAA9jQRFrVX3jEPIo2b1MLAyUM1pAKivJ3K0osRFjXZG7rLk3nLujrggpl4cgS4ZVUNLAy90qXN4q+tojUWF0nRChNOao/1Tc+ZZABRFSRq0ivnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759142026; c=relaxed/simple;
	bh=QDuNwBUxwtFgzDMtCQGulfF3qGFUgYZDl4+EUnUTd50=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LnvvFmoYlZRMGPkMEPDZ+pJrgFUtt3TXlZ6dVDaPP+Fa0sfGRM01m0lQW/qxnmvIiqiCdIOdgiIrpI5Y2leqWejfNKmVuWzHrsAafo3jcrtp8fPCrz4An39UYAf7cPl89wemRBYRzRmZbD1h63Roc3CfJfqOkI5cDS4q6b5XmSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y21c8GbV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6D35FC4CEF4;
	Mon, 29 Sep 2025 10:33:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759142026;
	bh=QDuNwBUxwtFgzDMtCQGulfF3qGFUgYZDl4+EUnUTd50=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Y21c8GbVaVwHzYabDGG1+sqUR3Ko4YmG3f/T/CRU1UhBcadsdrh68tp1hILtOjEPX
	 dJJ8ncJdhMVjgGhtwBRme8oHdjk+3Y+EXmfvwz8pBavziLvYjR02aiFpPWKRTY+NiG
	 jNlm2eqSFN3/YTDD6LpqnK3IhI7sKjDvB6yqmnf3hsYuBnCX5xcLTCq6X6e9WLxSUY
	 AAhTExfXINIJcvY/bgL488oQy8V1DmHEPkPQbtRdD3eKL6zRM0Y4wIgchNqpqhGDr4
	 OmoUC+tLeTt+4uD67ppqBQwFDQBJcetjOvnlOBiwB2z25Fb5fUgrkOVN3OwHRgdswb
	 MRu+7fhr5aQQw==
Date: Mon, 29 Sep 2025 12:33:42 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Arsen =?utf-8?Q?Arsenovi=C4=87?= <arsen@aarsen.me>
Cc: coreutils@gnu.org, linux-man@vger.kernel.org
Subject: Re: Move GNU manual pages to the Linux man-pages project
Message-ID: <avcjkfibgplayxdpe4nisfpmtmlwdaubesdo6oj5qj2sxfqpsr@iypkg4k2fauv>
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
 <87jz1sm2t3.fsf@aarsen.me>
 <fziyxvozscytwasmhtrpjfqbmldxmggjkdm4pzo7cupxhby422@czrmkask4xsc>
 <87cy7e7hml.fsf@aarsen.me>
 <sdprfcwwtirbygpx4pqcavchf7hl3ichxjcxsr6kn6pl3f2ri6@7mshrxxpjhn3>
 <86frc5zj4i.fsf@aarsen.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xn5hzdqekiibveh2"
Content-Disposition: inline
In-Reply-To: <86frc5zj4i.fsf@aarsen.me>


--xn5hzdqekiibveh2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Arsen =?utf-8?Q?Arsenovi=C4=87?= <arsen@aarsen.me>
Cc: coreutils@gnu.org, linux-man@vger.kernel.org
Subject: Re: Move GNU manual pages to the Linux man-pages project
Message-ID: <avcjkfibgplayxdpe4nisfpmtmlwdaubesdo6oj5qj2sxfqpsr@iypkg4k2fauv>
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
 <87jz1sm2t3.fsf@aarsen.me>
 <fziyxvozscytwasmhtrpjfqbmldxmggjkdm4pzo7cupxhby422@czrmkask4xsc>
 <87cy7e7hml.fsf@aarsen.me>
 <sdprfcwwtirbygpx4pqcavchf7hl3ichxjcxsr6kn6pl3f2ri6@7mshrxxpjhn3>
 <86frc5zj4i.fsf@aarsen.me>
MIME-Version: 1.0
In-Reply-To: <86frc5zj4i.fsf@aarsen.me>

Hi Arsen,

On Mon, Sep 29, 2025 at 11:46:21AM +0200, Arsen Arsenovi=C4=87 wrote:
> >> Unfortunately, it is.  A collection of linear mostly-unrelated pages in
> >> predetermined shape simply cannot document complex software, a
> >> hierarchical approach is non-negotiable.
> >>=20
> >> libc, (most of) the syscall API and coreutils are a lucky case in that
> >> they are, fundamentally, large collections of *very* simple bits
> >> (functions and programs),
> >
> > Luckily, we're discussing the documentation of coreutils.  :-)
>=20
> The subject said "GNU" so I was intentionally speaking in generalities.

Oops, I intended to write GNU coreutils, but it seems I accidentally
omitted coreutils.  My bad.

I'll start by importing the GNU coreutils manual pages in a branch of
the Linux man-pages project, to be able to work on them from time to
time, and when I have them in good shape, I'll propose their inclusion
in GNU coreutils.git.  Does that sound good?


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--xn5hzdqekiibveh2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjaYIAACgkQ64mZXMKQ
wqn/5w/+MISHNByfBoU9w/gfFxBq0ZAQwXbpDBpXDRKpeXLWGO+QFxRliEOJy/9K
4SyFCrHJZg6Ym+R3lXLQ6S4JIkv5E+j305nfMc2ynJR8QybrbaXiTSCsC3RMg22Q
2m8Ju19waJ4QDItaLh74FL/kgHT5ECLKdzg6qz7bE5tTCnCPkeJO2aKtXe6oUSP6
Q1NUUO10BBu8rZvDu8i0oHD+YLOl31zz/OVD214+m28QSRp/P0EjDAvYpbf77bdg
G7dvw3tUVCACEyY5s0pQrjIyd4wJasqFOPtNDY7rIvzjFvXIRlp3YSJP2st9oe9Q
3r7oWkDO91yI1iW8Rl7qk9zwuGBiN5iViTqcOtt0d9J+3c6xCkJcyyJbuXXuHJvf
1ED4mPwiy0FUTNhhK2Uk6kC08Cd7Hq6K8TBqmXlKp87ZyALDEwNkh2K+4M3AY3IA
NxJy0b13iJD2Y/vLWBEAuKlkJ0qua0sirx9p+E0+EI2SHYcrA7P6AXXv5CdBz0JB
8vwPzCBQ6FKN+tdzv7zlff4Km/pcQYy0eE6sPBFUMGTDlUS6DqoZNgqBJpO23XcQ
7EYWGbkipqkV8pLjxAhsfryNs86t23k1Xd2UUcjJKrrKbR5/FiVkqp5lN86c1bwR
ugzNS8CRCvYBpE5DWR5tdmgqZkfhWdjHMp+pppkoaGWrm4hstBY=
=wrQv
-----END PGP SIGNATURE-----

--xn5hzdqekiibveh2--

