Return-Path: <linux-man+bounces-4576-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B8C2CDE99A
	for <lists+linux-man@lfdr.de>; Fri, 26 Dec 2025 11:51:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E14823006604
	for <lists+linux-man@lfdr.de>; Fri, 26 Dec 2025 10:51:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A5BB7080E;
	Fri, 26 Dec 2025 10:51:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IReTdtzh"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE7333A1E7B
	for <linux-man@vger.kernel.org>; Fri, 26 Dec 2025 10:51:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766746316; cv=none; b=a8rZc6Tv5O3Fw6YbAMyBFmGuKnbbGsyPYT77dKZwBnyGMlHOdMV9aJlb8CVcPFCJRd9qNEnAQy/fysjWg6BqykAcrZtkgrcguCH5eFYIu7XOybUzOt3LCDYaNCkXPUbMc0CcmnbG9W8i7zAMYv8aw8snJMP2XGO6jTGnGDoDMM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766746316; c=relaxed/simple;
	bh=jrlGlqTct6PIPZokZ4A7Oy/GD3Xfz84jSB39aau1ORI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tn420MvTu7tBIRcTFvvZBFRYro8M+WBAkBRLnsdAwLDv08UttkQmAcTxz/noNu7mZZP2PXrBquIWt9HT3TxSyd6JQ7oTadZOtnN3y4wwsI2hSz86DUCZPDJaFpFbVmr7wdqu3f8smbSJ9IQq25wl2QQBYzvWLmod4s5HDYoC7Y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IReTdtzh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C42AC4CEF7;
	Fri, 26 Dec 2025 10:51:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766746316;
	bh=jrlGlqTct6PIPZokZ4A7Oy/GD3Xfz84jSB39aau1ORI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IReTdtzhc6VsWo19HA2Gt9VDNtWUPoHjoyvTbdeAk7WJNpD/rzXFs/ht0XEOMmJ4T
	 k/fx7fQuq5QrOsm8rI4pjgayINDQ/pcgo60Fyo3BvO6LBDeJdmc7DvshsarsEU4OVQ
	 iXsLVGzD6h9uDejpAsn8qocJM30UBh6kWGCnlhIdSWzZArmAKVL82Kmwr41+gbRl35
	 n2XDPS+VeJrYZMohTij8RwVW0L9OC1wqi0rLuapUAXZxyy6xcOoq4gMJS6gx8bAm+w
	 ed4uguXtnqLysvqUeZQkmEVKMQih2mK6vgUvcKSWoGruVIkYaeSUv52lnju27cr4E0
	 EoQJfzOGqPLzA==
Date: Fri, 26 Dec 2025 11:51:53 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  PR_SET_PTRACER.2const
Message-ID: <aU5oh9TKekgvpkIn@devuan>
References: <aUv631U4dmX0wzKb@meinfjell.helgefjelltest.de>
 <aU1A1nItvZiTB0Vc@devuan>
 <aU4W77-jt6gNqh5D@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vrr4nzmf6bpzmhyo"
Content-Disposition: inline
In-Reply-To: <aU4W77-jt6gNqh5D@meinfjell.helgefjelltest.de>


--vrr4nzmf6bpzmhyo
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  PR_SET_PTRACER.2const
Message-ID: <aU5oh9TKekgvpkIn@devuan>
References: <aUv631U4dmX0wzKb@meinfjell.helgefjelltest.de>
 <aU1A1nItvZiTB0Vc@devuan>
 <aU4W77-jt6gNqh5D@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aU4W77-jt6gNqh5D@meinfjell.helgefjelltest.de>

Hi Helge,

On Fri, Dec 26, 2025 at 05:02:39AM +0000, Helge Kreutzmann wrote:
> Hello Alex,
> Am Thu, Dec 25, 2025 at 02:49:23PM +0100 schrieb Alejandro Colomar:
> > On Wed, Dec 24, 2025 at 02:38:23PM +0000, Helge Kreutzmann wrote:
> > > Without further ado, the following was found:
> > >=20
> > > Issue:     Replace comma by fullstop (in SEE ALSO!)
> > >=20
> > > "B<prctl>(2),"
> >=20
> > I've decided to just remove the comma.  Thanks!
>=20
> I thought this was mandatory, but I now read:
>=20
> > Do not terminate this list with a period.

TBH, I think it would be better if the list was terminated with a
period.  However, that would need a global change.  I'll probably do
that eventually, but not now.  :)


Cheers,
Alex

>=20
> So I remove that from my mental model.
>=20
> THanks for handling.
>=20
> Greetings
>=20
>          Helge
>=20
> --=20
>       Dr. Helge Kreutzmann                     debian@helgefjell.de
>            Dipl.-Phys.                   http://www.helgefjell.de/debian.=
php
>         64bit GNU powered                     gpg signed mail preferred
>            Help keep free software "libre": http://www.ffii.de/



--=20
<https://www.alejandro-colomar.es>

--vrr4nzmf6bpzmhyo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlOaMgACgkQ64mZXMKQ
wqlqyg//RUoyuQrepyj3ynyAxRDWTBWvdWE1KyrOt42FOHgoZHM4C8EYf6m3RjBX
+cNh3xjDLYQnExTyF2eyiB4wvNAgOQmx39FIdy+HslSfMKVWi8hmxnx5dhAVDsSa
bOAs00Ksk6DyiiQPvUrVm2UmsNvxFD6SV1+b8e35ZPQ5QaDLTjouQGnLou2exzOV
s3UEj0SvKWEjG7rtr+lPToHWjowDsFgrsLnupe0e8Qy/q126lFcr/7PNY6EsgL8h
H9/sWwfXPI8NV7Vb2VnBm47GeA32jqBcliU7GmT31hYMx20wMH7877MacA6M0/am
T3sa60qsYj/2uSPu2ioFy1hbV8BGh4XM9Fk+ceyNU8Y+ZdmzR7CCxAQQE7PnYshZ
1ht88tOoRsN9ZpaRKODZUfoNfZ2e6/Lod7mSorvgabjNSQKwl4R0vqKCwDkLh6WO
Y2uSfm8M1wb6g9uupWc9KpFYlCZd3zOE1c6FrIjE4MR7fms0fiS9g+JOgW9903Ak
0VlMc5pgWtpxTtNAopeMLuo+QDJSispZYQ8GZRQqgpqUVjRDjzprtbKQGJfww6X3
e/eZmqpTpHEmcrmEG60Gnym8oIME0S6JvpvuMArWEBWYAIjDc6/uoONGNEO4PXBG
075ey37C5nS5tmoiPmaJ+R2GKfOGIUrz8EwNQZOTSBH2NiCZQ44=
=H4wx
-----END PGP SIGNATURE-----

--vrr4nzmf6bpzmhyo--

