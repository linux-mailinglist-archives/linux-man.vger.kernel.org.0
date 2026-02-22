Return-Path: <linux-man+bounces-5191-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qF6SBwsYm2lasQMAu9opvQ
	(envelope-from <linux-man+bounces-5191-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 15:51:55 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF0316F75E
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 15:51:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 03082300B9B4
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 14:51:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D409A3502B4;
	Sun, 22 Feb 2026 14:51:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VbBYQntX"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com [209.85.214.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1B4634F270
	for <linux-man@vger.kernel.org>; Sun, 22 Feb 2026 14:51:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771771908; cv=none; b=lA5enlxIvWQWhugqDm4sWRBvlHjbxatxmcY1hQ+frRhiNgwpLkNwqNE0KHadCRRUIShqlO5YwCSUE6y2PKG5WDFy2JA+vedU71fESiSL7HNxbl1JxuRUndT82l07wI5Zo1jrjIjEWC1GX9h2PO4H97ClL7dItNae9EuInLqOkFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771771908; c=relaxed/simple;
	bh=ik69i4AJ1oDo5QndHReGW/o+W2D62IkJg/Ck9JfdvCM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=l43STkBmjyROYG7t5snqVYm+Jl2w8k9O7H9BnAm69SuNrSAayXmmrqKBuocRObM1yLMMfTeh/DD+r4Ftw35jjm9R15KapJGyi4uNEiJjyAQG0FnBRKVrnCMIkGvcVZUfofTpoQzhUnAXF3g1DkhKj+pTF7BLQt5YsWIyz0GSvfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VbBYQntX; arc=none smtp.client-ip=209.85.214.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f193.google.com with SMTP id d9443c01a7336-2ab39b111b9so15409255ad.1
        for <linux-man@vger.kernel.org>; Sun, 22 Feb 2026 06:51:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771771906; x=1772376706; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IRyxYq0qVVO7CO7FGBKulkJUG4d+8LPuPOxZVf+ltlU=;
        b=VbBYQntXSTglJFg7oHzyP+bplPk9LB87z2A3m2rzqOFwuFNAQXKIBArWnWbLOQTI7L
         e83paq+e7JNNjqpJKeQVdAwNNfi+qQE1hMbS6xTdfCn3vGo25ejWFKo05UVJ7fvWTjOf
         8FJWLt1YT9W1afXI3zW/7ytZY5aboYwbEU5L9axl0iuU653PUYJhK1D6zIPgruC0FEZu
         fj8LOw+DPgQM1g+iGMu9rk/0TX9r4qalQQGvslZckXR9JhRAKJ6wzmv2g9FqGberLF+8
         n3x8owJmp0S0yaReJvy3O8WcqvuanNQSgr3bXTmXhl6Fx+taawDGJ/a2sEMpWUNp0F/b
         T2KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771771906; x=1772376706;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IRyxYq0qVVO7CO7FGBKulkJUG4d+8LPuPOxZVf+ltlU=;
        b=eYgB/rl2zwDKshu9Zta00JCsqC5W2InCP8XD1h6UHoKjdcUt3mmnwIxAFMW2cOlXLQ
         VOElzqy0y5ZsENKkC9QaULC7QFGiDseMT9xRfDpoYVBWU0zgewXm9Ayl8OTt+aFDUsEF
         1sUv5QSZMILMa9rXeV3QeuLSTus4KM6TGJ69KcRbptsxBWyvngiX7s5FCqqmZ4WpTI4C
         dxfHcHTrqlCvQtG8KsNDCbiPqYYb+q49BOyVPzzzW11sNzL6YRwQmIemolIbnlDInvmv
         LbjbXzx/giYRtUe6i3lf/930JgU8ThDA4MUKjxoaAEttL7hw65QM6nfZbvD7/0+WiodC
         3vIA==
X-Forwarded-Encrypted: i=1; AJvYcCVskRi7mCO/ELP5hL4nBlT9px//uTo2WN72SjCz2UhuE2ZlLjbqLEjIeoba5Bjp151Ywg+yv2r56+o=@vger.kernel.org
X-Gm-Message-State: AOJu0YxKmYb3uPZWRbTLb1fdW+EeSDCJorft1DMgYjfnsUpg91Wbppzk
	caRbiloNaqFTy0tMfDTdp6D8Wqih/wOCv1XAjniB+SA2AXaxQmBf66Mh
X-Gm-Gg: AZuq6aLICQFxA7S3bOBfXaCGExul/Kyu9l2mv+5AKpDja3XLKa0aL4Keb+LBvv33xc/
	36v3fr0L4EDn7Jo7rqIxzg0P8x7nzvkn+X6VIdoObvEWNUdIlG/GFbd+rxdGYgZ4fA5hXJT3VAT
	jR1oUf2HYRocMEMtYpSUZq9Wr7JhW6D6mknajxTQe2rPjgiNXifKdqWVF15IXq9mZMUMKHP6W8g
	eJklFbibSvket6fewIQYSXV/J58+IHI2g3K/hflrBZd91O4VchxDfk3DNXPFxsnpJ5XBZUYhcPN
	uyi8qwv2MAqUy9mtath1IEnuOoPQGHJbBYUNEouWf7cz62o5p2M/x+Aa6mwP34q8Z76c2UK9LCU
	14hjvsiWBYVsQTsiFo30ojj3TuPn5a9nPUAFutL6EfPGJWZ5u9oMCnEcsjzyFLCAczXLa9GjWhK
	GEct8Z9rOi1XIz3t3cDQ8zhM7NoHN8aCz4vWXyZ1Xdybcet8yPsg6cM5fnwxjL2wPp2Q==
X-Received: by 2002:a17:902:fd4f:b0:2ad:402d:4dc6 with SMTP id d9443c01a7336-2ad7453d922mr37870935ad.37.1771771906213;
        Sun, 22 Feb 2026 06:51:46 -0800 (PST)
Received: from fedora ([2405:201:3017:184:52f5:ed80:f874:1efc])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad7500e02asm45355415ad.56.2026.02.22.06.51.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 06:51:45 -0800 (PST)
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
Subject: [PATCH v2 02/10] man/man2/statmount.2: Document STATMOUNT_MNT_OPTS
Date: Sun, 22 Feb 2026 20:15:52 +0530
Message-ID: <24ba21cad0766cf8c1666b85684eda154acce16b.1771771560.git.b.sachdev1904@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-5191-lists,linux-man=lfdr.de];
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
X-Rspamd-Queue-Id: 8BF0316F75E
X-Rspamd-Action: no action

