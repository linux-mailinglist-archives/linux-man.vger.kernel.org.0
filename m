Return-Path: <linux-man+bounces-4197-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 80927C0DF67
	for <lists+linux-man@lfdr.de>; Mon, 27 Oct 2025 14:17:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 97F4C18905A4
	for <lists+linux-man@lfdr.de>; Mon, 27 Oct 2025 13:18:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 582D3218ACC;
	Mon, 27 Oct 2025 13:17:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bernat.ch header.i=@bernat.ch header.b="uDF7r8nG";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="oqUCs3H/"
X-Original-To: linux-man@vger.kernel.org
Received: from fout-a6-smtp.messagingengine.com (fout-a6-smtp.messagingengine.com [103.168.172.149])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F657261B62
	for <linux-man@vger.kernel.org>; Mon, 27 Oct 2025 13:17:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.149
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761571069; cv=none; b=OVuXuoVlr2hAFE1Cy34YUAAezn/owV5Rbok/ySUAbViy6+ogGHVN9YjEK6AUmXFkr3bgKkh8wn5Gt5yhhvbWHV7Xrj+tmm/pQGklB7//plEBKin1OoQwV7rXzl3GVv/DZQ9jFYSfDN19cbJCFeABcLp0Xh9p0edptAp/CH0DRp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761571069; c=relaxed/simple;
	bh=/9WI0Lk5/WjSs87WjvSfLbvFYu6lHKwXxGLlK8ZJHV8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=sRQCVL76uFlABW9BFMhCixFzQxKxtQnB5ZeU5oPUuxapKMQMovjk/to89sV2R7OKswmflJQp6/Uo/2U2xCxxlJg0NswXQPUdD7AbO0kNy1sSel/nHqN0Ef9xxRhRlpf9N0qMCdRBVAmReAryER3X+uagwcIStoomgoRBxDmu7xI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=bernat.ch; spf=pass smtp.mailfrom=luffy.cx; dkim=pass (2048-bit key) header.d=bernat.ch header.i=@bernat.ch header.b=uDF7r8nG; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=oqUCs3H/; arc=none smtp.client-ip=103.168.172.149
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=bernat.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=luffy.cx
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
	by mailfout.phl.internal (Postfix) with ESMTP id 588BCEC003D;
	Mon, 27 Oct 2025 09:17:45 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-06.internal (MEProxy); Mon, 27 Oct 2025 09:17:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bernat.ch; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to; s=fm2; t=1761571065; x=1761657465; bh=KFAlVm38tc2UZoF9WajZw
	ys3B0QTtq/kpr3q0TYlNQU=; b=uDF7r8nGnDder1Z6c/2S5Xqt/71IMNzSIaZRK
	OIvZznAHTjYge2b/ovfcdWlAtJ1z6M3D4p5JdN0SfePooqVqbBqalKIYGhO0ocp0
	hVhWFhsqNy1DVvcGDe479DdTZ5dVWj8C8mhSshm3IpFuoH4EpcxC6Sk6chHNOWbN
	PB3NxPUbjheQUTFWrzKSQE+rbSX9uUQDGynumk4oBZLVeu831XHjzWZPuf1DgWzO
	CivtyXdjv5vN3+8HMbU6/lCpz6smWpEgjKHvFtRUwXqKCbay0xu0AqLJ9Dqx5WCB
	1tH+Vi7iyKzuEoVtIi96PgKUVT6TP2yilEA0w0JLN9Mzt4riQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1761571065; x=1761657465; bh=KFAlVm38tc2UZoF9WajZwys3B0QTtq/kpr3
	q0TYlNQU=; b=oqUCs3H/65fSCtOPb24SzzcIoomYtRw87/yWe3ASPIDiAaRDc/x
	zWo+V2JCjv7bFnOCdBDHQMrR+7YEL6IhBMp+uFYqrsPGr2XS7W93p3CfPrRro4ni
	R2/AtKavOjEPn9OdpGat0qlLDteCH/jdTgSS7xNyachN7Wb+OkDcKIn0qSJvGuDl
	iRX2C0WNVGtBLrKkSASl/kwRM4+ROsauxostCAnaEiON8daRntEJd8UQq+D9qxZo
	pRCUDTRgFiuGUbciHDgmHb0oB4sDm8eO87LLAN2BbI7GjCTpc13X9KOmeBc5Vy3I
	aoCI+3nnKj8j7My8OhBkkhP/NyB4yWOm7yg==
