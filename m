Return-Path: <linux-man+bounces-1610-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D45A950F25
	for <lists+linux-man@lfdr.de>; Tue, 13 Aug 2024 23:29:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CD6441C219C6
	for <lists+linux-man@lfdr.de>; Tue, 13 Aug 2024 21:29:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDA351A76BE;
	Tue, 13 Aug 2024 21:29:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BN9G4EDi"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F6251EA84
	for <linux-man@vger.kernel.org>; Tue, 13 Aug 2024 21:29:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723584585; cv=none; b=Mmn420iE+shc6Jajv5aW8mCFHVdJQ3LsBZl1myYHEW6X7zv4V/ucBQaPqsRsuV7VLOJ0BlZha8kT3AtshPwCHl44LSRgSF96QAvEhUgRu+4NZj2vu+xk4SV2a+OnjAdZ51u2ViSHrYkBMtZt7sHTIVGQI7UMBaVq6M6tmM/G7TA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723584585; c=relaxed/simple;
	bh=y6i73J47ekKjlhBs9t09ezeZcXUeMEUSLrqGd4iLgrM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W6qxPWXpndnn+TD1ZbYmoJv53UXg3iUUHLJ6kq0/jCVqpMlxV86XixQed1wbYNXX54QTA+Nl3Eqd/n5y3Q7O1hnJ3L47HADQNw3W3OnWxu5IOcSTjAMXP86O2Hi8HzOFSuvwAwnZ3FKVGdrOwVIdDm61n0vsYepxPv1HKq9YGJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BN9G4EDi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3352CC32782;
	Tue, 13 Aug 2024 21:29:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723584585;
	bh=y6i73J47ekKjlhBs9t09ezeZcXUeMEUSLrqGd4iLgrM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BN9G4EDiUgDJxl3gfcLnd5yreG60CVj85bLfNZTx+1ArGZ4lplqomeKIfS0fb0rjf
	 9CSuf++zYQlO7PEYKM6L4FdqW9+FW/llB+4FMgff37F9UozVX9mFPkqQdLwY8bjjqZ
	 OwKw9dsZVyXXKqNCSPKm5ZrkRGao+aJKW+/i/F3zT5qrrPn+UmWfKEQSRp2NM5IgED
	 B5shGFnZB72oH+gAGJWl2oZSfvk9jaKkEuxXZPHH/sHcOWNeJ/lKfiBFiQiVEooDri
	 PzcE5lBMzwIWp8tWb5luf6KP/fNCvwjm1pU78SGfwQVBWeB2YDHNugt5b5MFulRtwF
	 9J2Jj8P0T0WzA==
Date: Tue, 13 Aug 2024 23:29:42 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: Dirk Gouders <dirk@gouders.net>, linux-man@vger.kernel.org
Subject: Re: [PATCH] regex.3: *preg is initialized with regcomp() -- not
 regexec()
Message-ID: <t2jfwyamniddi3j6hzi6kws22i4toakswjcugvfl7mm7e3h3k3@6y5uqu27g66a>
References: <20240813185011.3806-1-dirk@gouders.net>
 <377we5k7jw27rhffcu65lbzf7i7o6zl5jwvguj4sidhiiccctj@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="imb6akiqarx3gmiu"
Content-Disposition: inline
In-Reply-To: <377we5k7jw27rhffcu65lbzf7i7o6zl5jwvguj4sidhiiccctj@tarta.nabijaczleweli.xyz>


--imb6akiqarx3gmiu
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: Dirk Gouders <dirk@gouders.net>, linux-man@vger.kernel.org
Subject: Re: [PATCH] regex.3: *preg is initialized with regcomp() -- not
 regexec()
References: <20240813185011.3806-1-dirk@gouders.net>
 <377we5k7jw27rhffcu65lbzf7i7o6zl5jwvguj4sidhiiccctj@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <377we5k7jw27rhffcu65lbzf7i7o6zl5jwvguj4sidhiiccctj@tarta.nabijaczleweli.xyz>

Hi =D0=BD=D0=B0=D0=B1!

On Tue, Aug 13, 2024 at 09:07:55PM GMT, =D0=BD=D0=B0=D0=B1 wrote:
> On Tue, Aug 13, 2024 at 08:49:51PM +0200, Dirk Gouders wrote:
> > Fixes: 1838a55edd6c47cb ("regex.3: Desoupify regexec() description")
> > Cc: =D0=BD=D0=B0=D0=B1 <nabijaczleweli@nabijaczleweli.xyz>
> > Signed-off-by: Dirk Gouders <dirk@gouders.net>
>=20
> yep, my b

Is that a Reviewed-By?  :)

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--imb6akiqarx3gmiu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAma70EUACgkQnowa+77/
2zJXuRAAqwuGzPUXAUp8twjQq0NzsK5JmRriqzWjCII21DNcDHw09fL2Gxap1SbV
qNNHy7SDk8Q1pzq6dmiP6L3Si2jCUURHOTeZUISGNQlSmGXIbkYgBHGf7qo2r0J1
oM4887Y3t6jhZUi/2aDJuFEpmc9zQEoWt5jKtEYHHJvnFnRfRKOA7gXVFAgbuvzi
IhxYFQAwwOYFkKK6pQE5QAVvkZ8ViGRnS8VF6yjdiiyBdu3Y4v28FOL8e6CZYNmY
3OBi0IpewU3/6rUUCMeiyELckpVyEAksvv3cANZ8Tddr1/rcxELzKab1f+K+7w/U
HMwPTBWrQrSHdj7TELjyAfBCoiZjqD44ndJM0MEFFjmvykxTbOMWAfozCbkdsNcn
WZogxqV5vf/akf0iVAaVEc2A2/coj+4n+6VGb8xCWnFsjsq6/DM/nc3kt3effnpP
3aI9AVQkuUj04SbS0OAF0qi+LT95+gekxzWQZv63IMC82d3xvqlSQtLutpJZUL6g
jif2mZMcVxwTzEmD3pBsEut8iA68EQbVOUdBTtk4Lk8xvn7svFdjwWbShK0NyK4W
HPKAKAK3D1HPC73h76z/RmabeYeq1Z1VxRvhbyDb6N7VKn/1OtpyamHKDdJ7RHAd
TaGtCryxAqc0TY9iZz4hGuGSFsJWa0039MKWeKrgliwBNiEHmAY=
=sFHN
-----END PGP SIGNATURE-----

--imb6akiqarx3gmiu--

