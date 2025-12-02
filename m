Return-Path: <linux-man+bounces-4359-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 76808C9B899
	for <lists+linux-man@lfdr.de>; Tue, 02 Dec 2025 13:57:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 8C1A14E3137
	for <lists+linux-man@lfdr.de>; Tue,  2 Dec 2025 12:57:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EB81313E36;
	Tue,  2 Dec 2025 12:57:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H0XTrjJQ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1076313E20
	for <linux-man@vger.kernel.org>; Tue,  2 Dec 2025 12:57:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764680223; cv=none; b=WBKfNY8fr9PWjkWFJ7NiNc+Ic5G04iFzrTt5tCK87ohyqj9/RyvTr3BCam8Nmzf6cyAw3pIMmIdK0ELxeOvnVP8GpYtjxnPWziwgJ1U69ezp8XylxjGravQCvNaoPaH7g/Tvo1wdCAM42PfA/JbJPbbNJ55xpbBroLbklwb66xU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764680223; c=relaxed/simple;
	bh=6CM9HPjKN6y92wOojVowKWL2UhxKykBQLnqNy5HAQy0=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=k4VIV44qPgriThr2cC4i8OlaP+ydTKP2agBEMe5bHWCmMMZGjEkHIEOZghG/oBUt5/m0wi0vr0UTkbopSNNdIbZ8gDjjuqIQMS0eZzT3mWjMquExjppkbWHWiuEWE+L8MFzG60XUkj/r5+H8A8EHjIJWbHPgxXgSSDvWpC2JeuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H0XTrjJQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7F91C113D0;
	Tue,  2 Dec 2025 12:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764680221;
	bh=6CM9HPjKN6y92wOojVowKWL2UhxKykBQLnqNy5HAQy0=;
	h=Date:From:To:Cc:Subject:From;
	b=H0XTrjJQLr54rtb+mx0tvZpXOEdtpYskIEoXkAcT83c6I29glWjdX+FmtV00zNVf6
	 XKnuguZmLcoBX46IVsoom4bPwTjmrizB2LOSMiVe88e3A24xIg72M4w2iloN5RZvGu
	 ai/gPuZ5vjjeVkjabqryYAmVrfFokE7kn1wXFCYDms+3qor/JrWDqvlWarXA35KNKf
	 nNFi5+l3JOdnl5JbS/3KW70iF3DrAkPM3HDFO/kPqRPA2ri3wMeh5oRqSUpNjAlLsC
	 woJnhfu2GyITeQwiHkhq+HHnDw4sPrREIuSZEe1Yv/XJU0EYaMxm2XKL3ehYee7FgD
	 NLCKcaCtQLqDg==
Date: Tue, 2 Dec 2025 13:56:58 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: manpages-utils
Message-ID: <jmimqym6lunvyv6mt6gtwn62okem7yxnwrmzk7enuqzezudu3p@4thuem54w56w>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="t72oqjxvne2na6wq"
Content-Disposition: inline


--t72oqjxvne2na6wq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: manpages-utils
Message-ID: <jmimqym6lunvyv6mt6gtwn62okem7yxnwrmzk7enuqzezudu3p@4thuem54w56w>
MIME-Version: 1.0

Hi Carlos,

I've seen you've removed the scripts from the man-pages package in
Fedora.  Would you mind providing a separate package for the scripts,
called man-pages-utils?  We're discussing the same thing in Debian
(with the name manpages-utils) at the moment.

The next release will include grepc(1), which is a script useful for the
general public.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>

--t72oqjxvne2na6wq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmku4hQACgkQ64mZXMKQ
wqmEFxAAgvN9WweujlUvMnoBOtcalha/LfV53PRb1LuLJXfqm8p+tMLGyrZED+Mq
uLKxv61X8gRJnNCxmirCZZVsDT9rrD2Qf6sUrZNks/RxmZznpXjdVmDXp+5dCh9h
XsKkTRpLCP+4NMUFjLn32Gmz7SPX3DGBhUR3kuJhxTDDjiQyIHJZqj6bf/dz0Uxc
YkKddMXzdNdzQUG+NStI0lLBvszNvbuKmyoYm9DOzBJ45i3Gzio9KNA6wpYj3fh3
lZ0GoA61FAZTCOFrccsd9HfmW86oQ4g3Mo0LL6dYnHZcNp6OxSOIEXEFKrcQk7zD
on/a0wbJO2jOyDVNi5GsGwjgldaptmZ/g+ntEIsJKqZnvaz427GGyVBSGV34iIr+
5zGodHIRWsg4m9xmLWFNjZlB/jM4CyB+AzEisw28bbKtNzppPM5cIGFP1jUx7AN4
nNSykMBpaA55NHHu77W9OkDkZl8c4llE2rLcAKuqjiag+iNuEeE6qiDXeV9d9d5H
zE1RlbI4zQ88EgyC89ZHZbXYsO9Xy0r5lIG1gPlDWvmp44cPCcYqoF+xSdVY7vrB
cDX9gHOLjnRkRnfcYAdJ2kAsswcKuoihYZo4EiciPQutyq07MUDTIHOJTekG2BSK
7QHAibGh7LkxuFaDIP4Hi2FI7OkAVKmhjimoLV8/WBqAzesMTT8=
=h4Ad
-----END PGP SIGNATURE-----

--t72oqjxvne2na6wq--

