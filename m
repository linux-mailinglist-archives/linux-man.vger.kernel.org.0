Return-Path: <linux-man+bounces-4072-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EFADBC2A39
	for <lists+linux-man@lfdr.de>; Tue, 07 Oct 2025 22:24:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3CCD74E344D
	for <lists+linux-man@lfdr.de>; Tue,  7 Oct 2025 20:24:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09F0023D281;
	Tue,  7 Oct 2025 20:24:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FpT1BRd2"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F97E23BD1F
	for <linux-man@vger.kernel.org>; Tue,  7 Oct 2025 20:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759868663; cv=none; b=EEn+FlqaJPxgsyaYVDtaZj+C+b7G+2VdEBNpom9qKrrhCl4SLvcIhtAx0kR1ZlII0nBrvBFliTwJXSh853gm79It0M+X7A0ZNM+Ws2cdbtwexS4M+vqtF4vZLDyM6/1wsJRZRVgmM6j3+TOJq8JdUIWKrZzKLCOiqkgt27yQKWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759868663; c=relaxed/simple;
	bh=QUz/17foHNQV8flvzykA3thFHRKM9PeZEK0lRyh1lto=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aJscXUa10ekchrmvGv8TWN2atNGWco4LYOwwlmol71cmjkwRYkwJHBGuhUy79TFKb0UsO9ql3Y3yzAY6++X9ACXaBpt7DId/9c4QugCHAqBSNA7SM+6TLrtnQjiXxwGruwa02jyJ7hmj6wqV0oagKWZRRz8C12kdCLehNGb9ybw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FpT1BRd2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A742DC4CEFE;
	Tue,  7 Oct 2025 20:24:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759868662;
	bh=QUz/17foHNQV8flvzykA3thFHRKM9PeZEK0lRyh1lto=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FpT1BRd2bAvFpjnALrBBTH95EkAT6kVeIrCBnVSpIUTb+tRS/jXgtfZhgsH7nl3QN
	 xj9Z0P06bBQlkgAc/HHRuRQLztu4cqa7HgE0TwzmtAI1BgAgNpuA7lzDR073nUzupr
	 WQsncmgauKz5dXQJIYACVZz/VemC0kWIMLCwIIMeeSW6LjM5H5ARs/UU9CQyFSB4p9
	 XoxzxjGO00ql8B+yYG0vLv2vcs+glfPpNx7rwTmweNyN9X1lqT5ThXwAXzpboS9P2e
	 QTT6rWxvP4p3/rd/wTKPSNhpdzKzi7HKA/2yK7lHv7eYU+/oBXFyNYn3p51U01kvZH
	 M0JXMgdT0JYbg==
Date: Tue, 7 Oct 2025 22:24:19 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Collin Funk <collin.funk1@gmail.com>, 
	Bjarni Ingi Gislason <bjarniig@simnet.is>, linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: groff build problem involving "ckd_mul" and "ckd_add"
Message-ID: <bbhgwz5jtjpht6en27rjbydhk6zh3z3674wta5nytjfaugxhwk@hypmtgrinw7j>
References: <20251004094243.avg4hvwwir7ink5u@illithid>
 <20251005134812.jvwyjjklabmnzejp@illithid>
 <66cvsf636zixy2o7inf7usaq4r56fiwaewfo7czjjbkv3hsqc2@vcxyruqmonxa>
 <20251006085149.oor3kddfih63yutt@illithid>
 <bfl4642gesg23ysveu3dfbkzd4orct75malbxnyg7biud4aln7@mzh34qxcd65p>
 <20251006104224.yw5dusvjjkw2ymnv@illithid>
 <yp5rnfroyllwzxnigmpofdtpycr6fakcytpp2jof2upemftn63@kcpoibftbp7w>
 <87frbvea8g.fsf@gmail.com>
 <354kaidblgryvixec3l3fcs3vivg6i2xloyqiyzzrokp5cxlnl@d54fq3xdfep4>
 <20251007200636.bmsiu5ci2ue25qkg@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oku5jf2kn5qaf3i4"
