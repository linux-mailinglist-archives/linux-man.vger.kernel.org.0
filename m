Return-Path: <linux-man+bounces-5034-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gL6LCHKahGmh3gMAu9opvQ
	(envelope-from <linux-man+bounces-5034-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 05 Feb 2026 14:26:10 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id A2B6FF339C
	for <lists+linux-man@lfdr.de>; Thu, 05 Feb 2026 14:26:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DB8ED3006133
	for <lists+linux-man@lfdr.de>; Thu,  5 Feb 2026 13:26:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F4083D6693;
	Thu,  5 Feb 2026 13:26:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VD/eZ5ce"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243402D3A7B
	for <linux-man@vger.kernel.org>; Thu,  5 Feb 2026 13:26:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770297966; cv=none; b=MWHaA8zhURBvikKocSiWNRfOaJj1J1QYPvcBTiZgxOR9Qgu9xTAyCqMa9TMXfRLAh46tCoc/9m93bRh0fIn2EZowdKVdkxqo8KgnVjMe4g2vs4UuR43rtJSKvNeh3KwWYoyW0505AeaKaPm4AxFhNMa7UiBw395keAWxxnOrbBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770297966; c=relaxed/simple;
	bh=fbAQjwcYEVNT/naEwiQNW5WwAv1vBH5G6WNqxMZpMVs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hlks9Ifk4LtrU+UWcPcwTHH8ccmdv208ZI7buq26IsB9Hfn0a6OziwRRzxx1q+yZF1OoKXzWocGun6TcJhiARbyhOmt63+SElMtaryRz6jq9mrv+vXo2jPeiqcYBmspeBVcYbod9cEPpNQhKGda/hezd78SYIoH0Qunt208hGc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VD/eZ5ce; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE9A7C16AAE;
	Thu,  5 Feb 2026 13:26:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770297965;
	bh=fbAQjwcYEVNT/naEwiQNW5WwAv1vBH5G6WNqxMZpMVs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VD/eZ5ce0Z+X9cBzYdJ4rmGlLryBhdeR29v47iuNG1+j2HyhFFrMkBvOdwOoo8YCp
	 l946QhZNfdQwIihN+ulutk+W5QzNGu9LQFUgkbTQf14LUedMeyeUvSKJnr2j1Bhshu
	 bzEqRzySjmO42McqZIFbgkPlmfDdz/VJQQNTPu6X8xeJQuZLVen/DX8MedDGgEizoQ
	 Ge6kUzVDy6HGvd+K5Xuv0PeRKwsR4dau0VxgFvOiZPQ9P3pZLjb4glU/sFfCL42W+5
	 0mdK+JbuQl14bS40jIwm1Mb6GIYiKc+YGQuKWJ+AtNYGfVqu6QjAuxiBbDmVXvdNl9
	 TSm9HhEvG2NLA==
Date: Thu, 5 Feb 2026 14:26:02 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jonathan Wakely <jwakely@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: Re: aligned_alloc man page and restrictions on alignment values
Message-ID: <aYSaOqkEr-3VPg5V@devuan>
References: <CACb0b4nujtK-twnRzjWmXPyJW+0uvbM_AFx3_1xFRj86yPiHFw@mail.gmail.com>
 <aYSXSY4968FXnvRZ@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uy3vvracvx75r4ws"
Content-Disposition: inline
In-Reply-To: <aYSXSY4968FXnvRZ@devuan>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5034-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: A2B6FF339C
X-Rspamd-Action: no action


--uy3vvracvx75r4ws
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jonathan Wakely <jwakely@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: Re: aligned_alloc man page and restrictions on alignment values
Message-ID: <aYSaOqkEr-3VPg5V@devuan>
References: <CACb0b4nujtK-twnRzjWmXPyJW+0uvbM_AFx3_1xFRj86yPiHFw@mail.gmail.com>
 <aYSXSY4968FXnvRZ@devuan>
MIME-Version: 1.0
In-Reply-To: <aYSXSY4968FXnvRZ@devuan>

On 2026-02-05T14:17:38+0100, Alejandro Colomar wrote:
> Hi Jonathan,
>=20
> On 2026-02-05T10:05:08+0000, Jonathan Wakely wrote:
> > Hi,
> >=20
> > I don't understand what "except for the added restriction" means in
> > aligned_alloc(3) here:
> >=20
> >       The  obsolete  function  memalign()  allocates  size bytes and re=
turns a
> >       pointer to the allocated memory.  The memory address will be a  m=
ultiple
> >       of alignment, which must be a power of two.
> >=20
> >       aligned_alloc() is the same as memalign(), except for the added r=
estric=E2=80=90
> >       tion that alignment must be a power of two.
>=20
> That was fixed (removed) in
>=20
> 	commit 90f18b452a7113f42ea4e222f819257e692ce57b
> 	Author: Alejandro Colomar <alx@kernel.org>
> 	Date:   Wed Dec 10 12:14:01 2025 +0100
>=20
> 	    man/man3/posix_memalign.3: Remove confusing exception
> 	   =20
> 	    This is already a requirement of memalign(3).  aligned_alloc(3)
> 	    is indeed exactly equivalent to memalign(3), since ISO C17.
> 	   =20
> 	    Fixes: 7fd1e0f2be21 (2023-05-20; "posix_memalign.3: Update aligned_a=
lloc(3) to match C17")
> 	    Reported-by: Seth McDonald <sethmcmail@pm.me>
> 	    Signed-off-by: Alejandro Colomar <alx@kernel.org>
>=20
> 	diff --git a/man/man3/posix_memalign.3 b/man/man3/posix_memalign.3
> 	index 397f65aec..9c4a0bff9 100644
> 	--- a/man/man3/posix_memalign.3
> 	+++ b/man/man3/posix_memalign.3
> 	@@ -83,10 +83,7 @@ .SH DESCRIPTION
> 	 .P
> 	 .BR aligned_alloc ()
> 	 is the same as
> 	-.BR memalign (),
> 	-except for the added restriction that
> 	-.I alignment
> 	-must be a power of two.
> 	+.BR memalign ().
> 	 .P
> 	 The obsolete function
> 	 .BR valloc ()
>=20
>=20
> I'm planning to do a release this or next week, FWIW.
>=20
> You may also be interested in checking the diff from
>=20
> 	commit 5695edc7e9a3b301403aa7773b316c8d51af650c
> 	Author: Alejandro Colomar <alx@kernel.org>
> 	Date:   Mon Dec 15 15:14:48 2025 +0100
>=20
> 	    man/man3/aligned_alloc.3: HISTORY: Document bogus specification from=
 C11
> 	   =20
> 	    Document the turbulent past of aligned_alloc(), and how libraries ha=
ve
> 	    actually implemented it.
> 	   =20
> 	    Fixes: 7fd1e0f2be21 (2023-05-20; "posix_memalign.3: Update aligned_a=
lloc(3) to match C17")
> 	    Reported-by: Eugene Syromyatnikov <evgsyr@gmail.com>
> 	    Reviewed-by: "G. Branden Robinson" <branden@debian.org>
> 	    Cc: Seth McDonald <sethmcmail@pm.me>
> 	    Cc: DJ Delorie <dj@redhat.com>
> 	    Cc: John Scott <jscott@posteo.net>
> 	    Cc: Paul Floyd <pjfloyd@wanadoo.fr>
> 	    Cc: <misc@openbsd.org>
> 	    Cc: Ingo Schwarze <schwarze@openbsd.org>
> 	    Signed-off-by: Alejandro Colomar <alx@kernel.org>
>=20
> (I haven't pasted the diff because it's large.)
>=20
> And you may also want to check other patches applied near those two.

This one is also very relevant:

	commit a5342ef55f0a96790bf279a98c9d2a30b19fc9eb
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Wed Dec 10 14:15:48 2025 +0100

	    man/man3/memalign.3: wfix
	   =20
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man/man3/memalign.3 b/man/man3/memalign.3
	index cc341be7b..12e8a5bb0 100644
	--- a/man/man3/memalign.3
	+++ b/man/man3/memalign.3
	@@ -19,8 +19,9 @@ .SH SYNOPSIS
	 .fi
	 .SH DESCRIPTION
	 .BR memalign ()
	-is the same as
	-.BR aligned_alloc (3).
	+is equivalent to
	+.BR aligned_alloc (3),
	+except for the CAVEATS documented below.
	 .\" The behavior of memalign() for size=3D=3D0 is as for posix_memalign()
	 .\" but no standards govern this.
	 .SH ATTRIBUTES

>=20
>=20
> Have a lovely day!
> Alex
>=20
> >=20
> >=20
> > Does it mean that aligned_alloc doesn't have the power of two
> > restriction? If so, describing that as an "added" restriction is very
> > confusing. What was it added to? It's not added to aligned_alloc if
> > it's absent from aligned_alloc.
> >=20
> > Does it mean "aligned_alloc() is the same as memalign(), except that
> > alignment need not be a power of two"? That would match my
> > understanding of the C standard, which says that aligned_alloc() has
> > well-defined behaviour for invalid alignments, failing by returning a
> > null pointer.
> >=20
> > But posix_memalign also has well-defined behaviour for invalid
> > alignments. POSIX requires that posix_memalign handles invalid
> > alignments by returning NULL and setting errno to EINVAL. Which is
> > what aligned_alloc does too. So what exactly is the restriction here?
> > Does memalign have UB for invalid alignments, or does it fail and set
> > EINVAL? How is that different from aligned_alloc and posix_memalign?
> >=20
> > Wording the linux man page in terms of "must be" and wording POSIX in
> > terms of "shall be" makes it sound like you get UB if you fail to meet
> > it, but as far as I can tell you just get a null pointer. The APIs are
> > well-defined for invalid alignment arguments.
> >=20
> >=20
>=20
> --=20
> <https://www.alejandro-colomar.es>



--=20
<https://www.alejandro-colomar.es>

--uy3vvracvx75r4ws
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmEmmoACgkQ64mZXMKQ
wqkYyQ/6AjmXBcw6K4HiWB3FDVJ0KRz0eieflXN7bHUU0Oum1g1SbVBKjAVju+Ya
lxqOYEAFNCmLsRk5m5tfGBJZhYLOSdur2wivXk4m+bKigXaL+ag3ufv4W8iyvO9v
b+HZ3w7y1vh9m7mj6CyHwjpWcTUXGjekTgVWH33tQZxmoe7Q3+Uz3bom+LXIgImB
JqNYvJpeDrZcDQTy2Bl0E59e4R96KDEG6TwHbi40i62c6kf5fdOBnwuZKVMQ8WnW
F5UPlbKavmRMha2g3gOeD3Lt2VU5deDFGshIGOp0My1GjMveawU6/WuzW+fHwu8Z
DAmUVwq1wQPCKfkrAhy+4Mz6wkjLQorN7yKOTH+oOj4jYvqlZW137aJbNPymij3+
3gM4xvru5TP0Xn9xBilJaYICbUZTNWOX99sI+lUrrnVF+0KEGT8hfraoJlavvFBP
vH+/Ul/dQLM1FVcm2Q6+9Wx6fNlEc86/CJZLrbDdBEyUge5mJFODbyiqR9+9Mo0D
kxSXWsfCPvi23NZgGEcfHM6h4UBmky/AcEJhu7t8gv2P9WFCnPbTLRaWYKNyCZJ+
Rdoh4sjOKeWUJ25p4Pl9mJArwomp2ipTdtlv+AM/9MJ4c7ZbGumxCRL3fynk4HRL
0QIn64yGWAaNDgzlpnc3lsvZxc8ZffQt00ww1dxhlsL2c5me6O4=
=rKYc
-----END PGP SIGNATURE-----

--uy3vvracvx75r4ws--

