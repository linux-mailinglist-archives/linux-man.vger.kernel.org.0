Return-Path: <linux-man+bounces-2029-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 600B99D0494
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 16:54:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D7BD21F222F7
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 15:54:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 011911D935F;
	Sun, 17 Nov 2024 15:54:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GTaY0Fl6"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B62CD1D31A8
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 15:54:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731858868; cv=none; b=T/FytwUz/nDeziRRxIeOQBEqHY8zTipI7uFCK21XfhtS3V67S2QNs+C3h2RUv5H9RC9qZR10q/rQ25dpXy1RTIivSNhXhvaiWJZgsIXEk616Py31JVL/IaziP91OI3lFDph2SYw49MSiJWWsu9GK810WqU/2uFxOVG/ptAQ27Ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731858868; c=relaxed/simple;
	bh=QVZIz329gK2rATT0QXx/YveYVLkXY/Cn4I7FbpDqxyw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fooQo54cXvxuxGsyXsm+P2ql76xwFUZBKb2+J9VsZoR2652Tst3C0gG+iHtVMQtXSLVQ8VccHAMFXpmM4spQTiS01VzpPg7FFLlCUd1NTRRk6EeZ60NLJumASUJAT3uo/K4BFudBDS+85YCzvC+74yBJnLV9jJUGmoSjG57iyBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GTaY0Fl6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67482C4CECD;
	Sun, 17 Nov 2024 15:54:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731858867;
	bh=QVZIz329gK2rATT0QXx/YveYVLkXY/Cn4I7FbpDqxyw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GTaY0Fl66m1rb1WQ3i5vdLluQm7yz5Ymymu3G036o5nxTudvSROrx2T8Q32T13/LF
	 v8G+FJb3Hhfh5AM4bTXyZorAiECGCFyAr289oeDNAdTVVKxg8VF0BKYti07mKeTCjQ
	 etJvovA2+M6nToUcO38dYgF55Q1kXntA/pnSQOSnjhg8/QNjaEPBKqsF9VCTnjoIWZ
	 VKhGKEe2IohDVdKRaVclSWQQIQdSy1oQOhwkR2HfGK5vWlTXeyts2DfCQumX7xSXEn
	 VTG3MGCKFYRiZ10iaLp3sJt68KO06E8xR4Jy5sFt+AAsoWCTY2NmzQEb2Hzm3q94t/
	 m5Rzm0F+BCyTg==
Date: Sun, 17 Nov 2024 16:54:24 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page remquo.3
Message-ID: <u4drsjvhzbtmq5qecjrswimjwkeclg5f7p7jvmarrn37oapnrv@kbstc5chhok6>
References: <ZznJf900B2F5LgrV@meinfjell.helgefjelltest.de>
 <vxkhytkjj6tacxxn52vjw3acxd2nui3yut4hy52ipmz7lomhsg@r3mciiohdixq>
 <Zzni2BTz1UHU7IXP@meinfjell.helgefjelltest.de>
 <hbibcoxzivfn3l3ys67sbhs2j7ubcsqlhkomu4euqzn2mcqxhn@zh3reluma6ol>
 <ZzoF41qS65rQOqrp@meinfjell.helgefjelltest.de>
 <qi3zvrpfp3kjva7x7t2nx3pib4mihjdgmm3oxc3o5jnpke6vwg@as3wwgq34myp>
 <ZzoMnn2K72Kz0omQ@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2zfwd64wcekl2id7"
Content-Disposition: inline
In-Reply-To: <ZzoMnn2K72Kz0omQ@meinfjell.helgefjelltest.de>


--2zfwd64wcekl2id7
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page remquo.3
References: <ZznJf900B2F5LgrV@meinfjell.helgefjelltest.de>
 <vxkhytkjj6tacxxn52vjw3acxd2nui3yut4hy52ipmz7lomhsg@r3mciiohdixq>
 <Zzni2BTz1UHU7IXP@meinfjell.helgefjelltest.de>
 <hbibcoxzivfn3l3ys67sbhs2j7ubcsqlhkomu4euqzn2mcqxhn@zh3reluma6ol>
 <ZzoF41qS65rQOqrp@meinfjell.helgefjelltest.de>
 <qi3zvrpfp3kjva7x7t2nx3pib4mihjdgmm3oxc3o5jnpke6vwg@as3wwgq34myp>
 <ZzoMnn2K72Kz0omQ@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <ZzoMnn2K72Kz0omQ@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Nov 17, 2024 at 03:32:46PM GMT, Helge Kreutzmann wrote:
