Return-Path: <linux-man+bounces-4075-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E26FBC2B9D
	for <lists+linux-man@lfdr.de>; Tue, 07 Oct 2025 23:10:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 857354E37CE
	for <lists+linux-man@lfdr.de>; Tue,  7 Oct 2025 21:10:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA47723816C;
	Tue,  7 Oct 2025 21:10:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pwp3VAhs"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7737378F59
	for <linux-man@vger.kernel.org>; Tue,  7 Oct 2025 21:10:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759871404; cv=none; b=dZGhnuYdYT9P6TD+NMY7Ah8Gv7K7wIPybMr+e7lA6EsBt1YzF0al0E7egCnvcmEL7fbNQjvOkbCetFWMmsYeBLB0CYn6pT0OSEK9zrudc6Y5EXnUcjmHRSw4j45QD95Z9LYKcD6YvE9IKNzBsjwo7x2GbWLHHdeuzCgtLHWG2GY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759871404; c=relaxed/simple;
	bh=c3WcIDs2SrFwOW7lDgyWf36Xxgn9GVicF8BdNs1LjWI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uhTnhANoovPTImkoL43jRfldfJMYGhHvq8lQz4Cy8y1vFbbAJF9JDC1Ze/2rz4KJlzrFWDvZYUnRitMY9ji8gwEsC17WD7Gu+DrsVGDAY2fQiD/MODkQTim/fBf/uh1tuUY+RE3AaM+HfArm/rt73TIuQeLWFL2tJA8pA1Fnvu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pwp3VAhs; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB0F0C4CEF1;
	Tue,  7 Oct 2025 21:10:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759871404;
	bh=c3WcIDs2SrFwOW7lDgyWf36Xxgn9GVicF8BdNs1LjWI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Pwp3VAhsZ6a+Bf5O282exL6WrbosH6780Q1lW2SOuodnBmaNYcpCGUUpZw9h9zMtX
	 tOs9gK5HRDh2DNwKwihMTmcwjZ07n7eeI93v4vkyXzc8lArg2vhXHEcb7W5EBNNOFB
	 7tUJpjk7N3pmqPzu65ZIg4NzP1TZYYowr+I5OikKS/gjoHXn3LJEyMLP+78MsLBGkC
	 9+ugbZVxUd37sxjtZLLZFRLh3ldep8tuSebYk+DapQvYgWJV9bU4T8y2arZuSZkOkg
	 TGu2D3XfNJdwdZjCPdOF8EnsrztXpv62RjOknZVNn7BusPExIWmwh7UGDHQRxUftaE
	 FAtSgMGMrbE+Q==
Date: Tue, 7 Oct 2025 23:10:00 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Collin Funk <collin.funk1@gmail.com>, 
	Bjarni Ingi Gislason <bjarniig@simnet.is>, linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: groff build problem involving "ckd_mul" and "ckd_add"
Message-ID: <zvcmpbo42w245mnsjdvffro6q2ar3gh2bra5imoip2njzfo6ul@imoewzjedqgw>
References: <66cvsf636zixy2o7inf7usaq4r56fiwaewfo7czjjbkv3hsqc2@vcxyruqmonxa>
 <20251006085149.oor3kddfih63yutt@illithid>
 <bfl4642gesg23ysveu3dfbkzd4orct75malbxnyg7biud4aln7@mzh34qxcd65p>
 <20251006104224.yw5dusvjjkw2ymnv@illithid>
 <yp5rnfroyllwzxnigmpofdtpycr6fakcytpp2jof2upemftn63@kcpoibftbp7w>
 <87frbvea8g.fsf@gmail.com>
 <354kaidblgryvixec3l3fcs3vivg6i2xloyqiyzzrokp5cxlnl@d54fq3xdfep4>
 <20251007200636.bmsiu5ci2ue25qkg@illithid>
 <bbhgwz5jtjpht6en27rjbydhk6zh3z3674wta5nytjfaugxhwk@hypmtgrinw7j>
 <20251007202928.d7vdj3x2tfdnreco@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xxwelvit7gbmuleb"
