Return-Path: <linux-man+bounces-2608-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D57A650BE
	for <lists+linux-man@lfdr.de>; Mon, 17 Mar 2025 14:23:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4EC64189779E
	for <lists+linux-man@lfdr.de>; Mon, 17 Mar 2025 13:23:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5E7223F37C;
	Mon, 17 Mar 2025 13:23:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V43OWKvb"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8671B23F28D
	for <linux-man@vger.kernel.org>; Mon, 17 Mar 2025 13:23:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742217793; cv=none; b=QRDKRhoBGk8CvBcOIZYqw4fECzSKTP/7BTx/0dYeQifwxLOptEjZKiF++FSBBRsoGx+fV1cJnbn/qjT2rpCMwHQqkPIUqXJFi+FXiCFpdKyR3T5NIxTKVWl6wmfxiksWct0yPIdJg2zEjFA3VKuZEAj8ExVywajYaFLCCBFME9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742217793; c=relaxed/simple;
	bh=Ejl0AiCbMVE9dGt5vods9/FkNJWyQoa/cfEAnmoYGyQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DrYvdQ6Ws9jeh8L18WfJ7HQ3g0m3Uoc023M7xj+pbtsdov4TCTca0L1C1+/uKHaXtpNTEeoCErZWtNglVyEdz9tN+f8geOeq+CW1hW812eoXNwyvjWJiLRJPI/tlyoKok7jVRdtd/LD850ueHxU+OMxGMA79UL8jf+9mDRH5YvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V43OWKvb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E62DAC4CEE9;
	Mon, 17 Mar 2025 13:23:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742217792;
	bh=Ejl0AiCbMVE9dGt5vods9/FkNJWyQoa/cfEAnmoYGyQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=V43OWKvbEQgXJdjnWJmKAePOwSjJ1vu60DDR34S4wGpv8t1E7hhcujejjxBeBJLRn
	 1QbM1c8YDBlwIapb7EvHE8ufj/3bO6piMP+i/tVpDzwbOowCeT/Yq+W/mb8I2mobZw
	 pQan6e3bEKVI/GUdzThUKrqt4MkXERclCXs5OiSfJDb5nPc/M/pZY20tWcUy46/oha
	 m8hek5WXp+0f6neSqpetLvL2RCY1zMyn5TSe3VLodEpLi7IKxDrRRhkFTw2c4N5ZiG
	 +PxNOPJdu2oh2cOMq4avQ2v7zTP2y+jt+fuxQnea/uSt72MWRKJ8DIJCePyzILUjvt
	 LW+bpD0kWvL6w==
Date: Mon, 17 Mar 2025 14:23:09 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: linux-man@vger.kernel.org, Jared Finder <jared@finder.org>, 
	Hanno =?utf-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Subject: Re: [PATCH man v3 0/2] TIOCLINUX.2const: Document TIOCL_SETSEL
 selection modes
Message-ID: <iv4zzsll7vbdkn7heborockwvxtv5y3ulld7za3hjvwkq2rccv@hj77rb65y355>
References: <20250302194331.5135-3-gnoack3000@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ul3swnfw7432guxs"
Content-Disposition: inline
In-Reply-To: <20250302194331.5135-3-gnoack3000@gmail.com>


--ul3swnfw7432guxs
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: linux-man@vger.kernel.org, Jared Finder <jared@finder.org>, 
	Hanno =?utf-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Subject: Re: [PATCH man v3 0/2] TIOCLINUX.2const: Document TIOCL_SETSEL
 selection modes
References: <20250302194331.5135-3-gnoack3000@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20250302194331.5135-3-gnoack3000@gmail.com>

Hi G=C3=BCnther,

On Sun, Mar 02, 2025 at 08:43:31PM +0100, G=C3=BCnther Noack wrote:
>     -@@ man/man2const/TIOCLINUX.2const: and saved in a kernel buffer.
>     - Select line-by-line.
>     +@@ man/man2const/TIOCLINUX.2const: Select line-by-line,
>     + expanding the selection outwards to select full lines.
>       The indicated screen characters are highlighted
>       and saved in a kernel buffer.
>      +.TP
>      +.B TIOCL_SELPOINTER
>      +Show the pointer at position
>     -+.RI ( xe ,\~ ye ).
>     ++.RI ( xs ,\~ ys )
>     ++or
>     ++.RI ( xe ,\~ ye ),
>     ++whichever is greater.

Everything else looks good to me.  But,

What's "greater" when you have two dimensions?


Have a lovely day!
Alex

>      +.TP
>      +.B TIOCL_SELCLEAR
>      +Remove the current selection highlight, if any,
>      +from the console holding the selection.
>     ++.IP
>     ++This does not affect the stored selected text.
>      +.TP
>      +.B TIOCL_SELMOUSEREPORT
>      +Make the terminal report
> --=20
> 2.48.1
>=20

--=20
<https://www.alejandro-colomar.es/>

--ul3swnfw7432guxs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfYIjcACgkQ64mZXMKQ
wqks2g/9ERtD3Nq/wJHRXwB24Bx7lgYK2g/FTq49Bukc3zYiih2bi1hHaA/fpPTp
IfNArmOLdPKU4v6yoyAjHxM+rzD8o/ua1UkAzchdw4FWyN2gyLtx65K4sAerhbbf
8Q8lNlCro+RjmRHyGXNjGQOUcd8YpfUTCZYfxr2BuFsxFX6kNERyyteBW3gbThse
19z9ubeaheyhKxlkUGoOgwz2/yJ2JQ1piBaZfnrjImHAbmyx5kY0aTWrC4nllRHf
3jQKFzs0xIjZbqST2IQfc0ltNt2d9ic1MZrRs7qIUIfnwSEB9z+OEeLfcwv4QrE9
mZukcn9cDc4Qh6E6u+qZxdJ2nsmF3WDaYanV6wkDFtTpIQq0kLEMVma6fih5evkv
d+YGbRB1OOPVh6ObOtQyLhTSeOnDvKbHO7u1JyOFOW3d4Tk9uoTpSSeK86vepfjt
jUnLnf4+rAvHSiFj3z8yl2MF+yRyy4ehrjLehAXEW9eT3meMv8Vf4jFgA7iV1X61
0Fc4mdS10lyrQeO3nqg/EjxR24iR4o2C4frBTJ/8BGbcJcMtzKcZ5Ip5ylY2M266
0bJx8Gwt7uXACCms7j/kyZ2C8YmfVA5hubB32miM8lPU2RO2AmqexWZuH6ThWeWz
H0h7vNb2/q8vMWXj3RIKJQ+ZJnqQmtZDPkN7O00s1P/qtcsQjps=
=qqP7
-----END PGP SIGNATURE-----

--ul3swnfw7432guxs--

