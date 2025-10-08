Return-Path: <linux-man+bounces-4081-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B982FBC5FF8
	for <lists+linux-man@lfdr.de>; Wed, 08 Oct 2025 18:20:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 843B54249A7
	for <lists+linux-man@lfdr.de>; Wed,  8 Oct 2025 16:05:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7C6C2BDC1B;
	Wed,  8 Oct 2025 16:05:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bjQA+SKx"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7750A2BD5BC
	for <linux-man@vger.kernel.org>; Wed,  8 Oct 2025 16:05:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759939545; cv=none; b=qWU78+T/UgY3sKdVZwEDorcqEsO6VzBvb4rWSj6Vj5QA04B9nIur4wbnppuDtcsP8GFAVA3XnXUMcHsXnsTj/U0YcsYj6c/WiWA//3ixUiH4OfAXrIxN1f4xr65e9zUvK5yvML+IQmTl4J5aP38b062OfQAJlV14p6SjPr1plGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759939545; c=relaxed/simple;
	bh=cWEcVElVPA+fK8Bk7Jacj2o8j1WWdIUD8RDQkvbEQ8M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kL3NJ+4rzbCA9EqfsPep79UpL6kPADpJUegPDXG4nE/+uJa/C3wkN+69CqTIAq6LTk7eEV/CRSx5i+hT/Rjt6u7dCThn3lKIjRyG+PDZP3oWUvzGZ2To0k+hw+sCd0qFyaxv7xCuXPkpv4KIxFeN1+1j5j1P8TcZSxadm/FIYCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bjQA+SKx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48E3EC4CEF5;
	Wed,  8 Oct 2025 16:05:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759939544;
	bh=cWEcVElVPA+fK8Bk7Jacj2o8j1WWdIUD8RDQkvbEQ8M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bjQA+SKxl9Y97iAuobmU44qh7/clqI1tPqhT0J/ZBHs0TgCAIylwVVL8KJxR0zlRA
	 OxF+YcthMlNkvYm/wBJHSmynZkKgrUO3BcuIGoXWLhECAYJs847JMyt3ntx6MzhCbn
	 735qNODYKZeBvWsY3cTgaSkSLaz24eMg8FR5t4tAV5bDXZtCTTiA8LFWn1Vf6kX5xc
	 Goo+W1QeKOlYMnXUo/2OVSyZ5iWFwuS2JCr94F+7NUaoJ5gSXwMgzL+mr+1FfpH2F6
	 FJFGwCk2U1lJskamspFTcNVroocaWWpg0xu5Ts/yXYuCAwaGy4VBzq3trrJtV1f1F9
	 7aWVcd+EOF0iQ==
Date: Wed, 8 Oct 2025 18:05:41 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Guillaume Nault <gnault@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] rtnetlink.7: Document metrics attributes (RTAX_*).
Message-ID: <z45wvnlrxlnrp367rgxotuieieyn7myfgct6lvjitn4igupo74@htps4hpfqamb>
References: <550b1d8804698e9d71addb08a2bb377578c9c719.1758279191.git.gnault@redhat.com>
 <accjbqimswux57cgstzl2jrtqlnbxsuqhmmfjqguat7fk7kzlz@oy545lcy52to>
 <aOZ4D47TGxNPWqSE@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bxawkz54lhdqnpec"
Content-Disposition: inline
In-Reply-To: <aOZ4D47TGxNPWqSE@debian>


--bxawkz54lhdqnpec
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Guillaume Nault <gnault@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] rtnetlink.7: Document metrics attributes (RTAX_*).
Message-ID: <z45wvnlrxlnrp367rgxotuieieyn7myfgct6lvjitn4igupo74@htps4hpfqamb>
References: <550b1d8804698e9d71addb08a2bb377578c9c719.1758279191.git.gnault@redhat.com>
 <accjbqimswux57cgstzl2jrtqlnbxsuqhmmfjqguat7fk7kzlz@oy545lcy52to>
 <aOZ4D47TGxNPWqSE@debian>
MIME-Version: 1.0
In-Reply-To: <aOZ4D47TGxNPWqSE@debian>

Hi Guillaume,

On Wed, Oct 08, 2025 at 04:41:19PM +0200, Guillaume Nault wrote:
> > > +.IP
> > > +.in +4n
> >=20
> > I would use
> >=20
> > 	.RS
> > 	.IP
> >=20
> > and get rid of the .in +4n.
>=20
> I have no preference, I was just following the commands used elsewhere
> in this man page.

Hmmm, I'll have a look at the source of that page later.  Maybe I need
to fix the existing code.

