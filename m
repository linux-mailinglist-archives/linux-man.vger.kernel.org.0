Return-Path: <linux-man+bounces-3285-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C85B0B04D
	for <lists+linux-man@lfdr.de>; Sat, 19 Jul 2025 15:42:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EE17D7AC738
	for <lists+linux-man@lfdr.de>; Sat, 19 Jul 2025 13:40:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D80C270548;
	Sat, 19 Jul 2025 13:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F0KMeCj2"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DBD619BBC
	for <linux-man@vger.kernel.org>; Sat, 19 Jul 2025 13:42:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752932537; cv=none; b=aeupR45VfZ+HbnRbSlhErXhNrwxcF44oevdUlzdGPy806KrEr2SJx0FsDVD26sjP3nATVrj0e7B7ZxKaGtBD8w3vqm3aloJ5d1gPBLoHndJwmoJdgJJbZ20ESTBvaXx+2XYhOijsq9YMnFg3KMe5oPM5VQHq4eYkf4F2QSMc0O8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752932537; c=relaxed/simple;
	bh=3W4G11lth2/T50qxm6DmYopO5g1qwB1JIVeflTcyX5s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uOSpsbMYEns6XxhJkv63wsNofjZ6OfCWF5Y4fwdZzuaDKIceUpRcCd17a9Q3dTehkyLSikjRtBDpdLoRrhWRFmi6bKoAiRaGB1ODXNS9xMmd7u+2OCG3+2pS7upqHkL0Gi45bngCLLHXqUpVCJtYKrKMvWk9KlG1pBv0pi6ZFmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F0KMeCj2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85B99C4CEE3;
	Sat, 19 Jul 2025 13:42:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752932537;
	bh=3W4G11lth2/T50qxm6DmYopO5g1qwB1JIVeflTcyX5s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=F0KMeCj2I44u/nFgwQh/aQGz9srd7scnJMSM1EJNgnJA6DACplcbmJYjoIvPt+s2j
	 TT2+LFqWmEZPUIfG/V/osmtooKRAZh/YLEa4s9kXxZYYtj7ZAJZfXf2HjJdXqrblLi
	 Dj6yiFH5q565+IiM9wwqcJ/8uhC4Gr2DKwSYWpWIndRvEhI3j6y5duiVOtojOKS9d0
	 tniW64f6NLaK4XuOXeqsQ86/1ijBTQ3nGvcD1e+EGuHZh4oomOZJOqXZObcmnIwE8z
	 pI5/23g6khsag+jLf8YDUkqgz6H2ETo3vBNXAh4mmc3H+baQ+T73mDb5WewEFUdAym
	 KHpdgkH7azidA==
Date: Sat, 19 Jul 2025 15:42:13 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Vincent Lefevre <vincent@vinc17.net>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/: Replaced reserved exp identifier
Message-ID: <vxtyzaugbti2ulza32vigplbejjrbl5np2y2t6xvrcnbleih36@oeijoi7aczao>
References: <20250702092516.GA2328014@cventin.lip.ens-lyon.fr>
 <hg3uyynudxq2bm2cl2spcm6nshjewbcoaxoxjzamtuzevcwyyw@d2ituhdydzmw>
 <20250703023451.GJ12583@qaa.vinc17.org>
 <awi6dk4jfrdbwizjn63c3j32ibll4exy2tdnqgimz64tdjsn3c@gstmeshesm4r>
 <20250703081717.GK12583@qaa.vinc17.org>
 <yyj5l3eyeppjexobe3mo7m4d3gx75uijklcem5x27e5oda76a7@scxrpc7su4v7>
 <20250712212322.GE2629@qaa.vinc17.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="e4dws7nkffwebtqf"
Content-Disposition: inline
In-Reply-To: <20250712212322.GE2629@qaa.vinc17.org>


