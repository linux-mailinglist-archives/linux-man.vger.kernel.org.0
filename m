Return-Path: <linux-man+bounces-204-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A610D8015DA
	for <lists+linux-man@lfdr.de>; Fri,  1 Dec 2023 23:08:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 29ED9B20FCF
	for <lists+linux-man@lfdr.de>; Fri,  1 Dec 2023 22:08:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 082355AB85;
	Fri,  1 Dec 2023 22:08:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amazon.com header.i=@amazon.com header.b="qq7fYrPZ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp-fw-2101.amazon.com (smtp-fw-2101.amazon.com [72.21.196.25])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADB1FD63;
	Fri,  1 Dec 2023 14:08:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1701468484; x=1733004484;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=8o4/hfCAnfKPX4yUMshaIazjT8z9QiKc4SR1fVJeakk=;
  b=qq7fYrPZU8oDDBlIoJjwqK74ifhF9xWNg7azQfmMzOnbbEkYjCRMQwnR
   IUYDMbUnsZjei3V4hUZKgiLCORdckHaD4Cd4lTkah23v6vIZOsYXo2m+L
   QAyiCmIdX2BYUiNhJUtjTq1wSkIgXvs3J3sGhf6sqhZfLN6PYrittNzvN
   c=;
X-IronPort-AV: E=Sophos;i="6.04,242,1695686400"; 
   d="scan'208";a="366117092"
Received: from iad12-co-svc-p1-lb1-vlan3.amazon.com (HELO email-inbound-relay-pdx-2b-m6i4x-0ec33b60.us-west-2.amazon.com) ([10.43.8.6])
  by smtp-border-fw-2101.iad2.amazon.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Dec 2023 22:07:59 +0000
Received: from smtpout.prod.us-west-2.prod.farcaster.email.amazon.dev (pdx2-ws-svc-p26-lb5-vlan2.pdx.amazon.com [10.39.38.66])
	by email-inbound-relay-pdx-2b-m6i4x-0ec33b60.us-west-2.amazon.com (Postfix) with ESMTPS id C6E77A097F;
	Fri,  1 Dec 2023 22:07:57 +0000 (UTC)
Received: from EX19MTAUWA001.ant.amazon.com [10.0.38.20:58955]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.12.242:2525] with esmtp (Farcaster)
 id 7dfbec46-2e69-43cd-bc3e-3317f64baa94; Fri, 1 Dec 2023 22:07:57 +0000 (UTC)
X-Farcaster-Flow-ID: 7dfbec46-2e69-43cd-bc3e-3317f64baa94
Received: from EX19D004ANA001.ant.amazon.com (10.37.240.138) by
 EX19MTAUWA001.ant.amazon.com (10.250.64.218) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.39; Fri, 1 Dec 2023 22:07:56 +0000
Received: from 88665a182662.ant.amazon.com (10.118.249.178) by
 EX19D004ANA001.ant.amazon.com (10.37.240.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1118.40;
 Fri, 1 Dec 2023 22:07:52 +0000
From: Kuniyuki Iwashima <kuniyu@amazon.com>
To: <alx@kernel.org>
CC: <atikhono@redhat.com>, <libc-alpha@sourceware.org>,
	<linux-man@vger.kernel.org>, <netdev@vger.kernel.org>, <kuniyu@amazon.com>
Subject: Re: UNIX(7)
Date: Fri, 1 Dec 2023 14:07:43 -0800
Message-ID: <20231201220743.32491-1-kuniyu@amazon.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <ZWnXlcsVJfPO1Qsb@debian>
References: <ZWnXlcsVJfPO1Qsb@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: EX19D037UWB004.ant.amazon.com (10.13.138.84) To
 EX19D004ANA001.ant.amazon.com (10.37.240.138)
Precedence: Bulk

From: Alejandro Colomar <alx@kernel.org>
Date: Fri, 1 Dec 2023 13:54:39 +0100
> Hello Alexey,
> 
> On Fri, Dec 01, 2023 at 01:16:27PM +0100, Alexey Tikhonov wrote:
> > Hello.
> > 
> > There is a discrepancy between the man page description of
> > 'SO_PEERCRED' and real behavior.
> > 
> > `man 7 unix` states:
> > ```
> >        SO_PEERCRED
> >               This read-only socket option returns the credentials of
> >               the peer process connected to this socket.  The returned
> >               credentials are those that were in effect at the time of
> >               the call to connect(2) or socketpair(2).
> > ```
> > 
> > This doesn't match real behavior in following situation (just an example):
> >  - process starts with uid=0, gid=0
> >  - process creates UNIX socket, binds it, listens on it
> >  - process changes to uid=uid1, git=gid1 (using `setresuid()`, `setresgid()`)
> >  - another process connects to the listening socket and requests
> > peer's credentials using `getsockopt(... SOL_SOCKET, SO_PEERCRED ...)`
> > 
> > According to the man page: SO_PEERCRED should report (uid1, gid1),
> > because peer process was running under (uid1, gid1) "at the time of
> > the call to connect(2)"
> > In reality SO_PEERCRED reports (0, 0)
> > Reproducing code is available in
> > https://bugzilla.redhat.com/show_bug.cgi?id=2247682
> > 
> > I'm not entirely sure if this is a real bug or rather a  poor
> > description in the man page, but I tend to think that it's the latter.

When calling getsockopt(), we cannot know dynamically who the peer's
owner is.  So, we just initialise the cred when we know the owner,
and it's the caller of listen(), connect(), and socketpair().

In your case, the listener's cred is initialised with the caller's
cred during the first liten().

  listener's peer_cred = get_cred(rcu_dereference_protected(current->cred, 1))

And connect() will initialise two creds as follows:

  connect()er's peer_cred = listener's peer_cred
  new socket's peer_cred = get_cred(rcu_dereference_protected(current->cred, 1))

If you call listen() again after setresuid() and before connect(),
you can update the listener's cred and get the new IDs at the final
getsockopt().

