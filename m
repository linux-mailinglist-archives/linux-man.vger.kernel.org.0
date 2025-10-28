Return-Path: <linux-man+bounces-4206-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 94BCFC17611
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 00:37:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 551273A5E8D
	for <lists+linux-man@lfdr.de>; Tue, 28 Oct 2025 23:37:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A363307AF0;
	Tue, 28 Oct 2025 23:37:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OuqejBoA"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B712C21EB
	for <linux-man@vger.kernel.org>; Tue, 28 Oct 2025 23:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761694630; cv=none; b=G1PGbALBcSq7WpJGI2MjqVu+saPOnAzcNDbPBt4Mw9NOYbUD2o2sPCqKgt/t5zTu+5EeomrdKtxEe18IkBugkda4kfw9T0rfDZfR/WBmSTpp9NkrSqfLFFUUt+hQK9KDnjYIfPtJOBQ+oIWx10/d3aNFNpTi5H4T1IPXNvu2TBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761694630; c=relaxed/simple;
	bh=nB+Cm9QEvWVFeQIEWrsOQ18/OqbQaFohKNkLUXK4T9I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Xk546AMRocmmmbuk4NxGTIm5Z7ggMI4/yxfpSC/KQkWBB4EiTyTSARBQJLKSIhrWKucAVTdCXBkC6vVDm8hsDIbBdlJn8hldN2kFP7kkNHbft5okJc4kXW/bbaV56yy6L28b7S1kiixVdWVlYDZ5jLNiQqGt8/L9tofW9D3G/+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OuqejBoA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5F5BC4CEE7;
	Tue, 28 Oct 2025 23:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761694629;
	bh=nB+Cm9QEvWVFeQIEWrsOQ18/OqbQaFohKNkLUXK4T9I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OuqejBoABYOWrUSqWtT5lqNdSoCKX+X1JS/hz9m+CBL1qv2GBgtAQ6XQGPUn8CfkZ
	 OWObVZRA8TPPpAF4Zvan5fky5nM1y50+cXx+bmCI58ik4JPwx1hb82PT+OIQBCmQ4q
	 iUm5np/XR0Pgam6kcdRVTPfQkZRkSMLdzgKUB0xTUwSHXwrTNwXO4V44GfPD27giXz
	 Ess+lRfacUxlK7D9Lejwxu1EakVB7hUp+F1v1R79ne/8x2vINMY674DUl9kAO2eR9g
	 ZBZcJXjYVHa15WTNRDfh3tkHECTUWM4guViy37iE0Cz+VS0cvERZNKZxLZ986ZGZfD
	 HDYXSq6F01S0g==
Date: Wed, 29 Oct 2025 00:37:06 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jakub Wilk <jwilk@jwilk.net>
Cc: Collin Funk <collin.funk1@gmail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man3/opendir.3: document that long file names result
 in ENAMETOOLONG
Message-ID: <um3c7pddogzafccx5wtr5pzpyle7ve5xbcl4wrx4sk3yzkrere@euo5ol6ekmqr>
References: <4266061219d7406c0aa737f8d52108fea7e0f7fb.1760689006.git.collin.funk1@gmail.com>
 <20251017084553.d2dgnaicr6loseev@jwilk.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="evksu2b3ot5mezp6"
Content-Disposition: inline
In-Reply-To: <20251017084553.d2dgnaicr6loseev@jwilk.net>


--evksu2b3ot5mezp6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jakub Wilk <jwilk@jwilk.net>
Cc: Collin Funk <collin.funk1@gmail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man3/opendir.3: document that long file names result
 in ENAMETOOLONG
Message-ID: <um3c7pddogzafccx5wtr5pzpyle7ve5xbcl4wrx4sk3yzkrere@euo5ol6ekmqr>
References: <4266061219d7406c0aa737f8d52108fea7e0f7fb.1760689006.git.collin.funk1@gmail.com>
 <20251017084553.d2dgnaicr6loseev@jwilk.net>
MIME-Version: 1.0
In-Reply-To: <20251017084553.d2dgnaicr6loseev@jwilk.net>

Hi Collin, Jakub,

On Fri, Oct 17, 2025 at 10:45:53AM +0200, Jakub Wilk wrote:
> * Collin Funk <collin.funk1@gmail.com>, 2025-10-17 01:18:
> >    $ mkdir -p `python3 -c 'print("./" + "a/" * 32768)'`
> >    $ ./a.out `python3 -c 'print("./" + "a/" * 32768)'`
> >    File name too long

Thanks!  I've applied the patch.

>=20
> Simpler reproducer:
>=20
> $ ./a.out $(printf '%0999d')
> File name too long

And also thanks!  I've amended the commit message to use the simpler
reproducer.

I've also tweaked the source code for style.  I'll push to master
tomorrow.  (And probably, issue a new release too.)


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--evksu2b3ot5mezp6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkBU6IACgkQ64mZXMKQ
wqmySA//UhHgSZsiCi35PWunt5HGNAzF30ni/rGHb2yTrgoaBRMgtYSmATi25S+c
Qa98J5LJYY+dXJ6ejx1Nq/2i12uIFckBiC7r48etZ3zDgo2kb1+lkCfJ+iymq41O
0/ivdCN2A40wJFi+R0qUBtjVxZo2eXk2/2ncESZova3UUEdLb0EUtEXtnoo9aidv
2Gsf7Z8/SL6Obr1ByiAMlL9ncUxSfoxHT3jkOAxRUaRT5g5KgpZUbjDq6O+iBIik
mnNCTI20bklWxN3cPtPs6hTIAB2pYl2t5s3cXvyPLID4fdHY4vOJX3mPt9hxpKxE
4SJmDpqyVJNUsJuHCJUR+qpCaWrL4sv1MJ1gkvoINnkGGNy5Wwu6wVgtZH7iaVVo
Uu41Dfb9gFl7bZz5IVrWdffeHY0zRAhYogquy8xov2PlAioDAnZEyZdO89gmcDaD
O0NR4hlTIY9dZsrDxwgi5m3iChbWWYDEescaDwCP2ntLPF3di+uiehujUp+yB6HL
5g60vM+G3NAgyhRzXcCoJzavlNYaRiyUpdfYddYA/opHA/iYg14qiFniLUnjURRl
GODgz4sNPOFqJgywaPBmf7yXLZIH/r72FpcSMUqdgcpFQBP+imZwNL5DJlvocqPU
KtAD6f/IABH5l0+OS8yNNx/KsS0/pPbCEJOkEGAWImIBHWPMECY=
=8Ca0
-----END PGP SIGNATURE-----

--evksu2b3ot5mezp6--

