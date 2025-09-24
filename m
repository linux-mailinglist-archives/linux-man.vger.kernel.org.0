Return-Path: <linux-man+bounces-3970-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BAC6B9B1E7
	for <lists+linux-man@lfdr.de>; Wed, 24 Sep 2025 19:51:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AD8AD1B265EB
	for <lists+linux-man@lfdr.de>; Wed, 24 Sep 2025 17:51:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEA66205E2F;
	Wed, 24 Sep 2025 17:51:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jwilk.net header.i=@jwilk.net header.b="AmPQkVac"
X-Original-To: linux-man@vger.kernel.org
Received: from 11.mo533.mail-out.ovh.net (11.mo533.mail-out.ovh.net [87.98.181.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C12FA314B69
	for <linux-man@vger.kernel.org>; Wed, 24 Sep 2025 17:51:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=87.98.181.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758736273; cv=none; b=RCz8L+6PRHVGXSS3qvvzEJlrQkW0IclIMROugxEcKVYu5ap7iu9DdtZSDDHDwLtGTKMY0t3qNIRTNRONMa5S1DQYaLMrvyte/JIJR2IsvTwV5LI2016gEnE2RibCzNJ6vU6P7sdHpPUshf/rED6IRcpJVLnS2vgwSvjV8VJKvNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758736273; c=relaxed/simple;
	bh=Jr1Y1C9DjyXN0Zvs48/7XIaLuFYs5HQdhClXHGYRbdY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eXQt4Qs61n6bzz7zFX1hCcDJ2PiNb7+QHjSEC7EbUP8BNtZAPcy2+v3ZyqQ/w6+rO6uNrq50DuA/U3WcAR3Oa3xCJ88IKh5SnkDEBz03cKptccR1OztMbUv9ycSHDv1rmNN5vDNJpYdRbw5O8lyTVKv7JaHOMoVfTvGpSranIQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jwilk.net; spf=pass smtp.mailfrom=jwilk.net; dkim=pass (2048-bit key) header.d=jwilk.net header.i=@jwilk.net header.b=AmPQkVac; arc=none smtp.client-ip=87.98.181.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jwilk.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jwilk.net
Received: from director1.derp.mail-out.ovh.net (director1.derp.mail-out.ovh.net [51.68.80.175])
	by mo533.mail-out.ovh.net (Postfix) with ESMTPS id 4cX4071gvyz5x0P;
	Wed, 24 Sep 2025 17:41:27 +0000 (UTC)
Received: from director1.derp.mail-out.ovh.net (director1.derp.mail-out.ovh.net. [127.0.0.1])
        by director1.derp.mail-out.ovh.net (inspect_sender_mail_agent) with SMTP
        for <alx@kernel.org>; Wed, 24 Sep 2025 17:41:26 +0000 (UTC)
Received: from mta10.priv.ovhmail-u1.ea.mail.ovh.net (unknown [10.110.188.36])
	by director1.derp.mail-out.ovh.net (Postfix) with ESMTPS id 4cX40668w2z5wJs;
	Wed, 24 Sep 2025 17:41:26 +0000 (UTC)
Received: from jwilk.net (unknown [10.1.6.8])
	by mta10.priv.ovhmail-u1.ea.mail.ovh.net (Postfix) with ESMTPSA id C4525783454;
	Wed, 24 Sep 2025 17:41:25 +0000 (UTC)
Authentication-Results:garm.ovh; auth=pass (GARM-107S001bd2c2de1-7902-4f7e-a793-06a7459ce16a,
                    F7F3E28BE12C77E34456069A97F6CBB20590BFCF) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp:37.248.227.48
Date: Wed, 24 Sep 2025 19:41:23 +0200
From: Jakub Wilk <jwilk@jwilk.net>
To: Pablo Fraile Alonso <pablo@pablofraile.net>
Cc: alx@kernel.org, linux-man@vger.kernel.org
Subject: Re: [PATCH] man7/vdso.7: remove broken link
Message-ID: <20250924174123.qg5qt5gkhubsq3he@jwilk.net>
References: <ursrhzx2i77qnhkk4o3bdhlkp2py46huwcyk57tn63kox5qzta@atmst5gr6x3p>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <ursrhzx2i77qnhkk4o3bdhlkp2py46huwcyk57tn63kox5qzta@atmst5gr6x3p>
X-Ovh-Tracer-Id: 3262294980720012393
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: dmFkZTE/IzHcltRulIZwi7UcBqpoEAZTSzVOfuajpFyIf/iRCw06KSlVAn95enzIQsjrnloJXoq7wnfTeVDiqBVojSTb88v3MiBibQIjUT1AZINnNZvfIRDcZNKEjRSwzUilPXOcYxo7RTjZf84pe32RxyXuUlhHueahap86QOv51FS/ckDN7lXmQVOaA6+YpZ61QAdKMlCU7TeUi4OSKFYJKz81Sa5XSOzEbbQwbkNalBkQXbU6qEiY266IlmW+fXzuomjRRl3PVPNjHm+0Ur3bjMezC9EdD8NNb396Yck7EC+T9tIb1QZGeVcPKaeyJ7XQwcmgbU1kQw/n0McxlXBVjLd4L+5KMaHUM4M5bNxl37mpfWHqIuJwxbzklrK/HCHj+bK2Szhd3VCOE7o/G9aqp3v91w4NLQQvEswP7OSC/Wi05LRddmlLbOFxJjNK3sIpabNIGGHvyZi6mj6HchKHKcyS1MugSVbK0zdWwi1dV7tyDk/fwqQ/vtkARSBAlS7Zv2NInE9r07J33pKYeIsdvYkisFdJ+FQWtBu87HF8zDfp5tL+E96p3q8S1fkkvh4K1ID4U3MGM4Nn5Pd4u3dXpsnS7UvRhsRGC7HBzYXXKQHx8eJqY4k3ko9Qz7FPy7t4IzzuNzrtaCOf0XePykgPpm3qDaQDyunSkuaOwORjotbglQ
DKIM-Signature: a=rsa-sha256; bh=eEYKNpCEPNMp6YlTcC9EUIKKL9f5c2MeWXH8gawH+tI=;
 c=relaxed/relaxed; d=jwilk.net; h=From; s=ovhmo917968-selector1;
 t=1758735687; v=1;
 b=AmPQkVacQgLU8qNDJQbrgGW2+NFR9JLLpOwYc/TdEeSFeiOh+tFdkUEBKzPWtTCjB747Npa2
 ivk/9dlDIs5+4OK6glTHCMPU4hjPqwLf/RmlRzONagC45KiVS/ebjRiIzxid6w1MIP/9gMvwgpQ
 K6ja0+hq+8w2oDoQsBvr/xJDYD9NVmhKq5/c+YEtAo4AZ1S+dAzUzKFVxY+cA8C2vtaY4pqw9Oj
 5R54Dprl8kcitPfaS7Ulym5JfhvU1h8TCkSirxg4UcsvYU2+ctuivKJAJ5g13K/E60loYyWN4/a
 d6/4JrFj13tdB1B5sZUFIGX6H8ZsvUjz+M/RFj52uGNLQ==

* Pablo Fraile Alonso <pablo@pablofraile.net>, 2025-09-24 19:15:
>There was a reference to: 
>`http://www.trilithium.com/johan/2005/08/linux-gate/`.
>
>That URL is no longer accessible (even via Internet Archive / Wayback).

It looks like the Wayback Machine mangled the website's XML, which makes 
the browsers unhappy, but if you ask for the raw copy, it works:

https://web.archive.org/web/20051013084246id_/http://www.trilithium.com/johan/2005/08/linux-gate/

-- 
Jakub Wilk

