Return-Path: <linux-man+bounces-1047-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 983A2900961
	for <lists+linux-man@lfdr.de>; Fri,  7 Jun 2024 17:42:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2714A284B8A
	for <lists+linux-man@lfdr.de>; Fri,  7 Jun 2024 15:42:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 368A1198A24;
	Fri,  7 Jun 2024 15:42:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dpqWs69R"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E916F15B133;
	Fri,  7 Jun 2024 15:42:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717774949; cv=none; b=ZgY65zte4m4tBfENKxKdLpyNa0VYrnGDASsRs2MG/w7jYUy+OzOrQpFpx/RvwYuTl4SIPTNAZ0k9Og+7EAijCih/1Tnv/zot7MySK90Ynvm6T+DA+lcyxGLpWg9ZIBx5LDa7cVvJyjsd/G97N8p+hzDyCNQpMit219I1x0S8YYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717774949; c=relaxed/simple;
	bh=+BEn0RSZgFee2X2r7L0ffO1dGH3m/KylCQQ2c9ciRN0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GU2ZHJmPVPGXAxffipkz6ZMN1CqUtlsC0NJUjYjiI2+AQDfqh8KKQN92b+focm8REfYL3YM58bmmi3fUod7se3MlBT32yltqJoYBXyNK2Gh3RPSo2iqOceEMVUg5uAIT96cMnqVZfipIdmpiI8l63TEWAKAyf7bGzIycOnroFXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dpqWs69R; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BFB95C2BBFC;
	Fri,  7 Jun 2024 15:42:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717774948;
	bh=+BEn0RSZgFee2X2r7L0ffO1dGH3m/KylCQQ2c9ciRN0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dpqWs69RpYcObn3+w4Hj3lsEYr7BLspko5CS2Nn8Pf8Cd4VL0Ca/TnRYHgGqfF0dG
	 ztnAsBFEicH1bRABw3k6gh/JJzqL7wa0GWb/dafxxGv/LYjlhaLY4EegGYgndOkJ4q
	 hiHIjUplHPiTnkV748kxKu25ZtqPbNmKlnXkcNyPlBrO5JtQDYX/6qmOJrk/hzj9P+
	 mUDiel3SEFWrDbeSY90+ovrZFttTySkRN/KMALJbCZpxd9nfSUWV5B01dl1mKUZgaP
	 ogRaaC1KKv/Zt5vkDgsqmb6BQLImcQ35Q+XMsRovUw6YYS820JGm9vs4QQjaTJr8y4
	 ucwUs/jDj2BoQ==
Date: Fri, 7 Jun 2024 16:42:23 +0100
From: Mark Brown <broonie@kernel.org>
To: Dev Jain <dev.jain@arm.com>
Cc: alx@kernel.org, linux-man@vger.kernel.org, mingo@kernel.org,
	tglx@linutronix.de, mark.rutland@arm.com, ryan.roberts@arm.com,
	suzuki.poulose@arm.com, Anshuman.Khandual@arm.com,
	DeepakKumar.Mishra@arm.com, AneeshKumar.KizhakeVeetil@arm.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] signal.7: Clearly describe ucontext kernel dump to
 userspace
Message-ID: <ZmMptdPt_Zw9Xrlt@finisterre.sirena.org.uk>
References: <20240607123119.769044-1-dev.jain@arm.com>
 <20240607123119.769044-2-dev.jain@arm.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Q3+jhbaIO/IsrWNs"
Content-Disposition: inline
In-Reply-To: <20240607123119.769044-2-dev.jain@arm.com>
X-Cookie: Your love life will be... interesting.


--Q3+jhbaIO/IsrWNs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jun 07, 2024 at 06:01:18PM +0530, Dev Jain wrote:

>  .I ucontext_t
> -object that is pointed to by the third argument of the signal handler.)
> +object that is pointed to by the third argument of the signal handler.
> +We emphasize on the fact that this object contains context information

s/We emphasize on the fact that/Note that/

feels more idiomatic.

> +of the thread, present before jumping into the handler; the set of
> +blocked signals for the current thread would be updated from struct

s/would/will/

> +sigaction only after
> +.I ucontext_t
> +has been dumped to userspace. This semantically makes sense since the
> +context for which the signals have been blocked, remains only during
> +execution of the handler.)

I'd drop the "this semantically makes sense" and reword the last bit to
be something like "The ucontext reflects the state at the time the
signal is delivered rather than in the handler" for idiom reasons.

--Q3+jhbaIO/IsrWNs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmZjKl8ACgkQJNaLcl1U
h9Bqlwf/cv+ZWZlAKV0BD3sq8v0bZ+bSpPIvN9jM/gCNPG6OmQvdanam/pWF81uU
fFF+yKDDkcVxuexX0MCc1IRQeGhmWLGnmhYcVtMy641ClBJ8jm19dR2BooCPS4Ey
dd03Fc+NGBv/RMMvUeTVO1S2kNGFuCUhYeXZa0EjSh4avGBdMGBDnVCsJu1kLwi9
lsXFkpXH58TXb+/kf0V73GlgdYezf14GMd8beu5aTV5hDTh1lDclk7xoKc1j62H0
3ZN6eST4GzuPfYbgqSk8UgJGSIBvUL4G1ybBh/tNACF6wlZRGqxoPb7D0udXJx4V
vX8uX54AUd6l+OEns5izJHBXxgSbXQ==
=hklS
-----END PGP SIGNATURE-----

--Q3+jhbaIO/IsrWNs--

