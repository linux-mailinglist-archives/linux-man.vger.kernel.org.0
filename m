Return-Path: <linux-man+bounces-5327-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6KSxIIBF3WkrbwkAu9opvQ
	(envelope-from <linux-man+bounces-5327-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 13 Apr 2026 21:35:28 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2EF3F2C9E
	for <lists+linux-man@lfdr.de>; Mon, 13 Apr 2026 21:35:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id ABABF30263DA
	for <lists+linux-man@lfdr.de>; Mon, 13 Apr 2026 19:35:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBF5338E135;
	Mon, 13 Apr 2026 19:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LotDBWQi"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80C7738E133
	for <linux-man@vger.kernel.org>; Mon, 13 Apr 2026 19:35:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776108923; cv=none; b=t3ZI4aPwa3NTPmBjELssEQTjpbzEtN//S8dFDctjPJBqzM3RHD7Tzos77+YImBd6VOPcUV5cnJJj5pPhBCL5YAWszL8/fY6qcLsPfBkkm2Z2bipFz/pfsi1SrDYAVO4GP+Z2H2VqEX4rIDq+sRm+Km0hicCxps+VVcqC0eAHnY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776108923; c=relaxed/simple;
	bh=Vc+2KPcNkjHW5chPVvzJPPut8FMf/4rSMRXZfUtrohI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=HFQJ8ktA+HulsT1T3d/Y2HbQlFo15c/hnFbvsw8OGpUQ3bSGxijDCLk39wmpmo0UU9bqp2fi6LnSevRUreR4U/GhDv+uJV9im7tX9k63ZIwP2iqabpL1LlXZTwEanakvVGjpDRipqNh2opg7KH/KKZ1HaDB/hYCTorSjPt3s0Yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LotDBWQi; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-488e1a8ac40so32344105e9.2
        for <linux-man@vger.kernel.org>; Mon, 13 Apr 2026 12:35:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776108920; x=1776713720; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qVtxO4F/prqNXHI5Qo6z4+x3f0q5xVGohzj0EAHTPhI=;
        b=LotDBWQiF2NDmjtMUNkxi3Z/QyGqo1T2+jGz9P9VYjj7eICjCy8kn8zFagy5BsucHq
         2WXj0cqje5YCzegTgn9hkRaFUGDEJ4J7nEUOEfxOoKfjcysH60Fw0Wqkc3nfTFs49cNS
         AoiqTwFV8aHkiWsJo684OvGPF/i+tj62Zlzrd8Sy5ek4r89mIkk682INE5vxMG4skzQX
         3tXA9arwUZ1FYfnxJzPykviMzgMaX54gTLRjytfWP2qk0V4D4QrqeXFAXvdKy5BrsSqG
         c1daB560GMaeSTRNtX33H+AVqKLGb2iQVmDd40OaYg0fFgZAwcNKUOOOL2JZhR1Z0EW+
         SEkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776108920; x=1776713720;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qVtxO4F/prqNXHI5Qo6z4+x3f0q5xVGohzj0EAHTPhI=;
        b=Twm0X/ST4LWkf+4JQHPjKjvoHX2tuS6qT7avab9m1cf/z2zjLues3XADVcrCIGW0zp
         omOZRtvDE4P/gyFuyvxGTmiyo1IayinfAkB+K//DO2dFX8gUZmplfhYa/NNX98XKPnt3
         yNJ8Z6/ze82Z5hFe/SgZ5jIMx4keVJ4B9nvAdlvIyfHNTX4QIWBVPt6za2tdyMBAIbrq
         cRkCuECl938noF6hunZQdkuRbWSdBZaIIhR3qZEpVaAlPOC8GBzTgsfO2IW68X6Y/8kH
         7WQGxRWtKVRM/R/3Uo7G65OrsQPq89rs4m2uSRwojE4NHJm0YfLvlIPTIQ94dTy/M3pz
         celA==
X-Gm-Message-State: AOJu0YxPgKLtlp8DH1cO5HWrDCm2entJKJpjOG8TYb2+Pbhv94v3g53R
	qJHQYZPui3wpq+Gl4nA8SFBY9vCqjslQq3nnVASPwp/caojN5hDfYhzRSjQe1TOD
X-Gm-Gg: AeBDiesMZb310p98wa5Z2pEIXQS2EqFVLnrpk7pxBnh+GHMTIUoHUAtMq182jbjlUAG
	i78XEBxYpItyYUUjY6BHW0jWcl4DXF+lP2c+WbzU0Q+4ZPgIDR29ekD0y80Or1WM6cuKUddLRPW
	EXeaRBMY1RA8gA7qx29Q5gfiMbERYifg6A6uVZ6xfJGqVMbpICQNZQmc8YPwQF6qOuI4u3emdnl
	Pd5JbHwR2ff4IWVtgGizENh7ZWXn9Uq3onsfp2khLNJy5iuSL7vggIU6VA3Ag67wnLV25YprLuI
	HdqvgsnW3aMIeQ+oyLY2cO5AKCgiOlC9rh/JBmpqURmvGSaXl0yn1Y/h+eVh39StwYuSI6gpoPg
	BoJmJvbddD9twHUe8od7AuMMox5nrHzZukyHOVWOYSuQ/poTnua1sMneN8Dy5k3x6kY3UOAhYpj
	CZ0WXazUitpmb9XdKpye1UlCht9Roz/xk/OhoRxWtQMrQy0jIg
X-Received: by 2002:a5d:5f48:0:b0:43d:2be:e4e with SMTP id ffacd0b85a97d-43d642dd674mr22330970f8f.46.1776108919611;
        Mon, 13 Apr 2026 12:35:19 -0700 (PDT)
Received: from localhost (ip87-106-108-193.pbiaas.com. [87.106.108.193])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43d6f4bf2b4sm19473380f8f.20.2026.04.13.12.35.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Apr 2026 12:35:19 -0700 (PDT)
From: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>,
	=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc: linux-man@vger.kernel.org,
	=?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH 1/4] man/man2/landlock_create_ruleset.2: Clarify default Landlock ABI
Date: Mon, 13 Apr 2026 21:34:44 +0200
Message-ID: <20260413193446.24328-2-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5327-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gnoack3000@gmail.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: EC2EF3F2C9E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The documented Landlock features are not all available since ABI v1.
We are mentioning it explicitly when features require specific
Landlock ABI versions.

Signed-off-by: Günther Noack <gnoack3000@gmail.com>
---
 man/man2/landlock_create_ruleset.2 | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/man/man2/landlock_create_ruleset.2 b/man/man2/landlock_create_ruleset.2
index 5425ed59878b..7bca831cbd65 100644
--- a/man/man2/landlock_create_ruleset.2
+++ b/man/man2/landlock_create_ruleset.2
@@ -125,8 +125,10 @@ is 0, then the returned value is the highest supported Landlock ABI version
 This version can be used for a best-effort security approach,
 which is encouraged when user space is not pinned to a specific kernel
 version.
-All features documented in these man pages are available with the version
-1.
+.IP
+Unless noted otherwise,
+all features documented in these man pages are available with the
+version 1.
 .SH RETURN VALUE
 On success,
 .BR landlock_create_ruleset ()
-- 
2.53.0


