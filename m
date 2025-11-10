Return-Path: <linux-man+bounces-4281-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 2320DC45DC7
	for <lists+linux-man@lfdr.de>; Mon, 10 Nov 2025 11:16:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A8F374EE657
	for <lists+linux-man@lfdr.de>; Mon, 10 Nov 2025 10:12:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 785543043AF;
	Mon, 10 Nov 2025 10:11:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g5XSx27G"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7443303A21
	for <linux-man@vger.kernel.org>; Mon, 10 Nov 2025 10:11:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762769493; cv=none; b=BQtbeqiiVxIwqmLiI4nLZC10ZUI55loBruogVtHWuILx0P96h5aOLxV/f2jWSakjMNK1YmQ3K4GUSLGPGOWhadjXkJt0XAi0WYLoiHrubFYKUzUsV147z+iXunWFnCHupI4GZRO12nUEiWzrlvqgUjFYbO02jFBXh7oOJ9ypFE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762769493; c=relaxed/simple;
	bh=YDvuBiG5b3C5vN7zEXqCA5KFP42WbuS4gnX5crafzhs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eeFRORe4GLuOtj77+kCE0pqP0JFsA72dDNbWiTiTZSl7ZiFSoOP9cDPFRleOy9W6mnUZP6ekCHk/0e/PZYG8GQaStXHczp6ZEBt+sFLXky9wHhCMF80GV+qMWkHELdx6nxjgIljhteA8xlc1jiXE6/xcnQ2HbfPK6d3TnWMzPYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g5XSx27G; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7F0CC19425;
	Mon, 10 Nov 2025 10:11:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762769491;
	bh=YDvuBiG5b3C5vN7zEXqCA5KFP42WbuS4gnX5crafzhs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=g5XSx27GkBcdr68GVjwQtze1YwdPPVEcaaz7d6p/5fgXxxidr2QnqI3ulHSM02rmE
	 z+Ut/hV96TVR1IX705SElh1jrSfMUB9o3pTKnrAoOozAclKxlfV6mg1Pm/UbBZxfE2
	 8hCkZTNsimTYiJrFjVYFHeejdd98GXo2dXMNy3s78ypWIzhoU2nmsxC+xg5Ponkwhp
	 nNvtCeAdUr4075PCc9ldTo0ae1QZgl+hz8FieXMpGVPvdLEgpBOFa5A/A4foWdZ38E
	 zE6uhlqe2SXs/4C2I2hQqwBhmsK1etZ7ddmbFrKowD7EurUZp8Zyl8SRD4voemJF9c
	 T58Y2bXOOriRg==
Date: Mon, 10 Nov 2025 11:11:28 +0100
From: Alejandro Colomar <alx@kernel.org>
To: bugzilla-daemon@kernel.org
Cc: linux-man@vger.kernel.org
Subject: Re: [Bug 220726] Patch of ioctl_vt (2), small clarification.
Message-ID: <34nveb3mao2ymur2evb2kqxyoxqhy76f3iudsmmvxrabrby4mt@e3qqqpwjqgxs>
References: <bug-220726-11311@https.bugzilla.kernel.org/>
 <bug-220726-11311-d2EmRyHnN2@https.bugzilla.kernel.org/>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yeb5if2doyzftnon"
Content-Disposition: inline
In-Reply-To: <bug-220726-11311-d2EmRyHnN2@https.bugzilla.kernel.org/>


--yeb5if2doyzftnon
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: bugzilla-daemon@kernel.org
Cc: linux-man@vger.kernel.org
Subject: Re: [Bug 220726] Patch of ioctl_vt (2), small clarification.
Message-ID: <34nveb3mao2ymur2evb2kqxyoxqhy76f3iudsmmvxrabrby4mt@e3qqqpwjqgxs>
References: <bug-220726-11311@https.bugzilla.kernel.org/>
 <bug-220726-11311-d2EmRyHnN2@https.bugzilla.kernel.org/>
MIME-Version: 1.0
In-Reply-To: <bug-220726-11311-d2EmRyHnN2@https.bugzilla.kernel.org/>

Hi Teika,

On Mon, Nov 10, 2025 at 07:30:42AM +0000, bugzilla-daemon@kernel.org wrote:
> https://bugzilla.kernel.org/show_bug.cgi?id=3D220726
>=20
> --- Comment #2 from teika kazura (teika@gmx.com) ---
> Created attachment 308927
>   --> https://bugzilla.kernel.org/attachment.cgi?id=3D308927&action=3Dedit
> VT_SETMODE demontration in python.
>=20
> Ok, I'll soon (TM) post to the mailing list. Now I close this entry as IN=
VALID.

You don't need to close the bug.  You could keep it open until we fix
it.

It's just that we discuss patches in the mailing list.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--yeb5if2doyzftnon
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkRulAACgkQ64mZXMKQ
wqnTWg//cZ+Swq5Ogo19HTXDOtjtgUXCF6W3JqH0nB8ZdU8BTAtlDhE8hiovXNGz
Lu9pCYjq0InDK2pFPMdM6TpNzLy/CcAokZ3D0nLSQC5Ho8TaNkgoMweb1EkqmZBN
2U0drhYNkYeqhVDAk0PU9jniDcP0ydTdkbMq6SWwu7NEztbDaDEkhalQmy/ZQo4e
3u3tqk0QTRH+m5moTWsh3HSDAc34qJ/UdgTJ22FfmR2OkTA2c/9KRNCPNbSlu3Mx
r5hyQwPGbN3GMweAY3hZECVwfaTMABxGQuXD0yAp14GrH/5YLxfsIjcRrOhjmlb2
RmflJbYawgzQfiXHLZK1hZoDEf2YfB+8Ick5gi7u7eTkv1IqLokQ8Fl0HW+1G/P5
wpKMXYdEW0cU7cRGYKZBBIo+t6CuxwWNjv+KqmnfAyQyFjYy6vQqcGYsemVZId9y
0oLM7AMH9mJEZLdp/8CKG2v8AcyM/dISTJUrYQQw9ZH6PZSUzTnXK830g6cFn+Nx
V7+j/vrKmFkb5qEUaquN15jzzqxobwY/EC/FndpCBAkiPtZ4KzKpOZXr76F3QMOd
s8VoTkpfiJBLgteSxGz1/XzIcEVQg8WT42CPEWygTOifo/YDfisY1Wu9dY/+7SVK
iktZI1sllyLRkDsCuB0lRUNJJOo1j1oIBTvbZPKLLKk50t/OjYU=
=+Chg
-----END PGP SIGNATURE-----

--yeb5if2doyzftnon--

