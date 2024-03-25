Return-Path: <linux-man+bounces-694-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 243E188B1E7
	for <lists+linux-man@lfdr.de>; Mon, 25 Mar 2024 21:46:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 82FA4B26900
	for <lists+linux-man@lfdr.de>; Mon, 25 Mar 2024 18:52:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A601F182DF;
	Mon, 25 Mar 2024 18:43:05 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from ore.jhcloos.com (ore.jhcloos.com [192.40.56.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D493DAC1C
	for <linux-man@vger.kernel.org>; Mon, 25 Mar 2024 18:42:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.40.56.151
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711392185; cv=none; b=QPqL4nfd6uip1a9dhY9/AXv9822TFqzhIzkRFf0Zqiy9xDmNDF6mOet16SbufpjO9oUS1g/eXcT3ZgkR5UWVTvKIEtdP9TQJhKo/s0ESRQ6YLyl39ChumsNRKcaNw/kfJxl43Ij9zY7XVa5c7rBw8H7SSmej49JGZEHfj7Gkp2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711392185; c=relaxed/simple;
	bh=uzNBzLAKB7YugH+6/LKGcSYpRVFON64vLUiD3gt+eXI=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=Hz9BWph4nLFl5hGMyZpsWeztOqIlNuw/AmUwqA8kXSCbvKWgCEosYJzsh0dmRkzk6C6E5uEn+g2U+UF6WR1X65DJAr1WIQn4LTNIkt7feNCU5HoYK6Ynl6dhhA5CT2H3fKndmUprckY5iifcfSeTf0vF7hAuwMA1SPGP+kWT7ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jhcloos.com; spf=pass smtp.mailfrom=jhcloos.com; arc=none smtp.client-ip=192.40.56.151
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=jhcloos.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jhcloos.com
Received: from oxygen.jhcloos.org (oxygen [192.168.1.8])
	by ore.jhcloos.com (Postfix) with ESMTP id E1B191E70D;
	Mon, 25 Mar 2024 18:36:03 +0000 (UTC)
Received: from nitrogen.jhcloos.org (nitrogen.jhcloos.org [192.168.1.7])
	by oxygen.jhcloos.org (Postfix) with ESMTP id 23B7A841929;
	Mon, 25 Mar 2024 18:36:03 +0000 (UTC)
Received: by nitrogen.jhcloos.org (Postfix, from userid 500)
	id 1AFC415F74; Mon, 25 Mar 2024 18:36:03 +0000 (-00)
From: James Cloos <cloos@jhcloos.com>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Alejandro Colomar <alx@kernel.org>,  linux-man@vger.kernel.org
Subject: Re: man-pages PDF book: fonts
In-Reply-To: <20240325041954.fofjtgghwhe4znm6@illithid> (G. Branden Robinson's
	message of "Sun, 24 Mar 2024 23:19:54 -0500")
References: <Zf3BRmfTFvADOIBG@debian>
	<20240325041954.fofjtgghwhe4znm6@illithid>
User-Agent: Gnus/5.13 (Gnus v5.13)
Face: iVBORw0KGgoAAAANSUhEUgAAABAAAAAQAgMAAABinRfyAAAACVBMVEX///8ZGXBQKKnCrDQ3
 AAAAJElEQVQImWNgQAAXzwQg4SKASgAlXIEEiwsSIYBEcLaAtMEAADJnB+kKcKioAAAAAElFTkSu
 QmCC
Copyright: Copyright 2024 James Cloos
OpenPGP: 0x997A9F17ED7DAEA6;
 url=https://jhcloos.com/public_key/0x997A9F17ED7DAEA6.asc
OpenPGP-Fingerprint: E9E9 F828 61A4 6EA9 0F2B  63E7 997A 9F17 ED7D AEA6
Date: Mon, 25 Mar 2024 14:36:03 -0400
Message-ID: <m3il1arwfg.fsf@nitrogen.jhcloos.org>
Lines: 14
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

>>>>> "B" == G Branden Robinson <g.branden.robinson@gmail.com> writes:

B> Regardless, groff provides a tool for converting uncouth PFB to
B> civilized PFA.

pfb is also very common on x11 and tex systems.

lcdf.org’s t1utils offers t1ascii and t1binary to convert between the
two formats, as well as t1disasm & t1asm to (dis)?assemble either format.

-JimC
-- 
James Cloos <cloos@jhcloos.com>
            OpenPGP: https://jhcloos.com/0x997A9F17ED7DAEA6.asc

