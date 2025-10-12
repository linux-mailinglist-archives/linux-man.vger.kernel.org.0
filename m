Return-Path: <linux-man+bounces-4104-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FBABBD010D
	for <lists+linux-man@lfdr.de>; Sun, 12 Oct 2025 13:04:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CCC2D4E16CF
	for <lists+linux-man@lfdr.de>; Sun, 12 Oct 2025 11:04:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84EDF1F790F;
	Sun, 12 Oct 2025 11:04:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CVmB7+PB"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425F836124
	for <linux-man@vger.kernel.org>; Sun, 12 Oct 2025 11:04:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760267047; cv=none; b=Vj63tncwEmcf1WSE61omgCWUTJDvuIA+em40Xv/ByxJ3TlUtJ3IjIsgD49kfG2AjruvFaf5L3UT1LSu1pK+mBllsaajOMDaGVKt+mioixg/o0vvkXIS+ugIcXH/CR+D/TUB8rKB2Taur06h/WS3ottNEZlSxW/wrKu2TCAfPu08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760267047; c=relaxed/simple;
	bh=UAMWrGpYVtNt16QSPuH8TR2T+BHVw0OHOSS5XXqbZ1w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZydyT0FlhKg+Tna1eeKGOp8yF2okDXvC7z6Cak9qXpEHvoc0NXXQAGZin8nx50ETx2x9/h7Cadh3ke1Q6B9chMgjPEjCImf33WJR4WRl1iXCXrGKzqAzQZofwaFWNBEgzv+xIPOJK4c8u2bmFNejvZIzkDr3HQTpcvjnm56332c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CVmB7+PB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB69AC4CEE7;
	Sun, 12 Oct 2025 11:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760267046;
	bh=UAMWrGpYVtNt16QSPuH8TR2T+BHVw0OHOSS5XXqbZ1w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CVmB7+PBKvNlpTWN01oGiz+5a5kIg65jM7XvGUhUHKMgZg+Wi4B9uOubsP9ZGI/Lm
	 f6Vym7oG3vCFk6HzB9mLa7Exl2ArmBGAytB8QJWGygCwQ5fMi6o5BlQVU8m4jogXe/
	 umDCM6RL0sBuN+z4aBF8JGYSK/UppKWrEDz4OBL4qTJ68NvyJrcop5HulFxYN/WFlU
	 oklQ1N2vLSiUJbAHMw0+fRlOLupsfXpZmY4EBSt9SwWwVy8DQblB0vO2Fku/uxhhid
	 mBNVvgK3URqZjI0yMI9qjifnnbvwqvsOrxJuxoCzkq9HRi93R907dkaCJczEHEFPBS
	 Kczi2zrZwo1eQ==
Date: Sun, 12 Oct 2025 13:04:03 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Sertonix <sertonix@posteo.net>
Cc: Collin Funk <collin.funk1@gmail.com>, linux-man@vger.kernel.org
Subject: Re: swab.3: mention UB when from and to overlap
Message-ID: <my657mhhrhydw7t2ovx2hidlleoyl2g4ou7tzdmb2zvqa42akz@dsufpqwrwidb>
References: <DDFUAR7OXZ38.3SGS6R89CDDMD@posteo.net>
 <875xclm599.fsf@gmail.com>
 <yhsxo53mgu5pjfubjhuoeur2hcoyrof6rogh2neldclh6ji2gs@hx6lh7qguphi>
 <DDGA4WZCSZOS.1TW05RY1VQGGE@posteo.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3c2chqxaodwrp2jj"
Content-Disposition: inline
In-Reply-To: <DDGA4WZCSZOS.1TW05RY1VQGGE@posteo.net>


