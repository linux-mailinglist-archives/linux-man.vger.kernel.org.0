Return-Path: <linux-man+bounces-1411-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EEC9C92C2EE
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 19:57:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A8E2A283A96
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 17:57:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A7FB1B86EF;
	Tue,  9 Jul 2024 17:57:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="VpNwqL0w"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A37017B038
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 17:57:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720547859; cv=none; b=GZ98HesQRgJdAYZKG3bnX2yvniM79xAnWN3EKigsM2DaQkjQYdhL9XWp8ZQT7voWp+RDgFohEItyxGh9eeYxSNe+BDfUKQ4U78GBxT1OChQ7ilX8Ybcn3gUCMuLc2WpJbL0W9kleRBo9zeHIeYHAuwIIZeSTgMuKFGZqY0LkBH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720547859; c=relaxed/simple;
	bh=Zad4vnoGLRYQ1vuc/OTLZTx1kEsMZWrtakUhhorxOA4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hxmQpThQ8UF4gqt1PFbm2IXTNXE8x/KuC8ufIxWmeENXf+P880yZxwaw76/pOdk6Lfqa/HHiEwn8I0P4K2Xi1d7DbRbhq/KzpE+Ci6YQ3yzNwyiZ4nO6cVaKwrCrse0av3Oz/ZSQ9JOVIrO/J+FMUwomgZQYXJ0NzGUQqVPX3fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=VpNwqL0w; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202405; t=1720547855;
	bh=Zad4vnoGLRYQ1vuc/OTLZTx1kEsMZWrtakUhhorxOA4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VpNwqL0w7UulJGCKYDdipPElfxy7WzV4+0EVWaA/f3znfDe1h4d+8Sw3cmbmTYOiO
	 9BS2+mkGLJrUl6w+a3jiM2m27rIyeT6uRVwa4g2/z5SJdTmZw1iDZIg8STy3NTcj0/
	 hvk6NAcVAD9NgW/qV6p5Tp1dqa6hgz5TAYhZZSZyrgYGB3RuV4jWSKX/wrx84O81WQ
	 p4P2bI2xOhpFvaqO7MSNUZz2mk+Rueoaw/v2z0CLR91ERiXOvQo2yzoL4zIbVpp+GX
	 m5/GAWSaqLfdZ7dEz37QNNPLmP08OmMZ/red1u5nYqrubHseqcWNAZ7KTW4pC6I0uL
	 BAKVczId6l76w==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id F04098654;
	Tue,  9 Jul 2024 19:57:34 +0200 (CEST)
Date: Tue, 9 Jul 2024 19:57:34 +0200
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] printf.3: the overall syntax is "%argnum$...", not
 "%$..."
Message-ID: <3k35hwsubawtgidt2tvhrw5vspejtfmukyysfaf5ak7bdluswy@tarta.nabijaczleweli.xyz>
References: <atyx4os7275jhfsrnblyr6ykxwghjzdpdnvnrvxcskei7kbb6n@tarta.nabijaczleweli.xyz>
 <gbwgs4u4acvwtabte47aljprwnhhxsznh7il2yfafhwkwrysbm@ij353jrj34qu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nw2f32kggxgs6kox"
Content-Disposition: inline
In-Reply-To: <gbwgs4u4acvwtabte47aljprwnhhxsznh7il2yfafhwkwrysbm@ij353jrj34qu>
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--nw2f32kggxgs6kox
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 09, 2024 at 06:57:29PM +0200, Alejandro Colomar wrote:
> > -%[$][flags][width][.precision][length modifier]conversion
> > +%[argument$][flags][width][.precision][length modifier]conversion
> Maybe argnum is clearer?
Considered it, but nothing else in this string is contracted.
If it were=20
  %[argnum$][flags][width][.prec][length]conv
then sure.

I don't think it matters, really, but "argument" reads better with the
full words. If you like argnum better then feel free to editorialise to
that.

Best,

--nw2f32kggxgs6kox
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmaNeg4ACgkQvP0LAY0m
WPHViw/+IIFHYxLyxHxXOQLjXO+0JW0TNU8asoGsbxPmPFISc/1lwDGcrNUo4XxJ
PPL45IoTzDY3vmm80DIUCwOlXAdWqZPsemEOnuB8xjUYCTXvIaKLo5Q3U3TchwnZ
R1WNz8daCaJTPg2Z/YS7MwmrWKlyBV+GagHqe+/FKpn9H+v4gbqPmVKGkvCcGnLX
2dHj6Qf0oIVCWliI8eudmGaJk6d4GOh0zIOgzWo8Ck3pO0nCWsVxTq9GVp7yt/j6
+W8Xmf/Ex3KSRqe42bjro6cur+hUTOSucWa2KyaCQuCINFXcyJqMf6VXFQbpin6Z
KF2nybPlJJH5CrByGRUbpT7y0i34+m+Kl8WWbvkWmMxF61K/xKfmuqlwXFVWntV9
6EP9tIucxWG4rGP9U92v01RyHgQMhUlMG2OB9jNueic5TOFqSdYqrX/XvRU/O/Vk
tV/AvI5BgaMNMjPGndZcfN1RtrWa4260hz1FyaTd6RPTsi/MmoObwFJFlLAtqKUk
rLZzOdlijvkIQ0nJKkikm9dEcV2i1NBW0cTU6b8TKHAlEEb5o00iW2xob+AxBkXH
Re1RMifaJORw00PA5pfSaQSIFfRb9UJZLQXAOkNTuERDTldMt1snClJ1WYfBVITz
lYNqbutNb7gL/3cWrWS4gRYQn75pZ6OgtdZtGnr/hnaZ22jrsIw=
=ui6b
-----END PGP SIGNATURE-----

--nw2f32kggxgs6kox--

