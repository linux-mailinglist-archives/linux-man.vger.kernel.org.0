Return-Path: <linux-man+bounces-2992-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 86811ABE7D2
	for <lists+linux-man@lfdr.de>; Wed, 21 May 2025 00:59:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 77E861887319
	for <lists+linux-man@lfdr.de>; Tue, 20 May 2025 22:59:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 850BE2571A0;
	Tue, 20 May 2025 22:58:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sdaoden.eu header.i=@sdaoden.eu header.b="iDCIBznc";
	dkim=permerror (0-bit key) header.d=sdaoden.eu header.i=@sdaoden.eu header.b="zeWlJxcA"
X-Original-To: linux-man@vger.kernel.org
Received: from sdaoden.eu (sdaoden.eu [217.144.132.164])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47DA71DB124
	for <linux-man@vger.kernel.org>; Tue, 20 May 2025 22:58:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.144.132.164
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747781938; cv=none; b=r1ZW/0AUVKTd++SO9++uFzOiSRmIjOT5oByOxVvc4p9uQV+iKFEQCmppw/455Vh+f7EpeXXcjD5CCHB2aIGJZjSOgWw1GEosinsRkgxuNI8pItvQqV7KhGba3oW+0MgTE7mO3nPZMh/S+ptRKW5tAstGrgEiOh3HzbLEDmkkMXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747781938; c=relaxed/simple;
	bh=0ULCelGQYKfLnZxeoya8N4FgOdlb1KlLpVlMJ2rlLAM=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=fJGFx8kPWI4zqMffWgkSMwSub693VcIuoQpYuuwW2Q4ZC/d4ZdpC4LVBNprt5WbW6j3S5pzthaTYGa/tQJLIkveKgKd0tDXoeKwJI0uVpr8CPv/M/mICKkd3EkqROajiGcOR3XZehJwVoG2oOR0GaRkzpYSmG+FESDKMGT8ExaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sdaoden.eu; spf=pass smtp.mailfrom=sdaoden.eu; dkim=pass (2048-bit key) header.d=sdaoden.eu header.i=@sdaoden.eu header.b=iDCIBznc; dkim=permerror (0-bit key) header.d=sdaoden.eu header.i=@sdaoden.eu header.b=zeWlJxcA; arc=none smtp.client-ip=217.144.132.164
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sdaoden.eu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sdaoden.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=citron; t=1747781925; x=1748448591; h=date:author:from:to:cc:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  mime-version:content-type:content-transfer-encoding:author:from:subject:
  date:to:cc:resent-author:resent-date:resent-from:resent-sender:resent-to:
  resent-cc:resent-reply-to:resent-message-id:in-reply-to:references:
  mime-version:content-type:content-transfer-encoding:content-disposition:
  content-id:content-description:message-id:mail-followup-to:openpgp:
  blahblahblah; bh=P25C+P4aFs2wfLYokObCtzCKdKpepzEvZcQmKSXxjkw=;
 b=iDCIBzncmnAz+6KbDQrDpO7YO9nchJHag5AFHHU6quZdrQJqWBbXFy3Gogluu26Fkj4d1dPL
  Ftxyq/q38BJQJ/d/oSW/vNWrCijplccHHPMI6o5jeMTU2K/96bAYvPcgt6Er0dInAuU1j/MQ7R
  Yd+CN6WAoNc0sEfkNkh1QtzyetuHc0e/PPY1t6JoFCCmtrgIa8R4eTX4oqrdY5L6q1kvxh3FUQ
  111rcjRCeQUzIu92+Hjpl4OUNEGrxUYHUKGsPtoRpLKRwOb4yo63bWTz7KyWLQz+8KKxystfkN
  HKULo6xNvOGMQNv1prNnL8MEy32FnV3+IF1dRYq9+jENY+eg==
DKIM-Signature: v=1; a=adaed25519-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=orange; t=1747781925; x=1748448591; h=date:author:from:to:cc:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  mime-version:content-type:content-transfer-encoding:author:from:subject:
  date:to:cc:resent-author:resent-date:resent-from:resent-sender:resent-to:
  resent-cc:resent-reply-to:resent-message-id:in-reply-to:references:
  mime-version:content-type:content-transfer-encoding:content-disposition:
  content-id:content-description:message-id:mail-followup-to:openpgp:
  blahblahblah; bh=P25C+P4aFs2wfLYokObCtzCKdKpepzEvZcQmKSXxjkw=;
 b=zeWlJxcAb8ArHtf3Woj0jqqsKNo/pUpJPoYBb3ySZWe1CUVkYFGRACYebLYcJmmUgHZ5bieZ
  kMlV7rWCknMjCQ==
Date: Wed, 21 May 2025 00:58:43 +0200
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
 Christopher Bazley <chris.bazley.wg14@gmail.com>,
 Martin Uecker <uecker@tugraz.at>, Steffen Nurpmeso <steffen@sdaoden.eu>
