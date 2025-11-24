Return-Path: <linux-man+bounces-4312-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 72D23C8183F
	for <lists+linux-man@lfdr.de>; Mon, 24 Nov 2025 17:17:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9398C4E5D77
	for <lists+linux-man@lfdr.de>; Mon, 24 Nov 2025 16:17:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD554314B84;
	Mon, 24 Nov 2025 16:17:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CKFYAqXY"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B3BF3148BB
	for <linux-man@vger.kernel.org>; Mon, 24 Nov 2025 16:17:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764001023; cv=none; b=GQqDrptmkMNW08mICmqc5wL5GyoNSpyOJRwheFnlkgMzwwnJOuw08emk/Mf+/5Vbd4ZLLdjnPOaNXtstqaQ50b4134i0BuJJrWcivmkePGnlvoPuHnhF4z/hK38NQDEjuOCW4q5ykT66wtMQl4seq0J6ES+jeztkWMKLAemTNUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764001023; c=relaxed/simple;
	bh=c+7bKxD4sy7xg9BOR3UBQb9Uow/vKTv2Qm1i3VjEMPA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kncNiFSenW8t9mjC300ebrwpda62YCofGTtfA5DlPQfc0aK0wLm/PfmWkOc8Qo/HCRSB+HV5JnRZVrmqmsi1HDL8luQ+0BhTljLBoPb3eFVeg/imtqfoHVvDXIbHWBX80h4Pn84BUnmlcdW5g6lIbTUuI+i/UWjMPWqcefk7F/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CKFYAqXY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5072EC4CEF1;
	Mon, 24 Nov 2025 16:17:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764001023;
	bh=c+7bKxD4sy7xg9BOR3UBQb9Uow/vKTv2Qm1i3VjEMPA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CKFYAqXYCAp+h+IIs5Z9MVXVwPj8utGo0YkxF1KUadlebEO4GZKrvMosYsNoy4ThG
	 JDgAcIT0arkgZtmlgrguCkUVzVpnlbqYhdjwJW/52n9cdc+TKiV/dOC9DodpEcea9O
	 UaAWGBlSPxqi9KDtUPPCjRlbA0qA10lMowltVkkCrFx2NBkni2kfkYS2Abxb6+iOjH
	 /Bi1lw6rrbju8YhEkmqw0tTOKaekNDIplW2Uduy7ratTqNcoblDSsRD6DbZHHMDbMB
	 o2As9hJ/TyVa/5TqEjV92kKzMYGuV0prXNLKEjba8rK7Ns+/+YFt2Rg6QPiI3ZC37G
	 IDQba2w7Se39g==
Date: Mon, 24 Nov 2025 17:16:59 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Teika Kazura <teika@gmx.com>
Cc: linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [Patch v2 0/1] man/man2/ioctl_vt.2: Various improvements.
Message-ID: <bnwlj3kkqace6y5q4yti4myeh7ng7nnpsplofyo4di6hjgwdi3@cafxboi3qygl>
References: <20251110.165618.2111633615163528521.teika@gmx.com>
 <20251114.213102.157774727959285812.teika@gmx.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="g3n6rwast5g5axnz"
Content-Disposition: inline
In-Reply-To: <20251114.213102.157774727959285812.teika@gmx.com>


--g3n6rwast5g5axnz
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Teika Kazura <teika@gmx.com>
Cc: linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [Patch v2 0/1] man/man2/ioctl_vt.2: Various improvements.
Message-ID: <bnwlj3kkqace6y5q4yti4myeh7ng7nnpsplofyo4di6hjgwdi3@cafxboi3qygl>
References: <20251110.165618.2111633615163528521.teika@gmx.com>
 <20251114.213102.157774727959285812.teika@gmx.com>
MIME-Version: 1.0
In-Reply-To: <20251114.213102.157774727959285812.teika@gmx.com>

Hi Teika,

> Subject: Re: [Patch v2 0/1] man/man2/ioctl_vt.2: Various improvements.