Content-Disposition: inline
In-Reply-To: <20251007202928.d7vdj3x2tfdnreco@illithid>


--xxwelvit7gbmuleb
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Collin Funk <collin.funk1@gmail.com>, 
	Bjarni Ingi Gislason <bjarniig@simnet.is>, linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: groff build problem involving "ckd_mul" and "ckd_add"
Message-ID: <zvcmpbo42w245mnsjdvffro6q2ar3gh2bra5imoip2njzfo6ul@imoewzjedqgw>
References: <66cvsf636zixy2o7inf7usaq4r56fiwaewfo7czjjbkv3hsqc2@vcxyruqmonxa>
 <20251006085149.oor3kddfih63yutt@illithid>
 <bfl4642gesg23ysveu3dfbkzd4orct75malbxnyg7biud4aln7@mzh34qxcd65p>
 <20251006104224.yw5dusvjjkw2ymnv@illithid>
 <yp5rnfroyllwzxnigmpofdtpycr6fakcytpp2jof2upemftn63@kcpoibftbp7w>
 <87frbvea8g.fsf@gmail.com>
 <354kaidblgryvixec3l3fcs3vivg6i2xloyqiyzzrokp5cxlnl@d54fq3xdfep4>
 <20251007200636.bmsiu5ci2ue25qkg@illithid>
 <bbhgwz5jtjpht6en27rjbydhk6zh3z3674wta5nytjfaugxhwk@hypmtgrinw7j>
 <20251007202928.d7vdj3x2tfdnreco@illithid>
MIME-Version: 1.0
In-Reply-To: <20251007202928.d7vdj3x2tfdnreco@illithid>

Hi Branden,

On Tue, Oct 07, 2025 at 03:29:28PM -0500, G. Branden Robinson wrote:
> At 2025-10-07T22:24:19+0200, Alejandro Colomar wrote:
> > Thanks!  Do you want a patch for using countof() tonight?
>=20
> No hurry!  ;-)

I have it almost ready.  I'll finish it in an hour or so.  If you're
ready to apply it, I'd like to have it tonight if we can.  :-)


Have a lovely night!
Alex

>=20
> Regards,
> Branden



--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--xxwelvit7gbmuleb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjlgaIACgkQ64mZXMKQ
wqmUAhAAhGWsbgLwYWueX0+2QwMetUQKn3nhrEK6MNtMXUeoM1209o8F8KYrktOV
URE36VIRR0+lV2qAtXh0ELXWgBt/oy2O0HOgWbmzsIZuWOewF/Sv3/ctjeLxGia3
mK+QTfMvjDWuxQN4EnofyBf7phWzMtOcmop0k90PSz8D4XJDtyaJyYqhAS7gIBDv
SbmXL1h0Tk0PCtZfWpqVGJx8fQRiadR6zJ6t9NDxNQdEeXG5jHq+KI9Yw6DUtEHR
GBAwU8gfdd51fXYefy9q+VsrtjblVivyAGBNiDWDeNTsg1uRaTApJL60kHMXD3Bo
kNPqTNBdwBJVjMUtBDJIKqg7soICv5zTmSvWw2LU2Iza9mFZwPhCNi7Y6k2YFsOe
DMXHCpz7ytlmMGbnMF4vmlTGyEkUHMO8GV2gQC4kyUS/1FKPXoiFL6ytUArNzYnW
mKoJJMg7F6qETchzfStPYoKlJjWyhl3TSzLOsbo/UvOeo6ADgd7uYE7qBNeFS347
a6wXey7DKmtMHe3SpLBnzg+uNRZzw41/MJg8l5nUCLlpYqhir/X7ExyfcYlR3Vto
nraWP39j6yuJjUI291Sr5w0Qgp25YkRBU68f7kVlj6EjUjPViq4YUj9Vw0xpP4xZ
wwFKD5vkEu75i3VuI+zDGFqWLccOXed+ronbnEcjwM9cHsci6Es=
=Ohy1
-----END PGP SIGNATURE-----

--xxwelvit7gbmuleb--