Content-Disposition: inline
In-Reply-To: <20251007200636.bmsiu5ci2ue25qkg@illithid>


--oku5jf2kn5qaf3i4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Collin Funk <collin.funk1@gmail.com>, 
	Bjarni Ingi Gislason <bjarniig@simnet.is>, linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: groff build problem involving "ckd_mul" and "ckd_add"
Message-ID: <bbhgwz5jtjpht6en27rjbydhk6zh3z3674wta5nytjfaugxhwk@hypmtgrinw7j>
References: <20251004094243.avg4hvwwir7ink5u@illithid>
 <20251005134812.jvwyjjklabmnzejp@illithid>
 <66cvsf636zixy2o7inf7usaq4r56fiwaewfo7czjjbkv3hsqc2@vcxyruqmonxa>
 <20251006085149.oor3kddfih63yutt@illithid>
 <bfl4642gesg23ysveu3dfbkzd4orct75malbxnyg7biud4aln7@mzh34qxcd65p>
 <20251006104224.yw5dusvjjkw2ymnv@illithid>
 <yp5rnfroyllwzxnigmpofdtpycr6fakcytpp2jof2upemftn63@kcpoibftbp7w>
 <87frbvea8g.fsf@gmail.com>
 <354kaidblgryvixec3l3fcs3vivg6i2xloyqiyzzrokp5cxlnl@d54fq3xdfep4>
 <20251007200636.bmsiu5ci2ue25qkg@illithid>
MIME-Version: 1.0
In-Reply-To: <20251007200636.bmsiu5ci2ue25qkg@illithid>

Hi Branden,

On Tue, Oct 07, 2025 at 03:06:36PM -0500, G. Branden Robinson wrote:
> > Branden, would you mind bumping the gnulib version sooner than later
> > to avoid using workarounds?  That would also allow us to use countof()
> > sooner.
>=20
> Done!

Thanks!  Do you want a patch for using countof() tonight?


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--oku5jf2kn5qaf3i4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjlduwACgkQ64mZXMKQ
wqnuaQ//V684tZ3fS+aI7xut/faJ/9fSrZFLfN02RgEfvfaBLz6Bzhen+mzmtUXG
LlWPVlATchGteon3U38N+u3wBJptdO+HF8C6xI+6K/PsNDNrdN0Z1+HeNMore/Od
A3A0Yv0NjNb9dTVKygftvwQnKet2TywZ5XC+2/mWiGpHE9DdTauYysHo3SzHH34+
0ureL4+Wu3DH86oodZw6py6gKs+4svnFsIR2LMcp/tigenAOMVxk2Dp9ZP+/RHC7
NewoNfjCVKIlQmPizicU0w3Ymo6McYe3AaTd5jwuXpiU0/bdA23PIrPYT/oO4MNC
3EJ/83MHm2GuNjQExJUiTTKIwh6xoUqDB9IzWn6bMIGFUF1CXvgD6B3Ka8MwvTsh
9R1YdEx8m26idHC0uSzd2A/I39FCEGPGYrjeprvy0P5sCco3kM9eGDuuLJVqzG3K
nLMtJmR+r3sDLcTMmuuEdipWEuee+NOYGCFzBsglxETI4IwNznC04FvIXufBdpAL
ZqZ6juFo84qAW2P50zPHv9Ok721fjZa9G3ICltEQ9HCLc4j748YVFqIkWKizRTdz
Z8FV37uT5yUJxRfGuXijVHMB+WwrJ2aerBoTo1ZdDtQYm5X/hRGQVqXwyHBndGMS
RcRyBXCsO0F2zZt5vD5J1IXhwzYoa1h4xC1yRp4B2GUCSHcR1xk=
=WrvW
-----END PGP SIGNATURE-----

--oku5jf2kn5qaf3i4--

