Return-Path: <linux-man+bounces-2995-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9448DABE826
	for <lists+linux-man@lfdr.de>; Wed, 21 May 2025 01:39:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 561DC1742F2
	for <lists+linux-man@lfdr.de>; Tue, 20 May 2025 23:39:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F20025A2C0;
	Tue, 20 May 2025 23:39:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sdaoden.eu header.i=@sdaoden.eu header.b="cHaoIzIW";
	dkim=permerror (0-bit key) header.d=sdaoden.eu header.i=@sdaoden.eu header.b="gkLLWYUG"
X-Original-To: linux-man@vger.kernel.org
Received: from sdaoden.eu (sdaoden.eu [217.144.132.164])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70B98256C7D
	for <linux-man@vger.kernel.org>; Tue, 20 May 2025 23:39:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.144.132.164
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747784391; cv=none; b=JiYS5lZQeh7A0zY/o7ZOvreQcGzzudzj3RkCMEsstUkV0WbFZ72CTiZ/td93SDtfq8jWvQQPNdBPbz1sZqbzpPWELB3U+qVaOO8yqTop3wxSudK6jkjUpxCO6J4xgyK/jDJurLY1JDdZ7Ah/qLG8keFfKkuv2bX5ESA0Sq3Uiz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747784391; c=relaxed/simple;
	bh=2E7DO3GUmsicdanFUF3t8nh00KupWHi5/y5NS6NBeIM=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=KIAXjryV+esJVrq2sDoae5ZL/UdbyBhpFQ8X4hkPeuzGnVU1GfpyLPmxHySit5K8IYmkeS/Go3pvSi/sU9RHbwRTyg9KO80EWtR58OsBkH6IW7Kn5Z25/utd+3P8mXcxaVc1emb0n8+05uLkMBa65cYt10ZEBh1c+9rogzgc5pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sdaoden.eu; spf=pass smtp.mailfrom=sdaoden.eu; dkim=pass (2048-bit key) header.d=sdaoden.eu header.i=@sdaoden.eu header.b=cHaoIzIW; dkim=permerror (0-bit key) header.d=sdaoden.eu header.i=@sdaoden.eu header.b=gkLLWYUG; arc=none smtp.client-ip=217.144.132.164
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sdaoden.eu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sdaoden.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=citron; t=1747784387; x=1748451053; h=date:author:from:to:cc:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  mime-version:content-type:author:from:subject:date:to:cc:resent-author:
  resent-date:resent-from:resent-sender:resent-to:resent-cc:resent-reply-to:
  resent-message-id:in-reply-to:references:mime-version:content-type:
  content-transfer-encoding:content-disposition:content-id:
  content-description:message-id:mail-followup-to:openpgp:blahblahblah;
 bh=9gIDg8VQCynlrtGEenutcB0nkn+oUBK7s8pFQvdV9Jg=;
 b=cHaoIzIW6pULnuymP7BtJnhTRdHCt7z8O3DhHsiKr58JA2AoxlOGlLguEguxomZRAksr4lVg
  1GgWV8zih3k3Qc+VWqv26pogzFAvBxTgiDTQvkcSb5yjXv5E/ZkShaOyk3US6jIh58eSB9YTHf
  qa89phfWG/jJZKOaZpFmGzCspQBGkr2ruc24L2ZWXACG4XZVAhWfpYvc36UpNrzuxPINElzqZu
  rlz6qNJm67QcEskx43JLvsXSCgYvmYJMlPWFjAX9/BZKozUhF4cX/Vi6tUzxzt0wwXBNAfW1nV
  EfkT6NrZ6Ia5hCA/qlafHS2K2kHMW0jXRvGDYvKf2mvaF8uQ==
