Return-Path: <linux-man+bounces-4698-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA1DCF9EDE
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 19:06:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A3FF330617C9
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 18:05:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D93FB36D4EF;
	Tue,  6 Jan 2026 17:59:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="llL4bNcG"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98A9A36D4F3
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 17:59:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767722344; cv=none; b=Np///y2uVANij+Daq8tiNCdBEGig1twLBzvrMH8RLO5jEa5E0s46C63v/+fgVcWfj6vKFtZaunxmXkJHl22khoMCLo0sDV3Zs/MT63sSdaNn/rc7xwoAAd2Z9jRfkgSNp8resO9lrvaxPTKcaajYeLrbnvhqSuECzvs+0WrsaH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767722344; c=relaxed/simple;
	bh=Ly/0h1GNI0e9e3HacbYIF/ygdb/nB/1O9AUNy1xcu0Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YgDlll7ydozUUlz8oy6ukSkLfdrA+1JHvz3Fqu0hDV3i4Gm3nq1sh8mmunAI2Mtf/hYdzOnJY7IgSiKJ+Fni0KQwxnU04FhUA3n6tb8CiEaRJoCOZDxCMp7tLgLX2Fsl1s50GtraG+mWMLwzLROn7ZR4EEYfrKccc60anXYzNAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=llL4bNcG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 203E0C116C6;
	Tue,  6 Jan 2026 17:59:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767722344;
	bh=Ly/0h1GNI0e9e3HacbYIF/ygdb/nB/1O9AUNy1xcu0Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=llL4bNcGMmG7TQP42rjMlj82QP6QjsbKKBRxNqQ8AZleFkZTarig2Ffg6qiFdtxLc
	 fZt7JLGfdyVditmH8vMP+nTYfMYfCa89gESGY1FTtlsthctgA7sSh+qYmXcqqOcg1c
	 P85YFN/I993qzISiFQp4ZR6qhCkZb1YzqYskptQBXAY18QNBO0ZkRJzYw4BEGmAYAL
	 PVaLi+y8ZY63s7mf8teXJf5yS+3uWUgTGPTV6W986JjUzkstYNH8d+/I9Vkx+4foJv
	 w3o7DaNeuPgfVGnjIsOmNeyp9di1e6grmWV49+nh4qY8Q9vcCD0lFNq5aCsTKskPHj
	 qEB+M0l4o/9wg==
Date: Tue, 6 Jan 2026 18:59:00 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Konstantin Ryabitsev <mricon@kernel.org>
Cc: helpdesk@kernel.org, linux-man@vger.kernel.org
Subject: Re: [PATCH] man3/getopt.3: Fix spelling (British -> American)
Message-ID: <aV1KDw6HEJQ4RpZs@devuan>
References: <20260106101302.11938-1-champbreed1@gmail.com>
 <aVz5ew5CJcV1BUAv@devuan>
 <20260106-magic-blond-jaybird-ac821c@lemur>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="efngjifgqxoz5l6h"
Content-Disposition: inline
In-Reply-To: <20260106-magic-blond-jaybird-ac821c@lemur>


--efngjifgqxoz5l6h
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Konstantin Ryabitsev <mricon@kernel.org>
Cc: helpdesk@kernel.org, linux-man@vger.kernel.org
Subject: Re: [PATCH] man3/getopt.3: Fix spelling (British -> American)
Message-ID: <aV1KDw6HEJQ4RpZs@devuan>
References: <20260106101302.11938-1-champbreed1@gmail.com>
 <aVz5ew5CJcV1BUAv@devuan>
 <20260106-magic-blond-jaybird-ac821c@lemur>
MIME-Version: 1.0
In-Reply-To: <20260106-magic-blond-jaybird-ac821c@lemur>

Hi Konstantin,

On Tue, Jan 06, 2026 at 12:27:42PM -0500, Konstantin Ryabitsev wrote:
> On Tue, Jan 06, 2026 at 01:08:03PM +0100, Alejandro Colomar wrote:
> > Could you please block 'Simon Essien <champbreed1@gmail.com>' from using
> > any and all kernel infrastructure?  It's an LLM malicious bot, and
> > starting to become very annoying and spammy.
> >=20
>=20
> In general, we only block accounts if they are violating the code of cond=
uct
> or are posting overtly malicious content.

How about spam; Is spam blocked?

Also, what does count as malicious?  I think trying to convince humans
that an LLM bot is human is in itself malicious.

A patch that does something entirely unrelated to what its commit
subject claims to do should count as malicious too (at least if it was
not by innocent human mistake, and that wasn't the case here).  See
<https://lore.kernel.org/linux-man/20251127132249.3566-1-champbreed1@gmail.=
com/>

> I know this may be annoying
> behaviour,

It's not annoying; it's dangerous.

This LLM bot has already got 1 patch merged into a kubernetes
repository.
<https://github.com/kubernetes/website/pull/53485>
<https://github.com/kubernetes/website/pull/53494>
<https://github.com/kubernetes/website/pull/53700>

It's gaining some reputation, and trying to convince humans that it's
another human.  We need to put a stop to this before it's too late.

> but posting useless patches is not generally something we block
> accounts for.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es>

--efngjifgqxoz5l6h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmldTV4ACgkQ64mZXMKQ
wqmimA/+LDmlVc1TMZGVaFP+h2mBRjYqlhmFlhN6zmW52eD4jJuGjxRhg62iYvvP
5mlA3FuBPrPLW+Mg6CrH2h92PAyJIpuE+wBZBqPogSPxk9c6Thd+i1XvUfxXWdoq
bs/Y44e7Xq8vodXEPhZIjGJF1f/AgAy+5yDXrxJlxS0LNPCayn1S1ki0lwgDCfXd
694+AlNTDXttcSl/CGt2XYXUP4S126qIrIVGja4WBt7ZP3ndEidQf/68ZKobVoT8
vjvXyNklM5sNSvcjxhnywbOmLRHnkMMjQE5/urF82jkOkZrDKZPwMLXEifCgHqD2
ad3qsN8Av9c3Yzeh1zSWvduFzG4AMT+M8gYLj/HD+kZjPT2AdtD9vMV/BxhfL8KQ
7rvh8dAZuGl+a3yLb0AjnvviSxjL+1g+Clx5TAhxhsBsf1i5SmRPGsf2hwjGGpQu
q2dBNNsmdMEyhDtwucC1yvBkiXJUTvQXZkrktkV7S40yslnUT9CQAORiflEN/jZI
UO6FxYAgWoWuIvG0SXg5smGXSr7QpHUpLddehW22mGb897/PCAAUr6uQOzimKW4t
AyAjptUiD70XFxd/prXNsU8Iynj3SplZcavs/AUcN5PDyGR5tzASqMkoilQ1VurM
nV+LdzvgQuKf2MnM2Lz1ua8ksiIh63p8P/5SJ5KBpKhKi/MWtGc=
=Vh84
-----END PGP SIGNATURE-----

--efngjifgqxoz5l6h--