Please send improvements one-by-one, in small patches that do one thing
and do it well.  I generally dislike patches that do "various
improvements".  "various improvements" is only a decent title for a
patch set, but not for a patch.

On Fri, Nov 14, 2025 at 09:31:02PM +0900, Teika Kazura wrote:
> Some follow-ups.
>=20
> 1.
> From: Jakub Wilk <jwilk@jwilk.net>
>=20
> > VT_GETHIFONTMASK is documented in vcs(4).
> > [...]
> > s/exapmle/example/
>=20
> Thanks. I checked the other 4 undocumented calls are not documented elsew=
here
> in man-pages.
>=20
> 2.
> In the v2 patch,
> a) The markup of "See also" at the bottom is wrong.=20

Please send a separate patch to address that.

>=20
> b) "privilege of CAP_SYS_TTY_CONFIG" -> capability of

Please send a separate patch to address that.

> 3.
> I'm thinking of adding something like below. It might be too wordy,
> and not exactly for a man-page, but I think it is better than
> being completely lacking. Any comment?
> ------------------------------------------------------------------------
> VT_WAITEVENT: This is implemented, but do not use.
>=20
> Historical note: In 2010, by the request of the package ConsoleKit, VT_WA=
ITEVENT was implemented. However it turned out to be a failure, and Console=
Kit gave up its use. This ioctl is a mere relic.
> https://bugs.freedesktop.org/show_bug.cgi?id=3D17720
>=20
> VT_RELDISP:=20
> (Add this) The package elogind does ignore acquistion event. =20
> https://raw.githubusercontent.com/elogind/elogind/refs/heads/main/src/log=
in/logind.c
>=20
> -----------------------------------------------------------------------
> Anyway if it's to be rejected, I'll post it to bugzilla for slightly bett=
er searchabitily. It's an abuse of bugzilla, but I don't care. :p

You can send a patch.  We can discuss any wording.  As you said, some
documentation is better than no documentation.


Have a lovely day!
Alex

> 4.
> I'll add VT_LOCKSWITCH and VT_UNLOCKSWITCH too. They are simply what the =
names suggests.
>=20
> Teika

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--g3n6rwast5g5axnz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkkhPsACgkQ64mZXMKQ
wqkjNA/9G+rkpdJthRcNUdZSjqmK6aYg4miuD8jUBswzTvgsSVGynA0JCqyF5rLQ
9pbEE+LadUHbtvKQQST+E+0hqHl5dyBkUavYdJYSuij+9OYQs4CB8s8AdPCONYdz
4s4pFQq7Qb/l7qwXXDWWORrOpNNWQ9PGSZB2mJyNhQhQTOfCy8g3Qs8tSufTKBBI
fhxh2QLIfU3XyGzgzZqQU70fb6KzeUJTBUiWyRcJIVfW28eTZWheF9PsAgcq1TSG
iVsdJ0kgPhmB3Z26SROAD3HjfDt5+joyLJX1FFuOk/ge16B2LxYpMQYdLlBWB9Ue
nRtI16X5rxCR1+XRhDzi1BRvFaiWOC89djvoo2+ANIsWk/sV2mIIOZb/SWKqIxD1
49U4fsaHOGOKzjspLQ9ng+8hhmojiANP3Wej2p5kB27L/dOBD0qZsGR++NO7KOEp
/CJPwzA/0Jq19lsKcqT3ll3N6kWDseVvKQSruif39WLn25BFoILkLPSs9yCBfciD
qrliPZoyHCvIxSqgPd7ubiAAx2m58XMByomyAZhXqngHMbiygWsOrwK56trkSKcc
rJ04WCLefsyO0SKC3FUiHwuZYsa94/PXdssIrc2cEafZlQPkjnm1BnGNcAtjX9x9
tvCZJae4uJti+2sN1o3vu3Z0FM389q79xXJjfgtoXkwlI4jDU0M=
=zjZQ
-----END PGP SIGNATURE-----

--g3n6rwast5g5axnz--

