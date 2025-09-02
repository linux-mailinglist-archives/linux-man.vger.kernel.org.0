Return-Path: <linux-man+bounces-3829-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 67EACB40633
	for <lists+linux-man@lfdr.de>; Tue,  2 Sep 2025 16:10:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A1920562770
	for <lists+linux-man@lfdr.de>; Tue,  2 Sep 2025 14:03:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FB192E03E1;
	Tue,  2 Sep 2025 14:03:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alejandro-colomar.es header.i=@alejandro-colomar.es header.b="sUmOWxNW"
X-Original-To: linux-man@vger.kernel.org
Received: from out-171.mta0.migadu.com (out-171.mta0.migadu.com [91.218.175.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1842DECDE
	for <linux-man@vger.kernel.org>; Tue,  2 Sep 2025 14:03:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756821825; cv=none; b=X7aR2ZGHCVGekbXIoDHZtNi/rWzEcEGGsmkqusoCakN2UlijpTl5SDz7bL7ZyLRpkPtvEzqg8aEHl7m/XWck5C9UvLvH7rZZ/7giEcQ/bnnp3uWWgZw+62LkhZAN3NIEkhYI0HOc/un3FsSWcMrTcamSYNV0AMNvVeJScKTk+28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756821825; c=relaxed/simple;
	bh=11/zNWiY3MyGZmHlMJj0TPm33qTRm0Vezvw7xLFll+k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RAke7TY6knBvzrIMJjp9xE+htZ2rrTPv+ey8TPnbYiClVjn3PVKzQJ2hidl7oETRVdckaF5W3wf0mY/L+1qovpaPF3go7w3xPLAmKF8MP74eKJiYQWVJGQ8zlM4ROek2ZaxssmSpyFVz165OztEyMNN5aODnyaOySNF+/5GYn/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alejandro-colomar.es; spf=pass smtp.mailfrom=alejandro-colomar.es; dkim=pass (2048-bit key) header.d=alejandro-colomar.es header.i=@alejandro-colomar.es header.b=sUmOWxNW; arc=none smtp.client-ip=91.218.175.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alejandro-colomar.es
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alejandro-colomar.es
Date: Tue, 2 Sep 2025 16:03:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alejandro-colomar.es;
	s=key1; t=1756821821;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=xNbFxKK3XQ2nEtt2rSxXEZJbG2sme7QzgkpIEnYpyFE=;
	b=sUmOWxNW4mUifGCQJaE7fj54/arVVhYtJWsMkb+b+xrCvI/fbObw0SRcA00f3zt+6ut57j
	MqXzg7aozW+mNSz5IVdu9f4pCtSmB530sbdqIKpw70yt1TCFO3zaDe9aUXUKcUyth4lShh
	IRTGu+WrN4j3d6D92RhcG8mQ+dHG0L7z7vZkdDhx1TO58IW4w0Lg9OUGrMIkbJne5C4hrb
	Eveu5D08GqFVJIjpFK0oA6v5JLmALWVpkQgd885B8ruza9VKays2gfemsaz7hUmL1uL+y9
	mViG3w8XzHd2O1ql+tB5RPz56ufkqvm1KtpFJE4mZIk0lIOoi8ZXo8kuaUtgNg==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Alejandro Colomar <une+c@alejandro-colomar.es>
To: Joseph Myers <josmyers@redhat.com>, 
	JeanHeyd Meneide <phdofthehouse@gmail.com>
Cc: C Committee <sc22wg14@open-std.org>, 
	Vincent Lefevre <vincent@vinc17.net>, linux-man@vger.kernel.org, alx@kernel.org
Subject: Re: [SC22WG14.32341] alx-0051r0 - don't misuse reserved identifier
 'exp'
Message-ID: <yldm3jqxuinem7in6h26qlz5lw3pxocxzgvx6g7rd2pbpxbyuo@niefeuty2fjx>
References: <20250714222434.4D926356820@www.open-std.org>
 <dddf118f-942d-328a-6a0c-e8e67a9f5c17@redhat.com>
 <uiwm2fze7v6oe6x3m5viywmgewbmmy42ahtyz2d2wigjgkbv7z@cabk7xlg5dwr>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sp4jkn5wiogw3dz6"
Content-Disposition: inline
In-Reply-To: <uiwm2fze7v6oe6x3m5viywmgewbmmy42ahtyz2d2wigjgkbv7z@cabk7xlg5dwr>
X-Migadu-Flow: FLOW_OUT


--sp4jkn5wiogw3dz6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <une+c@alejandro-colomar.es>
To: Joseph Myers <josmyers@redhat.com>, 
	JeanHeyd Meneide <phdofthehouse@gmail.com>
Cc: C Committee <sc22wg14@open-std.org>, 
	Vincent Lefevre <vincent@vinc17.net>, linux-man@vger.kernel.org, alx@kernel.org
Subject: Re: [SC22WG14.32341] alx-0051r0 - don't misuse reserved identifier
 'exp'
References: <20250714222434.4D926356820@www.open-std.org>
 <dddf118f-942d-328a-6a0c-e8e67a9f5c17@redhat.com>
 <uiwm2fze7v6oe6x3m5viywmgewbmmy42ahtyz2d2wigjgkbv7z@cabk7xlg5dwr>
MIME-Version: 1.0
In-Reply-To: <uiwm2fze7v6oe6x3m5viywmgewbmmy42ahtyz2d2wigjgkbv7z@cabk7xlg5dwr>

On Tue, Sep 02, 2025 at 04:03:15PM +0200, Alejandro Colomar wrote:
> Hi Joseph, Jens,

Oops, s/Jens/JeanHeyd/

>=20
> On Thu, Jul 24, 2025 at 06:33:47PM +0000, Joseph Myers wrote:
> > On Tue, 15 Jul 2025, Alejandro Colomar wrote:
> >=20
> > > Rationale
> > > 	Since 'exp' is a library function, it is a reserved identifier,
> > > 	which should not be used as a variable / parameter name.
> >=20
> > It's only reserved with external linkage and file scope, and as a macro=
=20
> > name.  (It might still be less confusing to avoid usage in these other=
=20
> > contexts.)
>=20
> Can we please still apply it editorially, even if just for avoiding
> confusion?
>=20
>=20
> Have a lovely day!
> Alex
>=20
> --=20
> <https://www.alejandro-colomar.es>
> Use port 80 (that is, <...:80/>).



--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--sp4jkn5wiogw3dz6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmi2+TgACgkQ64mZXMKQ
wqnNBxAAlgD/eZHqaNayllyaKHrROzRdQyCPuiZzfIDu3l9LH1crwjwHVC+7RZA6
yop1Ejx73Z9n1VcBLN98vHF/FWh95qX8BXSWKAZ/YqNLzHp+UJPrTyvbw9hAp+iO
7HQLhueBH0st+yN7CiTi8kKjqvisnyV87bwoiLI0DutTbQGQgV2Vjjn0qzo47Le5
op7va6lDNJqOj+8c3fW2zuADb48FJPrY46wJwL3EPDzPZlesZeW0x2R6kBE/3XIM
Kg7KXFWLFYLlW3AKO32ZBHczXWdZzXEKeUCStgr6oOyYrKn6sh4FJswI7jdTtdoh
9S4VJSO2VKMggC+XOcPTqiE0pins320yRA/oQW765hYHngFESNK4sv2dtUWtkIKW
7ZbeyJT9V7Ms27mLLMMkeF5ZT4yIhH0R4K32Jk6K9R0opQ8Q8afe02u9LjmjExHf
wbrpZd2DS09lNhIPssqVIjr/z2h8VdmYL4f9c3JYqTmTM1Olt7bysLiAcGvdS9I6
hS/82a72oUu9gqoyD+uL3+kPvbkuFSaJmMG6MPxTn1jNoTlMKO3hWD6iMVHmVJDk
DGCpvp+lgt7W1O32xcjj4Hv0x1cwCn8ss0jCvmy37buY6OP64NBg8HW8phwXEjdv
Oc8EMWrcgtPAnZb3dE5Qgpc0U5xwSiWHWx2Y6PMmpNnKNt0UW3E=
=pp83
-----END PGP SIGNATURE-----

--sp4jkn5wiogw3dz6--

