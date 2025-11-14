Return-Path: <linux-man+bounces-4295-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6D0C5DBF1
	for <lists+linux-man@lfdr.de>; Fri, 14 Nov 2025 16:07:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E30523BC804
	for <lists+linux-man@lfdr.de>; Fri, 14 Nov 2025 15:06:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D95632ED45;
	Fri, 14 Nov 2025 14:57:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dzwdz.net header.i=@dzwdz.net header.b="rY2XBcTo"
X-Original-To: linux-man@vger.kernel.org
Received: from out-188.mta1.migadu.com (out-188.mta1.migadu.com [95.215.58.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFF932ED25
	for <linux-man@vger.kernel.org>; Fri, 14 Nov 2025 14:57:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.188
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763132233; cv=none; b=SpP1oAvKZl60vBCaq4BmASueraLlRbP2i7K7uylrPF8Yh3NXsyRFf4devDg3f6A2UQDDGieelQQrsT0WY8gN0tfTxSxsb+l14JNLPWW5R3V/VlGU0U3DWimdW30cMsF526D0K7bMiXPTux0LJHe6XBJf5+MRKFhQs6aLAn5BgL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763132233; c=relaxed/simple;
	bh=xauUswBoLMFSzRmMwdlcsAl0rkGHpTKz2CtgNOaktKU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=RCVjEELIu0+xLofVJSyvkOVMoJypg9g7n1mSKqL3fYVK5Jks91a2WK+wlav3W8cpQIhTpgYtOrbYk6VBBcrqgHI4ULhQM6QH3UYwqwBFjIGWy7FFLQW0Qj25f+SPq12Lcr2Dp5G7BljgZKj1SbJZ6m66PttB2IRySWRPCkop47Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=dzwdz.net; spf=pass smtp.mailfrom=dzwdz.net; dkim=pass (2048-bit key) header.d=dzwdz.net header.i=@dzwdz.net header.b=rY2XBcTo; arc=none smtp.client-ip=95.215.58.188
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=dzwdz.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dzwdz.net
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dzwdz.net; s=key1;
	t=1763132226;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=U/IYMpUaNXsqfh7isVdh2eJJOJMSfyZEONyFvaN55Dw=;
	b=rY2XBcToi5CkAziRygtloEF++TRj6PhTpVWepL42DXntZNIxDjpsvaf++Gpqyogeogam9l
	lHhRfRUtXForbrMQfPwlai9KlYGwiL6SEZKEQF0Td1CMhMYLQ22Yv94F8p2yR1QH7cD4AW
	KdPDWGFpe8Qb3HOhha/Eggqc9v+MnPT+vbWPIAzidFQNG8MP1dKcoT1iMEM3cbNw7zBEdw
	ddwGO63i7KCGybnTpSRIsY+OJSElEe93AEcAV7MT4MwZXWMU/9QLiZmf/kjcVJ/ptmiWD5
	JKR5Hgh/92/fvQiPyHnw4hxopXEsVtC/J9TcQoIbPGCwnCMRhJd7yQX/ivWjNw==
From: =?UTF-8?q?Jakub=20G=C5=82ogowski?= <not@dzwdz.net>
To: Alejandro Colomar <alx@kernel.org>
Cc: =?UTF-8?q?Jakub=20G=C5=82ogowski?= <not@dzwdz.net>,
	linux-man@vger.kernel.org,
	LKML <linux-kernel@vger.kernel.org>,
	Linux API <linux-api@vger.kernel.org>,
	ej@inai.de
Subject: [PATCH 1/2] man/man7/ip.7: Clarify PKTINFO's semantics depending on packet direction
Date: Fri, 14 Nov 2025 15:29:30 +0100
Message-ID: <fb3980b64d1c827ad59726bb30761d735396e109.1763130571.git.not@dzwdz.net>
In-Reply-To: <cover.1763130571.git.not@dzwdz.net>
References: <cover.1763130571.git.not@dzwdz.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

For recvmsg(2), ipi_spec_dst is set by ipv4_pktinfo_prepare() to the
result of fib_compute_sec_dst().  The latter was introduced in
	linux.git 35ebf65e851c6d97 ("ipv4: Create and use fib_compute_spec_dst() helper.").

Quoting its commit message:

> The specific destination is the host we direct unicast replies to.
> Usually this is the original packet source address, but if we are
> responding to a multicast or broadcast packet we have to use something
> different.
>
> Specifically we must use the source address we would use if we were to
> send a packet to the unicast source of the original packet.

Experimentation seems to confirm that behavior.

As for the note about ipi_spec_dst being on a different interface:
- For unicast packets (for which ipi_spec_dst is the original
  destination address), I believe this is trivially true because Linux
  uses the weak host model (unless there's some interaction with
  RTCF_LOCAL that I'm missing).
- For multicast/broadcast packets, fib_compute_sec_dst() only passes the
  original interface to the lookup in the context of L3M.  In
  particular, the original implementation (cited above) set iif and oof
  to 0. Also, citing
	linux.git e7372197e15856ec ("net/ipv4: Set oif in fib_compute_spec_dst"),
  > If the device is not enslaved, oif is still 0 so no affect.

It doesn't seem like using an address specifically from the interface
the packet was received on was ever the intention.  I've also confirmed
this behavior (sending a multicast packet from another machine, whose IP
I've routed to a dummy interface).

I'm focusing on this because that's a misconception I've had before
digging into the code - the sendmsg behavior explained in the same
paragraph made me think ipi_spec_dst was the (primary?) address of
ipi_ifindex.  I think this is worth clarifying.

I've made it explicit that ipi_addr isn't used by sendmsg because that's
another possible misconception.

The (first) extra comma in sendmsg's ipi_spec_dst's description is meant
to emphasize that it's used as the local source address _and_ for the
routing table lookup, as opposed to just affecting the routing table
lookup.
Stylistically it might be a bit weird but idk how to convey this better.

Apart from the cited commits I was referencing the linux-6.17.7 tarball.

__fib_validate_source (and the comment near it) might also be of
interest to people trying to figure out what "specific destinations"
are, exactly.

Signed-off-by: Jakub Głogowski <not@dzwdz.net>
---
 man/man7/ip.7 | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/man/man7/ip.7 b/man/man7/ip.7
index a92939cd0..a7f118b42 100644
--- a/man/man7/ip.7
+++ b/man/man7/ip.7
@@ -809,12 +809,20 @@ .SS Socket options
 .EE
 .in
 .IP
+When returned by
+.BR recvmsg (2) ,
 .I ipi_ifindex
 is the unique index of the interface the packet was received on.
 .I ipi_spec_dst
-is the local address of the packet and
+is the preferred source address for replies to the given packet, and
 .I ipi_addr
 is the destination address in the packet header.
+These addresses are usually the same,
+but can differ for broadcast or multicast packets.
+Note that, depending on the configured routes,
+.I ipi_spec_dst
+might belong to a different interface from the one that received the packet.
+.IP
 If
 .B IP_PKTINFO
 is passed to
@@ -822,14 +830,16 @@ .SS Socket options
 and
 .\" This field is grossly misnamed
 .I ipi_spec_dst
-is not zero, then it is used as the local source address for the routing
-table lookup and for setting up IP source route options.
+is not zero, then it is used as the local source address, for the routing
+table lookup, and for setting up IP source route options.
 When
 .I ipi_ifindex
 is not zero, the primary local address of the interface specified by the
 index overwrites
 .I ipi_spec_dst
 for the routing table lookup.
+.I ipi_addr
+is ignored.
 .IP
 Not supported for
 .B SOCK_STREAM
-- 
2.47.3


