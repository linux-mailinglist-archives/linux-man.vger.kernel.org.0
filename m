Return-Path: <linux-man+bounces-3899-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A085B8CD83
	for <lists+linux-man@lfdr.de>; Sat, 20 Sep 2025 19:00:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 219431B2614F
	for <lists+linux-man@lfdr.de>; Sat, 20 Sep 2025 17:01:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03C5B19309E;
	Sat, 20 Sep 2025 17:00:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ApFqJiYC"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7B4C2AF03
	for <linux-man@vger.kernel.org>; Sat, 20 Sep 2025 17:00:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758387653; cv=none; b=M7Sm6lfAc1Lx8T525oxe+SSLJu61i+NHpF+eKYkbK4qvG5LsyIXmwLn4tSWb04rPxWkLfRmMdKMRDZxISGyi6knLUWS2+B43Kx55BNfS2Smd9+C0v6XS59REEAv+lN52JF40xJn3cOu1IAjpBd+uwPTd7PthF43ewGTu6LGcrGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758387653; c=relaxed/simple;
	bh=9r2eEq3Bap01P1QP+hLClL7GkYsOYBh3H/KoqXNHFSU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PWcG6hghn6gN/iB+x9zflkYTMhuJId1zHKn3yOWdpg+OGrXsXo7XyakTzvMYIUvEGakNWMkTbRPs1U3Ur3HRj0Y1002g17gUC4Ow2MxfEguML+DoC8RC+0qbcWOsfVX68Wx7tmZr3ugR4/c2nsJReJaa9dhzLQccSK+0LrlUeGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ApFqJiYC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4A5EC4CEEB;
	Sat, 20 Sep 2025 17:00:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758387653;
	bh=9r2eEq3Bap01P1QP+hLClL7GkYsOYBh3H/KoqXNHFSU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ApFqJiYCSejFRtiQeGcy1xOYl24W7XLHu+ESHAcyhHbZDj4npf4ARkIdTvpgoviyo
	 MX2rs1KyHcgZDFqlYVX1GTbZIsyLB2e/AwoSpifJSGFuxzIixRi4dC1TTPN+KPLcaI
	 2AEXbwdhNL1YoH6Bvtf24VCrG+Va5JeXNbtAGEpePe2c4bB1aItUGlStTUB4uF0YgV
	 HW4nwnuC+I2/MfHE0QMzI54nZPKxE3/V2ldTtIOEBmpI8hG3l8MQv2E30l7iTxfm8E
	 HsBd1XL4UmLpWtR4zWy1z6+lZ9hQ1njHAsIcIVFfX42h7kYrymBCU/XMIX+jsNx6kD
	 /B0Lvyq6YVngg==
Date: Sat, 20 Sep 2025 19:00:48 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Sam James <sam@gentoo.org>
Cc: coreutils@gnu.org, linux-man@vger.kernel.org
Subject: Re: Move GNU manual pages to the Linux man-pages project
Message-ID: <g3oz7rydifeslrlbsnhfgy64f25mlsxp3boc56o6nbir2ljhwh@fq6pj3pr4nx5>
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
 <87zfap144a.fsf@gentoo.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gfpdbl6l5zo22yk5"
Content-Disposition: inline
In-Reply-To: <87zfap144a.fsf@gentoo.org>


--gfpdbl6l5zo22yk5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Sam James <sam@gentoo.org>
Cc: coreutils@gnu.org, linux-man@vger.kernel.org
Subject: Re: Move GNU manual pages to the Linux man-pages project
Message-ID: <g3oz7rydifeslrlbsnhfgy64f25mlsxp3boc56o6nbir2ljhwh@fq6pj3pr4nx5>
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
 <87zfap144a.fsf@gentoo.org>
MIME-Version: 1.0
In-Reply-To: <87zfap144a.fsf@gentoo.org>

On Sat, Sep 20, 2025 at 05:27:17PM +0100, Sam James wrote:
> Alejandro Colomar <alx@kernel.org> writes:
>=20
> > Hi!
> >
> > GNU coreutils manual pages are to some degree incomplete.  I was told
> > today that "tsort(1) is a bad joke".  I wonder if you'd be interested in
> > moving the maintenance of the manual pages of GNU coreutils to the Linux
> > man-pages project, where I could take care of them, and improve their
> > contents.
> >
> > I understand GNU's stance on manual pages, and that you might not be
> > interested in improving them much, but maybe you're open to them being
> > improved elsewhere.
> >
> > The Linux man-pages project already documents the GNU C library, so it
> > wouldn't be extraneous to also take ownership of the coreutils manual
> > pages.
>=20
> But GNU coreutils isn't Linux specific.

(BTW, glibc isn't Linux-specific either.  There's GNU Hurd, and I
 welcome patches for it.)


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--gfpdbl6l5zo22yk5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjO3cAACgkQ64mZXMKQ
wqmuIQ/+ODwDesYO2D8uK9lpSy5+pGCvTY9KABASJVQETszQ1Cbpyn+9cqxWTc9G
Kf8TztMRkE0jAx7lt5R2bvGd7Ik84Z80L4C71oOPz9iNAPgAw3IaDmZLOtjfZeak
8moN3+xHAfHAnET39wx/7hU2cScO8WD4gvlECtfYh0BL3rGp71gHUsHNQC5d9Mnk
yHv3pcoATBn7mykK2WgmeFVjv2GfyBhIGJJ+GljQOoB20uuB8S99GmXjy9v7n4oj
NoHWerGg7K20BZCxMnGxAXsJkUvjloV003bRYJ5cyZl4YoJ0zYHs3MFqCd3bqTl3
+odb2Ilq3ojlL840QwmwnGzgSLXpgkznEESqlk8dNVzP5Up+KH48VRWKJWOS/iXV
vNb/p4glUZMU9Op5eD9metZS0bxPH7xXnkZZWvvhL4pv+jVOMVqx096lM1GO6RXa
s51fbiZ5Dnl0oVUV+rJH8+dBbighYE3EyhT+YwCO7UTN6MBlYSVaQ1eaxzjcFbqe
XwLXQi2mau3RQqfBUrwXDLZ6sJZ1i0R1KKgBvXaRCYc+MWXoL5ppk11iDBphj2iG
dJHNX9BSmLll06GIAVBwmKqPbzrUyC3VwrVKdDyUOV14NoUD8aHUB9c7QDXV31aD
axkloukcMVHmUGjfpfEc1wYRFnfC8mazPllozE/PfveL/0P3C7I=
=/u0F
-----END PGP SIGNATURE-----

--gfpdbl6l5zo22yk5--