> > > +.TE
> >=20
> > And here use .RE.
>=20
> Okay, I'll use .RS/.RE in v2.
>=20
> > > +.IP
> > > +Metrics that are locked with
> > > +.B RTAX_LOCK
> > > +take precedence over the values normally used by the kernel
> > > +(computed or assigned by a sysctl or setsockopt(2)).
> > > +Therefore, some metrics, like
> > > +.BR RTAX_RTO_MIN ,
> > > +have no effect unless their bit is set in
> > > +.BR RTAX_LOCK .
> > > +.in
> >=20
> > I find this placement of .in weird.  The preceding paragraph isn't
> > indented by it.  I think I prefer using .RS/.RE, and then you'd have to
> > put .RE before this paragraph to get the same indentation.
> >=20
> > Here's how your patch looks like:
> >=20
> > 	$ MANWIDTH=3D72 diffman-git HEAD 2>/dev/null
> > 	--- HEAD^:man/man7/rtnetlink.7
> > 	+++ HEAD:man/man7/rtnetlink.7
> > 	@@ -218,7 +218,8 @@ DESCRIPTION
> > 		     RTA_GATEWAY     protocol address      The gateway of the route
> > 		     RTA_PRIORITY    int                   Priority of route
> > 		     RTA_PREFSRC     protocol address      Preferred source address

[...]

> > 	+                RTAX_RTO_MIN              __u32           Minimum Ret=
ransmission TimeOut to use for this route
> > 	+                RTAX_INITRWND             __u32           Initial siz=
e of the receive window for this route
> > 	+                RTAX_QUICKACK             __u32           Use quick a=
ck for this route
> > 	+                RTAX_CC_ALGO              asciiz string   Congestion =
Control algorithm to use for this route
> > 	+                RTAX_FASTOPEN_NO_COOKIE   __u32           Allow TCP F=
ast Open without cookie
> > 	+
> > 	+            Metrics that are locked with RTAX_LOCK take precedence ov=
er
> > 	+            the values normally used by the kernel (computed or as=E2=
=80=90
> > 	+            signed by a sysctl or setsockopt(2)).  Therefore, some me=
t=E2=80=90
> > 	+            rics, like RTAX_RTO_MIN, have no effect unless their bit =
is
> > 	+            set in RTAX_LOCK.
> > 	+
> > 		     RTA_MULTIPATH contains several packed instances of struct
> > 		     rtnexthop together with nested RTAs (RTA_GATEWAY):
> > 	=20
> > Is this indentation what you intended?
>=20
> Yes.

Thanks!

> Is that indentation confusing? I can change it if necessary.

The indentation is fine.  Please keep it like that.  What's confusing is
the source code, since the '.in' goes after the unindented paragraph,
while I'd expect it to be the indentation terminator.  .RS/.RE is much
more intuitive.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--bxawkz54lhdqnpec
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjmi8MACgkQ64mZXMKQ
wqmBUA/8CBVUa+5z587gtx1xsZu5NQk2k60BkM6Ci7HrQkLNJW9rnabbANreSbhK
7oOAUdShF18207N912dcKdaLPDiYQMdzfsqXOGPjWb3TLfRffG/eij+GNUGWh9fe
vUbOxXymiZ1V/hvllYiOK7QolTcvWXUBaziJpcT7CfBEtPkp380PQhzU1rPB6oCt
Cmmap4umnwl0HpI5uUSWsry3yHvv+h1nsQRm/0RIyFPX5IhgYtFE9ouKqLVCW+rj
Nba8jg+y0b21L9jzyR7zrfI8bi/wNvJ4xQeBhPVsQKH4JGRUEJuk+BrMXLfd5tbV
k/IrQhfzWbwMnZLAC/R8zki0NzSu3SL5FwJbeLswJX5SAAN5Hcys1MyIQGpJhQ5p
TMPBkVOLdiPBoQpUqTD/VJSbxpxKo+Xwb+vL2kevtgPavi/fBGxzgJbzZcp9L2bz
+Rg57sVt3wZw0lVDJOIFXgFM5cGcjUQMa4q0nyfYY1cgH4XQEmiRTLzSk3Z/WLOd
Z/wa+quvBRyJx+BgoP/Ul6UiebUoa23QDGL8R2I9kQMiy9f9E6gZTfEpBEcBBML2
A9wOrR3sKauGkBfuMIWLhgEoVeekUlnZawCxp0ug5amQTgxQVPARy3ktz4nmPl/R
7jdX+/TG/NGmevMCFV9VoPzs39wlD066BqecSCa4psvD9HoQvc0=
=r8fY
-----END PGP SIGNATURE-----

--bxawkz54lhdqnpec--