Subject: Re: man-pages: mbrtowc: misleading
Message-ID: <20250520225843.9iNAs_t5@steffen%sdaoden.eu>
In-Reply-To: <o4cono3dihpf42xr2je6qxjkc4tgp52sgo2ckcrthm3466s73g@2eqwyp3qlskl>
References: <20250518013401.seThfADR@steffen%sdaoden.eu>
 <atdny7g2j5caim4oz2qgcqfpt43y5th2vuoyyy2qlqgdpivxez@y2bjsgm3jttt>
 <20250519135221.5a48Joxu@steffen%sdaoden.eu>
 <gxghgfhmtz2w6sen7c3gl5or624wkrb5gluafjt77otrpzxh2u@tkqkqs6fjizd>
 <20250519222653.8aL97Par@steffen%sdaoden.eu>
 <o4cono3dihpf42xr2je6qxjkc4tgp52sgo2ckcrthm3466s73g@2eqwyp3qlskl>
Mail-Followup-To: Alejandro Colomar <alx@kernel.org>,
 linux-man@vger.kernel.org,
 Christopher Bazley <chris.bazley.wg14@gmail.com>,
 Martin Uecker <uecker@tugraz.at>, Steffen Nurpmeso <steffen@sdaoden.eu>
User-Agent: s-nail v14.9.25-653-gb160e2cb86
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Alejandro, all,

Alejandro Colomar wrote in
 <o4cono3dihpf42xr2je6qxjkc4tgp52sgo2ckcrthm3466s73g@2eqwyp3qlskl>:
 |On Tue, May 20, 2025 at 12:26:53AM +0200, Steffen Nurpmeso wrote:
 |> Alejandro Colomar wrote in
 |>  <gxghgfhmtz2w6sen7c3gl5or624wkrb5gluafjt77otrpzxh2u@tkqkqs6fjizd>:
 |>|On Mon, May 19, 2025 at 03:52:21PM +0200, Steffen Nurpmeso wrote:
 |>|> Alejandro Colomar wrote in
 |>|>  <atdny7g2j5caim4oz2qgcqfpt43y5th2vuoyyy2qlqgdpivxez@y2bjsgm3jttt>:
 |>|>|On Sun, May 18, 2025 at 03:34:01AM +0200, Steffen Nurpmeso wrote:
 |>|>|> "man 3p mbrtowc" is great, but "man 3 mbrtowc" says for the -2
 |>|>|> return that "meaning that n should be increased".  However, "n"
 |>|>|> bytes were consumed; more data is needed, that is true.

[shortening this]

  ..
 |> -.BI "size_t mbrtowc(size_t " n ;
 |> -.BI "               wchar_t *restrict " pwc ", const char " s "[restri=
c\
 |> t " n ],
 |> +.BI "size_t mbrtowc(wchar_t *restrict " pwc ", const char " s "[restri=
c\
 |> t " n ],
 |>  .BI "               size_t " n ", mbstate_t *restrict " ps );
 |
 |You can't use 'n' before declaration.

..if you want the prototype from the manual to be compileable ..

 | alx@devuan:~$ cat << __EOF__ | gcc -S -x c /dev/stdin
 | #include <wchar.h>
 | #include <stddef.h>
 |      size_t mbrtowc(size_t n;
 |       wchar_t *restrict pwc, const char s[restrict n],
 |       size_t n, mbstate_t *restrict ps);
 | __EOF__
 | alx@devuan:~$ cat << __EOF__ | gcc -S -x c /dev/stdin
 | #include <wchar.h>
 | #include <stddef.h>
 |      size_t mbrtowc(=20
 |       wchar_t *restrict pwc, const char s[restrict n],
 |       size_t n, mbstate_t *restrict ps);
 | __EOF__
 | /dev/stdin:4:66: error: =E2=80=98n=E2=80=99 undeclared here (not in a fu=
nction)

You want to.  To remark that i mostly work with tcc(1) during
development, and was used to use pcc(1) once that still worked
(and was developed).

  x.c:3: error: ',' expected (got ";")

This extension totally escaped not only me alone.
It .. seems it could be made backward portable with some macro
compatibility shims.  (Like PARAMFWD() and PARAMUSE() or what.)

How is this actually implemented?  To me that "s" is a pointer,
and i am thus used to not use [] syntax for myself.  In fact
i always got angry if i did write xy[SOME_NAMED_CONSTANT], and
then that meant nothing to the compiler!  Ie if constant is 10 and
i pass a stack buffer of 4 .. no warning and nothing.  I hope the
above is not implemented as requiring exact match lenghts.  Well.

 |>  .fi
 |>  .SH DESCRIPTION
 |> @@ -161,10 +160,10 @@ if an invalid multibyte sequence was
 |>  encountered.
 |>  It returns
 |>  .I "(size_t)\ \-2"
 |> -if it couldn't parse a complete multibyte
 |> -character, meaning that
 |> +if the consumed
 |>  .I n
 |> -should be increased.
 |> +bytes form a valid partial character sequence:
 |
 |I think ';' is more appropriate than ':'.  What do you think?

Sure!

diff --git a/man/man3/mbrtowc.3 b/man/man3/mbrtowc.3
index bdd26af64f..68c66efaaa 100644
--- a/man/man3/mbrtowc.3
+++ b/man/man3/mbrtowc.3
@@ -161,10 +161,10 @@ if an invalid multibyte sequence was
 encountered.
 It returns
 .I "(size_t)\ \-2"
-if it couldn't parse a complete multibyte
-character, meaning that
+if the consumed
 .I n
-should be increased.
+bytes form a valid partial character sequence;
+more subsequent data needs to be fed in.
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
 .BR attributes (7).

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)

