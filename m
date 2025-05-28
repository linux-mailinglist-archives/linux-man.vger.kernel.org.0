Return-Path: <linux-man+bounces-3042-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 688B7AC666B
	for <lists+linux-man@lfdr.de>; Wed, 28 May 2025 11:57:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 883567A70E8
	for <lists+linux-man@lfdr.de>; Wed, 28 May 2025 09:56:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13ED12797A4;
	Wed, 28 May 2025 09:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="no+bXSWS"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C36D7275115
	for <linux-man@vger.kernel.org>; Wed, 28 May 2025 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748426153; cv=none; b=MD1Y1I/wE8OXX0uGRUBoKAp1oLOcDN5sHFt4vcYLZnI/ZpHSXGRrCHdJicxkBzC3aBLzDyNFi4V+Q5cbmFs+gBkU7ufpZ9yc+ISPqae2Z1ZvbxaOaAKNTqACa5EJtIIphPaiE83LrS63Is8RjShQth/ZNa5JB53Y7xZZi6tYH2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748426153; c=relaxed/simple;
	bh=KeMlZ1qLUnrSVo7Ze0oF7LgUbNLiOar6qgkaIgLqmMI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=q8q7wYmgpgkkPYeVIvo1i7w8r78PNVzajpl3EwqbNkMgjvW76EvQi8H2CaKKqFfJ0xEaXy8qY+paQiwN6KJ7S19+aMiObug4EI386o5zPCdbtvdmsWHQll3WxBvFup9KJ7BAeqxLY3d1AqLfVqyr0isArINdTVg7JZ/UJFUKWT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=no+bXSWS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BCF7C4CEED;
	Wed, 28 May 2025 09:55:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748426153;
	bh=KeMlZ1qLUnrSVo7Ze0oF7LgUbNLiOar6qgkaIgLqmMI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=no+bXSWSXZNIC7bC/YzTZPWmFN1TvmL179A4QzDuejDhT91tob18UsqW8E8jeNZh7
	 cNuzGz7DGDB14eR724rmYIujULD2YkYNwsHUH/yh1Zu3NxSTaPQxhgsz9BCouKOsOo
	 BipURBzj+5a1i6d228mmJn1WwxALaEPVSpbTpBj2VfhNGHG1VVXBQCH6TlvxMciSAa
	 vnBtVVJX683QMzCMx9LWTlypzSgnT1lKU90YmgPf7gvnhEACR3q14AFAG9NLh80XkD
	 yOnQSTItA1U6t5e0QyuZdQ7s1sCcb2z8HgGXGSfKJiRf18FVBjKArhJrrHnzqiPVNT
	 f92YiuF3lpicw==
Date: Wed, 28 May 2025 11:55:49 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Walter Harms <wharms@bfs.de>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>, 
	"bugzilla-daemon@kernel.org" <bugzilla-daemon@kernel.org>
Subject: Re: AW: [Bug 220118] New: =?utf-8?B?TOG6rXAgdOG7qWM=?=
Message-ID: <rry23vclpqpekjoffa2frotdoi7h6cftrb6mfgjiim53y2hido@qhgxipwqqbi4>
References: <bug-220118-11311@https.bugzilla.kernel.org/>
 <3b0a1af1121f498b816715bc4ce04170@bfs.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oqwx6pkj7j3hx35a"
Content-Disposition: inline
In-Reply-To: <3b0a1af1121f498b816715bc4ce04170@bfs.de>


--oqwx6pkj7j3hx35a
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Walter Harms <wharms@bfs.de>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>, 
	"bugzilla-daemon@kernel.org" <bugzilla-daemon@kernel.org>
Subject: Re: AW: [Bug 220118] New: =?utf-8?B?TOG6rXAgdOG7qWM=?=
References: <bug-220118-11311@https.bugzilla.kernel.org/>
 <3b0a1af1121f498b816715bc4ce04170@bfs.de>
MIME-Version: 1.0
In-Reply-To: <3b0a1af1121f498b816715bc4ce04170@bfs.de>

Hi Walter,

On Wed, May 28, 2025 at 08:52:19AM +0000, Walter Harms wrote:
> Hi,
> i was curiousabout that bug and got an Access Denied just reading the pag=
e.
> Is is possible to get info without having a login ?
>=20
> full msg here:
> "You are not authorized to access bug #220118. To see this bug, you must =
first log in to an account with the appropriate permissions. "

It was spam, so I guess the admins made it hidden.  When I log in, I see

	You are not authorized to access bug #220118.


Have a lovely day!
Alex

> ________________________________________
> Von: bugzilla-daemon@kernel.org <bugzilla-daemon@kernel.org>
> Gesendet: Mittwoch, 14. Mai 2025 05:15:56
> An: linux-man@vger.kernel.org
> Betreff: [Bug 220118] New: L=E1=BA=ADp t=E1=BB=A9c
>=20
> https://bugzilla.kernel.org/show_bug.cgi?id=3D220118
>=20
>             Bug ID: 220118
>            Summary: L=E1=BA=ADp t=E1=BB=A9c
>            Product: Documentation
>            Version: unspecified
>           Hardware: Intel
>                 OS: Linux
>             Status: NEW
>           Severity: normal
>           Priority: P3
>          Component: man-pages
>           Assignee: documentation_man-pages@kernel-bugs.osdl.org
>           Reporter: tracpham2210@gmail.com
>         Regression: No
>=20
> L=E1=BB=97i g=C3=AC =C4=91=C3=B3
>=20
> --
> You may reply to this email to add a comment.
>=20
> You are receiving this mail because:
> You are watching the assignee of the bug.

--=20
<https://www.alejandro-colomar.es/>

--oqwx6pkj7j3hx35a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmg23aUACgkQ64mZXMKQ
wqmKTQ//XSJXv4/JkW9Y37MrLseq8QjTszg0N7I1/Rwdt/I4arvL7J+BKL8c9kdd
zFKIatrG8ievfi7DuoX2cT5gsE/0yfmFO/9pdJ2SRoN/jpsCvGpjZt3usi9854EZ
VKFhZnlN94SMhmsHfrfouRhPB4bdsWiI2HCtZW8W0it12ge82qZ/p+BYN/l8FgxB
Uetf+BneWOUQn3eKZ3fjgb75unOIWCmKjsKY/oahCSHy6UDb+se6m91t5g5PshVO
TU9/6unmI5u3+RXZ2RzqQAUqLHoBv/4x6LWSgwU33sCYiznHR6ZII5GMcD+fpgm3
prZea3B4BEwX0/J9Rj/lUaiwHXvonpn5NrDBltPmxHsIuBvr9fU5z1xO3ADqv+op
dOf2il3ulo371inWNvyYpozVmRLBWOpQCOlFC7PgOF29fNj5ga90KfDyIXdyhVse
xxJAK3SGNF+5XYuBzxFPWlWVzF4oM6Ayc+cS5WYhn+NTB7QgjXggcyyh7SOO2Fxv
xwZdzOmMVtDr4KhIZ/iYHk2A7WPVYt4GwkxKh6wj/oQ1/7ysf2GmtmLl+tALlN8j
UNrSMhwwYV6tyW2j5oxD4cWaUEQTHcuafmu+AJCXZ1SzfFmnEBWKdUUhcEmyNz4j
2uVeMzKCePnzj6/6eT05kDcyGRpeBfB4dMBKNzWj4YQn6Azaybw=
=+ta9
-----END PGP SIGNATURE-----

--oqwx6pkj7j3hx35a--

