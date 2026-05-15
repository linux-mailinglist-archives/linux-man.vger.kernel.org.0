Return-Path: <linux-man+bounces-5516-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CCknDIldB2pa0QIAu9opvQ
	(envelope-from <linux-man+bounces-5516-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 15 May 2026 19:53:13 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0CC555A8C
	for <lists+linux-man@lfdr.de>; Fri, 15 May 2026 19:53:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CE72B312AC95
	for <lists+linux-man@lfdr.de>; Fri, 15 May 2026 16:58:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF7A54CA260;
	Fri, 15 May 2026 16:58:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ICYfeg7E"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5CF2949E0
	for <linux-man@vger.kernel.org>; Fri, 15 May 2026 16:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778864315; cv=none; b=G+NlWcEc2CRaW8f1c/lys0HR8NYLinGtSOwqUnBfBux1l+Q2btaDLvDQX+rVzMrDjpaqxEPvzh2n3HxPIDqRAeH/Gb8hFCyK8DKS7iCu9jDPpJ0x4/t9C0k31P9M3kssi7Ayty6DlsjfEujTgm4ET6PD7onSTDWto35gg9R3leo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778864315; c=relaxed/simple;
	bh=aOW29KsEsPKr5IyovFJ+H32kegbnSXRp4LBFmZFBMyw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=FPNDbtPbKVPq0ULl4P2ILBioUfaKiIBFqyRR5GVBIA2Yef5Ah/8gKzK0Zx321iBswS5RCmIx0LuiXJ2cxWbmKz89rrlx2Zqd9J1FSwZQgsTxDVYPTdzGOZizDtmmOb2HuMA3GBiXULNExDDkllvtyrD/5XJpe3RsOE/yDjLfO/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ICYfeg7E; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-48909558b3aso471635e9.0
        for <linux-man@vger.kernel.org>; Fri, 15 May 2026 09:58:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778864312; x=1779469112; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=16EsOp3eaSFn3pBUz7En7t6xoZMCNtymbdImWO/l98w=;
        b=ICYfeg7EJtdsTBHWaPi3slkq8jkqJKN9T+tmylFQMMHJjhfciDtc439u3GMiv5awpa
         yV8Yxh183UcvFqxaTCpRQF4fCHqkGnZNvXfpsDEiR2pNPPxC6houXBzcvlzCxb7JZbmi
         VHZQHojXIGjUI0rMVkVUNtN69ARPGW5gM+El8qD/5zzCewOVsWj77rIcQ64eQcrSNXGu
         AO8kh/G5J068C+lNICikvNN+yR6jCxO5LssgER30ciU5h/XSSSEfRmQzh4Oy68jegRbr
         WlaaD132rTRSHsitAoTtMiGXK7vy5EGtWrxd6XjkQuo3BCGNfi7B3xbpqqh6F3Dz6G5Q
         vd9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778864312; x=1779469112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=16EsOp3eaSFn3pBUz7En7t6xoZMCNtymbdImWO/l98w=;
        b=nmr/9LCmYZx+WT7SwUk2wi784EXVKMQX2rzbD+VIaQUId05FO+AZsoSI5/dUcq40GM
         xQir6SSR5OgZ7ZstRP9Sl64ytVpGCBDd1mNK8cA7mCjGuI4rO5rQupLVL0XWYYSt7kxs
         VkO3H3cpimkg2vIlDDdyAz0bld/+Nuy3WjNClZcKYexE+zpsowxRiGPgXnHruIgNYKBm
         9T0P07JTSNtQ4hUzyUJIwmVTD6PdFV0f4xgptaylX13XoTayBH+V/EvaebqQSGjsYg0f
         7+UAL7RQCu6/Tft2qQhAfH9kojn0AL0E9HcuOC4szA2ooZKkl45zjruBTpJSdqlxabD2
         hgkg==
X-Gm-Message-State: AOJu0YztsnrP7ASSZx6luy0b4BKEJwAaYSDquOQkm5F2uyVD5vxNsNbD
	bnmS9rD8xWP+lYl4izWtoEvCCYBAf5vGzk3sLpPNjU3XM0f5kRDNKIWd
X-Gm-Gg: Acq92OFcn9+AcTylnmQY5dSrG3DJRm5AA+q74/lzPRyqPsc63jO1B7iujOM10gUnoaK
	k/KE9ni6Nwb/n+94h8Ml/jlpvZnxSEPY5iDNa+u8GEkSqFJAh5AdvnuS2C64+0D5R6WUGAU5Th3
	ysbg7FtBbpBousO1OHYJKpH349VM6WZKpO+ib2fBMUKZvI7/Jw9tEWQ1T9mGO5iFi9fuK/Z+7lx
	Vu7glVg7E4mRuSr7Ux1+R/MytdmLPWs/s4/Oxi1ph5DypwiQe8id6oN4BEHZ8oD5s/LV+zjcSJo
	l8syWgdsjm1aGUu3Ve6FzGKJEtuF3ZRt72t94v7LgQbQF2CMTN9j/2RdZlq9zjQlV5EVv0kS3mn
	jYmufTgRd1Rh/flUvbUE2EE5e1xAP4MffYOlCg+hHiB7kwuCfCux2T3+gYgaZu9TaqnuBv4DuRu
	Cj8ggbWGBbO/W4xwWZm/axQoeLnPYsQiMkCmT6kPHCjPP0r1hN
X-Received: by 2002:a05:600d:10:b0:48f:e230:2a21 with SMTP id 5b1f17b1804b1-48fe662fd6bmr59144645e9.32.1778864312381;
        Fri, 15 May 2026 09:58:32 -0700 (PDT)
Received: from localhost (ip87-106-108-193.pbiaas.com. [87.106.108.193])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48fe5ab527asm83916495e9.11.2026.05.15.09.58.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 May 2026 09:58:32 -0700 (PDT)
From: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>,
	=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc: linux-man@vger.kernel.org,
	=?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH v2 2/3] man/man7/landlock.7: Simplify references to ABI versions
