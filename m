Return-Path: <linux-man+bounces-3903-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A57D3B8D082
	for <lists+linux-man@lfdr.de>; Sat, 20 Sep 2025 22:11:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8816E1B26B07
	for <lists+linux-man@lfdr.de>; Sat, 20 Sep 2025 20:11:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B62B2749D2;
	Sat, 20 Sep 2025 20:11:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jwilk.net header.i=@jwilk.net header.b="Z5orsrWZ"
X-Original-To: linux-man@vger.kernel.org
Received: from 10.mo533.mail-out.ovh.net (10.mo533.mail-out.ovh.net [46.105.72.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AED42749C7
	for <linux-man@vger.kernel.org>; Sat, 20 Sep 2025 20:11:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.105.72.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758399076; cv=none; b=FFEdiK74E7kYbRiCAjSAAHPzq7c+4/xPXgDcLb+iw5++BvEVu4EWjDFJtpMUEDlnCQik/oaAemrbEibFSESYBuCHzb7gi7WAb+Bg3DlQOrGJrrjDyZcwWd2uQNeKIYK0KukZT/rYlpCyKQQ7pKbtIDIkRktzyKv2TdJsIpoOtmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758399076; c=relaxed/simple;
	bh=5agf7UHiNOs3a5ekNSQl7ugw2vV4ngCdP6mGmGCYv3E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=joGuCC3pmQ3ZiV6tWB2xmUAWNwpSe5PXHrB46yRmfKiYBk7M6v/ndiOftBx60aI3oEAoyCkxlDyvKF4bhvxcqbZngR9Ze05QH4zffSw6QjAuyoHiKLW4iVIpegf8nLB6n+ROIOCinkWTMPygOLRedTpnbEALFaDJBM0AMITSw20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jwilk.net; spf=pass smtp.mailfrom=jwilk.net; dkim=pass (2048-bit key) header.d=jwilk.net header.i=@jwilk.net header.b=Z5orsrWZ; arc=none smtp.client-ip=46.105.72.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=jwilk.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=jwilk.net
Received: from director3.derp.mail-out.ovh.net (director3.derp.mail-out.ovh.net [152.228.215.222])
	by mo533.mail-out.ovh.net (Postfix) with ESMTPS id 4cTcCf3F3Zz5xWQ;
	Sat, 20 Sep 2025 17:42:54 +0000 (UTC)
Received: from director3.derp.mail-out.ovh.net (director3.derp.mail-out.ovh.net. [127.0.0.1])
        by director3.derp.mail-out.ovh.net (inspect_sender_mail_agent) with SMTP
        for <coreutils@gnu.org>; Sat, 20 Sep 2025 17:42:54 +0000 (UTC)
Received: from mta6.priv.ovhmail-u1.ea.mail.ovh.net (unknown [10.110.164.229])
	by director3.derp.mail-out.ovh.net (Postfix) with ESMTPS id 4cTcCf0Qv5z5vPD;
	Sat, 20 Sep 2025 17:42:54 +0000 (UTC)
Received: from jwilk.net (unknown [10.1.6.10])
	by mta6.priv.ovhmail-u1.ea.mail.ovh.net (Postfix) with ESMTPSA id 15CD18E341D;
	Sat, 20 Sep 2025 17:42:51 +0000 (UTC)
Authentication-Results:garm.ovh; auth=pass (GARM-105G006b5f082e2-9322-46e0-928b-d26a11dae780,
                    56193ADCF0A1B0CBF96D1EB55EAA1E6A1B096629) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp:31.0.179.202
Date: Sat, 20 Sep 2025 19:42:49 +0200
From: Jakub Wilk <jwilk@jwilk.net>
To: linux-man@vger.kernel.org
Cc: coreutils@gnu.org
Subject: Re: Move GNU manual pages to the Linux man-pages project
Message-ID: <20250920174022.zjqt6fiv4vxo6vh2@jwilk.net>
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
 <e8152fd3-5095-4c5b-a52f-8451f67272de@draigBrady.com>
 <53jjjhuovjnbju4ex56hwoke2zz5rshxr6qjeqe3tidgcls4sw@zfnfbdktmtpb>
 <4e842b01-5251-495a-9a49-1ce59676acc9@draigBrady.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4e842b01-5251-495a-9a49-1ce59676acc9@draigBrady.com>
X-Ovh-Tracer-Id: 16689777272169442409
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: dmFkZTECElSYjP+AGJ0tYaDCTM2dL/gFhs2HiYtU+CyrfKPNuCSs7fFWJIi2iy0K477jTAtttPNuq3KTrn69QI2XOAsdOf22kGvvO/OyMz+kkee4V++d1Z6uwgf+SAxR+HG0gC45/xRSwp/2DlD6f1OXCC6w9Jo7AucbHwRLYyO3gav5g0+bpeYP0vyv06mQaXYC48oPN8azr0ZRXl6XC19693W/kKZIS/SGWp0e5yVFM0M5N+cxdjL23yGQLRpSewmABeK0LGa+Vlo0LM+uwHqmKu1haJrOpc6W0L1uAvClVgR/C7UOCDqPNGBpuAdMNSy6tKLHR4BcvzLFGcqyt8kqn0DnrsXEKY/XyXOCXfzItWexBNRDADt7bzG8ahqfSs2cHtI5HLdw4QIPE6psp5/hJ66FbXIyqdmO+QTim+2qMb5gUHDOIQ34wXg/uM96KLC1FVV1ga3Oho/w6sXq3vJobveKdC2wZGSH5ztGN8hGuNS8e/9UU7sWPRJNvHhv7xJVIUX7yH88DKdaiA6wSFv4DRGCLbDdtdx2IrKblg5+8JLI4SzJrDxaCUhzih4gWT1SIiRCSl7+4k6Ddcp6Hs41rVk64in75UKLteKLb9N4mDXJnM6mAMFMwjY05bVmtHLYZTwsjuaiDHVkI5C3ZcshUKFVxp1DvyyT5q7CVWdWYtBQcw
DKIM-Signature: a=rsa-sha256; bh=HsOw0esXO0LZuKscHLE8L7I5I8tmyY5rjDF1nUu0hPU=;
 c=relaxed/relaxed; d=jwilk.net; h=From; s=ovhmo917968-selector1;
 t=1758390174; v=1;
 b=Z5orsrWZ73Lwq21u9Ig5IgH2Yg8rrpqzy4xCHT4X27FFDqbNIu9wh2hc55hU86BruKZBPe32
 umsEV2dyLYc6sKnlWXtqHJb5z087X3MXHXGSD3q2VyfbUmITmr5RvkPkmaX19HdoZf2hlPIGmYj
 ZlhTiYNbIEZ7mjkTw1cwMNqW2b0aEYWNg0QhRZfq1SIntqWmF2EPOmnGM+hGlYqI70bTXJFb1SK
 cmh+mwQGbRaQdtLRQtmeuzn5OwvMvvADacs6uYfefylgVjCIWAG3yWfPb/v7ZQvM4QpmUESO4oH
 81hzuSGws8lZk/K4ayyPSP1j/Y4TT8yWcnljHeIJZCN9g==

* Pádraig Brady <P@draigBrady.com>, 2025-09-20 18:01:
>I my experience user don't enjoy the info _reader_, while the docs are 
>fine.

If you've been avoiding info docs because of the horrors of the info(1) 
user interface (like I had been doing for 20 years or so), you should 
give https://github.com/jwilk/informan a try.

-- 
Jakub Wilk

