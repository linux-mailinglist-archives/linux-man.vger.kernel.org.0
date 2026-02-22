Return-Path: <linux-man+bounces-5199-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uJl7LTgYm2lasQMAu9opvQ
	(envelope-from <linux-man+bounces-5199-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 15:52:40 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C9A16F7A8
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 15:52:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 473E0300C816
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 14:52:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2F8D3502B4;
	Sun, 22 Feb 2026 14:52:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PdsX2qEb"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com [209.85.215.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61C6A2253EC
	for <linux-man@vger.kernel.org>; Sun, 22 Feb 2026 14:52:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771771956; cv=none; b=agr4jqTDt+dv4IS93FqrMUkDjU8BRL0GxdW5tQ/Oif7yvAlWrBLbhrzsSdDReb3Y66uwTjKFnFMAD8AjQAJv6XRKDNswcDph/tqTrpQC9zKsAVvf2hbpwuKIzyCvMJEH3jWlmD/58WuTfjcJWR/pn/06actSZEGRee3rCZMAo8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771771956; c=relaxed/simple;
	bh=5dmlYxN368buXyULhBgm9nALSlTsfZpjP/Y3kgqmyz8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oja0UrOhII89wYE98bGWU/ieD6YTBgyOPtB60QtbriLZxLmqAwpp7iK6ww/V3C5SaivpeRdVbELn6YYcu+P68anIs2dqrOP5Su39TsMCaK+T+H6M4UaAbuLe0+W4kZxhGMe5I8nYxAGPkdQWFnbY7Q78MzIxstztKt9CnMY5VuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PdsX2qEb; arc=none smtp.client-ip=209.85.215.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f195.google.com with SMTP id 41be03b00d2f7-c6e266a3572so1166443a12.0
        for <linux-man@vger.kernel.org>; Sun, 22 Feb 2026 06:52:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771771955; x=1772376755; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/Gg7F7q6A5fZgNHOjOVz1Sbpoju5gV/tPPFqBOTskbg=;
        b=PdsX2qEbgLfUntXkJpYsw44uSVcG/C1CZQ1AQx5T4HD/IxV2tGvPWaY+isM29BPzl1
         gYpvjgvvr6NEKfWfAn+sy66AzKSW9N363TCPYcuwwjMWwwD4pkVSFRg5QB20cwzT1+tr
         IBQc/KbWfZxmatiKPfneH1JFvMDJpFQVo8jxZdyJME6IPpPnIl6mZaCNrJWbdr+KrREt
         YEgZ27xG7eZNYdIq7qgVMXMHHfxIe3gqtfdLZrdQD76icxBXaT/FWlFLZ5ZHm+Zpr5u9
         IQU9KQudHog4abNMEnkOSDDwZlBy9CLQgNWInUZehQBYskbsDJomax7K6UpLk87B2CYt
         p2Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771771955; x=1772376755;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/Gg7F7q6A5fZgNHOjOVz1Sbpoju5gV/tPPFqBOTskbg=;
        b=vwN8Cz6wk0BJP8niEpzuZoVdig7MS6aFOhthIP68fmdpPvVz5f+lNjsF3+797DuGqE
         bR2CXN5HkFdEF4dLCV/ON2BO+SuQdmOfn65QhB3OpU/M9ZWDgbGBk0R43m4jvuh/d0YP
         Wg4RWbcXBXIumxn1FfYDt86KPSMfuj5jnLneK6OZSbV9BINNcUT/Y9hw+XX/L/Mtnz80
         OG0eGAS3J+uZ28eYXlr6h7V01rxOOTg8Jj5UDOXxzas/5QPAcnP3XJSBKMiVPy0cW09f
         ShuXNW0pd9880Rco3Mjj7zf9E3ASJThq6kdDiRpZIjDQ47ECStnXL8WXjkaMzDTQkkuL
         1DFA==
X-Forwarded-Encrypted: i=1; AJvYcCU/AVUUZvzHcCNEurEyiRW9BSA+m/LLRcJA0pc/xZdncnXINr40Djq78iZdlh4/X6/aqHauQSewkWw=@vger.kernel.org
X-Gm-Message-State: AOJu0YzL6eWULPjiwiSgqIiZV3HxE4+ZQ5B6/QxjftvmvdJEz+SKIQo6
	Gc6u3gMzgqrsZCIbgoYt/dug9tUhP2nHkilMskvU5TWkvwbdU70g4RBD
X-Gm-Gg: AZuq6aLQdb6wNFb3Dv2vOjfnyShEhewMBTGaMDV7IexZ2b83EOHNOHT/iANCLznGwqj
	HDKvpAixi+bUJxAVpB0Spscn0eDUgFzPGFbVlOs6oPmuMevACgbL6qbEvQcpbMji+tk+GmHdeHa
	z2EYYLAkSRBxQb/FtQR6/ZUleQUMmdcCCQATD+NaPRjVHAC4zf/QmOHplGsdW/rQzr2Qbd58T4s
	A0INnw0U1wyk6Q0XzP9rH8aDKpw5YrDdMPRJOJ2pnI5sW1FL+PaLVDykNMWWEgca01FoD3YbkUF
	7MbP9wTH3LqlRzmu/aAIzzV0C7uX1uVhFuoGLkxjGAGdfyiOnJ7xWEQN9zbPLsYPTaoHrHics6j
	gkcQcSYVT1aAtoTdfA+sRaC+QN3rWx94H7pknhCjZZlWyB6zd1hZYtcaNOXqWQquk3rMCWAI7Wx
	S7MGv/s77byR2P/hvaMd/ExmZOt9Xfj9JMATH97Q39inXWZH4PCU70zXs=
X-Received: by 2002:a17:903:32cb:b0:296:2b7a:90cd with SMTP id d9443c01a7336-2ad744edc14mr58475855ad.32.1771771954786;
        Sun, 22 Feb 2026 06:52:34 -0800 (PST)
Received: from fedora ([2405:201:3017:184:52f5:ed80:f874:1efc])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad7500e02asm45355415ad.56.2026.02.22.06.52.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 06:52:34 -0800 (PST)
From: Bhavik Sachdev <b.sachdev1904@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Bhavik Sachdev <b.sachdev1904@gmail.com>,
	linux-man@vger.kernel.org,
	criu@lists.linux.dev,
	Andrei Vagin <avagin@gmail.com>,
	Pavel Tikhomirov <ptikhomirov@virtuozzo.com>,
	Jeff Layton <jlayton@kernel.org>,
	Miklos Szeredi <miklos@szeredi.hu>,
	Josef Bacik <josef@toxicpanda.com>,
	Christian Brauner <brauner@kernel.org>
Subject: [PATCH v2 10/10] man/man2/statmount.2: Document STATMOUNT_BY_FD
Date: Sun, 22 Feb 2026 20:16:00 +0530
Message-ID: <57c96336ccfbdc05f60b7875c315a8c1dd0d14b8.1771771560.git.b.sachdev1904@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <cover.1771771560.git.b.sachdev1904@gmail.com>
References: <cover.1771771560.git.b.sachdev1904@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-5199-lists,linux-man=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,lists.linux.dev,virtuozzo.com,kernel.org,szeredi.hu,toxicpanda.com];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bsachdev1904@gmail.com,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[linux-man];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 53C9A16F7A8
X-Rspamd-Action: no action

