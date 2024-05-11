Return-Path: <linux-man+bounces-902-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A80D18C3479
	for <lists+linux-man@lfdr.de>; Sun, 12 May 2024 00:19:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B229EB20E92
	for <lists+linux-man@lfdr.de>; Sat, 11 May 2024 22:19:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E77A249FE;
	Sat, 11 May 2024 22:19:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b="FCNXucDZ"
X-Original-To: linux-man@vger.kernel.org
Received: from sender4-pp-o94.zoho.com (sender4-pp-o94.zoho.com [136.143.188.94])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A23C1CD0C
	for <linux-man@vger.kernel.org>; Sat, 11 May 2024 22:18:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.94
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715465940; cv=pass; b=MzFALSvFcNE6gF/Mx+MMaeDdsaBxbo0BU3cSG4bu+BVAYBlIRUeZToZ902+F0rybbdSTwPJU6IOmQxezr3A9gk193gN1nj/sj38+7wpu6fPXR37pGRuN+ULn/d97FfltJtlgpbGeUSCyPUIO1Uo7Gn1By9xD/gKSOicQNxhrECk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715465940; c=relaxed/simple;
	bh=GynrEjMJzT7uIcAtBqjKDjV9NeaU3c696Ouy5z7fJhk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=m6n4pWY4qZ20PA+kmBTLe+iD3qfTiKrlWd6XEXCAn1qEFW0QMZZ1AL3ZpOmLMSO25y9mlPFrmbkQWynHs9NOtc9t5Ob27DCA7xxOPnNbdgkH9aadBUy0e9U1rKP4y0li60hm2iChpBlTAJsij41OeCKlvtBudkgfFyUbPMFqR3M=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com; spf=pass smtp.mailfrom=zohomail.com; dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b=FCNXucDZ; arc=pass smtp.client-ip=136.143.188.94
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=zohomail.com
ARC-Seal: i=1; a=rsa-sha256; t=1715465935; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=YTnqLRfxu1sQZs/ZGcgINRvRJPYQTRAzW0iOaC6Py86gVtDxTHIbOs9nNTYhC6qbN6COPPkE+99+aLJUbvk3dcwS9I/pQAXhUJUmiN6ek7yEwxVJdd6CgjrYJrV7A2Cf2/tf4YcEBZqiLLEWgfyLWMmxCBLmk3uXLOsuMbvuziQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1715465935; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=hharXHVF1V+M9ei167oDKOldu0C8tc8paqCpILXBdZk=; 
	b=jHtozzxm2KGIMnEIR4WS3tPKu/Psn3q/d181edj1O+WMJ0vj5WoMRt5SmpQDogtSequZB1XvzknCKA4H+k0VJqXhlCP24++iiFzTwQtjnkr92u+Yqu57G115hA8DKk9/SSVmXRPYKd+eKcP8SpyGnh6iS/mPyTCQDe9awjTPqpM=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=zohomail.com;
	spf=pass  smtp.mailfrom=safinaskar@zohomail.com;
	dmarc=pass header.from=<safinaskar@zohomail.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1715465935;
	s=zm2022; d=zohomail.com; i=safinaskar@zohomail.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:MIME-Version:Content-Transfer-Encoding:Feedback-ID:Message-Id:Reply-To;
	bh=hharXHVF1V+M9ei167oDKOldu0C8tc8paqCpILXBdZk=;
	b=FCNXucDZOjMUD1RsfKwDofq75nOG3Ck1Zw/hE3RmHEq4pkjaBJ4nvmBDyCZh3xe1
	oHAn6mRo3wrpXBrajLWNkChXXufZb4amOgkiSSKraSs+79GSZqawooUmIg3qtPTAydb
	u0Jigc03XubIdeAiYH0sdqeZN8mcpJ0Ok77NjJ0w=
Received: by mx.zohomail.com with SMTPS id 1715465933297687.4647685066224;
	Sat, 11 May 2024 15:18:53 -0700 (PDT)
From: Askar Safin <safinaskar@zohomail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH] ip(7), ipv6(7): small fixes: network byte order, etc
Date: Sun, 12 May 2024 01:16:57 +0300
Message-ID: <20240511221801.27666-1-safinaskar@zohomail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Feedback-ID: rr080112277a58825a0e7b26bb50b066250000a1b3b6e6ae945facd3f14e7fe46074d0146a58cb2a19a1022a:zu0801122735d9e07559992e935b1d8a0a00007f2d049ca61d6d632d6e0bb72e48c34fc5739a8df5183447a9:rf0801122c897e1337b68cbe6ccfa45bab0000f8ede276498dc2826d032cde72ad31868d3f6353080c4899d22b6f78b3cd:ZohoMail
X-ZohoMailClient: External

Signed-off-by: Askar Safin <safinaskar@zohomail.com>
---
 man/man7/ip.7   |  2 +-
 man/man7/ipv6.7 | 10 +++++-----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/man/man7/ip.7 b/man/man7/ip.7
index 4fc9bde..8678979 100644
--- a/man/man7/ip.7
+++ b/man/man7/ip.7
@@ -198,7 +198,7 @@ The
 member of
 .I struct in_addr
 contains the host interface address in network byte order.
-.I in_addr
+.I s_addr
 should be assigned one of the
 .B INADDR_*
 values
diff --git a/man/man7/ipv6.7 b/man/man7/ipv6.7
index d9241cc..e38658f 100644
--- a/man/man7/ipv6.7
+++ b/man/man7/ipv6.7
@@ -105,7 +105,7 @@ Only differences are described in this man page.
 .P
 To bind an
 .B AF_INET6
-socket to any process, the local address should be copied from the
+socket to any interface, the address should be copied from the
 .I in6addr_any
 variable which has
 .I in6_addr
@@ -138,14 +138,14 @@ its source address will be mapped to v6.
 .EX
 struct sockaddr_in6 {
     sa_family_t     sin6_family;   /* AF_INET6 */
-    in_port_t       sin6_port;     /* port number */
+    in_port_t       sin6_port;     /* port number in network byte order */
     uint32_t        sin6_flowinfo; /* IPv6 flow information */
     struct in6_addr sin6_addr;     /* IPv6 address */
     uint32_t        sin6_scope_id; /* Scope ID (new in Linux 2.4) */
 };
 \&
 struct in6_addr {
-    unsigned char   s6_addr[16];   /* IPv6 address */
+    unsigned char   s6_addr[16];   /* IPv6 address in network byte order */
 };
 .EE
 .in
@@ -154,14 +154,14 @@ struct in6_addr {
 is always set to
 .BR AF_INET6 ;
 .I sin6_port
-is the protocol port (see
+is the protocol port in network byte order (see
 .I sin_port
 in
 .BR ip (7));
 .I sin6_flowinfo
 is the IPv6 flow identifier;
 .I sin6_addr
-is the 128-bit IPv6 address.
+is the 128-bit IPv6 address in network byte order.
 .I sin6_scope_id
 is an ID depending on the scope of the address.
 It is new in Linux 2.4.
-- 
2.43.0