X-ME-Sender: <xms:-HD_aLWBadLa_20cdThGAeGsdFN-CddMH4Ik9KFmgkTz6kRsZYyyug>
    <xme:-HD_aKmYf01lUDkRaHvoo_TcAqJm_NJpxeMHM0UsbNKTFPF0l5--MW-CTwNCfqn71
    ApuaA9H25B3qg-Z9ingOHXr8fdlwvz6j1VS5lQ-PZDfvpU7K5eoQqM>
X-ME-Received: <xmr:-HD_aMbjMVpJXubxJEIKDjmA43ECSRuM6YX0mRYxtpkQ6Mi-8QC6UHFIttHnGbY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdduheektdejucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertdertd
    dtnecuhfhrohhmpeggihhntggvnhhtuceuvghrnhgrthcuoehvihhntggvnhhtsegsvghr
    nhgrthdrtghhqeenucggtffrrghtthgvrhhnpefhffdtteeiffefvddvteevfeevvddtve
    fhudelueefhfeugefhtdeukeeufeeivdenucevlhhushhtvghrufhiiigvpedtnecurfgr
    rhgrmhepmhgrihhlfhhrohhmpegsvghrnhgrtheslhhufhhfhidrtgigpdhnsggprhgtph
    htthhopeegpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehvihhntggvnhhtsegs
    vghrnhgrthdrtghhpdhrtghpthhtohepkhhrrghighesghhoohhglhgvrdgtohhmpdhrtg
    hpthhtoheprghlgieskhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugidqmhgr
    nhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:-XD_aFPticGnkmSvbBoCaa6Ul4OYyG-V_sPh2crKXTNWlI9O8HsmbA>
    <xmx:-XD_aBbUt8JMab-bvQ9Nv1IwBvi-_JWqf0WXgIagftzMXtrE0Uum6Q>
    <xmx:-XD_aD1fr_fi6k6C3z8qc4MvnYW805BBmTVxEXVJMTySDMF-UQ_Syw>
    <xmx:-XD_aHduYz-hFR6-zff5NK108YA6PSyITexFLjau4z6zpM1JGWk8oA>
    <xmx:-XD_aKlMR2faB19H89UpT0uCNw_xZ5oHDBQ9TXhcGF4rOvWibJq-IGC2>
Feedback-ID: id69944f0:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 27 Oct 2025 09:17:44 -0400 (EDT)
Received: by wally.luffy.cx (Postfix, from userid 1000)
	id 8D4815F7F1; Mon, 27 Oct 2025 14:17:37 +0100 (CET)
From: Vincent Bernat <vincent@bernat.ch>
To: Alejandro Colomar <alx@kernel.org>,
	linux-man@vger.kernel.org
Cc: Vincent Bernat <vincent@bernat.ch>,
	Craig Gallek <kraig@google.com>
Subject: [PATCH] man/man7/socket.7: fix documentation for SO_ATTACH_REUSEPORT_EBPF
Date: Mon, 27 Oct 2025 14:17:00 +0100
Message-ID: <20251027131711.186482-1-vincent@bernat.ch>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

When using eBPF, the program should not return an index, but a
decision (SK_PASS/SK_DROP). The socket should be selected using the
sk_select_reuseport helper.

Cc: Craig Gallek <kraig@google.com>
Signed-off-by: Vincent Bernat <vincent@bernat.ch>
---
 man/man7/socket.7 | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/man/man7/socket.7 b/man/man7/socket.7
index b4d58a23d5da..d85fdd931e42 100644
--- a/man/man7/socket.7
+++ b/man/man7/socket.7
@@ -354,20 +354,25 @@ the sockets in the reuseport group (that is, all sockets which have
 .B SO_REUSEPORT
 set and are using the same local address to receive packets).
 .IP
-The BPF program must return an index between 0 and N\-1 representing
-the socket which should receive the packet
-(where N is the number of sockets in the group).
-If the BPF program returns an invalid index,
-socket selection will fall back to the plain
+The classic BPF program must return an index between 0 and
+N\-1 representing the socket which should receive the packet
+(where N is the number of sockets in the group). If the BPF
+program returns an invalid index, socket selection will fall
+back to the plain
 .B SO_REUSEPORT
 mechanism.
-.IP
 Sockets are numbered in the order in which they are added to the group
 (that is, the order of
 .BR bind (2)
 calls for UDP sockets or the order of
 .BR listen (2)
 calls for TCP sockets).
+.IP
+The extended BPF program must return a decision and the
+.B bpf_sk_select_reuseport
+helper should be used to select the socket which should receive
+the packet.
+.IP
 New sockets added to a reuseport group will inherit the BPF program.
 When a socket is removed from a reuseport group (via
 .BR close (2)),
-- 
2.51.0


