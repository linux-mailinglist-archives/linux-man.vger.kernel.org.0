Return-Path: <linux-man+bounces-3284-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F5CB0B04B
	for <lists+linux-man@lfdr.de>; Sat, 19 Jul 2025 15:39:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 77657567274
	for <lists+linux-man@lfdr.de>; Sat, 19 Jul 2025 13:39:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73D1B2248B8;
	Sat, 19 Jul 2025 13:39:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EErSaihN"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343E92E36ED
	for <linux-man@vger.kernel.org>; Sat, 19 Jul 2025 13:39:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752932355; cv=none; b=I9msO3428ONZArHeyWEIvkA6cr5OKCxUKwcSK84M+CxSTgW3rtH+bAOJx4nxY/1ClaDebu+JV62G9Iqb9EAyjJQ1D9CtyWqNRidvFijMOC7TVmqFU7qWDCI9fFte3/KrdN4O8s0iNs79MFi0oDd6nBXMgVAG0gP+1Nr07kGFAEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752932355; c=relaxed/simple;
	bh=jVLu4yVYO148OrxLCGDZWR+Ly6nWilB6JF9gDay9NYk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Cq4W4iKX6Rtj3mUcaul/8Ccd9hmKMaQRkfxzjKkWHy0apM87OQbM8VPVIqEiiruDgvzubmV8oX8ufdwrZ8E12QCp+mU1g2kk091Mwpgr9JXhGK1GHAr89npTnLeL6kUm3wL2t7jsMFTz9VMN5576luCkXScJHbJBpS6IhU5Qs88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EErSaihN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE123C4CEE7;
	Sat, 19 Jul 2025 13:39:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752932354;
	bh=jVLu4yVYO148OrxLCGDZWR+Ly6nWilB6JF9gDay9NYk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EErSaihNBNXj3NhhMRFuksr1O9HyVqnRUt5x3uIGISj1BrxlB45g81Tt6DL3Mxczc
	 hsV/6RFC9/rnjJkMxr3ETk1rH0ZLNRnaqofypO3xEIMWFXsnLkz/3yz4LHKmoIxobI
	 gX8gEHJxJpqnkDt2JH+V5hBcj7mLFYGB1KcyWnT32OYMShYWB1SXzeH2ShFYsvtOO0
	 9neaBa/4fn5OOP0Sx7k+ZfzTcD9IYy0TkVb8nGpCR8bAgB4OoCft+1VOyQqsKX6NvG
	 2RHXKLb36v5dQMWCmM3jrXUzrpf4y6X38lYldzvl5h6LGyWNnDh9hCJxpGm52Lmv/y
	 bJYQZYhMJ/LqA==
Date: Sat, 19 Jul 2025 15:39:11 +0200
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: Alejandro Colomar <alx.manpages@gmail.com>, 
	linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] printf.3: mention Android's %m support.
Message-ID: <eawbewg7dyehbjkabsajos75dkpgkxbn7uvjb7scw3c47nhhde@clfjaix6y53r>
References: <CAJgzZopjpJJY8F7khF6SN=-UuYPiR70vqOE4voaQz79U_HqhAQ@mail.gmail.com>
 <uxmsabvotuwrcv5xmobyzakdfxibmkvet5f55idux2peyeto3k@zz7wo32lk4cr>
 <forno7r2gzmghoj5tr2ze2eehjfni6xcxatvqeuvuxoppypnqw@mmcrxxnlb6kw>
 <CAJgzZoq_352z=YNOOCe+G3fq2xAuZQU=r16p22XC4euhaidKDg@mail.gmail.com>
 <cfyjj5fpvoowasfqy3c4xyxm64vqxx6b6vw3ez6anlxrwwj5le@b7whzrldtxtt>
 <CAJgzZoqkoYnrDGGpkCyUM8_0yGpP3GVjwsAUoPkGsdEHbUG6xQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jemexbwkjkkx5kmt"
Content-Disposition: inline
In-Reply-To: <CAJgzZoqkoYnrDGGpkCyUM8_0yGpP3GVjwsAUoPkGsdEHbUG6xQ@mail.gmail.com>


--jemexbwkjkkx5kmt
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: Alejandro Colomar <alx.manpages@gmail.com>, 
	linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] printf.3: mention Android's %m support.
References: <CAJgzZopjpJJY8F7khF6SN=-UuYPiR70vqOE4voaQz79U_HqhAQ@mail.gmail.com>
 <uxmsabvotuwrcv5xmobyzakdfxibmkvet5f55idux2peyeto3k@zz7wo32lk4cr>
 <forno7r2gzmghoj5tr2ze2eehjfni6xcxatvqeuvuxoppypnqw@mmcrxxnlb6kw>
 <CAJgzZoq_352z=YNOOCe+G3fq2xAuZQU=r16p22XC4euhaidKDg@mail.gmail.com>
 <cfyjj5fpvoowasfqy3c4xyxm64vqxx6b6vw3ez6anlxrwwj5le@b7whzrldtxtt>
 <CAJgzZoqkoYnrDGGpkCyUM8_0yGpP3GVjwsAUoPkGsdEHbUG6xQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJgzZoqkoYnrDGGpkCyUM8_0yGpP3GVjwsAUoPkGsdEHbUG6xQ@mail.gmail.com>

Hi Elliott,

On Wed, Jul 16, 2025 at 09:55:31AM -0400, enh wrote:
> git commit --amend without a git add :-(

:-)

>=20
> should be right this time!

Thanks!  I've applied the patch.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D9e42c817384d51b8d50f4496cec089d205983990>


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--jemexbwkjkkx5kmt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmh7n/8ACgkQ64mZXMKQ
wqldkxAAtrF5DA/c6Sh6aoWWLvRurwzFRpO/akKqYFANEVNEWKqesFFPcyulnl0E
RvHMV9zUlmcyJLCENGnWSIHmjiuaIPqFkGRsCYsoqicBJgXRR9ppX09U5mbaN58o
2FRG3VkimXLxC3jERJ77VM+qD6PVIlxb13raTIdDOSGCgCXQg8qx1dl1hm5hzkoA
jgKeds5DmQPG07uJbqRfG3aDgWdkG9vqqykVrf9jtTtCKbiubUryY5fJ6OQB5A/K
sGLM5YP5se7nun3HDKcs+MuWhCjCvOPG3Ph+Q229eaa/XUsPtHlla7fZCdkzBzAk
w/FgpK9O4EE4Q5Io+I0qMp+cgITpKMddDA6JZRNTvG+oq1L7u18cHnyVpnNrlFui
Y8/kvXVctJSFTnA//Ax9N20Qz5ykB59jHqpxwXbdTr0lR4G0lzmg9KisvOEU4QEm
BXUeTJe1a0bXcfSFzGcSrHJknb/qpimpQZLGqA+8GswF1Kf0jK9CwVS7q//rGePE
HTWWXB7Sbt9jZBgOFwCD15yv1eSfAC8JZs3fyE7ksWALL0WaI3/UR2RPeh7+4xJc
8UWUUiJrXVXKnLdb14o5YbBHgBijxCzZcOKj2BonKS68C2V2lEvnYD00SsAjVqL8
FPbqrgN5sd5xuevu592tmKpmyz4v2qeP9nhXtudVbNouI8W8wOk=
=DyP6
-----END PGP SIGNATURE-----

--jemexbwkjkkx5kmt--

