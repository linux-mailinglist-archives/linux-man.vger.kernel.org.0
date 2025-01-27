Return-Path: <linux-man+bounces-2303-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 22F4AA1DC1E
	for <lists+linux-man@lfdr.de>; Mon, 27 Jan 2025 19:34:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8196A163D40
	for <lists+linux-man@lfdr.de>; Mon, 27 Jan 2025 18:34:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2727C19007F;
	Mon, 27 Jan 2025 18:34:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="QHih39d7"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD6D118A6C5
	for <linux-man@vger.kernel.org>; Mon, 27 Jan 2025 18:34:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738002850; cv=none; b=iaiWiaiEjQzvik5yRelVFsfL3SbmLbnoxdWgUl4gwUbSupsTym+tTBbk20I1wuEer5ctv6JcfLVh3zJpFcPQtc41mu7mcJS4Ophr3QOpFhTGvQfvjulfP4HeVLIKYfoEeiDo9oAxUYlXdC5399dOFDgKU/g8bcD7EqlwALtr9Eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738002850; c=relaxed/simple;
	bh=Idn+QH2H0IVIZ8RTjE+B96IvfgoP41zZC7netjr3Ajo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U1unVx585uXcpk8ITXhNVnBSHwiqF8Ba8El2YTd1WRpoG+J8hKkg11uiKh869/TUsPehSngPe+58sh0zvERMn7XL7Eh9PWG2A4DYaqZfFwW06ujnC8v7Phtq7hzwlz2NpYYTn2GWfU2CIkcrd/+8g4BUPVz05irnodNidQijJI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=QHih39d7; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202405; t=1738002480;
	bh=Idn+QH2H0IVIZ8RTjE+B96IvfgoP41zZC7netjr3Ajo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QHih39d7BrX/FwNXlKkrdt1wFcJNylyYVbZgpBHtOEmSRWlYE35TnWQEtOprdomHe
	 UfoNVPwdWSqhOwFI8Ldc2Q4fgX97jjCW/JZqSxPHmriTFBS2MudMILVwQ4KUHlrHbJ
	 CZo7vYaiein/vwnNk3KEZlMRtWJPPOjrjneBxEQ0fxMHv5QkdShJZub4PnyItca7gX
	 Eye8J9eE9RyNVfBemJxeP4FnsfFy1GCAkABlH+oRSzPJdDz0hFpumca2ea8qDJIT/A
	 iEe93MSjGiCKwfh2RDaLxqSA1nVpYPh1hOuwp0GdzF5jMEF/WdYUP81QzUk2A4km6z
	 RZ2DyJilc8YVQ==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id F37A25F76;
	Mon, 27 Jan 2025 19:27:59 +0100 (CET)
Date: Mon, 27 Jan 2025 19:27:59 +0100
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: Jason Yundt <jason@jasonyundt.email>, linux-man@vger.kernel.org, 
	Florian Weimer <fweimer@redhat.com>, "G. Branden Robinson" <branden@debian.org>
Subject: Re: man/man7/pathname.7: Correct handling of pathnames
Message-ID: <ru2mlbwytntlel3jwwjcumn4i3v65bishfymxemiwvqpeeddmt@tarta.nabijaczleweli.xyz>
References: <kvezw2xintnc5cv3ijqefahwt4i3rzczcidp4krmxsafr4azsb@nvbkzgciq3vm>
 <cf6lfplzm5hkmo7lkuyuw6blw4zemrsrhhlucjr4vpwns7m4nu@7pfcxat7bgue>
 <barhqqli6kccy6sntknt444bwees3jbwy6quyapd4l24juz5th@l4cj3yhfrms5>
 <lpgdi23g56ksr622o6w4tpd6vqphyio4jjw6c5gwafenuwjncb@ubitjqklzxer>
 <a3turtye3rcug5glnau3x6brxjlvkruu7unely5dpz6ttjr255@aurahmflvg2d>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qejau6h4okiiswyb"
Content-Disposition: inline
In-Reply-To: <a3turtye3rcug5glnau3x6brxjlvkruu7unely5dpz6ttjr255@aurahmflvg2d>
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--qejau6h4okiiswyb
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Skimming the thread: UNIX paths are sequences of non-NUL bytes.

It is never correct to expect to be able to have a (parse, unparse)
operation pair for which unparse(parse(x)) =3D x for path x.

It's obviously wrong to reject a pathname just because you dont like it.

Thus, when displaying a path, either (a) dump it directly to the output
(the user has configured their display device to understand the paths they =
use),
or if that's not possible (b) setlocale(LC_ALL, "") + mbrtowc() loop
and render the result (applying usual ?/=EF=BF=BD substitutions for mbrtowc=
()
errors makes sense here).

There are very few operations on paths that are actually reasonable
to do, ever; those are: appending stuff, prepending stuff
(this is just appending stuff with the arguments backwards),
and cleaving at /es;
the "stuff" better be copied whole-sale from some other path
or an unprocessed argument (or, sure, the PFCS).

If you're getting bytes to append to a path, do that directly.

If you're getting characters to append to a path,
then wctomb(3) is the only non-invalid solution,
since that (obviously) turns characters into bytes in the current
locale, which (ex def) is the operation desired.

I don't understand what the UTF-32 dance is supposed to be.

If you're recommending transcoding paths, don't.

To re-iterate: paths are not character sequences.
They do not represent characters.
You can't meaningfully coerce them thusly without loss of precision
(this is ok to do for display! and nothing else).
If at any point you find yourself turning wchar_t -> char
you are doing something wrong;
if you find yourself doing char -> wchar_t for anything beside display
you should probably reconsider.

This is different under Win32 of course. But that concerns us naught.

--qejau6h4okiiswyb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmeX0C0ACgkQvP0LAY0m
WPGYxg/6AiXTMAkI89kqQcatmAbqdxhzKYhx/au8FROy3MnGBmJah+bRm9Ozt4SG
npMYyAkW8zxAn7IuJLa4jMAhiCKhuqeDQvjtHLaBD32Y8lrAodrt2930SQ2K1UcZ
UgEjagts2e4gLAuoyiJO5e/WVtyPXmFv8o+ZVQIjmpr7HlVI7RbcDjvZuYdafku/
Ztnc0CkhztPBNx7gSj78gOwYXEvYEKFG+nsFXh320OflEs4BSwZhHu5Iy2M3fCoa
Gl132tMCqAL4le7AW21JJWO20gTNKT0oB5dq6jRhH5oCbWfuZEzr++vsR4F2j6Y9
DTPveSUqaU+7rCBW6eguKvqjo5MOpmsSOP/yZJD7Jf9X+mWY3NE+5YS7sYQ3ReCO
s8eJ4odnpKvAQ3EhlcvFDdFoqsWaCR5nDmWEmSVLy0yyvsynmKhOoSaa3Sbiznts
puyjyQFyUA8MjdbqoFkldnUsiIz/pdGkYrj2laB12tVIb0lp+7tAofFFQOYkmHP2
OqvAaVxGDUyyljIjQBKWtb6LufmGvw1GUCjRvAcVqbbpTxcY5K20fs82jSbEMyN7
CYVujLATdTCBRK1iBvo+M+fo3QTgdEBczVjbqcqe+dS5JWP28qQmFGWPT+tX/KjB
aGnTqHE2XAzDetFXhracqBlUHVFnF1JXDsCB2MEY8s4eC832KLk=
=Kf5H
-----END PGP SIGNATURE-----

--qejau6h4okiiswyb--

