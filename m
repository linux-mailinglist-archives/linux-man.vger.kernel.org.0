Return-Path: <linux-man+bounces-4186-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 037B4BF7CE3
	for <lists+linux-man@lfdr.de>; Tue, 21 Oct 2025 19:01:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 8AAE74E477E
	for <lists+linux-man@lfdr.de>; Tue, 21 Oct 2025 17:01:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16648348465;
	Tue, 21 Oct 2025 17:01:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fW0Pdi4s"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6CD3348466
	for <linux-man@vger.kernel.org>; Tue, 21 Oct 2025 17:01:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761066093; cv=none; b=EgHzSCLkiAI/cBx/iIzvgiA4ncRtxt201xQIudupcQI2vYowNmB0FYWvVcIXpJ/VzKVMG4BpIPQDQi/TbljlOnAcqkUIrFEHo70XTRWW91PndTJvvcy+7tghXQvSQHhUcMRcf1RJEV8GIGWXDLKOocHq1e6QG3xygJfP4xXweHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761066093; c=relaxed/simple;
	bh=8vJ2ZUghpSQfYpJBO0r7oH+Y2yZPCCWjfgPc+mbVKfo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HGGrBYN/oGbqNdwi6acjtxDeQZjHDxb8f09JEycmeaV071wnss9N5/NxXF0GbMTTAjbeEXrV7qabSfPbKa1sJqGIG7m71FG6f9HHBwa8gvYZ9oiX/Gai7bEopw3APwc5upItZRscxn3mlHFGwIdsnDIuoN7+7ZyYHW6WsRM6xko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fW0Pdi4s; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA91AC4CEF1;
	Tue, 21 Oct 2025 17:01:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761066092;
	bh=8vJ2ZUghpSQfYpJBO0r7oH+Y2yZPCCWjfgPc+mbVKfo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fW0Pdi4stTPgsx/lqMr7xtjck0DO4BsNnz/yKQ7yjYw31dJ9MeqLfV3aj5h4xxWxu
	 lfBkVAOkWIBq/eXyfpCxZ2rqtOQgfadtPiqME8lK4efxttQu9Zecyy65E9edsy5tdy
	 y45DbtKREceTHhT6V5KV8Bxi8rVTkqDJpZD6fFDQi1/EufP6U0oFYYB1HN7zv5nY+1
	 U9/9x8LRr/maWC+By31fOcCxI/Gf4anfYrJb38kiolJ6AAAxGP+wQ4q/b/NVYLL4kU
	 7SHg8f5C3jT66TlD51b34Xc+C/CB1w//p2Ysui2Hof8AO6R5uTFfm4RWokQEfnAuay
	 gFlSO9uz4Z/Bw==
Date: Tue, 21 Oct 2025 19:01:26 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: linux-man@vger.kernel.org, Collin Funk <collin.funk1@gmail.com>, 
	Sam James <sam@gentoo.org>, "G. Branden Robinson" <branden@debian.org>
Subject: Re: [PATCH v5] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <o4hafugg6ru5jxqjaio6wfuhsxwkz4bqzztqjrpbtqj64kfk6j@vjgtprrxmqlh>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <1bb0cfde967ecb12f6d3df2106388121647946e0.1760632863.git.alx@kernel.org>
 <a9412306-c265-4acb-8620-4925038a9841@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="64ohlao5rothliji"
Content-Disposition: inline
In-Reply-To: <a9412306-c265-4acb-8620-4925038a9841@redhat.com>


--64ohlao5rothliji
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: linux-man@vger.kernel.org, Collin Funk <collin.funk1@gmail.com>, 
	Sam James <sam@gentoo.org>, "G. Branden Robinson" <branden@debian.org>
Subject: Re: [PATCH v5] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <o4hafugg6ru5jxqjaio6wfuhsxwkz4bqzztqjrpbtqj64kfk6j@vjgtprrxmqlh>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <1bb0cfde967ecb12f6d3df2106388121647946e0.1760632863.git.alx@kernel.org>
 <a9412306-c265-4acb-8620-4925038a9841@redhat.com>
MIME-Version: 1.0
In-Reply-To: <a9412306-c265-4acb-8620-4925038a9841@redhat.com>

Hi Carlos,

On Mon, Oct 20, 2025 at 02:25:42PM -0400, Carlos O'Donell wrote:
> On 10/16/25 12:41 PM, Alejandro Colomar wrote:
> > This policy is based on the Gentoo policy (see link below).
> > However, I've modified our text to be more restrictive.
>=20
> Looking forward to a v6.

Sure!  Thanks for reviewing!

> > @@ -0,0 +1,65 @@
> > +Name
> > +	AI - artificial intelligence policy
> > +
> > +Description
> > +	It is expressly forbidden to contribute to this project any
> > +	content that has been created with the assistance of AI tools.
> > +
> > +	This also includes AI assistive tools used in the contributing
> > +	process, even if such tools do not generate the contributed
> > +	code.
> > +
> > +    Exceptions
> > +	As an exception to the above, AI assistive tools on which the
> > +	contributor depends for health reasons, and which don't have
>=20
> May we please rephrase as follows:
> ~~~
> As an exception to the above, AI assistive tools which don't have a
> major influence on the contribution e.g. screen reader, text to speech
> where the contributor verifies output, are allowed, and the
> contributor need not disclose their use.
> ~~~

Yup, that sounds comfortable.

>=20
> You can be perfectly healthy and lack hands, eyes, or other body parts.

Agree.

> > +	a major influence on the contribution, are allowed, and the
> > +	contributor does not need to disclose their use.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--64ohlao5rothliji
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmj3vGYACgkQ64mZXMKQ
wqm8Xg/9FcfVZXgLZoL6N4Lz9Kz1AXmBQ1U2YMtsNNn2guAMOj8jaGTR6dA/mGpE
P2wKXAGRlREfE33r9C/zVYYTzERVGSh3nNDedhJY6Ha1tmX1q4hXVWSYyesHxQCe
6nGyeJmVQPd3sLo/xqM7NZxj8XDB+KzmXtHa2y3KhVAoceROgKaaB65ScA+1eNN7
k9eTewAmVOs9rzq0lxJTcCVtta/woUXKSUkH7DwUPOPRF8r70REk8zFKMMcwDyfl
Yfgc43+32jT/h39hFQog6Io99gEHpFuHHmgm+s9skIimS0VJ24+XHKQE/T0os1U5
mujiHGuiGtzmheHbBehZy3MqJiS1t0TUe1DqQ9UqRsg2oe1qY8PzMYxoQ7oQC3Kz
2C5B1KHNas4H7ncA+W6uQ88x7qr1fQsY2BvF0HLF/X0Fj8skUS5rkwNJ0OBdR5P/
qWfsCz3j2rwFnWEO/jEbuDSrIC8bxG43HbH0Ng5atnlwSps/8BPys3LCw9wSUD03
Lcwra/VrTjEwCAY/MGK5P1zuIxr2r0S1ARCyWGHPmsLuWd8BXyworSXqtVPYiC9j
LNpC3ZBhBl/SLKk8ijZ5PzU3+0Sm2KcoDkz2AmFyUkIiukr4HE08iTK4k/EsKE8g
5aPKm4ylmh3JnwF65RAIkXnuxvyv94I62QtS/BIdwsSiUFA1sPo=
=1pzd
-----END PGP SIGNATURE-----

--64ohlao5rothliji--

