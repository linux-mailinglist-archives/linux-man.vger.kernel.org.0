Return-Path: <linux-man+bounces-5406-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OGn7Okz07WlTpQAAu9opvQ
	(envelope-from <linux-man+bounces-5406-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 26 Apr 2026 13:17:32 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BE0F4698D7
	for <lists+linux-man@lfdr.de>; Sun, 26 Apr 2026 13:17:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 56D0A3006F29
	for <lists+linux-man@lfdr.de>; Sun, 26 Apr 2026 11:17:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 720DD2E0B71;
	Sun, 26 Apr 2026 11:17:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ps+R774O"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F70940DFD5
	for <linux-man@vger.kernel.org>; Sun, 26 Apr 2026 11:17:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777202249; cv=none; b=TROdsC0kxHgYtfXE6/qXMBHaCOh0+SwfWfaw28QyyfvEISDYKD0pqkDVuLDuJ8Uptdc2NePs96Y3cYsopWiS3Ki0u72c1zsSDZnG7rZlB0RiiWT7SPTLv18P2sKfwKLNkZ9aQqllqdjD7fc/iNNjrNW29hrDl8QcJa1/Z8B4j/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777202249; c=relaxed/simple;
	bh=WEkru39jjCOSzDNvltfprlFhSqUkbHdW57l52MxOQIE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uYYxnyntRx5TWTfHCd/mUA7+sWxyk7d31XG8kX8/7jfMtGAF/TdOjWzI3iSBlfwP/kPGXcA0Uo1qSmPgY5eS9Ctly6aFivMmELB24feSVduS54t04nN6poMjNrAQDyqWrEk/6MVFsLzJdwsrwB1Q6jeZUrznhilD26W6puHf3GU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ps+R774O; arc=none smtp.client-ip=209.85.216.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-36146ae9dd4so7649777a91.3
        for <linux-man@vger.kernel.org>; Sun, 26 Apr 2026 04:17:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777202247; x=1777807047; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e9WutM5SSsZbe6EY78bgpxtqJYU4oV85TjHGJO7jH/k=;
        b=ps+R774OIgN4nCKndKUvSmgYABc4xrkVwfC4bYnnwgGag6/44JhdOrrdS9wQnX7RFL
         q7cZvUZ8t1oCio4VZV0y5KY5/AbwPf6gphf0kABjVfhyQoVAPPLXjGLPAuH3Kr8zSkhX
         tuKWx4/cFab/ljfr4UZp65HQGfwXddypHjaWsSQi6yjqd3/qs3id/4MqZcfUvrgwqbjf
         u0FMQ5lva9twbjF6H5rVxZPerxdy5/NZafvb+BRHa1y4lkTalsakyOSKiLp/7KSjLPZN
         CLT7HldsxaNUpeqyajBN+5c0vkVTsmZKfFpNm4ggM3V3q0gek2NhjSOpFEVZ1kmafWBO
         kW4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777202247; x=1777807047;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=e9WutM5SSsZbe6EY78bgpxtqJYU4oV85TjHGJO7jH/k=;
        b=cT2DDE57E5yen/67AEfk23yDv2+pFsJ5WGn7SaRGedzTeYooX6iq61s0WOcHZ5tvdo
         5BdeyRQfVCLVsF7DJ2pp8BpeN3G45pLGgdkxzy2y7b+8avJtXT4E1+KbzFRXRqFRnoXg
         lcwVGwJz038xq/uyFGJsVOFUteJVfJfRMOpnrHrhCXaDE7zePraDZyapAbfE3X8fPZ+V
         7mYCHicaMPCeouXImR+1uqVtE9WZUg5PomvQs9CuUJ/8+v8rPblwE6Gea6ARFhvi7LVy
         TiMqDrFsXSyMoc2X4WITFWCMt6hTvoyR7+JwV75mukBG+nW9QTBBvbFu5H+HMT/1/LYg
         o4Wg==
X-Gm-Message-State: AOJu0Yyz3OpnebIQF6Ai6p84AlFRV3njal3FS2lcJlm2oBcGCqBlyqRs
	DfMYWg78y/YkvBaWkQYc/Irck8/wAdMHb1yFUna7u9snHabjeGo45MQ2fEr5kgulMEA=
X-Gm-Gg: AeBDietHZz+KXxVyHrSo5/geR6nN0jPphPD7kskkFj83/Y3WgJwP7Bl8+/+ppUpf9Kz
	Owt5Oyz3hY8YFccwlhqCVxs7juk6gNjz2btKuIdshzDl5SfPthRQxsZ+M9ChZSN+L623YyrIZdO
	GQ2FsUso7eC2bZQNy5fcwvWkUzurfyFVyahAg3hlJMd0a4Qa9aIoM0YAMvyWrYbHXDFdRpbspZf
	TVSigHgNJptE+FlQ2ou0DOMTvPEnLKNoCJ4s4W/GZIXljx1P/l/6xcVKQ9njEvH5gDOWsYJ3ru5
	7NpVjJ0cp9Os/fAA3L5cg4yL7IDCuKPEZ0U/7ocFzyz0353ujDwkWqdo642Lguf7A59/sKNC+jz
	t836L8737wklX6gVD6InbfSu2B4TcB7TEERZ5AIGWseMhCW9/eng/341lhBerbVK82UBqHZYQsD
	JR6CG1DWlVgHtJrV7f+poCqSfciJ3Y6cs4p90rGX6z4vXSgnxjVBWxwfhDozTQd/l8iQ==
X-Received: by 2002:a17:90b:3f4d:b0:35d:8f3d:c554 with SMTP id 98e67ed59e1d1-36140468b12mr41483281a91.13.1777202247365;
        Sun, 26 Apr 2026 04:17:27 -0700 (PDT)
Received: from toolbx ([103.103.35.11])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3614186adddsm30035080a91.2.2026.04.26.04.17.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Apr 2026 04:17:26 -0700 (PDT)
From: Dorjoy Chowdhury <dorjoychy111@gmail.com>
To: linux-man@vger.kernel.org
Cc: alx@kernel.org,
	brauner@kernel.org,
	jlayton@kernel.org
Subject: [PATCH v2 2/2] man/man2/openat2.2: Document OPENAT2_REGULAR flag
Date: Sun, 26 Apr 2026 17:14:26 +0600
Message-ID: <20260426111707.36541-3-dorjoychy111@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260426111707.36541-1-dorjoychy111@gmail.com>
References: <20260426111707.36541-1-dorjoychy111@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 6BE0F4698D7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5406-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[dorjoychy111@gmail.com,linux-man@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[4];
	PRECEDENCE_BULK(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[linux-man];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]

Signed-off-by: Dorjoy Chowdhury <dorjoychy111@gmail.com>
---
 man/man2/openat2.2 | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/man/man2/openat2.2 b/man/man2/openat2.2
index f0770f3a0..ea3d9ac7b 100644
--- a/man/man2/openat2.2
+++ b/man/man2/openat2.2
@@ -133,6 +133,20 @@ argument,
 .BR openat2 ()
 returns an error if unknown or conflicting flags are specified in
 .IR how.flags .
+.IP
+.BR openat2 ()
+also supports the below additional flags:
+.RS
+.TP
+.BR OPENAT2_REGULAR " (since Linux 7.2)"
+Only open the file specified by
+.I path
+if it is a regular file.
+If it is not a regular file,
+.BR openat2 ()
+fails with the error
+.BR EFTYPE .
+.RE
 .TP
 .I mode
 This field specifies the
@@ -471,6 +485,12 @@ and an escape from the root during path resolution was detected.
 contains
 .BR RESOLVE_NO_XDEV ,
 and a path component crosses a mount point.
+.TP
+.B EFTYPE
+.I how.flags
+contains
+.B OPENAT2_REGULAR
+flag and the path is not a regular file.
 .SH STANDARDS
 Linux.
 .SH HISTORY
-- 
2.53.0