STATMOUNT_BY_FD introduces the ability to get information about a mount
using a fd on the mount. This functionality is currently in linux-next
[1].

Link [1]:
<https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20260126&id=d5bc4e31f2a3f301b4214858bec834c67bb2be5c>

Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
---
 man/man2/statmount.2 | 37 +++++++++++++++++++++++++++++++++++--
 1 file changed, 35 insertions(+), 2 deletions(-)

diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
index 0b3a65bb3..761df60dc 100644
--- a/man/man2/statmount.2
+++ b/man/man2/statmount.2
@@ -24,7 +24,10 @@ .SH SYNOPSIS
 .EX
 .B struct mnt_id_req {
 .BR "    __u32  size;" "        /* sizeof(struct mnt_id_req) */"
-.BR "    __u32  mnt_ns_fd;" "   /* fd of mnt_ns to query the mnt_id in */"
+.BR "    union {"
+.BR "           __u32  mnt_ns_fd;" "   /* fd of mnt_ns to query the mnt_id in */"
+.BR "           __u32  mnt_fd;" "      /* fd on the mount being queried */"
+.BR "    };"
 .BR "    __u64  mnt_id;" "      /* The mnt_id being queried */"
 .BR "    __u64  param;" "       /* An ORed combination of the STATMOUNT_ constants */"
 .BR "    __u32  mnt_ns_id;" "   /* The id of mnt_ns to query the mnt_id in */"
@@ -89,7 +92,7 @@ .SH DESCRIPTION
 .I bufsize
 with the fields filled in as described below.
 .I flags
-must be 0.
+must either be 0 or STATMOUNT_BY_FD.
 .P
 (Note that reserved space and padding is omitted.)
 .SS The mnt_id_req structure
@@ -110,6 +113,25 @@ .SS The mnt_id_req structure
 .I req.mnt_id
 (Since Linux 6.18).
 .P
+.I req.mnt_fd
+is a file descriptor on a mount.
+If STATMOUNT_BY_FD flag is specified,
+.I req.mnt_id
+and
+.I req.mnt_ns_id
+are zeroed, the function will return information about the mount the fd is on
+(Since Linux 7.0).
+.P
+The fd can also be on a mount that has been lazily unmounted (see
+.BR umount2 (2)
+with
+.BR MNT_DETACH ).
+In this case,
+.BR STATMOUNT_MNT_POINT
+and
+.BR STATMOUNT_MNT_NS_ID
+will be unset, since an unmounted mount is no longer a part of the filesystem.
+.P
 .I req.mnt_id
 can be obtained from either
 .BR statx (2)
@@ -392,6 +414,17 @@ .SH ERRORS
 .I req.mnt_ns_fd
 were set.
 .TP
+.B EINVAL
+.I req.mnt_id
+or
+.I req.mnt_ns_id
+was specified alongside
+.IR req.mnt_fd .
+.TP
+.B EBADF
+.I req.mnt_fd
+is an invalid file descriptor.
+.TP
 .B E2BIG
 .I req
 is too large.
-- 
2.53.0