Document STATMOUNT_MNT_OPTS flag and the corresponding field introduced
by it.

STATMOUNT_MNT_OPTS is used to get all mount options on the mount
separated by commas. Similiar to how they are displayed in
/proc/[pid]/mountinfo.

This text is based on this commit [1].

Link [1]:
<https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=f9af549d1fd31487bbbc666b5b158cfc940ccc17>

Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
---
 man/man2/statmount.2 | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
index 4ffddc43a..c2682646c 100644
--- a/man/man2/statmount.2
+++ b/man/man2/statmount.2
@@ -31,6 +31,7 @@ .SH SYNOPSIS
 .P
 .B struct statmount {
 .B "    __u32  size;"
+.B "    __u32  mnt_opts;"
 .B "    __u64  mask;"
 .B "    __u32  sb_dev_major;"
 .B "    __u32  sb_dev_minor;"
@@ -108,6 +109,7 @@ .SS The mnt_id_req structure
 STATMOUNT_MNT_POINT	/* Want/got mnt_point */
 STATMOUNT_FS_TYPE	/* Want/got fs_type */
 STATMOUNT_MNT_NS_ID	/* Want/got mnt_ns_id */
+STATMOUNT_MNT_OPTS	/* Want/got mnt_opts */
 .TE
 .in
 .P
@@ -160,6 +162,14 @@ .SS The returned information
 structure,
 including any of the strings fields that were filled.
 .TP
+.IR smbuf.mnt_opts " (since Linux 6.11)"
+The offset to the location in the
+.I smbuf.str
+buffer that contains a comma separated list of mount options,
+similiar to those in
+.BR proc_pid_mountinfo (5) .
+It is a null-terminated string.
+.TP
 .I smbuf.mask
 The ORed combination of
 .BI STATMOUNT_ *
-- 
2.53.0


