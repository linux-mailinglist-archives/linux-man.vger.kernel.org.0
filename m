Return-Path: <linux-man+bounces-1898-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 83D489C6571
	for <lists+linux-man@lfdr.de>; Wed, 13 Nov 2024 00:48:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 398CAB2891C
	for <lists+linux-man@lfdr.de>; Tue, 12 Nov 2024 23:33:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FBA821B427;
	Tue, 12 Nov 2024 23:33:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amazon.com header.i=@amazon.com header.b="M8sLhgMN"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp-fw-6002.amazon.com (smtp-fw-6002.amazon.com [52.95.49.90])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4164C2FC23;
	Tue, 12 Nov 2024 23:33:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=52.95.49.90
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731454420; cv=none; b=jV0C7eGbgh6R7qiqDPeXY+SnqtxZq7S/8kI9YthV3l9GBI8Jqkwn+yJR9yKsW4/Bb++SCnOUJ4jONYF2o5eea/MFizBZ3yJqO5S+yjU8wfswEWTacP47d9H1lrm4CYwIQ3ya8yrJImb6uUAyuhgRRgDaVSUfgwVGA8SZ/1tgTLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731454420; c=relaxed/simple;
	bh=YKjGAf9kZuR2qoV6k16Nz/6vScH9jlk85PVf8wfiSdE=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=HaPWA2UZ/aFBGsnQqFL9Hm3kMhFSbPrM6Wyolmbz7eqfmYxaIs+Suq32PWRoAdHdbu89mSxLxrUwJw+kbo9sx53fLwz8xQHcDhgH+DnnL3d8k/4uAH7qDXWHL1djVbNJWB1cdIhpFPJFxWIYdDsK24HoP3xxwFZgvOc9VFEpeag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amazon.com; spf=pass smtp.mailfrom=amazon.co.jp; dkim=pass (1024-bit key) header.d=amazon.com header.i=@amazon.com header.b=M8sLhgMN; arc=none smtp.client-ip=52.95.49.90
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amazon.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amazon.co.jp
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1731454419; x=1762990419;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=uERQzekAYseuy0oga6agm4jG+J47cKgTXiOb+j8YYDM=;
  b=M8sLhgMNpEIqe/YOMk9nFLflAhXNk4xluWMCTGX4zQppGIHZ2Hv3aoOW
   bQwUGgYrIDrXZ/qQzSHBt3iVMpfSlQOiWsk/ug+m3jvIJJ7AlGI6ueWtu
   /fGhMfAwtt6lIYWKDcTcqzlNm9FrDN0W9E//XPXqh/ZgTBno/DiED6cnq
   Y=;
X-IronPort-AV: E=Sophos;i="6.12,149,1728950400"; 
   d="scan'208";a="448263153"
Received: from iad6-co-svc-p1-lb1-vlan3.amazon.com (HELO smtpout.prod.us-west-2.prod.farcaster.email.amazon.dev) ([10.124.125.6])
  by smtp-border-fw-6002.iad6.amazon.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Nov 2024 23:33:35 +0000
Received: from EX19MTAUWC001.ant.amazon.com [10.0.38.20:25993]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.18.34:2525] with esmtp (Farcaster)
 id 25d1d0c9-6f7d-484f-95e6-ba6a92942794; Tue, 12 Nov 2024 23:33:34 +0000 (UTC)
X-Farcaster-Flow-ID: 25d1d0c9-6f7d-484f-95e6-ba6a92942794
Received: from EX19D004ANA001.ant.amazon.com (10.37.240.138) by
 EX19MTAUWC001.ant.amazon.com (10.250.64.174) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1258.34;
 Tue, 12 Nov 2024 23:33:34 +0000
Received: from 6c7e67c6786f.amazon.com (10.187.170.24) by
 EX19D004ANA001.ant.amazon.com (10.37.240.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1258.35;
 Tue, 12 Nov 2024 23:33:32 +0000
From: Kuniyuki Iwashima <kuniyu@amazon.com>
To: <alx@kernel.org>
CC: <alexhenrie24@gmail.com>, <branden@debian.org>, <kuniyu@amazon.com>,
	<linux-man@vger.kernel.org>, <mtk.manpages@gmail.com>,
	<netdev@vger.kernel.org>
Subject: Re: [PATCH man-pages v2] rtnetlink.7: Document struct ifa_cacheinfo
Date: Tue, 12 Nov 2024 15:33:29 -0800
Message-ID: <20241112233329.20660-1-kuniyu@amazon.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
In-Reply-To: <udctaxcv6yqjvffgrtzgqo24ee3kr4h4ku66ubohc7l4hqwg3w@6ujhaoyg4kla>
References: <udctaxcv6yqjvffgrtzgqo24ee3kr4h4ku66ubohc7l4hqwg3w@6ujhaoyg4kla>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: EX19D044UWA002.ant.amazon.com (10.13.139.11) To
 EX19D004ANA001.ant.amazon.com (10.37.240.138)

From: Alejandro Colomar <alx@kernel.org>
Date: Wed, 13 Nov 2024 00:26:15 +0100
> > diff --git a/man/man7/rtnetlink.7 b/man/man7/rtnetlink.7
> > index 86ed459bb..ed08834b0 100644
> > --- a/man/man7/rtnetlink.7
> > +++ b/man/man7/rtnetlink.7
> > @@ -176,7 +176,24 @@ IFA_BROADCAST:raw protocol address:broadcast address
> >  IFA_ANYCAST:raw protocol address:anycast address
> >  IFA_CACHEINFO:struct ifa_cacheinfo:Address information
> >  .TE
> > -.\" FIXME Document struct ifa_cacheinfo
> > +.IP
> > +.EX
> 
> I expect users that need to use this struct to also need to include the
> header that defines it, right?

rtnetlink.7 tells #include <linux/rtnetlink.h> is needed in SYNOPSIS
and the header internally includes <linux/if_addr.h>, so users need
not include it explicitly for struct ifa_cacheinfo.


> We should probably specify it by using
> an #include.  What do you think?

So I think we need not mention linux/if_addr.h here.

