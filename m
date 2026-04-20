Return-Path: <linux-man+bounces-5352-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kB4yCzmq5mkJzgEAu9opvQ
	(envelope-from <linux-man+bounces-5352-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2026 00:35:37 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9959B434B51
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2026 00:35:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A4436300DA76
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2026 22:35:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D7CA19DF62;
	Mon, 20 Apr 2026 22:35:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Dwo4awG4"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88D721C5F11
	for <linux-man@vger.kernel.org>; Mon, 20 Apr 2026 22:35:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776724531; cv=none; b=Ws01TpihD+M//L0CysgdhAyyuesyYRnJwPNLDywNHyIJUrGlmPMqU++KPgyhknFNnbckWNnyK5Yw7bj6/oZZpSdZnvBtzBN3K2bHGi6c0FSp28t4PtC1gHAQlE4tcpVGFai/RXp/HOlf/KnlgmZ4LRuZbuNHxS1d2RmEWujXCQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776724531; c=relaxed/simple;
	bh=efR+m3et8Cny5uaY+lhA4N9TRZq9UxmmsB8CQEAAiBk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=VrEBAIZrI9fgQLXhMAKzY9WmiZOoSjSOOi3//02JNjZ9F0CryXwABT9zKduzEdnzl7/upWzWe8VolQ+kH6Ls3jBfpNnF96iO2psjEtZQA9z6S1aSBaq4y4OxzSxr9KAmR739yCWxDKRc1yfWM8AJa5XMBjW4NHSgXR/hiGqXyd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Dwo4awG4; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-43d7213b6ebso2388677f8f.3
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2026 15:35:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776724529; x=1777329329; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gQUO8+pGLbywVgHd+r/ZUz/QXf0tXLW6DrkvDVntyRg=;
        b=Dwo4awG4yMSO+4aQibQFRliJWcw2ZTyNA1hPldEUj+KQ5KKfiH3HfVDwM+GN9OAwtk
         00CQuOF4r9cmKDnQTjQHGJdQp+XXya2+fvL66XwfZ9+A6oAZJ5ZpzKfxzyOcLMcMbMs2
         SW3hWVm0FFZ1YuotEiHrK1uulujXjDGvT3SFE1wUxuD/Nt7rg4OOZcGxvDjGQbub5Lm8
         cApnhQgrnJxC1NkHhUJh1JABz0sja7sOFCAsIodOmviRK/pC+4Ph4CwqRQ0dqN35zamM
         JvblMGRtzSSt0gAKAMdjYwVO3STc694uVT89HdRHBooiki/TTocH77NxY2Ot10dDrhAs
         KVig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776724529; x=1777329329;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gQUO8+pGLbywVgHd+r/ZUz/QXf0tXLW6DrkvDVntyRg=;
        b=QInQgyJ9VfUJxc2P6GLIN+a3cJVMYPFXmpfqHUQyJHEvF3gARVteigzQXjsPpskt5b
         7wKS9WzSqZNsOz7m1qC6Y3f2reNT+DTrs/3qUcV16RckO7syoBafGprLn2vMDcifGvsx
         zkYdyjOyd4bulOernBbbVaZS1wFIvg7h5YNslnSECLlckzTgeLW2n4+vxxI8CVwDIfqz
         Hq8W30NS5XhZT6dECpsij0Rvj2K1/inaCqTOKWCchbCABVr0wKhJt4eMsqq/jM8Nz4jA
         JKTFL036ydBgn41aYF3surN9xHd8KHhxaFntLh4VStl5pUaF+T4JATvop/CZlokn0j18
         rbpw==
X-Gm-Message-State: AOJu0YxrpALaH7leNk5Bt/W5f4TibG+GiSauMEl5F86+r3nA6oPQ/kSO
	ZYsAdDFq3yyzrd+/bvEmAElntgqs6ALkaBci0bkt2Wd0N/jqcHAezbNf
X-Gm-Gg: AeBDietUl/5Y7Ss+AhIBb9g4QwI5vxDqvlFEA0JsrmQGAlPMKsadITWn934ttadwp/e
	WtBxdEut/24XliIU9PAoYV+k83bpAKuG9QLig1r/JAS46w3kcCvpC6nNZXKzR9lsw/533FYVfvW
	c0W5i5HhbHFnDsvKpGa+pQ8wwgHaHbhWqrfpuq4PeH1FjxnYpr32jY/LH/7Ddfw4FTnIv730+Bv
	SwEw1UfPuMlvtKWtKl7L/AMAl77jxWey6VfdM0WZ+Oy75dJAdW1flhNzjiB9d2R77izCnG8ixzY
	zJRge6+ssm5KEsR1SB2gUy8nj9UabOBdDyxnKTwtWVyJG+wFZhUshMsRCDqGenybGbjgeFyuyBK
	Dpok2tZki4xSR8YYF/WQ1EUoRTxgxf2hZqA9Sf4Hgc9gj1FjWsGHhVPX+YJIw3/3HV3JWT/w6wm
	Ah2aR65z3KeUZFSBOg25H1a/ZrFMRaVu6pla8JSkGG17E/IB+D3yrRmcPTK74=
X-Received: by 2002:a5d:6a83:0:b0:43f:e46e:82f5 with SMTP id ffacd0b85a97d-43fe46e83cbmr16079073f8f.3.1776724528830;
        Mon, 20 Apr 2026 15:35:28 -0700 (PDT)
Received: from localhost (ip87-106-108-193.pbiaas.com. [87.106.108.193])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43fe4e3a341sm36051477f8f.24.2026.04.20.15.35.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Apr 2026 15:35:28 -0700 (PDT)
From: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>,
	=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc: linux-man@vger.kernel.org,
	=?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH v2 2/4] man/man[27]/{landlock_create_ruleset.2,landlock.7}: Document LANDLOCK_CREATE_RULESET_ERRATA
