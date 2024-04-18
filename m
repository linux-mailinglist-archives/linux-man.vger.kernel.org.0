Return-Path: <linux-man+bounces-784-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 69D4F8A906A
	for <lists+linux-man@lfdr.de>; Thu, 18 Apr 2024 03:10:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DF8241F2199A
	for <lists+linux-man@lfdr.de>; Thu, 18 Apr 2024 01:10:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40BD679EF;
	Thu, 18 Apr 2024 01:10:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MBA1twpv"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1D1E4F1FA
	for <linux-man@vger.kernel.org>; Thu, 18 Apr 2024 01:10:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713402604; cv=none; b=kjsN6Rr7Ae2jepawQ5QcjdgRjJFHlxURGz6U0HfkLNfmcSZByGjg06fZwyvgSCT51ifhJj62LykcsKs/gtnVR3JJ1N+bZxXz0zbBX9FRMkRMkSyROfJ62ZrKJaXZSV8H47RcR4z6jWe2YYc49ITx8yPRwkYbzSqMEKiP80O92es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713402604; c=relaxed/simple;
	bh=bB6L+BxxufMxS6j/kdjL4xBslzuvbVigNOVnSzBNxYU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VI8sZgSJPD07qMSNuG+BWLxtX8KKbC1QD3V29kuna+eULM+oouDcXUTS60nZxiiCAYhjQFx1MB6QLA3bhy6BRd5xMKlUjwX4ee5XdqfZNBfA7DBvMfr946BWp/KT4qh4X1S7FSKXY9LDEoCWtBHXx4Odeh9cFJ/2WjBYoaCkVlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MBA1twpv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59916C2BD11;
	Thu, 18 Apr 2024 01:10:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713402603;
	bh=bB6L+BxxufMxS6j/kdjL4xBslzuvbVigNOVnSzBNxYU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MBA1twpvcDSBbTRXwb+ed+nSAOSPP9UuONnirsp6NPRQ8f0bFuT9/FmtwZvd9oJ2c
	 pLqJCAGkPVXAYv3BvZTsx+UsOn8cWoYklj2Q/R5b5a+Gxk1FVGFinYHyKvj5fhSzVn
	 XRy8YFq5+TeoVA3G+70SlOD5rR/+vUY1E9OYrTCY11JPr/OOgVA9REt0rqXJtl6soP
	 gttKyW2ETJQQHYzYGVIVs32AovcG1zkv/uigpWry1rAtsWIrEaKKbgIdMBcBoDVTnw
	 LRfhW0eXwo9Vb2ZrUKkp4YF+E4lMiUKSg1GKyUbhJPR6bTHHY0k9HsruJam6CkFs+9
	 7V7PhWqdrIUBQ==
Date: Thu, 18 Apr 2024 03:09:59 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
	linux-man@vger.kernel.org
Subject: Re: Linux man-pages PDF book
Message-ID: <ZiBy6F3OchYbRyoj@debian>
References: <Zhu_-FE5sl3vSu1w@debian>
 <3180200.v3Tbpv83Wp@pip>
 <ZiA1iq1NSqWWADrT@debian>
 <9708362.ozD36m3ToO@pip>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6ra/bsDVna55HIfQ"
Content-Disposition: inline
In-Reply-To: <9708362.ozD36m3ToO@pip>


--6ra/bsDVna55HIfQ
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 18 Apr 2024 03:09:59 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
	linux-man@vger.kernel.org
Subject: Re: Linux man-pages PDF book

On Thu, Apr 18, 2024 at 01:26:28AM +0100, Deri wrote:
> Hi Alex,

Hi Deri,

> While testing I used a document just using the debian TinosR font, no pro=
blem.=20
> Issue occurs when both types of font are used in one document. I have now=
=20
> pushed the fix to groff. Please try again.

Thanks!  It works now.  How can I use Debian's TinosR font?  Where is it?

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--6ra/bsDVna55HIfQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYgcucACgkQnowa+77/
2zIJZA//V/PeKaKaFx3KgD0truP3tEDMyC88dx2efwcAFJmMAv/MmSDjYi2RjNbQ
dNnZ+vYGBt/9YZmZfxqQOS/Sk0bzyBBtxRq0myYKooZK3PCfGK4xfAtgHrfhaBSN
Wi29tEoqUkDT5zuRGHhflHhJw3fE4sv2FMCbhjEIFQtqnJz6cMpSnOQb/L9yOlzd
x0719LqSZVQXiVjzk7Md1iwuJtjL5M2b7yUm+dQA5+0vEzbQeAjvyqjul73nfJsn
el1qnTRk4KVlAJSHKyAOpj6paMW1kvGXF4Ois5r4bvtcv4MMQ+JSJxeyuV0qrTAR
k/TmJ9VyfdmRPE9wkMTwD1PAiRngJhjdLhSAKE7VP1/LMGMif1bvhk1svgp7aBF/
bph+QTEU5B/dBxryCYkLWztASddx5QxYkoeTet3f1kyPc+AqufmMLNZI0ehkML2q
cC5PjWPGZwGpMHZe7J+AhPyGTElHgmB84h581s0IsNVhUfTIO2up/A5XRjlO1iRc
z9su+98IVl+0LXiEiRqJ0RXcSgJvFPBneZIWyfgRySyyOPAnsLIgioCVJnsFcgCm
e2JTf2ZfrpmC0hgXQmqYsXBi4QPjW2rgxpWiLhNhFcPUVWgSrIyBK64GhDWnexmm
sfqmu+kW6vAmrKc3gPhTaD034CkgmmmTbn2BvD1hccxo9PaqdF4=
=fNYT
-----END PGP SIGNATURE-----

--6ra/bsDVna55HIfQ--

