Return-Path: <linux-man+bounces-1968-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A2A989D0328
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 12:01:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5C6B2282D20
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:01:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AA7E86250;
	Sun, 17 Nov 2024 11:01:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dEaDWol9"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC6FC7E0FF
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 11:01:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731841295; cv=none; b=sQsntvSg4b5WG60Pj6TjROkSEE2V2nfN8DNmMW034Y1VRG6aQOA3Ku6JePd2Gvgezcatc8lMQ5xHJP4coJdTS9BMwFtlMgzcUhcvgVvq1w8zjUQ70B29GaBGrvwXuoqfZFHHMumtr20ODomB2EJ/1ylM5lgA6TiVSJ+5uQvoy+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731841295; c=relaxed/simple;
	bh=/n5a3Drsc2EY3JhO3mkWNJiXKcqE8IwiQwj88WrPqVM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Q2ga64EX66iLlS92mTm1KEqpvDCU2iiYBz2bgUZLTRpjiu+t/9JSaueiGBQ0OuVeXRNQpdoHaLIsLBfgNlrrcsNtrAkqXau4rhFoS5azT+eWPNHTLvckUiFYO1HFIhEauOL1o9h9JGudamq96wjH/nZhhjS07i8ZG14f+xuLwmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dEaDWol9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 984EBC4CECD;
	Sun, 17 Nov 2024 11:01:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731841293;
	bh=/n5a3Drsc2EY3JhO3mkWNJiXKcqE8IwiQwj88WrPqVM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dEaDWol9A9BVNdyWsGCsIbnJQV/a2QuJ51jEJgV3CNEDsQsunfaJPvBZKxOwLV9kh
	 zKK/6c8zin6lEmqLJ6A4KwKdyfX98lQIGhwhX2toKozLFQNl7fTxbMIRJ/jEq0RHMX
	 FROW5meWNfv0hysXb1D7Y8zV6O0z147hEzRa2xpbgJFfXJSl2/Y0DJgyDHrQ+60yOZ
	 saDGZACu7oUddxRUM8nzLL7WVtKHeHbGn5U2iM4MHtpyb4TW86SAYIBaReEuQ2/06L
	 iWSFUjn8qJNwB4P6O5G0xPUQbOm5u5f2yPeqOMaVU+gPU/QBBl4myihIVfKeJ6AQ32
	 idqw8jn0l/gFg==
Date: Sun, 17 Nov 2024 12:01:30 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page log1p.3
Message-ID: <xwjxh2hzeizr4auyvi4cqo73mgp4cd7dxxwfdwsvkhegmyyeai@dpmjkuohav33>
References: <ZznJfS1idYV3Hwp-@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ycdsnmgqoegt6hja"
Content-Disposition: inline
In-Reply-To: <ZznJfS1idYV3Hwp-@meinfjell.helgefjelltest.de>


--ycdsnmgqoegt6hja
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page log1p.3
References: <ZznJfS1idYV3Hwp-@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <ZznJfS1idYV3Hwp-@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Nov 17, 2024 at 10:46:21AM GMT, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:   Missing full stop
>=20
> "Domain error: I<x> is less than -1"
>=20
> "Pole error: I<x> is -1"

Fixed.  Thanks!

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--ycdsnmgqoegt6hja
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc5zQoACgkQnowa+77/
2zLFUQ/+PoPN0tY7q/ZHlxc39XMix+yBfrJToKWBv4nbrrEg8hufMM/rMgpTPr21
SzZSJgW3nLhWk1Q4eYriFZ+xspt70njtVLU3m57RL5s7Sqh0bffVt95Li0+pQ3R7
Lkr9PlH2UdissoYS1dS/G7ruRuJCbBvOyKcQ1QrvS+NTAH1UtCSa+uqy41bH5yNC
AtStUQQkDaQFaba6Wuz4ZHc/d4rLgHQ7Reg6b86Vd2i+VhF9jl8HADapJ5bi6swC
7sDvTyMiMJVRZQecboVtt8BE5SC1haX2lHY6TUuSwhkfsJGLq6Cwa9GeMNKREGv7
7Cki3p1/gd4puaNX1AZXx9MEj3RFA0CH8oyFmOuPaisgSCdS3hbRELGjHq5RCjiP
nAOr1WA/H94SnfoQaijNYo9zVJRhdv+xqJFkuGu32tUqtbWC/zpnpc/qC+oWbXwD
+V6mrTiKgOzPmlAYPGnuuoqfuT5/4mI2p+FDLuWQ3HV73RnFOc9EPjBq+u5BZ+Xl
21BvibAFH7FQoZKegffAii9MX9ojFGKWIL3U2TevpPZFtMRIC9AxwXW5iJLn9tgQ
1myietSj9az6+2TQ4coPXSsq99BbmQneaLYYqhO7lR4KO7DaGIZFu51HJ8n8VLM5
ARWWmHh/9x8WNVkzrSNDPb+gpb+ME9Is5o7tdERZqkG1eMg4jGk=
=W6bx
-----END PGP SIGNATURE-----

--ycdsnmgqoegt6hja--

