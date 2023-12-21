Return-Path: <linux-man+bounces-269-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A8B81AC52
	for <lists+linux-man@lfdr.de>; Thu, 21 Dec 2023 02:49:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1B3B11F2468E
	for <lists+linux-man@lfdr.de>; Thu, 21 Dec 2023 01:49:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF48B15CC;
	Thu, 21 Dec 2023 01:49:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amazon.com header.i=@amazon.com header.b="ZpQxh141"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp-fw-52003.amazon.com (smtp-fw-52003.amazon.com [52.119.213.152])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1DE71843;
	Thu, 21 Dec 2023 01:49:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amazon.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amazon.co.jp
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1703123369; x=1734659369;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=rCL33iD9VHLmj2113xvxmnVgCiJ8bLLkMHBSdPz3nxc=;
  b=ZpQxh141rSYjvMRZtOQolGfYc7ylUsJa/k1PolbS0A6CTYDal/E8KMol
   ri6BGHLf7GwVktUPnpCOJiwKCWnQjN7FttTyjlp/h0cX5g4bnd5mV+14e
   wDQr5f2AmMuZ863J30u16kWVhvL8t531ffIsOsodD1yA9H36Y9qCr/nsN
   I=;
X-IronPort-AV: E=Sophos;i="6.04,292,1695686400"; 
   d="scan'208";a="626864022"
Received: from iad12-co-svc-p1-lb1-vlan3.amazon.com (HELO email-inbound-relay-pdx-2a-m6i4x-d47337e0.us-west-2.amazon.com) ([10.43.8.6])
  by smtp-border-fw-52003.iad7.amazon.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Dec 2023 01:49:27 +0000
Received: from smtpout.prod.us-west-2.prod.farcaster.email.amazon.dev (pdx2-ws-svc-p26-lb5-vlan3.pdx.amazon.com [10.39.38.70])
	by email-inbound-relay-pdx-2a-m6i4x-d47337e0.us-west-2.amazon.com (Postfix) with ESMTPS id 8B31960AF0;
	Thu, 21 Dec 2023 01:49:26 +0000 (UTC)
Received: from EX19MTAUWC002.ant.amazon.com [10.0.21.151:23105]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.56.23:2525] with esmtp (Farcaster)
 id 1d767abf-b576-4d75-85f6-d51b9e4f64c3; Thu, 21 Dec 2023 01:49:26 +0000 (UTC)
X-Farcaster-Flow-ID: 1d767abf-b576-4d75-85f6-d51b9e4f64c3
Received: from EX19D004ANA001.ant.amazon.com (10.37.240.138) by
 EX19MTAUWC002.ant.amazon.com (10.250.64.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Thu, 21 Dec 2023 01:49:25 +0000
Received: from 88665a182662.ant.amazon.com (10.119.15.211) by
 EX19D004ANA001.ant.amazon.com (10.37.240.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Thu, 21 Dec 2023 01:49:22 +0000
From: Kuniyuki Iwashima <kuniyu@amazon.com>
To: <atikhono@redhat.com>
CC: <alx@kernel.org>, <kuniyu@amazon.com>, <libc-alpha@sourceware.org>,
	<linux-man@vger.kernel.org>, <netdev@vger.kernel.org>
Subject: Re: [PATCH] unix.7: SO_PEERCRED: Mention listen(2)
Date: Thu, 21 Dec 2023 10:49:11 +0900
Message-ID: <20231221014911.39497-1-kuniyu@amazon.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <CABPeg3Z5p2yapwEwPdHqDZiDL-W_gVgMc39A0Kdd95LNd+OwHA@mail.gmail.com>
References: <CABPeg3Z5p2yapwEwPdHqDZiDL-W_gVgMc39A0Kdd95LNd+OwHA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: EX19D038UWC002.ant.amazon.com (10.13.139.238) To
 EX19D004ANA001.ant.amazon.com (10.37.240.138)
Precedence: Bulk

From: Alexey Tikhonov <atikhono@redhat.com>
Date: Wed, 20 Dec 2023 18:28:34 +0100
> In case of connected AF_UNIX stream sockets, server-side
> credentials are set at the time of a call to listen(2),
> not when client-side calls connect(2).
> 
> This is important if server side process changes UID/GID
> after listen(2) and before connect(2).
> 
> Reproducer is available in https://bugzilla.redhat.com/show_bug.cgi?id=2247682
> 
> Behavior was confirmed in the email thread
> https://lore.kernel.org/linux-man/CABPeg3a9L0142gmdZZ+0hoD+Q3Vgv0BQ21g8Z+gf2kznWouErA@mail.gmail.com/
> 
> Signed-off-by: Alexey Tikhonov <atikhono@redhat.com>

Reviewed-by: Kuniyuki Iwashima <kuniyu@amazon.com>

Thanks!


> ---
>  man7/unix.7 | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/man7/unix.7 b/man7/unix.7
> index e9edad467..71cdfc758 100644
> --- a/man7/unix.7
> +++ b/man7/unix.7
> @@ -331,7 +331,8 @@ This read-only socket option returns the
>  credentials of the peer process connected to this socket.
>  The returned credentials are those that were in effect at the time
>  of the call to
> -.BR connect (2)
> +.BR connect (2),
> +.BR listen (2),
>  or
>  .BR socketpair (2).
>  .IP
> -- 
> 2.41.0

