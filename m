Return-Path: <linux-man+bounces-3740-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C3123B373F2
	for <lists+linux-man@lfdr.de>; Tue, 26 Aug 2025 22:40:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 81F12363CB8
	for <lists+linux-man@lfdr.de>; Tue, 26 Aug 2025 20:40:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF1AE334396;
	Tue, 26 Aug 2025 20:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VV0ufYiA"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D5FE31A554
	for <linux-man@vger.kernel.org>; Tue, 26 Aug 2025 20:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756240835; cv=none; b=YtJGBy+ORIP0KvEF3hjVconEdVWpUKzYWiUCJ7Tq70pL3HJzUCEf0r/LoObSSOiSyRlXsxUgMwad0OBmC8c1Pb3jT75CXcrjSqf3Ys8geY9SsU+zFnqquc1TCqlp49bv7Itex3KO+vwgYoF5hStWxIfWQHdv44ADXNRLIezFRcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756240835; c=relaxed/simple;
	bh=l0ffjTdLt6MZNcwNqi5gcDrC1CQR/FiMz/yuI6+tNl4=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OCw5iXTcAtfKYgY7MTGdIsG9+fSIJGy9l2HLhk23gZciyteDKCphUGvQfHea9fJ4TlYpOYmbz+Rb8FoZeBAEFxyWZr1vb/mGN+uXOQd6Jf9PAK2CbXSmjdf7RGWQp5yNUymh7pikSUHkEcPz1yaraW2KowlujknwtdtjN3hv5gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VV0ufYiA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68C4AC4CEF4;
	Tue, 26 Aug 2025 20:40:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756240835;
	bh=l0ffjTdLt6MZNcwNqi5gcDrC1CQR/FiMz/yuI6+tNl4=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=VV0ufYiAUdQAWQSMFh+00iUyft3nW89/MzJUy/ihmQMSDslfui7JYKhtUq3R8qI3W
	 OIU2/ooZxB0OCVlhJDJD1XINP5kjmpf8EoS2uum+d/9wK0uHHickwR4WqmZev6E04R
	 5LNqTuMBSkcztZb3zBdiPoJmi4NWlct2iDtBpUkcwxuB/AHOpJSUdD14IoKLCxc5Xs
	 DWSHMf04GGHpA/cDn37w91YnId2UdKfFP7xF3vlFzq38X2CXh3NYO92BkYvPvkJiBR
	 K0icXuVdSOH8peP52kC9STGZzm6VHNy3cZ8IMnUfDuO0hqrlTw6EJCU65QUV317Yak
	 ffVg5CTsbNO/Q==
Date: Tue, 26 Aug 2025 22:40:29 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>, 
	linux-man@vger.kernel.org, groff@gnu.org, Helge Kreutzmann <debian@helgefjell.de>, 
	mario.blaettermann@gmail.com, man-db-devel@nongnu.org
Subject: Re: URL visibility on terminal devices (was: Issue in man page
 pathname.7)
Message-ID: <o3qfmiy2i56vafcelxdxvyrt2h2yekzcdioc4mtz2pdqkd4ou2@yfvledsrepxa>
References: <aKsmTuVSFb93ocPm@meinfjell.helgefjelltest.de>
 <aj3eqcdmjd5rjcs7ng74prcysoumnpaooxxhwklglwyrpvpp3t@vm3rqullggpi>
 <aKyMnL1N6wwD77X7@meinfjell.helgefjelltest.de>
 <67todkk4wpqgskfy3s75uy7cbtahfpcaxymdse7pjzrjk72r7w@25dwgnvj5imm>
 <aKy3oVSyXS8_Xj5l@meinfjell.helgefjelltest.de>
 <3vzgdnoegfdc7lflbincypzzjl3hitatj3oan5maejqng75kb3@e3enbnrxo4lx>
 <20250825230420.2dl2kkchtmkwjge7@illithid>
 <tal23nvlrjz4thsc4u2godehn25x6x4uiucky735te5ojsgygj@gga4etjwpo7n>
 <aK3v4_PHAtycO4qz@riva.ucam.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qonwz7bl3poonvtb"
Content-Disposition: inline
In-Reply-To: <aK3v4_PHAtycO4qz@riva.ucam.org>


--qonwz7bl3poonvtb
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>, 
	linux-man@vger.kernel.org, groff@gnu.org, Helge Kreutzmann <debian@helgefjell.de>, 
	mario.blaettermann@gmail.com, man-db-devel@nongnu.org
Subject: Re: URL visibility on terminal devices (was: Issue in man page
 pathname.7)
