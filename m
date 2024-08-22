Return-Path: <linux-man+bounces-1653-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E49295BC8A
	for <lists+linux-man@lfdr.de>; Thu, 22 Aug 2024 18:57:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 17E73B21382
	for <lists+linux-man@lfdr.de>; Thu, 22 Aug 2024 16:57:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 779A51CDFA5;
	Thu, 22 Aug 2024 16:57:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sOHHDaKl"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D3E1CCEF1
	for <linux-man@vger.kernel.org>; Thu, 22 Aug 2024 16:57:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724345846; cv=none; b=BBlcBaUfQyfgmGuyti1fOVApQPaJ/Qa2fAxpsz/wzsNhUE+ztEn0Ayt0g+In0Y2h3X5/miUTnGbEOtm0RYVPsv/22EDxA+8Dedbvt5ex38tVdb0K0VT/y8YDIHNSWj+4SRHAOjtbCkWPEYAMBP/qd3rfCcBrS8w6md/jHidVDKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724345846; c=relaxed/simple;
	bh=j3f+se6MTXQfnSbFggw8BKjkBnVsvU7cGIu+1+QRtFw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=d03hxNhVXL8OV7pltyZFBmivz3lG5m9Bl8rDzWbCntVOpm5CVPyuXNBZeR1GyMaRy74vVM63O6LFH4QjvBSbzuXjhNJaIOTqV9FwtRU+SnWmXBEmv7H1MgyDHnMoX2XQ20Ea6c8esl7NRwBIoRWS6kAD6XSLfafaxQZJOQwv9rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sOHHDaKl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE5DAC32782;
	Thu, 22 Aug 2024 16:57:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724345845;
	bh=j3f+se6MTXQfnSbFggw8BKjkBnVsvU7cGIu+1+QRtFw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sOHHDaKlM+a1p7JlEerBjgsxqkPYbM4O7SQ0CJW3/LFuFuBaNx6twPgZb8PfG21k8
	 Zw5vbnboSbHIidBHyaRA7VVOHAnyltgvkVRCSMrF+JJO1GvDf8FZ8tvziIyKsKVS5Y
	 F5jy+VqAVvJUhuh+Dc9sHzhvQeSZ4t+JvC4TYOWlfbnexDL04YO28euMIVs8taw/ev
	 yfTS80qjqcutWsCky+gPK2ytM2wdgSRKB41iXHwPUsrXX/1Aj+fgzRgPe8ujNAbAc7
	 Yz3aG6HC4kC2MAcNN3zJP0z6CMrIaqOkKwTJBd5wjtxafxgJ90n3JYax8Gw68exaqx
	 PD/9/fORvLPyg==
Date: Thu, 22 Aug 2024 18:57:22 +0200
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: "H.J. Lu" <hjl.tools@gmail.com>, 
	Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>, libc-alpha <libc-alpha@sourceware.org>, 
	linux-man <linux-man@vger.kernel.org>
Subject: Re: arch_prctl()
Message-ID: <zhim7duq7za34iw4zhircvsp2zx7fm7cw7ic2t476ncar2hubo@4ikcz6zekspp>
References: <937dcbd1-69c3-48ba-ada1-6b25e5381672@linaro.org>
 <CAJgzZoq+PgP71mP3XBnJsiD_wr58Z-7mAix7NxBWV2K_=0cxKA@mail.gmail.com>
 <CAJgzZorYAxxxa0+RFz706ip1J97hz0oDz32et_FONMu-bLpeKQ@mail.gmail.com>
 <138cac72-3ec9-42c0-9c1d-982aae975fc3@linaro.org>
 <xryntaw4ltavijpf7ejf4v7uhvwfp2lytgfzeablezxlvex4ky@yfkfhw7jtzch>
 <a580c3e7-2489-445d-8ea0-cbac245092a7@linaro.org>
 <CAMe9rOpSYOG-J1H+pLWHp5aNtSFuoHo=ZFS5H17jhK2obZtddQ@mail.gmail.com>
 <CAJgzZorgr+vHuQgQyMkMZPwWjDpr=b1ibkv4U0B2V9Lh=K_dag@mail.gmail.com>
 <lnrhoiigxf7ft6p4lv7x5euyeu6qwdqndmhjxr36orkaxztrkw@qsazxkgfyzvn>
 <CAJgzZooftn7zPoSa8_P+OuQ2rH9ZXnsFnrZXcHA8oxXq7q_2-w@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="n7awchzjl53rszyf"
Content-Disposition: inline
In-Reply-To: <CAJgzZooftn7zPoSa8_P+OuQ2rH9ZXnsFnrZXcHA8oxXq7q_2-w@mail.gmail.com>


--n7awchzjl53rszyf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: "H.J. Lu" <hjl.tools@gmail.com>, 
	Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>, libc-alpha <libc-alpha@sourceware.org>, 
	linux-man <linux-man@vger.kernel.org>