DKIM-Signature: v=1; a=adaed25519-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=orange; t=1747784387; x=1748451053; h=date:author:from:to:cc:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  mime-version:content-type:author:from:subject:date:to:cc:resent-author:
  resent-date:resent-from:resent-sender:resent-to:resent-cc:resent-reply-to:
  resent-message-id:in-reply-to:references:mime-version:content-type:
  content-transfer-encoding:content-disposition:content-id:
  content-description:message-id:mail-followup-to:openpgp:blahblahblah;
 bh=9gIDg8VQCynlrtGEenutcB0nkn+oUBK7s8pFQvdV9Jg=;
 b=gkLLWYUGnHUunO/vUa7uOAUN1hbsRqy3oVFNvgX6Tu62gacaHFV/xnjLfrwb7qMyEwJb0AC3
  puWVE9q51yo/BA==
Date: Wed, 21 May 2025 01:39:45 +0200
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
 Christopher Bazley <chris.bazley.wg14@gmail.com>,
 Martin Uecker <uecker@tugraz.at>, Steffen Nurpmeso <steffen@sdaoden.eu>
Subject: Re: man-pages: mbrtowc: misleading
Message-ID: <20250520233945.C_t6Bbwz@steffen%sdaoden.eu>
In-Reply-To: <7qtghvrlhi2n43swmagyjvmzogvmzybhv2hty5tia6gqvr67oz@w6qu46fcn34h>
References: <20250518013401.seThfADR@steffen%sdaoden.eu>
 <atdny7g2j5caim4oz2qgcqfpt43y5th2vuoyyy2qlqgdpivxez@y2bjsgm3jttt>
 <20250519135221.5a48Joxu@steffen%sdaoden.eu>
 <gxghgfhmtz2w6sen7c3gl5or624wkrb5gluafjt77otrpzxh2u@tkqkqs6fjizd>
 <20250519222653.8aL97Par@steffen%sdaoden.eu>
 <o4cono3dihpf42xr2je6qxjkc4tgp52sgo2ckcrthm3466s73g@2eqwyp3qlskl>
 <20250520225843.9iNAs_t5@steffen%sdaoden.eu>
 <7qtghvrlhi2n43swmagyjvmzogvmzybhv2hty5tia6gqvr67oz@w6qu46fcn34h>
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
Content-Type: multipart/mixed;
 boundary="=-=P2Nb4USIcfrzArBTBNPcqUkGeyJPbL_4y_dI=-="

This is a multi-part message in MIME format.

--=-=P2Nb4USIcfrzArBTBNPcqUkGeyJPbL_4y_dI=-=
Content-Disposition: inline
Content-ID: <20250520233945.bI4RQYf1@steffen%sdaoden.eu>
Content-Type: text/plain; charset="us-ascii"

Alejandro Colomar wrote in
 <7qtghvrlhi2n43swmagyjvmzogvmzybhv2hty5tia6gqvr67oz@w6qu46fcn34h>:
 ...
 |> diff --git a/man/man3/mbrtowc.3 b/man/man3/mbrtowc.3
 |
 |Would you mind sending a patch, with a commit message?
 |(git-format-patch(1))

I'll attach it.

Ciao Alejandro,

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)

--=-=P2Nb4USIcfrzArBTBNPcqUkGeyJPbL_4y_dI=-=
Content-Disposition: attachment; filename="mbrtowc.mbox"
Content-Type: application/mbox
Content-Transfer-Encoding: quoted-printable
Content-ID: <20250520233945.x_2DCB3I@steffen%sdaoden.eu>

=46rom f90b33d398ccf814083e300454df88e0937b94d3 Mon Sep 17 00:00:00 2001
Message-ID: <f90b33d398ccf814083e300454df88e0937b94d3.1747784310.git.steffe=
n@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
Date: Wed, 21 May 2025 01:37:35 +0200
Subject: [PATCH] man/man3/mbrtowc.3: tweak description of -2 return

Signed-off-by: Steffen Nurpmeso <steffen@sdaoden.eu>
---
 man/man3/mbrtowc.3 | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

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
--=20
2.49.0


--=-=P2Nb4USIcfrzArBTBNPcqUkGeyJPbL_4y_dI=-=--