Date: Fri, 15 May 2026 18:57:52 +0200
Message-ID: <20260515165753.8830-3-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260515165753.8830-1-gnoack3000@gmail.com>
References: <20260515165753.8830-1-gnoack3000@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 8E0CC555A8C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5516-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

* Use cardinal numbers for referring to Landlock ABI versions,
  where possible.

* Adopt the format already used in landlock_restrict_self(2),
  where the ABI versions are described next to the flag names
  in their tagged paragraphs.  For example:

    .TP
    .BR FLAG "  (since Landlock ABI version X)"

Signed-off-by: Günther Noack <gnoack3000@gmail.com>
---
 man/man7/landlock.7 | 26 ++++++++------------------
 1 file changed, 8 insertions(+), 18 deletions(-)

diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
index 0e3a11489af2..60915bdd9728 100644
--- a/man/man7/landlock.7
+++ b/man/man7/landlock.7
@@ -89,7 +89,7 @@ these system calls truncate existing files when overwriting them
 .B LANDLOCK_ACCESS_FS_READ_FILE
 Open a file with read access.
 .TP
-.B LANDLOCK_ACCESS_FS_TRUNCATE
+.BR LANDLOCK_ACCESS_FS_TRUNCATE "  (since Landlock ABI version 3)"
 Truncate a file with
 .BR truncate (2),
 .BR ftruncate (2),
@@ -98,10 +98,8 @@ or
 .BR open (2)
 with
 .BR O_TRUNC .
-.IP
-This access right is available since the third version of the Landlock ABI.
 .TP
-.B LANDLOCK_ACCESS_FS_IOCTL_DEV
+.BR LANDLOCK_ACCESS_FS_IOCTL_DEV "  (since Landlock ABI version 5)"
 Invoke
 .BR ioctl (2)
 commands on an opened character or block device.
@@ -137,8 +135,6 @@ whose implementations are safe and return the right error codes
 .BR FICLONERANGE ,
 .BR FIDEDUPERANGE )
 .RE
-.IP
-This access right is available since the fifth version of the Landlock ABI.
 .P
 Whether an opened file can be truncated with
 .BR ftruncate (2)
@@ -191,19 +187,17 @@ Create (or rename or link) a block device.
 .B LANDLOCK_ACCESS_FS_MAKE_SYM
 Create (or rename or link) a symbolic link.
 .TP
-.B LANDLOCK_ACCESS_FS_REFER
+.BR LANDLOCK_ACCESS_FS_REFER "  (since Landlock ABI version 2)"
 Link or rename a file from or to a different directory
 (i.e., reparent a file hierarchy).
 .IP
-This access right is available since the second version of the Landlock ABI.
-.IP
 This is the only access right which is denied by default by any ruleset,
 even if the right is not specified as handled at ruleset creation time.
 The only way to make a ruleset grant this right
 is to explicitly allow it for a specific directory
 by adding a matching rule to the ruleset.
 .IP
-In particular, when using the first Landlock ABI version,
+In particular, when using Landlock ABI version 1,
 Landlock will always deny attempts to reparent files
 between different directories.
 .IP
@@ -245,14 +239,12 @@ error code takes precedence over
 These flags enable to restrict a sandboxed process
 to a set of network actions.
 .P
-This is supported since Landlock ABI version 4.
-.P
 The following access rights apply to TCP port numbers:
 .TP
-.B LANDLOCK_ACCESS_NET_BIND_TCP
+.BR LANDLOCK_ACCESS_NET_BIND_TCP "  (since Landlock ABI version 4)"
 Bind a TCP socket to a local port.
 .TP
-.B LANDLOCK_ACCESS_NET_CONNECT_TCP
+.BR LANDLOCK_ACCESS_NET_CONNECT_TCP "  (since Landlock ABI version 4)"
 Connect an active TCP socket to a remote port.
 .\"
 .SS Scope flags
@@ -260,16 +252,14 @@ These flags enable isolating a sandboxed process from a set of IPC actions.
 Setting a flag for a ruleset will isolate the Landlock domain
 to forbid connections to resources outside the domain.
 .P
-This is supported since Landlock ABI version 6.
-.P
 The following scopes exist:
 .TP
-.B LANDLOCK_SCOPE_ABSTRACT_UNIX_SOCKET
+.BR LANDLOCK_SCOPE_ABSTRACT_UNIX_SOCKET "  (since Landlock ABI version 6)"
 Restrict a sandboxed process from connecting to an abstract UNIX socket
 created by a process outside the related Landlock domain
 (e.g., a parent domain or a non-sandboxed process).
 .TP
-.B LANDLOCK_SCOPE_SIGNAL
+.BR LANDLOCK_SCOPE_SIGNAL "  (since Landlock ABI version 6)"
 Restrict a sandboxed process from sending a signal
 to another process outside the domain.
 .\"
-- 
2.54.0