Date: Tue, 21 Apr 2026 00:35:15 +0200
Message-ID: <20260420223517.8020-3-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260420223517.8020-1-gnoack3000@gmail.com>
References: <20260420223517.8020-1-gnoack3000@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5352-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gnoack3000@gmail.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com]
X-Rspamd-Queue-Id: 9959B434B51
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Document the LANDLOCK_CREATE_RULESET_ERRATA flag, which returns a
bitmask of fixed issues for the current Landlock ABI version.

This mechanism was introduced in Linux 6.15, but backported to all
older kernel releases where these errata fixes were backported to.
On official Linux kernel releases, if landlock_create_ruleset() with
LANDLOCK_CREATE_RULESET_ERRATA returns an error, this is equivalent to
the case where none of the known errata have been fixed.

Signed-off-by: Günther Noack <gnoack3000@gmail.com>
---
 man/man2/landlock_create_ruleset.2 | 57 ++++++++++++++++++++++++++----
 1 file changed, 51 insertions(+), 6 deletions(-)

diff --git a/man/man2/landlock_create_ruleset.2 b/man/man2/landlock_create_ruleset.2
index d4eb5d827656..a24a4dd6cbb3 100644
--- a/man/man2/landlock_create_ruleset.2
+++ b/man/man2/landlock_create_ruleset.2
@@ -116,11 +116,7 @@ Otherwise,
 can be set to:
 .TP
 .B LANDLOCK_CREATE_RULESET_VERSION
-If
-.I attr
-is NULL and
-.I size
-is 0, then the returned value is the highest supported Landlock ABI version
+Return the highest supported Landlock ABI version
 (starting at 1).
 This version can be used for a best-effort security approach,
 which is encouraged when user space is not pinned to a specific kernel
@@ -129,11 +125,50 @@ version.
 Unless noted otherwise,
 all features documented in these manual pages are available with the
 version 1.
+.TP
+.B LANDLOCK_CREATE_RULESET_ERRATA
+Return a bitmask of fixed issues
+for the current Landlock ABI version.
+If bit N is set (i.e.,
+.IR "errata & (1 << (N - 1))" ),
+then erratum N has been fixed in the running kernel.
+.IP
+In addition to ABI versions,
+Landlock's errata mechanism
+tracks fixes for issues that
+may affect backwards compatibility
+or require userspace awareness.
+.IP
+Only check errata if your application specifically relies on behavior
+that changed due to the fix.
+.IP
+The full list of Landlock errata is available at
+.UR https:\://docs.kernel.org/userspace\-api/landlock.html#landlock\-errata
+.UE .
+.IP
+This flag is available on all Linux versions
+where Landlock errata were fixed.
+This specifically includes
+all newest bugfix releases
+of stable kernels
+where Landlock is supported.
+.P
+If
+.B LANDLOCK_CREATE_RULESET_VERSION
+or
+.B LANDLOCK_CREATE_RULESET_ERRATA
+is set,
+then
+.I attr
+must be NULL and
+.I size
+must be 0.
 .SH RETURN VALUE
 On success,
 .BR landlock_create_ruleset ()
 returns a new Landlock ruleset file descriptor,
-or a Landlock ABI version,
+a Landlock ABI version,
+or a Landlock errata bitmask,
 according to
 .IR flags .
 .P
@@ -159,6 +194,16 @@ Unknown
 or unknown access, or unknown scope, or too small
 .IR size .
 .TP
+.B EINVAL
+Non-NULL
+.IR attr
+or non-zero
+.IR size
+in combination with
+.B LANDLOCK_CREATE_RULESET_VERSION
+or
+.BR LANDLOCK_CREATE_RULESET_ERRATA .
+.TP
 .B ENOMSG
 Empty accesses (i.e.,
 .I attr
-- 
2.53.0


