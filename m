Return-Path: <linux-man+bounces-1046-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 350A890095F
	for <lists+linux-man@lfdr.de>; Fri,  7 Jun 2024 17:42:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DCF061F23C7F
	for <lists+linux-man@lfdr.de>; Fri,  7 Jun 2024 15:42:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 760EA198A24;
	Fri,  7 Jun 2024 15:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uevcA4ze"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339EC15B133;
	Fri,  7 Jun 2024 15:42:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717774942; cv=none; b=SimKsuMZ4zm1JWdEF5apwYjTKGoqd2qSm+opJw4w4NDinBIO34DdNLN/mYjFzouODtAV96s8sFSmBYkCm4i6FV5KUklHGP6gk7KkVnoHkBHBDqn1iCzOLHeDUegqrBdbqM5GfnJR3zFWnGQAeQq5NXSM2o58zLTybE8lH4bbERo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717774942; c=relaxed/simple;
	bh=iI87cZUOqwgAnhxZoQmpoNHtrK+bA3EdADRrl5mfbSY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=K9m697LpBLCQDll3FGVjopq/AHHKA7XYroMJ9ZGQj17u3nTtZFnaP410lKSmYS6CKxth2RfVFTWmUiLIMLewCqSvwvrTirb5E0w4JRDnyfU+ZBTrE/hRonIBCtxRbgJPkw9cEQDixSl1RIOvGv8mgX9+zHUXJRjVH/xbBAY8N0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uevcA4ze; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84E38C4AF07;
	Fri,  7 Jun 2024 15:39:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717774941;
	bh=iI87cZUOqwgAnhxZoQmpoNHtrK+bA3EdADRrl5mfbSY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uevcA4zeF50CTbc1ZzJK54PX9X4ppx0gXzijW8cTk3zfE4VEtc0CmqdnxRBKWLDF7
	 LeqeA804atAfHdViHTCnBDAeJNdk8cPFHUYGZn8+uOzguKH1ZRAd75TtMuEfKAON1Q
	 0NGIWNB/zm6n7S7l1lUM5l7sjLQ7UA/3uqTyg+dk5b5f0Fk2bSGpvqkPnylEQnjFh1
	 wu6qw5pKQJgo8KtbrU3WmzUufbEGIiYq0a7eS/YdsqR/RP/hzKwbes/A4Lj38UlIa2
	 fduN/n0AfOfvhapXSE3lI6Un91pzqGlw8VaGEceUa9tYvPqMMLy0Vvb3rDTWSWkHH3
	 ToaEB3HF3BoXA==
Date: Fri, 7 Jun 2024 16:39:33 +0100
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
	protocol="application/pgp-signature"; boundary="FgfOfkjE5YCa53Sa"
Content-Disposition: inline
In-Reply-To: <20240607123119.769044-2-dev.jain@arm.com>
X-Cookie: Your love life will be... interesting.


--FgfOfkjE5YCa53Sa
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

--FgfOfkjE5YCa53Sa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmZjKbQACgkQJNaLcl1U
h9DppAf/X/RgRQlFGYhnwa7n+Gun0/AE+RDnThpp7qJUCOTlC3KBN8jKNDEwdtUO
mWctBu5dUXKBhDvTbfZwL1LddxI6sRrWgxPxsneZBCVEositfWCs7I7txE0ZjF0E
tiqeLOLrD/KP1fCd6PbISmA4ZoMp9zC4i5yyPkzNaTTHhHIwM/wD34NaWo3savDp
8cTVUcqHpXnMw9w2B8FiGIZgPEHLSQDRLDEwUTUefAqjJ3+O2UAlDgFfSC53vZvn
07VqZhG3lp1u+QOparz7FyudXietZmrIhk1jLLqPJSPENSWYVdUqBweOYPMZe4AR
lrqpSqp4CAOquBDNzksis1vthNUlgA==
=jZG/
-----END PGP SIGNATURE-----

--FgfOfkjE5YCa53Sa--