> > > Strange, both in the original file as well as in the translated
> > > output, so something in the toolchain, indeed.
> >=20
> > Please show me the hard breaks in those files.  Maybe I can find out
> > why it happens.
>=20
> Well, I don't know what I should show you.
>=20
> In the original file:
> .TP
> Domain error: \fIx\fP is an infinity or \fIy\fP is 0, \
> and the other argument is not a NaN
>=20
> In the po format:
> #. type: TP
> #: archlinux debian-bookworm debian-unstable fedora-41 fedora-rawhide
> #: mageia-cauldron opensuse-leap-16-0 opensuse-tumbleweed
> #, no-wrap
> msgid "Domain error: I<x> is an infinity or I<y> is 0, and the other argu=
ment is not a NaN"
> msgstr "Dom=C3=A4nenfehler: I<x> ist eine Unendlichkeit oder I<y> ist 0 u=
nd das andere Argument ist keine NaN."
>=20
> -- Notice the ", no-wrap"
>=20
> When I build e.g. the German version, this becomes:
> .TP
> Dom=C3=A4nenfehler: \fIx\fP ist eine Unendlichkeit oder \fIy\fP ist 0 und=
 das andere Argument ist keine NaN.
>=20
> If you notice anything, great. But otherwise I suggest to simply
> ignore this for now (I don't have the ressources to dig into po4a for
> this, there are for more serious bugs there).

Hmmm, no, I can't see why.  Unless it appears for every TP.  I don't
know.  Let's ignore it.  :)

>=20
> Greetings & thanks for your fast responses and help.

You're welcome!  :)

I believe I've attended all of your reports by now.  (I might do
something about the mount vs mount point soon.)

Cheers,
Alex


--=20
<https://www.alejandro-colomar.es/>

--2zfwd64wcekl2id7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc6EaoACgkQnowa+77/
2zLXZw/6AmLdiuqVPGmFPerRWeKRtICAcr22M81bHEIcE9VGLt+ZFXTAPo9Hek2+
Vb4ceeD/TrgX70djQZnwHp55PXKrXD6A2ydHXifEDjLVRT7q3KGHUZPiYYXv0A69
+oFHDvrQTnxZykDlaCQRAMosVJQ1GUmvQ01Y8VLj5ITIR5JOG7Uo7Ph/pI5lJ7/c
EU1gYwNZqOEx8hBr+1UZUfJenBMlU0xywDs1hFhgW/H0K5wYH/fHm2DaDkAezQyB
UQlBBClDVhOni9y8qUY+UPkG8jnaMSJmDsfdGxtkCPRpOUN+VZC4ZHkPR9UpfKje
2mWc3XUvPGtDBB1KDNeKGFo+RkZIIBwNds3CIZyklc2OJqhZDvedzKRwmagReI0k
jhduyQp9l07oGoOqzdCRsY9QCQacm7zilCt4O6txJ83zX8whh29uO8d5qVJh+fJj
WTKSQ+n7FiDzp+sj5qBBE5svXz8wsf2xQgpt5CD3iKMS1y7eg2hvOBXXz3NiVLDQ
g+qq0eVxj29HB8MEisg9Puh4EtIfJplYxJ78q7hh5K8XoXzXEpg9zwImRhr0oPhh
R/9jWsp2fbDQxwOfkmS6WPvtjZlX8qdDAxLRG0GG67pJEpeV1mfwidSpJqvSOqiI
aE0l2c5VUdiwI6fHom+rJsPdsxIk9cNrIK8uYyFThwf/lYsZg6M=
=Lfwa
-----END PGP SIGNATURE-----

--2zfwd64wcekl2id7--