References: <aKsmTuVSFb93ocPm@meinfjell.helgefjelltest.de>
 <aj3eqcdmjd5rjcs7ng74prcysoumnpaooxxhwklglwyrpvpp3t@vm3rqullggpi>
 <aKyMnL1N6wwD77X7@meinfjell.helgefjelltest.de>
 <67todkk4wpqgskfy3s75uy7cbtahfpcaxymdse7pjzrjk72r7w@25dwgnvj5imm>
 <aKy3oVSyXS8_Xj5l@meinfjell.helgefjelltest.de>
 <3vzgdnoegfdc7lflbincypzzjl3hitatj3oan5maejqng75kb3@e3enbnrxo4lx>
 <20250825230420.2dl2kkchtmkwjge7@illithid>
 <tal23nvlrjz4thsc4u2godehn25x6x4uiucky735te5ojsgygj@gga4etjwpo7n>
 <aK3v4_PHAtycO4qz@riva.ucam.org>
MIME-Version: 1.0
In-Reply-To: <aK3v4_PHAtycO4qz@riva.ucam.org>

Hi Colin,

On Tue, Aug 26, 2025 at 06:33:23PM +0100, Colin Watson wrote:
> > Hmmmm, that sounds not good at all.  How about moving this to man(1)?
> > That is, man(1) knows whether it is being piped or not, and thus can
> > tell groff(1) to do OSC8 or not.  And even for the case of the terminal,
> > it is in a better position to pass the information to groff(1); we'd
> > still need points 1 (modified for man(1)) and 2, but not 3, which is
> > very ugly.
>=20
> Doesn't man(1) have most of the same problem?

The difference in man(1) is that it controls the entire pipeline, while
in groff, troff(1) doesn't still know which output device you'll be
using.

So, you don't have problem 3.

>  It needs to know whether the
> terminal emulator supports OSC 8, and I'm not aware of a way that it could
> discover that at the moment; it's not just a question of whether it's pip=
ed.
> I don't think that "put it in man-db's configuration file" or "require a
> command-line option" would be particularly friendly solutions to that
> problem.

Yes, you can't currently implement a check to know if the terminal
supports OSC 8.  But whenever terminals have a way to tell you if they
support OSC 8, you're in a better position to pass -rU0 to the entire
groff(1) pipeline.

And at the moment, you can at least already check if stdout is a pipe,
and pass -rU0 if it is, which would at least improve the output for when
I do `man foo | cat`, for example.  It doesn't fix terminals, but it
fixes pipes.  So, maybe call isatty(3), and if it returns 0, pass -rU0
to groff(1)?

> If points 1 and 2 were handled in groff, then I wouldn't be necessarily
> opposed to having man(1) tell the formatter that rendered hyperlinks are
> acceptable, but it's not an area I'm all that familiar with.  I'd be happy
> to review patches provided that they retain compatibility with reasonably
> old groff versions (man-db currently supports groff >=3D 1.21).

Thanks!

> I could of course have man(1) unconditionally pass -rU0 to groff until the
> problem is resolved properly, which would at least preserve existing
> behaviour for users of unreleased groff 1.24.  I'm not sure whether that
> would be considered as playing Core War with the manual page system ...

Hmmm, I don't know.  I think that would be more easily fixed in the
Debian package of groff(1).


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--qonwz7bl3poonvtb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmiuG7YACgkQ64mZXMKQ
wqnj4BAAoyCUox6QST3mQoLXjH3WcSK5S0InuWk3Cc0gleX/sEvr7zj7dQiTYm/p
o6MjeDy+6nBihZrF85KJJhCO3mvyVKGIaPzyW5K1zV+mNpKWCcvRS/p9Aydfb6mn
D6uCEzehpN8co0RI86B7RrEhbxOcdhYd0MPGUXJ/lPjaMypu8CuO0LgP8A1PDUmU
4Fr28Ku/Em+E5eo0vxQCdMImB+kE1oIxxvIs/xEnPLoEqAwCHtxXsVCMWReWXffO
WrCBZX3sYeAGllqVtc8o9W5RUEA5YCbi0ytAUV5JVX5C32I21qtKU7at9yYL4Z2L
1s3RwlCa1kHfUt0ZJ4MMh9Z45pWXNnMq6Ca0mPZtitrtyPhybDaAJNLYlq8OcweZ
CWtOwpVhmCtn62H5YafjsXqhjhLS+vHDGSMHV16lWoxTTRCEegToXJVodXlqlhDG
qSTRWtfs1h2+IUlCMo6YLVERRwMLiNi5K1NWNEuhyRXLpFih87qstiWpK5vraHBw
vmFFNzjs/BkHSqZHIbg+k8FlBZ1yh9Rf7eXp7A75RuXl9cWoXs+PbhmUNmeAMmOo
ZU6TNncRspZtRL01Mjywe7TSxpK39ju161qOgXtwaq+V6toy78M8pZKbf//L84cS
2o0yiYp7Sw/jDShD6yPkAKgLLLX/hrkNRP+1I/VM+dhqagHxpjU=
=+td9
-----END PGP SIGNATURE-----

--qonwz7bl3poonvtb--