--3c2chqxaodwrp2jj
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Sertonix <sertonix@posteo.net>
Cc: Collin Funk <collin.funk1@gmail.com>, linux-man@vger.kernel.org
Subject: Re: swab.3: mention UB when from and to overlap
Message-ID: <my657mhhrhydw7t2ovx2hidlleoyl2g4ou7tzdmb2zvqa42akz@dsufpqwrwidb>
References: <DDFUAR7OXZ38.3SGS6R89CDDMD@posteo.net>
 <875xclm599.fsf@gmail.com>
 <yhsxo53mgu5pjfubjhuoeur2hcoyrof6rogh2neldclh6ji2gs@hx6lh7qguphi>
 <DDGA4WZCSZOS.1TW05RY1VQGGE@posteo.net>
MIME-Version: 1.0
In-Reply-To: <DDGA4WZCSZOS.1TW05RY1VQGGE@posteo.net>

Hi Sertonix,

On Sun, Oct 12, 2025 at 10:42:45AM +0000, Sertonix wrote:
> > There are exceptions, such as the case when a function doesn't access
> > such a pointer.  That's why strtol(3) is declared as
> >
> >      long strtol(const char *restrict s, char **restrict endp, int base=
);
> >
> > even though one can (and usually do) call it as strtol(s, &s, 0), where
> > 's' is indeed aliased by another pointer (*endp).  That's because *endp
> > is never accessed within strtol(3).
>=20
> If endp is considered to point to a 0 size block of memory it works ;)

Actually, it must be considered to point to a non-0 size block, because
strtol(3) accesses 'endp' and writes to it.  It is '*endp' which is not
accessed, which is why it doesn't matter what it points to.

This is how it should be declared (I wonder why glibc doesn't use the
[[gnu::access()]] attribute):


	[[gnu::access(read_only, 1)]]
	[[gnu::access(write_only, 2)]]
	[[gnu::null_terminated_string_arg(1)]]
	[[gnu::leaf]]
	[[gnu::nothrow]]
	long
	strtol(const char *restrict s, char **restrict endp, int base);

This gives enough information to the compiler to realize that a call
strtol(s, &s, 0) is safe regardless of restrict, since the second
argument won't be used to modify the string (but it will change where
's' points to after the call).

However, actually using that information in the compiler won't be easy,
I suspect.  That's why diagnostics about restrict are bad today.

(Reminder to self: I need to write a gnu::access(3attr) manual page
 where I should explain this.)


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--3c2chqxaodwrp2jj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjrix0ACgkQ64mZXMKQ
wqkOPQ/+Oe1chFwleFRtZ4VvH5GUZ0/YjTr+J2yW5eTZ9nQrjjQzWN0uqaPOFLlB
8x6h4KKGiVJKjlt0oZiEUvAxCPqkdD4LFUv+T7mX4W2R6xX12Pxc22fqCYFQIJou
cwc3atPZ5N16NFD0H6rqLMYmIULYaa8V6IhFVM6CaHbX44jBhNNqQNxAbv8tumuj
mefooAAeg+0pN1jqA26TUSzpSZX4I1unYM9z5AgOM/LFVWlEPsybGKo9HINatjtG
uhtrU/9vj8Zb2/TCUIzw1ZvC77t5fC0/VgvzlE7JY2Hxku04vV9ykS2EEw2di0Ko
vv2YoV4b4iTFwbcqah0PvJm5UcSosa/iyvrSaS5bhysdltj40UTc5FtGlSj4S7dn
Cu9wPVM83R+FZySiXnvGPljjoYztpfvm+gh+VP0JNUL0dF/qDBs1V+O+61sA9d4O
YKexBkgYB+m5FidpThw43cAyzGT5ZM+/L2j9vLOqwJ4r9+Gguprf8IOBX8T2wZ4M
WqdSdqTr5OgzxpH8R7XcID8dHTwo24joHsCKi9VnTGP1OWKumV9OGL4GlfCBm1j/
2g54styH58Y6RlrXLTmQqPSKvKI+pFh8oenI0LyLW3Bf+MzIhsbg+DL69mR1yVq+
l02ZY0ZNmqcBVekQ23iE6HuAs49Zjhu7fvxjLZq0D8Jgve+TZZ4=
=Z40J
-----END PGP SIGNATURE-----

--3c2chqxaodwrp2jj--

