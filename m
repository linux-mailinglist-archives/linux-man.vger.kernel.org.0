Return-Path: <linux-man+bounces-3103-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C7809ACEB83
	for <lists+linux-man@lfdr.de>; Thu,  5 Jun 2025 10:12:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 98A2A7A342B
	for <lists+linux-man@lfdr.de>; Thu,  5 Jun 2025 08:10:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFE581B3930;
	Thu,  5 Jun 2025 08:12:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnvVxPGk"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E69F28E3F
	for <linux-man@vger.kernel.org>; Thu,  5 Jun 2025 08:12:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749111123; cv=none; b=gnHN8A2eQlAWjQk4sYkPJjQU1rJ0zAL4GLotxxux+IYRErso3hGl006sk8lyMwgsFImecW88qdHW6emkOItb1g16lvy38gYfqDyLdyFIBkZYsQmlVPPTdCBFf0WxOH35Gns4vl01/4gapPSLAkvPi9jI6zcgnEBNsfeIp0eVMTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749111123; c=relaxed/simple;
	bh=Aqt+pGrmD6rjXOIVlX9xgMrVEROHR/TBNod89Et9l60=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ks1fCAvJzJxSswLbgyUIXwQatBjmjqdhQkBCd9Kpk4oqaj42fnYra+LjAKusbxLNlzBR1Y78sunKICD9DKmVbq/6c5oI7/k9KK2R2x+EFpQFjnfFvXraPx6Etqq6D2u34Wn76nYh8Ol1WS1D2x3SXgOnHeeVRliXIMdqah/pWXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mnvVxPGk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 29947C4CEF1;
	Thu,  5 Jun 2025 08:12:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749111123;
	bh=Aqt+pGrmD6rjXOIVlX9xgMrVEROHR/TBNod89Et9l60=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mnvVxPGkdWEOf0cfX7fnRBaYGY0+IzX+2sNNupCy5/OMOGn0APyGlEZWw1w6VxQ2V
	 fHNDPAomIpfPwdkvyqupSqrP2Hhrb52DWTstzMq+dDNjXefiyS4ty0PrrKzfCLBEHe
	 ViqnZJ4NXGNt/1l4tOt1InDWLIeg595LJotcTApYKiJx9I4g3w0LZOGMS3ocU/HWK8
	 iDglW89WWDq5CYDuOPj8V6MZbNtx1UIxzo3SVTUHmk5RdOWoSeR116nbEPNhiY3T6l
	 4UMvYdX3V8ZVguV8ddncw4UGbTJ4dywR6z6RUQz9L8S+akkAX5ul/mYUJe9THWwMIm
	 tCYGcqFk1lwdA==
Date: Thu, 5 Jun 2025 10:11:59 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Walter Harms <wharms@bfs.de>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>, 
	"bugzilla-daemon@kernel.org" <bugzilla-daemon@kernel.org>, helpdesk@kernel.org
Subject: Re: AW: AW: [Bug 220118] New: =?utf-8?B?TOG6rXAgdOG7qWM=?=
Message-ID: <uxkrzr4wrrj66jamcu5iy4u6nszsah6k5znxqsixjwzxhm3iaz@tmu5aq5kgear>
References: <bug-220118-11311@https.bugzilla.kernel.org/>
 <3b0a1af1121f498b816715bc4ce04170@bfs.de>
 <rry23vclpqpekjoffa2frotdoi7h6cftrb6mfgjiim53y2hido@qhgxipwqqbi4>
 <0b18cb6e571d4ac28b8e38a1bf40db02@bfs.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ujdshorkgxwbntqb"
Content-Disposition: inline
In-Reply-To: <0b18cb6e571d4ac28b8e38a1bf40db02@bfs.de>


--ujdshorkgxwbntqb
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Walter Harms <wharms@bfs.de>
Cc: "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>, 
	"bugzilla-daemon@kernel.org" <bugzilla-daemon@kernel.org>, helpdesk@kernel.org
Subject: Re: AW: AW: [Bug 220118] New: =?utf-8?B?TOG6rXAgdOG7qWM=?=
References: <bug-220118-11311@https.bugzilla.kernel.org/>
 <3b0a1af1121f498b816715bc4ce04170@bfs.de>
 <rry23vclpqpekjoffa2frotdoi7h6cftrb6mfgjiim53y2hido@qhgxipwqqbi4>
 <0b18cb6e571d4ac28b8e38a1bf40db02@bfs.de>
MIME-Version: 1.0
In-Reply-To: <0b18cb6e571d4ac28b8e38a1bf40db02@bfs.de>

[CC +=3D helpdesk@]

Hi Walter,

