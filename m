Return-Path: <linux-man+bounces-578-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C9187A84B
	for <lists+linux-man@lfdr.de>; Wed, 13 Mar 2024 14:27:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EEE3C1F2363D
	for <lists+linux-man@lfdr.de>; Wed, 13 Mar 2024 13:27:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DE6A40860;
	Wed, 13 Mar 2024 13:27:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/DDdzex"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C4CB41757
	for <linux-man@vger.kernel.org>; Wed, 13 Mar 2024 13:27:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710336436; cv=none; b=P59RYjxhKmDblyFK+cmqi/B6gNoGwdejWGbfXpzlWhtJXjhNSuQ9OZufXC5iMIk5mAHiXGxjXxTJE/Cr1q+mesSRyzUvvr4Gj1+KbuSxkBNAzh7C+PhdUvsukZ0EJ/vtVkQ1yaEfDzDeP8UXg7Noir0Pf5oTUGr4ZfpmoFWcswE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710336436; c=relaxed/simple;
	bh=NL+uDcTbq4iAmEROdwf0gC3hDtRUT3uqmrg56VrTLpI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qRiie9/7s3Umf4rawHrenAdR+OvBpXxl+VIxOwZ/M1SAUMsa62E9Zi8Ta9yvN5pDq0rzduHiiQ1MsMzwOyWg5biDbY5xybsUWNrbVpQ57ZabY/pQalin80OCehg3f4G01wyh+M0MzeEeFvJRgPJbclvujIt2nCiel/Prws9bscY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/DDdzex; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8559C433F1;
	Wed, 13 Mar 2024 13:27:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710336435;
	bh=NL+uDcTbq4iAmEROdwf0gC3hDtRUT3uqmrg56VrTLpI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Q/DDdzexSLfhdO7dF+4SSf1NdLAG6ai4flWJk9GlVPFg0gAQK336HZQUx8VevAU0G
	 agFGCMGHxcNikk2MBEHYsNaAs8dIake0XHKoeMq+LnpU1jcdmuP2huJli842R4Dipk
	 ZeDvGIrFvmr+IUZz2uL+bj6UzohC9S4FJi0Ob62321+dGuBfdyZ+75z0G0Mpji9Xmi
	 YfAq0aFwosw/2pNypD9XKT+1cvqM45dq1k6qc6CRsKca96hrO1Jlre/eSzCsxhrPBM
	 GY+Ri+0L/P7VebynrGA8/HE+oeo0oxaSE93CHrFq47jjQxG6g9AMjWlkRdkC7qWwzc
	 iewjf3QFzul6w==
Date: Wed, 13 Mar 2024 14:27:12 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: Unable to generate glyphs for chinese letters
Message-ID: <ZfGpsMZNbNfR6TIH@debian>
References: <ZfGpZTxUo4EelRlK@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xDV19CHIRTgPAvaq"
Content-Disposition: inline
In-Reply-To: <ZfGpZTxUo4EelRlK@debian>


--xDV19CHIRTgPAvaq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 13 Mar 2024 14:27:12 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: Unable to generate glyphs for chinese letters

On Wed, Mar 13, 2024 at 02:25:51PM +0100, Alejandro Colomar wrote:
> Hi Deri,
>=20
> I've noticed another similar issue, this time with Chinese.

You can find the PDF here:
<https://www.alejandro-colomar.es/share/dist/shadow/git/HEAD/man/shadow-HEA=
D_zh_CN.pdf>


--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--xDV19CHIRTgPAvaq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXxqbAACgkQnowa+77/
2zKdaw/+KGOyX72QX8W+1zDm5ZTSab57yLEppa1TNxsGR2CQSjtGN6ykgjyfhePF
mEMovIf2dvjf2D9el023zEGg8pqL+xCxQA6+F0JxMtyvqAeIrqbcA/vLU+ys7m5E
+hQ9RXdAI/kSr6GdV7+xGySkHK81pnICAzO4dtY5UYNdYOYM+oQ8h4yhSD1FtktV
KbjxNB+6Hn7qzNBHo2LQ09qJwgyeo7+RRw52NqZoraC1wtnJwRQ6p1iYJ1gBgKuO
+NKmfsJTZGYLXyIi/oj/5KZMLaYlKcv1Y9/o5raN9g9QiqoQSPx113v+EuqVQovF
igA0xV1hf/lX7AzFY3QpZC23n3hSAKYOHqFQC7+c3wNmspBf9+FRSQHJBTLXtol/
kWuGIGqCFZGNitrBzEWcZ/iLef3xN6yJZcWI2pVZcDNC36zoJWT6os+ya/dNHrds
OiCUr/MOhWZ5iofavS3wRaqJdgTOLsAzGhiIIdtxTXXU70CUpOOSI+f7J46re8xh
r/p2aVyMYLzo8L8kK4qOP0u/lPicBQKV+ERE5I3rqMLtb7eqIzd33pYHeJLq+oPL
14sLbiQvGQDZ1Wap5TuV6/LiJss6wJ6Ww0LfTxLXDxW8K3cG5I47rx8l9gxyTgW+
HXxlB4mSaYBpZXC2E//BHzURe/bsbCBt5rKQELO0tTLHXSzwfdU=
=qC8Z
-----END PGP SIGNATURE-----

--xDV19CHIRTgPAvaq--

