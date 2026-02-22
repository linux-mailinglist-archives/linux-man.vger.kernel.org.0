Return-Path: <linux-man+bounces-5197-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ANIuMSsYm2lasQMAu9opvQ
	(envelope-from <linux-man+bounces-5197-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 15:52:27 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ACF916F797
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 15:52:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 42788300B87B
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 14:52:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67F3E34F270;
	Sun, 22 Feb 2026 14:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="apQY9v0p"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com [209.85.214.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C94335BA
	for <linux-man@vger.kernel.org>; Sun, 22 Feb 2026 14:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771771943; cv=none; b=tRtEL7S7bSCs+QOBjyifWO19V8nI+ovrQQ8Y0hK4+BSkyKxhgmRt00HUDlAeiqfeIaZ+w5w15Usdtgg7Md1Y6vSlRop1FhKcpIaX9kN5F6rh+ZXhLEEhT2HkBuLAXhLa1FRBISQ9uDSaKsiOsJ4s/cr/VzTpnP8QbWaMynuoVw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771771943; c=relaxed/simple;
	bh=gKLqiLzX6hmew9VMx2qlCqWq42ylLdj+5ZumHpFcSjo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WB9njDAslebP92vmYIV4+IOvO6Y0Q1chUhncT0cddvIanQZFGZacwB3/UH/W5DWDtKHIRxGW5nCzPuB3uArFSB9Yoj8n8GEHBB67FWd1hVytsAeXJwzfbyDCw6ANMtVjAWaMck+Ziiaxrd42hegF4/E5Td4/pKJ4ysJzJqElOPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=apQY9v0p; arc=none smtp.client-ip=209.85.214.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f194.google.com with SMTP id d9443c01a7336-2aad1dc8856so24581825ad.1
        for <linux-man@vger.kernel.org>; Sun, 22 Feb 2026 06:52:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771771942; x=1772376742; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a3880Tl+3axRFIl1Mgotlw9rBMtq2UwL6CKS4/tmIII=;
        b=apQY9v0plnSmgGnZ0Y+E+rKIvAxbikna/Ykvi+9TFWN0B4JebytGgiuS2SuPQpHWY7
         rAjr3YlwVdbj5K2XqRS8IXZeogvL3cmmukXVPFTFJ9C3lwSUvZYK6e2JGQJ6cq56RZlm
         +Lw+6inXfOAhOTQAqku2rHiMTpumK2xQTG6KnNPb0GGJE+ub0jEF6J8+yAb+eDeMgc3A
         Tvs/PCC0nNXw8Qbg92NHIvUNWV/X19wPslfmFoLFZqB5PGvCCEVWV8RhE5CE8jvx4zcz
         URzfviR42G55aAQkfltWozFXcSDLT878EHrOFQU838ztk1RifvdVptpcu77AagAXd6i1
         axHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771771942; x=1772376742;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=a3880Tl+3axRFIl1Mgotlw9rBMtq2UwL6CKS4/tmIII=;
        b=KJHwZpVcRDcDgx7mHY09zzpswHWpLjj1tkcvfU4aF4YBcLRjgRn84qVLmLmEl8aKxb
         Oq1gR0pRS/dwgh07joy/2+e7tjF+4VBcrRlGr1xPcjsfV7RTUpzn0jB88Kn3LT/NV8dC
         7DIpxcVDN+n8ekKMQSIk2t13mzWQKbox8FmpbXjSUknwEzSmJSzL8EBeGKpJFfnHiGhj
         KUnvFR9PfC3TCo3Le8hOeOVDVsKbx/ZAJO6rnUaxNCZxNQIuzVlDu3yo4I9CdWBnJBp5
         NihgPOEyjZbeV/NWP7cDM46PqDHvpvczt2xPAFNNFRnJjGU5Wu4aZwfJTPKm3lU9itve
         cpPQ==
X-Forwarded-Encrypted: i=1; AJvYcCUm/MllIIqd3V+FXXHMwUjHvArhVuizqv5aYTEUdArvkZJ0B+US/YD5tOZcCBx0RafVBR2/J79vT8E=@vger.kernel.org
X-Gm-Message-State: AOJu0YyR25aU3GuQzX/2lLm90mGA1a34S08z/0S7QTn8kCYFbU3YPwKV
	gox5bAhHgejQm4vq9p8H/YLzvQClaE3pgEuzmQYkupykszhD54Ykl19s
X-Gm-Gg: AZuq6aIZ1DbbHIyA/RCFT2Dvm0zupZBB3sVq1x4hmNXGQ0GJ0/BHpuHXUQBzw5Almnu
	IktuXMBrTrMcxx7q61H/HJsDwLwZqWrf9pMa4UScrHQBVHaosnrm2ZXhERgTZ2jkLgU0J1OabAV
	xj20go8LY/rHjD7RAVd2W9X9HD5UJpoH2RrAgLIYKYCnjif2gwffOxbNDRlW5nJeyeYXVQKhCnZ
	U3odCo2+4t1wV/51JcNLUoZzE8kFD5AU6CDbG+Cs6OP5hGRPOd8urWcN81nghhwDq13FQ+ukUNz
	XWJg67VqZntkfHGGv2tluqVC9IzoT4uRfbiqgQ9mZuBv1dUrJtmT0j5xluU5i2J6wIbrk63rES3
	l0qdWwj2LBeO0ZjR8QTqMputgegH1nSD4fFwyE9JNSh/3q7GMWGFg71z53xFdx1Mca1md6bGjrg
	mT7/J4yEvUDQZmMIU4V+4p2awY33bvaoKQTCdsCgdnmvG69ypsQoZ7jwl9PvzPATB/Lw==
X-Received: by 2002:a17:902:fc48:b0:2a0:c1e4:e25 with SMTP id d9443c01a7336-2ad74582c6dmr48113445ad.54.1771771941662;
        Sun, 22 Feb 2026 06:52:21 -0800 (PST)
Received: from fedora ([2405:201:3017:184:52f5:ed80:f874:1efc])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad7500e02asm45355415ad.56.2026.02.22.06.52.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 06:52:21 -0800 (PST)
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
Subject: [PATCH v2 08/10] man/man2/statmount.2: Document STATMOUNT_SUPPORTED_MASK
Date: Sun, 22 Feb 2026 20:15:58 +0530
Message-ID: <b537e03ab73d8677a53730311b5a3c11ff29a51b.1771771560.git.b.sachdev1904@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-5197-lists,linux-man=lfdr.de];
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
X-Rspamd-Queue-Id: 4ACF916F797
X-Rspamd-Action: no action

Document STATMOUNT_SUPPORTED_MASK flag and the corresponding field
introduced by it. It is used to determine the flags supported by the
current kernel. The text is based on this commit message [1].

Link [1]:
<https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=8f6116b5b77b0536d2ad7482ee42bfe58b8fac01>

Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
---
 man/man2/statmount.2 | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
index e24827ad4..7951c8391 100644
--- a/man/man2/statmount.2
+++ b/man/man2/statmount.2
@@ -60,6 +60,7 @@ .SH SYNOPSIS
 .B "    __u32  mnt_uidmap;"
 .B "    __u32  mnt_gidmap_num;"
 .B "    __u32  mnt_gidmap;"
+.B "    __u64  supported_mask;"
 .B "    char   str[];"
 .B };
 .EE
@@ -126,6 +127,7 @@ .SS The mnt_id_req structure
 STATMOUNT_OPT_SEC_ARRAY	/* Want/got opt_sec... */
 STATMOUNT_MNT_UIDMAP	/* Want/got uidmap... */
 STATMOUNT_MNT_GIDMAP	/* Want/got gidmap... */
+STATMOUNT_SUPPORTED_MASK	/* Want/got supported mask flags */
 .TE
 .in
 .P
@@ -340,6 +342,11 @@ .SS The returned information
 .IR smbuf.mnt_gidmap_num .
 The whole range of gid mappings must be resolvable in the user namespace
 of the caller.
+.TP
+.IR smbuf.supported_mask " (since Linux 6.15)"
+The ORed combination of
+.BI STATMOUNT_ *
+flags supported by the current kernel.
 .SH RETURN VALUE
 On success, zero is returned.
 On error, \-1 is returned, and
-- 
2.53.0


