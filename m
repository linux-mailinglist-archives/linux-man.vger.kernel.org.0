Return-Path: <linux-man+bounces-1869-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B4F7D9BC4F2
	for <lists+linux-man@lfdr.de>; Tue,  5 Nov 2024 06:54:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 44FBEB2122E
	for <lists+linux-man@lfdr.de>; Tue,  5 Nov 2024 05:54:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A8E31DC185;
	Tue,  5 Nov 2024 05:53:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amazon.com header.i=@amazon.com header.b="WKqqm05A"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp-fw-52002.amazon.com (smtp-fw-52002.amazon.com [52.119.213.150])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F249A1CCED9;
	Tue,  5 Nov 2024 05:53:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=52.119.213.150
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730786028; cv=none; b=LSUYH2S8C/q3B1dSFspzo9rqpNSthhRq2lbE+Nl+wA4e+4JS0hYC0smLWzTLWF+XYkPlEarvtfIbJ+dmr2MmPUnMe9pNnNBnneJXCLBm10Kv2amYl0xoqkpC6kFJEcV2rngDu9wj+solVhZrEjNxrmM2sqbjJkg60//vYlIPkiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730786028; c=relaxed/simple;
	bh=8jaWA/OnPxY2q8VoRB4zktY2EQdx/bopoFIVakr9YO0=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=WhjwZM4VItJ49OTghaBHCmGY+6LZWTyYhRuOh/zQsqHOlzjui5Zb6MflKbAKfDGK6Ig1hhWXS8lMit6RxBZFx4q7spciz8M2lhHt4qZgOvN4k9Vz61K2mvNpg0Ux9RzKi8YA3QYnsB46g2S0Zs5AIrk1swU1d9PWy5t6/i9Fpb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amazon.com; spf=pass smtp.mailfrom=amazon.co.jp; dkim=pass (1024-bit key) header.d=amazon.com header.i=@amazon.com header.b=WKqqm05A; arc=none smtp.client-ip=52.119.213.150
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amazon.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amazon.co.jp
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1730786027; x=1762322027;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=m7in/MkbiRXm2STu2B4RcXLgsUAKfRkbsUMfzNKWlnM=;
  b=WKqqm05AvsnD6NpxRDg1aYNrRSmyWxU28hoWOnSEHUyfOdW5mKUYKtDv
   o/PKAGsjssG69DrNDOANfYcZsw23IRO0dYIX7eOWczCIMHs+AmaiLDWTc
   hQN+ANahOuDQc5Mu+vWCmObH/bgqDzLCLE83UyW7ronHXED8h0jS5cqiV
   8=;
X-IronPort-AV: E=Sophos;i="6.11,259,1725321600"; 
   d="scan'208";a="671660064"
Received: from iad12-co-svc-p1-lb1-vlan3.amazon.com (HELO smtpout.prod.us-west-2.prod.farcaster.email.amazon.dev) ([10.43.8.6])
  by smtp-border-fw-52002.iad7.amazon.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Nov 2024 05:53:44 +0000
Received: from EX19MTAUWC002.ant.amazon.com [10.0.21.151:36987]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.3.16:2525] with esmtp (Farcaster)
 id 5491b414-28a7-4ef2-82b4-0ea115538bfd; Tue, 5 Nov 2024 05:53:43 +0000 (UTC)
X-Farcaster-Flow-ID: 5491b414-28a7-4ef2-82b4-0ea115538bfd
Received: from EX19D004ANA001.ant.amazon.com (10.37.240.138) by
 EX19MTAUWC002.ant.amazon.com (10.250.64.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1258.34;
 Tue, 5 Nov 2024 05:53:43 +0000
Received: from 6c7e67c6786f.amazon.com (10.187.171.42) by
 EX19D004ANA001.ant.amazon.com (10.37.240.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1258.35;
 Tue, 5 Nov 2024 05:53:41 +0000
From: Kuniyuki Iwashima <kuniyu@amazon.com>
To: <alexhenrie24@gmail.com>
CC: <linux-man@vger.kernel.org>, <mtk.manpages@gmail.com>,
	<netdev@vger.kernel.org>, <kuniyu@amazon.com>
Subject: Re: [PATCH] rtnetlink.7: Document struct ifa_cacheinfo
Date: Mon, 4 Nov 2024 21:53:38 -0800
Message-ID: <20241105055338.61082-1-kuniyu@amazon.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
In-Reply-To: <20241105041507.1292595-1-alexhenrie24@gmail.com>
References: <20241105041507.1292595-1-alexhenrie24@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: EX19D033UWA004.ant.amazon.com (10.13.139.85) To
 EX19D004ANA001.ant.amazon.com (10.37.240.138)

From: Alex Henrie <alexhenrie24@gmail.com>
Date: Mon,  4 Nov 2024 21:14:20 -0700
> struct ifa_cacheinfo contains the address's creation time, update time,
> preferred lifetime, and valid lifetime. See
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/include/uapi/linux/if_addr.h?h=v6.11#n60
> 
> Signed-off-by: Alex Henrie <alexhenrie24@gmail.com>
> ---
>  man/man7/rtnetlink.7 | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/man/man7/rtnetlink.7 b/man/man7/rtnetlink.7
> index 86ed459bb..b05654315 100644
> --- a/man/man7/rtnetlink.7
> +++ b/man/man7/rtnetlink.7
> @@ -176,7 +176,15 @@ IFA_BROADCAST:raw protocol address:broadcast address
>  IFA_ANYCAST:raw protocol address:anycast address
>  IFA_CACHEINFO:struct ifa_cacheinfo:Address information
>  .TE
> -.\" FIXME Document struct ifa_cacheinfo
> +.IP
> +.EX
> +struct ifa_cacheinfo {
> +    __u32 ifa_prefered; /* Preferred lifetime in seconds, -1 = forever */
> +    __u32 ifa_valid;    /* Valid lifetime in seconds, -1 = forever */

-1 should be rather 0xFFFFFFFF (INFINITY_LIFE_TIME) as it's unsigned.

Also, it would be nice to mention that ifa_prefered must be less than
or equal to ifa_valid (ifa_prefered <= ifa_valid) and 0 is invalid for
ifa_valid.

  0 <= ifa_prefered <= ifa_valid
  0 < ifa_valid <= 0xFFFFFFFF


> +    __u32 cstamp;       /* Creation timestamp in hundredths of seconds */
> +    __u32 tstamp;       /* Update timestamp in hundredths of seconds */
> +};

Maybe the explanation can follow the struct here as sentences.


> +.EE
>  .TP
>  .B RTM_NEWROUTE
>  .TQ
> -- 
> 2.47.0

