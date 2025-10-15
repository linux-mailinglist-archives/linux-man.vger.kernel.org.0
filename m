Return-Path: <linux-man+bounces-4165-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F2B8BE0E1D
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 23:57:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 99E0C1A20909
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 21:57:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED84B2F5A37;
	Wed, 15 Oct 2025 21:57:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=valdikss.org.ru header.i=@valdikss.org.ru header.b="Xi2rVWlv"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.valdk.tel (mail.valdk.tel [185.177.150.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00A9B3043C4
	for <linux-man@vger.kernel.org>; Wed, 15 Oct 2025 21:57:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.177.150.13
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760565441; cv=none; b=EFsGF0EApkatCUnIiLxdWKNk0k5aP8+0LyAdH4sG4mM94FlTUkAD94PScpE6X9THnHRo15uvGY/qrSwndQkd8h9BdTxeABBISUWlNqkgCZqcGUfwW2wv5F44KiWKrhrd/0hXvlrt6rNleo0l9EC2QIvSFaF9UkuBQ4T9ViXmo5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760565441; c=relaxed/simple;
	bh=+bHergQ4OapXvQx8eu+F8dOCJdvnTd8Ta2+0ZN+YCVI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YMPRtj85ROObKDmtRl7D60rGI1gd7vtdwvyIG3SaDzoDNlAmHgKzeFcFpjRqwbZ8vI8ix2p1TA+KsAKJssMFi2DveRoMHdz44aDulGmI7aaleeKX7yEuajGxySxeo8MUCfp5NHI5j+63VKxJcQTJbiyMjR5QskGInTygFKBr39s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=valdikss.org.ru; spf=pass smtp.mailfrom=valdikss.org.ru; dkim=pass (2048-bit key) header.d=valdikss.org.ru header.i=@valdikss.org.ru header.b=Xi2rVWlv; arc=none smtp.client-ip=185.177.150.13
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=valdikss.org.ru
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=valdikss.org.ru
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 3E0221D45240;
	Thu, 16 Oct 2025 00:48:35 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=valdikss.org.ru;
	s=msrv; t=1760564917; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=evxXtj9dwIkrdosQ9Av6tQEBbPcg+iC4Ss0VtvJH5Mc=;
	b=Xi2rVWlvRLN8itFLl88W9GYSpDTsZ/CPatEbr/OZI/ALRFQfAn68U2U081WT01MD9kixQn
	IhY2HQ8X1Gy6CiDCl5x+0S3v0LrajCz6wjHsiuhDSoqf2AEF27lSqkiSeGufJC/w+yY1ZR
	G66OWLHH7SI8vbaA9x7a92cgNpExjrzT5GPHsD3GVvNHzmSDNHf2c9IzCykwSqA92B5XMU
	HbqGqmAa5rKU0mCYRPEMynsW6QmFhQJ/QPXCfvGrCBtcfJw0ejmTn+439F9hGWVEcoXL5J
	W8P4QfaXEXA+dJQ4qY4TSutlG6JO8RW61KXRXWTCCVcsyqwMqVxl7pSiLvHBMw==
From: ValdikSS <iam@valdikss.org.ru>
To: linux-man@vger.kernel.org
Cc: ValdikSS <iam@valdikss.org.ru>,
	Eric Dumazet <edumazet@google.com>
Subject: [PATCH v2] man/man7/tcp.7: Add TCP_SAVE_SYN and TCP_SAVED_SYN
Date: Thu, 16 Oct 2025 00:48:25 +0300
Message-ID: <20251015214826.70750-1-iam@valdikss.org.ru>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <bryfjq5xnxrlxg3bo5ixfcwkqmxkgkx5ejm23jzxd3xshitgm6@7uvif553iqiv>
References: <bryfjq5xnxrlxg3bo5ixfcwkqmxkgkx5ejm23jzxd3xshitgm6@7uvif553iqiv>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

Document TCP_SAVE_SYN and TCP_SAVED_SYN options based on git commit
linux.git cd8ae85299d5 (2015-05-05; "tcp: provide SYN headers for
passive connections") which introduced it.

Link: <https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?id=cd8ae85299d54155702a56811b2e035e63064d3d>
Cc: Eric Dumazet <edumazet@google.com>
Signed-off-by: ValdikSS <iam@valdikss.org.ru>
---
Hi Alex, hope I didn't miss anything!
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


