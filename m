Return-Path: <linux-man+bounces-2984-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 347A1ABCB4D
	for <lists+linux-man@lfdr.de>; Tue, 20 May 2025 01:10:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BD1C23AD519
	for <lists+linux-man@lfdr.de>; Mon, 19 May 2025 23:10:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B405C20E32F;
	Mon, 19 May 2025 23:10:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sdaoden.eu header.i=@sdaoden.eu header.b="QbS1Zc+E";
	dkim=permerror (0-bit key) header.d=sdaoden.eu header.i=@sdaoden.eu header.b="BVqeCTw/"
X-Original-To: linux-man@vger.kernel.org
Received: from sdaoden.eu (sdaoden.eu [217.144.132.164])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E7010E4
	for <linux-man@vger.kernel.org>; Mon, 19 May 2025 23:10:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.144.132.164
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747696240; cv=none; b=ndgoG44z5zWCN399gYtIE8YkARAF927QaHxII59mPts5O027FVL/yK2ZCpHnBjXjQcKDGzgrdRB3Z0vHMZbr8VuQDMSNWnZbYzTKP6SalerLxOAa28uyaXxciPkOo2+jJhwOuJewgivZ4/cbpXl41czDRoXC7QJR/AbD7RLIVgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747696240; c=relaxed/simple;
	bh=EelXHtctZv2+whZl5+l/qLHbgPDp7QGyantBAMPY1UA=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References; b=A/TQhQlqQ8LNGyyddv8KIGPduGNibVCS/Sl7cuAmmpVAxGT2uQEHjMJPqQ5rED4nZeHk9B/5x/rbRdzVS1rFtBTAwFIM5s3DGnbedJGrdS0tHJ0rFR/1vLNvNP4FQ6uaUtotSp9XYrBeTg5Ie+8XR1IPvAcrx/qxc0zK/mhcCtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sdaoden.eu; spf=pass smtp.mailfrom=sdaoden.eu; dkim=pass (2048-bit key) header.d=sdaoden.eu header.i=@sdaoden.eu header.b=QbS1Zc+E; dkim=permerror (0-bit key) header.d=sdaoden.eu header.i=@sdaoden.eu header.b=BVqeCTw/; arc=none smtp.client-ip=217.144.132.164
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sdaoden.eu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sdaoden.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=citron; t=1747696235; x=1748362901; h=date:author:from:to:cc:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  author:from:subject:date:to:cc:resent-author:resent-date:resent-from:
  resent-sender:resent-to:resent-cc:resent-reply-to:resent-message-id:
  in-reply-to:references:mime-version:content-type:
  content-transfer-encoding:content-disposition:content-id:
  content-description:message-id:mail-followup-to:openpgp:blahblahblah;
 bh=oQ4gsUnA9RBwbVAnFasPly1t0E0nNJWIK1czqOnYn58=;
 b=QbS1Zc+E48Zs1l+xO0U7VhQNYwA/zcvbNm4gg0aePImxAmca3L4Ie5Vswa+x/pb9uYPOhS7B
  WxnAJLSvdG9aYQOwVVZXkeEF15AOrI2Wi6x7isAYMac2Az8Dd3mcqapAUVaC1ZOjkDKbQmjREz
  TlTiUA3yZARtu92J4oAkEw2JDXL6oTqUMIPOxTIutl3Ks0pSSf+ubUCMYSQA3W8Z9TxiTpaInx
  QngmyyMfNF9evOSORHjZ/eSOAfJuTG1h4MpkRI5o2XrFrWkbeCwxMgnCIY+Uek/95W47/nzs9Q
  /FMZwO1bgWRFVvifbG6GxDu2JHoFj2BIJRi1FHk/zbm8Pn8g==
DKIM-Signature: v=1; a=adaed25519-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=orange; t=1747696235; x=1748362901; h=date:author:from:to:cc:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  author:from:subject:date:to:cc:resent-author:resent-date:resent-from:
  resent-sender:resent-to:resent-cc:resent-reply-to:resent-message-id:
  in-reply-to:references:mime-version:content-type:
  content-transfer-encoding:content-disposition:content-id:
  content-description:message-id:mail-followup-to:openpgp:blahblahblah;
 bh=oQ4gsUnA9RBwbVAnFasPly1t0E0nNJWIK1czqOnYn58=;
 b=BVqeCTw/9ML92YsPMqO2XmnHhAQ26JQ2y5PSM2u1K9xu4gg1EfSHQF2sKPZLcJPivk+n5akD
  7eH1GpKFlRFfAw==
Date: Tue, 20 May 2025 01:10:34 +0200
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Steffen Nurpmeso <steffen@sdaoden.eu>
Subject: Re: man-pages: mbrtowc: misleading
Message-ID: <20250519231034.TyLdPgtx@steffen%sdaoden.eu>
In-Reply-To: <20250519222653.8aL97Par@steffen%sdaoden.eu>
References: <20250518013401.seThfADR@steffen%sdaoden.eu>
 <atdny7g2j5caim4oz2qgcqfpt43y5th2vuoyyy2qlqgdpivxez@y2bjsgm3jttt>
 <20250519135221.5a48Joxu@steffen%sdaoden.eu>
 <gxghgfhmtz2w6sen7c3gl5or624wkrb5gluafjt77otrpzxh2u@tkqkqs6fjizd>
 <20250519222653.8aL97Par@steffen%sdaoden.eu>
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

Steffen Nurpmeso wrote in
 <20250519222653.8aL97Par@steffen%sdaoden.eu>:
 ...
 |Got it.  Actually i see more problems on the page, for example the
 |prototype is broken and shows a false leading "n" argument etc.

Out of interest i got back; this actually was "broken" in

  d2c2db8830f8fcbb736bdea52b398257447bef6b

and that refers to some C language proposal i have never heard of,
namely

  https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3433.pdf

Therefore that i take back.  Interesting!  And so old.  Not really
something for me, i even started to replace calls of "memcpy" with
"memmove" because "they" now beat onto the "overlap", even if it
is completely nonsense (ie: you have to read a byte to write it).
Sure all these non-temporal copies etc etc., who knows what the
hardware really does.  Or what the compiler optimizes.  Sigh, that
is all no fun.

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)

