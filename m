Return-Path: <linux-man+bounces-1092-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A0575903CB4
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 15:06:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 563121F23F39
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 13:06:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2036317BB3C;
	Tue, 11 Jun 2024 13:06:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XBBh22W1"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1AC61E49E;
	Tue, 11 Jun 2024 13:06:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718111195; cv=none; b=O+4o5XlQVCipSwEdV3xIFF11vWz8evySPsOxWEmSd+Ba9vLrl6ONbPYhgbGo0AjxXuj0h5A3vLbJEvQUp6j+p5BA2fLmaSMJ43myZF3KFCIQSkcgFWAe/A1ge7CzK/5/fCZ5kyQFXF2xdzoyNgUs2JwdbShxVcRzJglGveBwXzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718111195; c=relaxed/simple;
	bh=fvU0CY1L2x1JaWCOJWpJ1OLFoEenfkxUKtIPoVhrvTk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TDkMnvahIBWmXeIfwLbY7F0Te4O8Dah6m7wLHxA0lZscG72xk6SGdLuxkk/Ar2ELEFm+GyEIWGi9ypM6Mcf95lHSC5FBgeF+WayOLQX/s/PierEXRiTk8iEIFJjNYQfz94NxGSuV3lAa423yogozf0H+q4aDVrkqqACGVwC5LVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XBBh22W1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CCA8BC2BD10;
	Tue, 11 Jun 2024 13:06:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718111195;
	bh=fvU0CY1L2x1JaWCOJWpJ1OLFoEenfkxUKtIPoVhrvTk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XBBh22W1g1KSbVS5E4IVJYEqbVC9y9s6MkEFDars1HH2A4btEvJPsW1YLGqjvt8av
	 MnzCmgxblGMTf7d5Y7IPwFIvNeI0GU0iK/mAJMzCaGhGbNgpAz/8CMXhd3QVLLyIeo
	 vJ7Eof2aH7MLAte+YPvVxeFQNd1mxTNdJDHm2mxDbeKyiMhBMQoD0XuaGE2GDqk+kl
	 /0zwS+CYOz7JqMiZs7+1bB8beCNGChgnDgNqeCMEM814ExLD1p9tEC8vBpjiPmGWdJ
	 tHaJ9VpSvGLktOfRi0N60KTyN0uixuZntvsEB/BCx3pVbbbwyaELPgwtd5r75bGqCY
	 IQpe0pmCfNIvA==
Date: Tue, 11 Jun 2024 14:06:31 +0100
From: Mark Brown <broonie@kernel.org>
To: Dev Jain <dev.jain@arm.com>
Cc: alx@kernel.org, linux-man@vger.kernel.org, mingo@kernel.org,
	tglx@linutronix.de, mark.rutland@arm.com, ryan.roberts@arm.com,
	suzuki.poulose@arm.com, Anshuman.Khandual@arm.com,
	DeepakKumar.Mishra@arm.com, aneesh.kumar@kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] signal.7: Fix wrong mention of sigprocmask
Message-ID: <ZmhL18D4rGeV_vnJ@finisterre.sirena.org.uk>
References: <20240611090823.820724-1-dev.jain@arm.com>
 <20240611090823.820724-3-dev.jain@arm.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="b71STQ1Soi1l2fhP"
Content-Disposition: inline
In-Reply-To: <20240611090823.820724-3-dev.jain@arm.com>
X-Cookie: Your love life will be... interesting.


--b71STQ1Soi1l2fhP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jun 11, 2024 at 02:38:23PM +0530, Dev Jain wrote:
> The handler is registered with sigaction(), not sigprocmask(). Even if the
> purpose of writing sigprocmask() here was to mention blocked signals, the
> statement currently concerns the "addition" of blocked signals; signals
> blocked through sigprocmask() would already be present in the thread
> context of blocked signals.

Reviewed-by: Mark Brown <broonie@kernel.org>

--b71STQ1Soi1l2fhP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmZoS9YACgkQJNaLcl1U
h9CaRAf+MwHLHpDi2GxewiCqYyoxzzEunbDIGGmqQzj8ztNPLOfkQJVeXZ4bEq5y
ICVeT+1gtKK9vgErBq8HzKAsBkvbpfEP0NP48FeQm0phR25r86OTDqIvmFqblMmZ
UyC4xMEeSkCEElVDbcnyoll0oObxi1Nz7qFoYWfz2cnVyr0j7t8onJnk8WqwfLdk
f6H4PZSY4RFm62qjnX3VYiG1tUFcRwCuje7Zo05+coFMPq7Z5ZR/lwYIIZxuP6aj
M9578e/kBpPHKkwCd1OsmwSXwiOXcQZYZxXyJDLlIABYyMgQTaEnWx0026mGBQGI
5T9wa6jaLlcwL2gyyHIZ8fObeA47dA==
=XpcQ
-----END PGP SIGNATURE-----

--b71STQ1Soi1l2fhP--