--e4dws7nkffwebtqf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Vincent Lefevre <vincent@vinc17.net>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/: Replaced reserved exp identifier
References: <20250702092516.GA2328014@cventin.lip.ens-lyon.fr>
 <hg3uyynudxq2bm2cl2spcm6nshjewbcoaxoxjzamtuzevcwyyw@d2ituhdydzmw>
 <20250703023451.GJ12583@qaa.vinc17.org>
 <awi6dk4jfrdbwizjn63c3j32ibll4exy2tdnqgimz64tdjsn3c@gstmeshesm4r>
 <20250703081717.GK12583@qaa.vinc17.org>
 <yyj5l3eyeppjexobe3mo7m4d3gx75uijklcem5x27e5oda76a7@scxrpc7su4v7>
 <20250712212322.GE2629@qaa.vinc17.org>
MIME-Version: 1.0
In-Reply-To: <20250712212322.GE2629@qaa.vinc17.org>

Hi Vincent,

On Sat, Jul 12, 2025 at 11:23:22PM +0200, Vincent Lefevre wrote:
> Hi Alejandro,
>=20
> On 2025-07-03 18:28:49 +0200, Alejandro Colomar wrote:
> > On Thu, Jul 03, 2025 at 10:17:17AM +0200, Vincent Lefevre wrote:
> > > The use of "max" in the name is important as there are several
> > > timer expirations and one gives here the maximum number of such
> > > expirations. It could also be "max\-expir" or "max\-#expir"[*].
> > > What do you think?
> >=20
> > How about max-num-expir?
>=20
> OK.
>=20
> I've attached a new version of my patch.

Thanks!  I've applied the patch.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D26e5c43a99ac2c0c01845131d3fbc8e375610b09>
=20
> > > > > One could do that (this was more or less my initial idea,
> > > > > and I'm wondering why the committee chose p).
> > > >=20
> > > > The committee has chosen many bad names.  Let's not follow them.
> > > > Indeed, now that I'm member of the committee, I'm trying to fix that
> > > > among other things.
> > >=20
> > > Great. FYI, here's what I sent to the CFP list yesterday, as there
> > > are also remaining "exp" in the standard:
> >=20
> > Do you want me to write a proposal?  Or will the CFP write one?
>=20
> There hasn't been any reaction to my mail in the CFP list.
> So perhaps you could write a proposal.

They didn't reply to my paper either.  I'll have to ask for an N number.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--e4dws7nkffwebtqf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmh7oLUACgkQ64mZXMKQ
wqnMXQ//QGTqmhnSjHWAD5PetOJWPnIvJjle7VtCe0qT1upgty917LvQV18UAgHM
M2VHz3279P/EpRiowGJNC6lf8l9qTXz7ErFcwFVIuyOV9HbCetC6tXf78VbhdTgr
2c2KUF18pt+Ayz1XGhnzPMPy2XCtf7lXOoCQEoLf45fLVNKm/QHoo8JNpwltL/xC
VhKwkLtM7+/mcuRNTQek3FoYpMLtT4oLxePi4E/VzspLKgRUY5wlq+VlhdCfoz+n
Naqy//jcM/75Jsv+KQBS2zM72dXFIDD1wYJueSnC+tmyz0h4rlxbnQkqZTW94G8Y
cLDoTwY+Tcb6K+sbsDmyDNMSCIPsW6A5iWX0YHb+xpMjhSLjiK78MbphrhTsc+4n
mdmyFeEI0StqXsz5xbqjXT2uMWCPlM0o5NVvhrFDFX58dbKQ8cXvXgEExokUXOiY
dtlLJA/nwyQXvr7VqqM2jrfo8C8WJEwn9NxnEbx7zyhywRKg0SFGri44aupC9gMh
R0AuO9TFb+YQ4K/fhI5+8PWZJ/YX/H5PO6+ZZgthfXzWDJOGQWjQcQUPWlEGf7mN
e3UE8kpq/u9PgAaiwhGRtoiQNpSZcx/Fw2ZeijOlBPBa71AdfMan1LhS+T7t503K
dcrgTpOJ9UCRYUVWZeYYtuwv4jFXkkFaTuLhbMTwD6gaSZHl7gQ=
=lMjk
-----END PGP SIGNATURE-----

--e4dws7nkffwebtqf--

