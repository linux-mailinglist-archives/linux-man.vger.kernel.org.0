Return-Path: <linux-man+bounces-2483-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CC9FEA3ACC6
	for <lists+linux-man@lfdr.de>; Wed, 19 Feb 2025 00:47:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D0DEF18898DE
	for <lists+linux-man@lfdr.de>; Tue, 18 Feb 2025 23:47:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6821E1D7E4F;
	Tue, 18 Feb 2025 23:47:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QH+46jex"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2622C1B3937
	for <linux-man@vger.kernel.org>; Tue, 18 Feb 2025 23:47:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739922451; cv=none; b=daN85tx032V7VGJwJFyRC7igsDAoIdBvWHSwXgoT8MpSw+ewKgt0rDTWnsT/1A1eBZM6mbJjqHWN6qYj7yv3kCVQZdYmoCt1nBv3ApgUau1HW0qsCaHcBIesYq0xluoOi+Y0mrW0pyYhUJJwRywWo93X5fwjGM1KAJ3FY0+sbWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739922451; c=relaxed/simple;
	bh=vM2tZBTE6nAflwgqce5KgYtQ2cHY99EcavapoctXq8I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=caEI6n+9Ybi7UzXb475uR0DH/1tVNvPMmiRLTRzTGJ+1PdyrNXqAxZmOG5BUoJiTgrJsO2qnKwg/RFsALw6pp0GOQYwImQZS7X9j1IDzsyrWN9LHh6PFGJ96A+t0qTAf5kEEl+xLRQz6suyc00D5gUyVFpp85OoiGSrBDBA+39w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QH+46jex; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0698C4CEE2;
	Tue, 18 Feb 2025 23:47:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739922450;
	bh=vM2tZBTE6nAflwgqce5KgYtQ2cHY99EcavapoctXq8I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QH+46jexvTpYRk7TCgkjxlqeh31k5P4zJZq4NGBLzYygJnUQdecru4kI8pQjZ2a6K
	 g0Zem1cAuXJNZoQPs8tePtIWYsD1dN+xUDqpD25ajoNl6aD/mAQF+R6QbbFfSmvqVT
	 FUc67tMe9NV/gC+K85Fh2DPgzlicFsYaIALrioLuepzFBy60BU9cxGa/LCZshEn72h
	 MDFmz2GuzVb1m8BY+HelEdDgTP6UxJABcvdw7+VEnUTLoC7WOzVzUXOmZYla9Ok8zw
	 NugN2NAaRQj1xS/CYEBMIVfI+/ZE+OAiHoUhl0lCS8GEkcIDw3PjCNlPKv5yxTkYoy
	 /q2xlHuef3yJg==
Date: Wed, 19 Feb 2025 00:48:11 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Askar Safin <safinaskar@zohomail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v3 2/2] man/man3/getcwd.3: tfix (pathname => pathnames)
Message-ID: <gqpxaoxm3vhe67i3pqa3erbsmovf2i6y5nb7djnqanatfof2ic@2ehts6pa5axu>
References: <20250216061828.2277971-1-safinaskar@zohomail.com>
 <20250217165143.1265542-1-safinaskar@zohomail.com>
 <20250217165143.1265542-3-safinaskar@zohomail.com>
 <1a4ff544-28d6-45e3-96c9-55097cd6fa4a@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="b2lhj6mbahd3rhrx"
Content-Disposition: inline
In-Reply-To: <1a4ff544-28d6-45e3-96c9-55097cd6fa4a@redhat.com>


--b2lhj6mbahd3rhrx
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Askar Safin <safinaskar@zohomail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v3 2/2] man/man3/getcwd.3: tfix (pathname => pathnames)
References: <20250216061828.2277971-1-safinaskar@zohomail.com>
 <20250217165143.1265542-1-safinaskar@zohomail.com>
 <20250217165143.1265542-3-safinaskar@zohomail.com>
 <1a4ff544-28d6-45e3-96c9-55097cd6fa4a@redhat.com>
MIME-Version: 1.0
In-Reply-To: <1a4ff544-28d6-45e3-96c9-55097cd6fa4a@redhat.com>

On Tue, Feb 18, 2025 at 06:33:26PM -0500, Carlos O'Donell wrote:
> On 2/17/25 11:51 AM, Askar Safin wrote:
> > Signed-off-by: Askar Safin <safinaskar@zohomail.com>
>=20
> LGTM.
>=20
> Reviewed-by: Carlos O'Donell <carlos@redhat.com>

Hi Carlos,

Thanks!  Does this apply to the entire patch set, or to this patch only?


Have a lovely night!
Alex

>=20
> > ---
> >  man/man3/getcwd.3 | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >=20
> > diff --git a/man/man3/getcwd.3 b/man/man3/getcwd.3
> > index 919ffb08f..f3da4b5a9 100644
> > --- a/man/man3/getcwd.3
> > +++ b/man/man3/getcwd.3
> > @@ -245,7 +245,7 @@ process (e.g., because the process set a new filesy=
stem root using
> >  without changing its current directory into the new root).
> >  Such behavior can also be caused by an unprivileged user by changing
> >  the current directory into another mount namespace.
> > -When dealing with pathname from untrusted sources, callers of the
> > +When dealing with pathnames from untrusted sources, callers of the
> >  functions described in this page (until glibc 2.27)
> >  or the raw
> >  .BR getcwd ()
>=20
>=20
> --=20
> Cheers,
> Carlos.
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--b2lhj6mbahd3rhrx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAme1HDsACgkQ64mZXMKQ
wqkBXhAArCDWekk8RugE0hjgTYqTbgJA7IS67IGRg3CCBOLsmXV/NnO8Phrfugx4
2n/bkDBmbWT00RVgOWfa1dd49hiHLLvW+DI5VKOKVP/TS34SONyLgE75YWjV0rYi
BFrKwwriRdm8xOyiwRuVQW5uUQcnNnG7ikcCq4V38qLU9W1YI2vlES+VulkU8WwX
iTK35lp0L79kM7X/mcY/KpyVJHrZNhvYs0Y+vU0RZeY6CpfQGggapx9qJrhd97pI
xddcfWiNUafDEYEBe3ucpx+r7usw+IzIw0zAHn/Jf+Cf87XMNaa/NNdweVYQM6B8
O6nfdJcLCpYB3PINFDzWP5Hu/zJXHrVMQvPBw9/PlhztbV9K7Cmg+Ov9h0BXVS/j
JIUX/BQtokIt5y/SQXii1xwf0GPVHikaBDfNkhtzaC1TSv2dVpB5ToeRHIkDc4Gx
OJcZ4h+Ypyxkvvqi/YH+UfJ05F7SdsIcUuOkLxLLHYHWans+vyujQ5caT/1hBzGi
MX323mIiL1Ab0IMcpVY8MXq71+4DwU8/IY/IJNjI6EqemE1Vi5Pulqcxf1SdO5ir
Kp+FrBIEc0r8m0n+iYU0ImG6BJGXuqvxGfs3agbpc4hE3z0r3gHwTLcqojPn2ZeJ
+66J2/kVRRGWE/vr4rzEOtLb8WZJcljLk/AXQFlxN2cBIXc2UQA=
=v7Ns
-----END PGP SIGNATURE-----

--b2lhj6mbahd3rhrx--

