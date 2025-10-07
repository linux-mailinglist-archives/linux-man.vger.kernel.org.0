Return-Path: <linux-man+bounces-4074-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D8AE1BC2B8B
	for <lists+linux-man@lfdr.de>; Tue, 07 Oct 2025 23:04:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A6F7A4E379F
	for <lists+linux-man@lfdr.de>; Tue,  7 Oct 2025 21:04:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E509122A7E4;
	Tue,  7 Oct 2025 21:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=valdikss.org.ru header.i=@valdikss.org.ru header.b="lOJbEw9q"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.valdk.tel (mail.valdk.tel [185.177.150.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8004F226CF7
	for <linux-man@vger.kernel.org>; Tue,  7 Oct 2025 21:04:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.177.150.13
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759871073; cv=none; b=a+ZJVByr2D3meQbjX6mu38um+GU++vVf3+HNA/6bR4ihgoAfw3kVlCZ5f3Km6/bIPs0XoNirFihUpI2TCS4HMC9RgPPWVzxVSQQINbwSQSBDlivmVPlEwiUSWS7y11PCGwEWV0C0CVoN/9CeOj5P398myakFgb9lOkkmBk5kQAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759871073; c=relaxed/simple;
	bh=RrEohX4nma2Gf1yvIU5E2IEymo9J6feHl911/7h/tq8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=TO5rpA1RWwxAdxRW7imm5PZsU2R8IDVvI+QNqd3Uw/LK5j9WbXvGcuX7U0mgfPXBrdRBsfgJBghmLPN1rJK5rNBJPx1Q+88X8FraVGxPE8aLkwzCIkU2rwgqYc5MWRCLTqMZ+84jM1T8vdp5zpebIzrtSis0fvSRyO3H9tcE9ZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=valdikss.org.ru; spf=pass smtp.mailfrom=valdikss.org.ru; dkim=pass (2048-bit key) header.d=valdikss.org.ru header.i=@valdikss.org.ru header.b=lOJbEw9q; arc=none smtp.client-ip=185.177.150.13
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=valdikss.org.ru
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=valdikss.org.ru
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id E3C471D035B2;
	Wed,  8 Oct 2025 00:04:17 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=valdikss.org.ru;
	s=msrv; t=1759871058; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding; bh=xV7gSoYNkoGshmA92CRz1REY+mEvJMnYYhtDrIND5do=;
	b=lOJbEw9qHkWEguhyibrikBltYjRwL6Zao+r0cIfyonjw1e5pncl8xu4lqKVJwjc2zJGcgn
	2spWydq2Jj7NqVeN9nfGWUSEyt66+ew/mK6/TXspj5XS8tgIasx03yNfW/EQo05VFFoswd
	HxtpuJiqqWDmGGG8be9AhumV7b7ejPvgy1d/2WIHSJFp08nCSrAdPsSHgSfiY7toZ4oYzV
	kXe7vi+nQcvp8XY8udXh5fm9tl40GCFARRxNlJYqlB6LRurtywpAq3ZLSRPPKBBbWlHdGH
	E86K9mkr8afIAUDyAe3wCGq7mSpepQ4HzD92Z7H1cFd85r5s/HSC4FRiAW8Otg==
From: ValdikSS <iam@valdikss.org.ru>
To: linux-man@vger.kernel.org
Cc: ValdikSS <iam@valdikss.org.ru>
Subject: [PATCH] man/man7/tcp.7: Add TCP_SAVE_SYN and TCP_SAVED_SYN
Date: Wed,  8 Oct 2025 00:03:52 +0300
Message-ID: <20251007210352.68976-1-iam@valdikss.org.ru>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

---
 man/man7/tcp.7 | 20 ++++++++++++++++----
 1 file changed, 16 insertions(+), 4 deletions(-)

diff --git a/man/man7/tcp.7 b/man/man7/tcp.7
index a5fa4baa6..cb640f340 100644
--- a/man/man7/tcp.7
+++ b/man/man7/tcp.7
@@ -72,10 +72,6 @@
 .\"	   commit 6e9250f59ef9efb932c84850cd221f22c2a03c4a
 .\"	   Author: Eric Dumazet <edumazet@google.com>
 .\"
-.\"	TCP_SAVE_SYN, TCP_SAVED_SYN (4.2)
-.\"	    commit cd8ae85299d54155702a56811b2e035e63064d3d
-.\"	    Author: Eric Dumazet <edumazet@google.com>
-.\"
 .TH tcp 7 (date) "Linux man-pages (unreleased)"
 .SH NAME
 tcp \- TCP protocol
@@ -1202,6 +1198,22 @@ aborting the attempt to connect.
 It cannot exceed 255.
 This option should not be used in code intended to be portable.
 .TP
+.BR TCP_SAVE_SYN " (since Linux 4.3)"
+Saves incoming SYN packet contents of the listening socket until
+it is read with
+.B TCP_SAVED_SYN
+once. Could be set before or after the
+.BR listen (2)
+call.
+.TP
+.BR TCP_SAVED_SYN " (since Linux 4.3)"
+Reads SYN packet contents saved by
+.BR TCP_SAVE_SYN .
+The saved SYN headers are freed after the first call.
+The data returned in
+.BR TCP_SAVED_SYN
+are network (IPv4/IPv6) and TCP headers.
+.TP
 .BR TCP_USER_TIMEOUT " (since Linux 2.6.37)"
 .\"	    commit dca43c75e7e545694a9dd6288553f55c53e2a3a3
 .\"	    Author: Jerry Chu <hkchu@google.com>
-- 
2.51.0


