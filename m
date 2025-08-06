Return-Path: <linux-man+bounces-3342-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A573AB1C18D
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 09:48:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DA899185E3C
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 07:48:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0C661FF7B4;
	Wed,  6 Aug 2025 07:48:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hFZBhtj4"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEE9E189
	for <linux-man@vger.kernel.org>; Wed,  6 Aug 2025 07:48:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754466524; cv=none; b=PoI5ix+Sil5+SIKiOyYVC9OR+v4NebW8d5jrLvUdu3g+cO4R3Q/+WQGQR7ai4LBC8PVSrg4N852noX6GLem6WSTDO6l001McKEqE4COycm6p09T1NErRPh4U3THUjI5QsicvefU0b4/ft6Vv/kM+Vc5nZ56Q4P2StpzDsleZIKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754466524; c=relaxed/simple;
	bh=A5IzvXze7rlRndjVqCrxBGxD3SWpCziQjf/TFpa7cX8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EUGsjphE78i8biFMqgbCVmNeF5AemPO2r41+vasVz3gsnkXjjyKC+6/t8HPHHEHPuWIzm3BIZZYoAHX8O31OlPMTeq3+cjeig7k2Qs+CQApqHPnEPkNKhDv+PQ3OsO39BMP+61VFoAGyihOp6TKTP7ac6hQBTwtLHqy/Ww9j6ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hFZBhtj4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC11BC4CEE7;
	Wed,  6 Aug 2025 07:48:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754466521;
	bh=A5IzvXze7rlRndjVqCrxBGxD3SWpCziQjf/TFpa7cX8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hFZBhtj4mHSgMCfgt457ktQPpGbxjhWyPQ1SJwj5JhtxURaL6MBhxxdnuDQU2xa4i
	 JQRMcyuPv5oJQVwPhKLzgpvMBydAt1HE6gQmXLQPOFBaaK9zKq4Yz/whRTDAA4pScQ
	 JJ9NtSqqDpJDuYJQ+Ic2Sg2NYjQfPrKLmIPxywyw+z4KAwGvUcfoKUzFD0RmS986/B
	 XiQ2fp94RNY4hbP9YQ2WpuqOfBrN6WSjBURKB6UlYbEU0S18TR48uWKmLN5gxmjIe/
	 Y3by0qcTrC6vkBu/b12ZUs0OXitIl3rhxJnhW0kYuMmke0jZrreFfe3bfq8getoHpy
	 u7t2fDBZk5jOQ==
Date: Wed, 6 Aug 2025 09:48:35 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Aleksa Sarai <cyphar@cyphar.com>
Cc: "Michael T. Kerrisk" <mtk.manpages@gmail.com>, 
	linux-man@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>, 
	Jan Kara <jack@suse.cz>, David Howells <dhowells@redhat.com>, 
	Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH 04/10] fspick.2: document 'new' mount api
Message-ID: <4casrnafrwi2ar56reyno3h6jq7ci7pvcna72it4x7acrrqtuy@tggjg4z22sr4>
References: <20250806-new-mount-api-v1-0-8678f56c6ee0@cyphar.com>
 <20250806-new-mount-api-v1-4-8678f56c6ee0@cyphar.com>
 <3c5w3tlfg6qrwxospp674ctytxgpeg5mnt2pil7twpfqsiu6n3@omnvbjjyyzxd>
 <2025-08-06.1754447905-bouncing-virtue-musky-captains-married-souls-wZ7bdy@cyphar.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rfifa6fzhaz24evf"
Content-Disposition: inline
In-Reply-To: <2025-08-06.1754447905-bouncing-virtue-musky-captains-married-souls-wZ7bdy@cyphar.com>


--rfifa6fzhaz24evf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Aleksa Sarai <cyphar@cyphar.com>
Cc: "Michael T. Kerrisk" <mtk.manpages@gmail.com>, 
	linux-man@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>, 
	Jan Kara <jack@suse.cz>, David Howells <dhowells@redhat.com>, 
	Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH 04/10] fspick.2: document 'new' mount api
References: <20250806-new-mount-api-v1-0-8678f56c6ee0@cyphar.com>
 <20250806-new-mount-api-v1-4-8678f56c6ee0@cyphar.com>
 <3c5w3tlfg6qrwxospp674ctytxgpeg5mnt2pil7twpfqsiu6n3@omnvbjjyyzxd>
 <2025-08-06.1754447905-bouncing-virtue-musky-captains-married-souls-wZ7bdy@cyphar.com>
MIME-Version: 1.0
In-Reply-To: <2025-08-06.1754447905-bouncing-virtue-musky-captains-married-souls-wZ7bdy@cyphar.com>

Hi Aleksa,

On Wed, Aug 06, 2025 at 12:46:46PM +1000, Aleksa Sarai wrote:
> > > +.TP
> > > +.B EFAULT
> > > +.I pathname
> > > +is NULL or a pointer to a location outside the calling process's acc=
essible
> > > +address space.
> >=20
> > In a lot of places, please use semantic newlines.  See man-pages(7).
>=20
> In this particular case, where would you want a newline inserted? I
> do somewhat understand wanting a newline after commas, but I don't see
> which clause you would want to be split. Something like this?
>=20
> .B EFAULT
> .I pathname
> is NULL
> or a pointer
> to a location outside the calling process's accessible address space?

I would have done

	.TP
	.B EFAULT
	.I pathname
	is NULL
	or a pointer to a location
	outside the calling process's accessible address space.

Your version isn't bad either.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--rfifa6fzhaz24evf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmiTCNMACgkQ64mZXMKQ
wqlNCg//VlHrJa4tvTXgMkD6e5HxlwbaqHdBOJhRUsgkQG9tm2gtSQLyW+A8rBLw
lP1ulc3El0t5Z+SCKx+1RNmgS5ENPp3CJo4Tg4NT81FkMNdT55Lks5aUhDbjNAQa
d0+r+yD1zcNndXflAiVCICxbMsoElZTKtHVU3zf1IIwscJX1LLZ4QcaOWuI3LqV3
jJFUY37QRMW/wqda2aig9QmorYfNVZg/7HTlkc5qLAIrAIIoIFlJ3/9Ibyc2bXRy
9rnzBX7cAJdyzWmqBtn/LsB48t5bzSYwP9actAIlxJD5jc9kgx6JsI3i2CgGGL8k
TwWOJc+pasI70i60F+wF649pWUxoI92PC68UQe6F8jzuhRYyP74IXisZ/YFwPz5w
hZx/HBDEijWX6qd9R/Nrpm8a85UivPZQE7IT8gBtSy1NWZXwVtodW2Na2OGnNNq4
DyybnrCvo8eP2FVkixTltys4ahM+ERFabKiZoG6rZhGqA2KWLv6K4ymRzL0YspnA
0iAZoS7SjKJDi1tZJR3h2dUTT2dITh0WINsXaVuKq3HVNICS35aYigZIvgNNw3ym
yUsAu9NkbHuCJdeJlCKnqawexGsCOehFnmkkiSY0lsT9CtdB5Phss3Bf6vC3Mjqb
+YlUbmgHB4OESA9tSfnXr/uDYVD9J2CpF3O9n4JEgZHknpx+Xcc=
=ARAs
-----END PGP SIGNATURE-----

--rfifa6fzhaz24evf--