Subject: Re: arch_prctl()
References: <937dcbd1-69c3-48ba-ada1-6b25e5381672@linaro.org>
 <CAJgzZoq+PgP71mP3XBnJsiD_wr58Z-7mAix7NxBWV2K_=0cxKA@mail.gmail.com>
 <CAJgzZorYAxxxa0+RFz706ip1J97hz0oDz32et_FONMu-bLpeKQ@mail.gmail.com>
 <138cac72-3ec9-42c0-9c1d-982aae975fc3@linaro.org>
 <xryntaw4ltavijpf7ejf4v7uhvwfp2lytgfzeablezxlvex4ky@yfkfhw7jtzch>
 <a580c3e7-2489-445d-8ea0-cbac245092a7@linaro.org>
 <CAMe9rOpSYOG-J1H+pLWHp5aNtSFuoHo=ZFS5H17jhK2obZtddQ@mail.gmail.com>
 <CAJgzZorgr+vHuQgQyMkMZPwWjDpr=b1ibkv4U0B2V9Lh=K_dag@mail.gmail.com>
 <lnrhoiigxf7ft6p4lv7x5euyeu6qwdqndmhjxr36orkaxztrkw@qsazxkgfyzvn>
 <CAJgzZooftn7zPoSa8_P+OuQ2rH9ZXnsFnrZXcHA8oxXq7q_2-w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJgzZooftn7zPoSa8_P+OuQ2rH9ZXnsFnrZXcHA8oxXq7q_2-w@mail.gmail.com>

Hi Elliott,

On Thu, Aug 22, 2024 at 12:34:11PM GMT, enh wrote:
> On Thu, Aug 22, 2024 at 12:27=E2=80=AFPM Alejandro Colomar <alx@kernel.or=
g> wrote:
> > I'd rather add a diagnostic for those who define it themselves now,
> > than providing a sub-par prototype for eternity.  I guess the existing
> > number of users is small, and it doesn't break binaries, just
> > compilation.
>=20
> yeah, afaict it's basically just "qemu-like things" and the occasional
> debugging tool.
>=20
> > Those will probably just need to add an ifdef for the glibc version that
> > added the prototype, so it's an easy fix.
>=20
> no, they'd just have to change their declaration to match whatever
> glibc ships. (which is definitely more verbose if it's any kind of
> union.)

Redefinition of transparent unions is allowed?  I'm not sure; at least
prior to C23.

>=20
> i don't have a strong opinion, other than "i want to make sure that
> bionic and glibc have the _same_ declaration so that it's at least
> possible for folks to fix their source to 'just work' everywhere"...

+1

> > But I tend to value more eternity than added diagnostics, and others may
> > disagree with that, so whatever you decide is probably good, and I'll
> > document it.  :)
>=20
> minimizing the need for changes on the man page is also a [minor]
> argument for just going with the kernel declaration :-)
>
> plus it's demonstrably "good enough" for existing callers. it's not
> like the union would make the api any less error-prone?

The union removes the need for a cast.  The cast is error-prone, since
it disables most compiler diagnostics.

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--n7awchzjl53rszyf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbHbfIACgkQnowa+77/
2zIloQ//TAti9Rzn5kUNFMzg50h50X72Uew3rCyh/aEzfbThykIkEoVjnRuxnrFu
B6SgK1mboDFgFrbSjGIUQ+bL0kcL0lQTwU9b3e41zHKMxutTIZDAfhjQZc9oCzMp
Y2R11LdvBPuAyAeUJXR/M9lVVwz4tI8k5RkAKqj7Ve+xxRKyjEejZyoGCNsPBMEr
XsE4//2l0TtBplDSqd27MLNLsnAaPx4jzHu3Si2FlOOZg4Mdf7e8j45kxAIEnEWm
IjNuiAiIHF2le54cTnBtg/jUwv4k8H7m5yaaFDYti4WX1YJ4BOb9TozW5w3Tj+8U
Cdgd/rqe2QU9neTcsKgjeSKI5h5tq2VleEXb2quvstqKTG1ZvCFZk4kJXzHVxRQD
MtilEKTfLUcCyMCBC+FcR+OqGcp/pBxiD885bJvoKw97oPsYtHJPDyeiyJD3d5r7
DupKaIAExjoeZo8QeenTgilmr+GHF+A5HTek7ozCZGq7/YfDlWwzJVjesh6UFZL1
j9MamWE4jtG/Ms5uElQX7ZHsm0nX//6bFwWXsyHw5trMCGyrhEosRXb74RMgiBdI
DeoFRj8TmrMWUnjpGFQTjt8u2QbxVjDeobqeqgZEcUREn6OjZ1NlqXxqNs5vZPhG
I2aew2t27DwpQtNmYr/t1HRZhfGeHjEUxS0nxW7C1EGPhyVoegs=
=vAp4
-----END PGP SIGNATURE-----

--n7awchzjl53rszyf--

