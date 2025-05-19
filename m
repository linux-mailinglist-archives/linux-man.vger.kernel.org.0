Return-Path: <linux-man+bounces-2983-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 25446ABCAD9
	for <lists+linux-man@lfdr.de>; Tue, 20 May 2025 00:27:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A6AD63B7CC7
	for <lists+linux-man@lfdr.de>; Mon, 19 May 2025 22:26:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F1151F1302;
	Mon, 19 May 2025 22:27:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sdaoden.eu header.i=@sdaoden.eu header.b="EHGFRXIJ";
	dkim=permerror (0-bit key) header.d=sdaoden.eu header.i=@sdaoden.eu header.b="s/VvoPit"
X-Original-To: linux-man@vger.kernel.org
Received: from sdaoden.eu (sdaoden.eu [217.144.132.164])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5474AC148
	for <linux-man@vger.kernel.org>; Mon, 19 May 2025 22:26:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.144.132.164
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747693620; cv=none; b=D80274WOGk1wj0gbLyY/2gTe2BSTg6n9pzDODkX8DjNw14GASxdSpUcZgWGezLsPu3gQgFAI78xFJcC2wft8C1hReUAdWdNkVQ3PotNTxMe4ckhin9olLqxPGbqWF7c8F24sXa8gqUPAa44SNfUrfdlASJkGlZyJ3R8XIo50ZzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747693620; c=relaxed/simple;
	bh=5NcEfC+rG02K5aA38oSAK96XwTgakid8aUmHvB3/9WQ=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References; b=qyTx0zxMKzJ9/ylcA5dVaf6g68sxSyWFOVYLf0nNHX8GT5C1/7eit3xp4C0WTh0lmWILp/xCx11kOPNzhBaLsNQ7uwwjTPW+iCZIXYeZxf6b7pSNEgc9uLbi/VblMBWmllwSPu98JJjQyiC4YGMJr+CeK8MndW8PFpaR5/fMaoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sdaoden.eu; spf=pass smtp.mailfrom=sdaoden.eu; dkim=pass (2048-bit key) header.d=sdaoden.eu header.i=@sdaoden.eu header.b=EHGFRXIJ; dkim=permerror (0-bit key) header.d=sdaoden.eu header.i=@sdaoden.eu header.b=s/VvoPit; arc=none smtp.client-ip=217.144.132.164
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sdaoden.eu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sdaoden.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=citron; t=1747693614; x=1748360280; h=date:author:from:to:cc:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  author:from:subject:date:to:cc:resent-author:resent-date:resent-from:
  resent-sender:resent-to:resent-cc:resent-reply-to:resent-message-id:
  in-reply-to:references:mime-version:content-type:
  content-transfer-encoding:content-disposition:content-id:
  content-description:message-id:mail-followup-to:openpgp:blahblahblah;
 bh=MrwVm2ECygFMTNao4jXv2TVCHHkGPlp6Pv93xqFqC/k=;
 b=EHGFRXIJxEReY1p2JVKBw9oOm8p1wha1jQF/jbWMYa5x/xB6KsGO4px27yw/sVarTmwkBTKB
  xw9ITgac4Mxkw+JvMfw/ViFDnt2z2Fl59kQxA7JllexSU5ojzXDDvWad9DknTzmNNX1H8c3Zxx
  RSICZB7/m/NiByfNdG4KLcHMoGjMrRsSfx5HMDAShsHxgpFwN9FlrWlhqb+ATONybW4PMImXUX
  ovCyv5XrTfvAyogDOvWK7v/u3lKsPRhSXQY62C7vlKxHcYmlIdEAPb/J5d3lsfWq7vDqRBI7xY
  mmT96dVWqE5AiozHGQAmG7jPm2pPZtaCIK1FOidUlMsePAfQ==
DKIM-Signature: v=1; a=adaed25519-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=orange; t=1747693614; x=1748360280; h=date:author:from:to:cc:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  author:from:subject:date:to:cc:resent-author:resent-date:resent-from:
  resent-sender:resent-to:resent-cc:resent-reply-to:resent-message-id:
  in-reply-to:references:mime-version:content-type:
  content-transfer-encoding:content-disposition:content-id:
  content-description:message-id:mail-followup-to:openpgp:blahblahblah;
 bh=MrwVm2ECygFMTNao4jXv2TVCHHkGPlp6Pv93xqFqC/k=;
 b=s/VvoPit9YC+5zv5nyzlfm4VoKLt1auYqRvUy755u9mKA70BFgfGsyFfVVq2iMdU2+lYrKza
  6b0pHGuQaI7oAw==