On Thu, Jun 05, 2025 at 07:36:40AM +0000, Walter Harms wrote:
> Even if this is spam, the message is confusing. It that case it should re=
ad "removed" "banned" or you name it.
>=20
> NTL i tried bug 220119 with the same result.
>=20
>  For now i would say it is not possible to read a bug/msg without a login.

I guess you can contact <helpdesk@kernel.org> for reporting a bug.  I've
CCed them already, so they can comment.  I'm not involved in bugzilla
management, so I don't know what has happened and if there's any better
way of handling this.


Have a lovely day!
Alex

> ________________________________________
> Von: Alejandro Colomar <alx@kernel.org>
> Gesendet: Mittwoch, 28. Mai 2025 11:55:49
> An: Walter Harms
> Cc: linux-man@vger.kernel.org; bugzilla-daemon@kernel.org
> Betreff: Re: AW: [Bug 220118] New: L=E1=BA=ADp t=E1=BB=A9c
>=20
> Hi Walter,
>=20
> On Wed, May 28, 2025 at 08:52:19AM +0000, Walter Harms wrote:
> > Hi,
> > i was curiousabout that bug and got an Access Denied just reading the p=
age.
> > Is is possible to get info without having a login ?
> >
> > full msg here:
> > "You are not authorized to access bug #220118. To see this bug, you mus=
t first log in to an account with the appropriate permissions. "
>=20
> It was spam, so I guess the admins made it hidden.  When I log in, I see
>=20
>         You are not authorized to access bug #220118.
>=20
>=20
> Have a lovely day!
> Alex
>=20
> > ________________________________________
> > Von: bugzilla-daemon@kernel.org <bugzilla-daemon@kernel.org>
> > Gesendet: Mittwoch, 14. Mai 2025 05:15:56
> > An: linux-man@vger.kernel.org
> > Betreff: [Bug 220118] New: L=E1=BA=ADp t=E1=BB=A9c
> >
> > https://bugzilla.kernel.org/show_bug.cgi?id=3D220118
> >
> >             Bug ID: 220118
> >            Summary: L=E1=BA=ADp t=E1=BB=A9c
> >            Product: Documentation
> >            Version: unspecified
> >           Hardware: Intel
> >                 OS: Linux
> >             Status: NEW
> >           Severity: normal
> >           Priority: P3
> >          Component: man-pages
> >           Assignee: documentation_man-pages@kernel-bugs.osdl.org
> >           Reporter: tracpham2210@gmail.com
> >         Regression: No
> >
> > L=E1=BB=97i g=C3=AC =C4=91=C3=B3
> >
> > --
> > You may reply to this email to add a comment.
> >
> > You are receiving this mail because:
> > You are watching the assignee of the bug.
>=20
> --
> <https://www.alejandro-colomar.es/>

--=20
<https://www.alejandro-colomar.es/>

--ujdshorkgxwbntqb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhBUUkACgkQ64mZXMKQ
wqnWWRAAlqxhYCqv2djmgvYYgNnb10c7cb0RdsvlaLb1E0RuEzKJZixo8jSg5JaM
3DZT8716qGjsD1syrKRaV/P5JLgJVzsDOMT1zob+GmL872Cs772q0xq3L1qzttto
ogvUx+k4hsU0zX/NG0liHFAKW/aBDWqGHQ15vx9Px3b6nhIm95ZuGkq7Dvf2kq0o
4ErxVLzwKQwIOchDeLAnBSMd9DDgZm+hCTWu50bozoJaOn08llwqouNKy0QOMu3R
GK2xqWqtD1TP00LKojX84WmuUwwjZ41z24vBe3YyqcYbJcBqCgX3bV8ReZmheLaD
cSYWjodObtNRnPLJ2/OsWgYi4ASVCjVIjMxmlFSMtYRHqpxF11UZwyFUgLO+95pO
F+DPYcxKzVHPOlJq90cK/XEMfZ8pEWTLfY2dDT15iacZHb/kMrLUrfsyhE5SvC2j
PwO309pSvKa36/uJTClVFYlbcdN2uP+1J3GuvMCP8T4V+kmYtCBoLBFuOYQ34Lc8
QugkZku6RD/pZBvoXMGVmJyOh93VMdrpTWVz4rl6MvXkSaVaug8kiYo5xZ/KLzf/
3oqUmz+E3Sz1xb3mL+WyzDlJ52/NmxMYbl/yCNEX1TUQdVPkiGumFH4Qn6QFj5hQ
kTvSI1du8YJyr6fa1/4w+cjdZSbOcOD/MsCBoRqQjEC9XVoQIpw=
=9isZ
-----END PGP SIGNATURE-----

--ujdshorkgxwbntqb--