Date: Tue, 20 May 2025 00:26:53 +0200
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Steffen Nurpmeso <steffen@sdaoden.eu>
Subject: Re: man-pages: mbrtowc: misleading
Message-ID: <20250519222653.8aL97Par@steffen%sdaoden.eu>
In-Reply-To: <gxghgfhmtz2w6sen7c3gl5or624wkrb5gluafjt77otrpzxh2u@tkqkqs6fjizd>
References: <20250518013401.seThfADR@steffen%sdaoden.eu>
 <atdny7g2j5caim4oz2qgcqfpt43y5th2vuoyyy2qlqgdpivxez@y2bjsgm3jttt>
 <20250519135221.5a48Joxu@steffen%sdaoden.eu>
 <gxghgfhmtz2w6sen7c3gl5or624wkrb5gluafjt77otrpzxh2u@tkqkqs6fjizd>
Mail-Followup-To: Alejandro Colomar <alx@kernel.org>,
 linux-man@vger.kernel.org, Steffen Nurpmeso <steffen@sdaoden.eu>
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

Alejandro, all,

Alejandro Colomar wrote in
 <gxghgfhmtz2w6sen7c3gl5or624wkrb5gluafjt77otrpzxh2u@tkqkqs6fjizd>:
 |On Mon, May 19, 2025 at 03:52:21PM +0200, Steffen Nurpmeso wrote:
 |> Alejandro Colomar wrote in
 |>  <atdny7g2j5caim4oz2qgcqfpt43y5th2vuoyyy2qlqgdpivxez@y2bjsgm3jttt>:
 |>|On Sun, May 18, 2025 at 03:34:01AM +0200, Steffen Nurpmeso wrote:
 |>|> "man 3p mbrtowc" is great, but "man 3 mbrtowc" says for the -2
 |>|> return that "meaning that n should be increased".  However, "n"
 |>|> bytes were consumed; more data is needed, that is true.
 |>|
 |>|Thanks!  Would you mind sending a patch?
 |> 
 |> Hm well.  By the way, i sometimes admire the Linux-specific
 |> manual pages,
 |
 |:-)
 |
 |> but at times i wonder why they exist at all, if the
 |> POSIX one is comprehensive and no Linux-specific note is to be
 |> added?
 |
 |There's a list of reasons:
 |
 |-  POSIX manual pages are not maintained (I can tell; I'm supposed to be
 |   the maintainer).  The last commit was from 2021-02-14.
 |
 |   I would love to maintain them, but I refuse to maintain them if the
 |   Austin Group keeps making it so uncomfortable for me to do so.
 |
 |-  They are in the non-free repository component in Debian (and in
 |   similar ones for other distros).

Oh!  That more or less escaped me, here it is bundled in
core/man-pages:

  source=(https://www.kernel.org/pub/linux/docs/$name/$name-$version.tar.xz
    https://www.kernel.org/pub/linux/docs/$name/$name-posix/$name-posix-2017-a.tar.xz)

 |-  There are no POSIX.1-2024 manual pages at all.  And there won't be,
 |   if I have to create them.
 |
 |   I have already written patches for updating the whole man2 of the
 |   Linux man-pages project for POSIX.1-2024, and am working on man3 at
 |   the moment.  So, the Linux manual pages will be more up-to-date.
 |
 |>  I mean, for example, clock_settime 2/3p is such an example
 |> for where the Linux page is of significant value, but for that ISO
 |> C thing mbrtowc ... hm.  I mean i would simply copy over the
 |> RETURN VALUE block from the POSIX page?
 |
 |For copyright reasons, you probably can't.

I see; then again there are only so-and-so many possibilities to
describe what happens.  That is free and pretty well written.

  https://man.openbsd.org/mbrtowc

 |> I will have to look around where i can find sources, 'will look
 |> today or tomorrow, ok?
 |
 |Sure, take your time.  Thanks!  :)

Got it.  Actually i see more problems on the page, for example the
prototype is broken and shows a false leading "n" argument etc.
It describes return values in the running text more than in the
return value section.  It documents that the shift state is reset
for when reading NUL, which i have never read before, anywhere.
Is that really true, always?  Or is that how the GNU C library
does things?  What if more data is fed in in a stateful encoding?
Complicated stuff.  Eviva Espania!

Ciao Alejandro,

diff --git a/man/man3/mbrtowc.3 b/man/man3/mbrtowc.3
index bdd26af64f..5c67eba058 100644
--- a/man/man3/mbrtowc.3
+++ b/man/man3/mbrtowc.3
@@ -13,8 +13,7 @@ Standard C library
 .nf
 .B #include <wchar.h>
 .P
-.BI "size_t mbrtowc(size_t " n ;
-.BI "               wchar_t *restrict " pwc ", const char " s "[restrict " n ],
+.BI "size_t mbrtowc(wchar_t *restrict " pwc ", const char " s "[restrict " n ],
 .BI "               size_t " n ", mbstate_t *restrict " ps );
 .fi
 .SH DESCRIPTION
@@ -161,10 +160,10 @@ if an invalid multibyte sequence was
 encountered.
 It returns
 .I "(size_t)\ \-2"
-if it couldn't parse a complete multibyte
-character, meaning that
+if the consumed
 .I n
-should be increased.
+bytes form a valid partial character sequence:
+more subsequent data has to be fed in.
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
 .BR attributes (7).

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)

