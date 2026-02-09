Return-Path: <linux-man+bounces-5068-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eKyvHJFQimmmJQAAu9opvQ
	(envelope-from <linux-man+bounces-5068-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 09 Feb 2026 22:24:33 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CC687114C6B
	for <lists+linux-man@lfdr.de>; Mon, 09 Feb 2026 22:24:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5556C3020A66
	for <lists+linux-man@lfdr.de>; Mon,  9 Feb 2026 21:22:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0CA92EA173;
	Mon,  9 Feb 2026 21:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kV6xOxgZ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com [209.85.214.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9492430B539
	for <linux-man@vger.kernel.org>; Mon,  9 Feb 2026 21:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770672143; cv=none; b=FPB9CVsdd8jNbmZc/y/eFaaXlt8wXRTbw/EAXH4JRY/BdVkUFHupqlRsD0xOxfUdPQ1yy46+3IropEE1eDs/A9/vspC7ZQDw41Q8kT+A850f/QVIq6lmnBNjZYgKIcmht9z3yyMcwJ/ky2cvhluSs6QsUSFJqOl1vaf6QXJfQ68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770672143; c=relaxed/simple;
	bh=GnE2ZjFkUGI7j3Xz094Yt+PDehNEeG6khGS29dqCxi8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fEoYbFtDmCruR39BeSa93bLallZ31f2LLkpikrd6FTCMZ6JCNmuJdZyddArhVhTFaQtKQ9GI/yaB9f504rb+wHt5xr9BlNCH8OeOVYDe33fEiu9Di1wrL6tD9EQ/+gNpFBQ2SIt8IK2/83ZLbiDShUQVbqqc4ZXt2PF9sc1xcHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kV6xOxgZ; arc=none smtp.client-ip=209.85.214.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f193.google.com with SMTP id d9443c01a7336-2a7b23dd036so16411785ad.3
        for <linux-man@vger.kernel.org>; Mon, 09 Feb 2026 13:22:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770672142; x=1771276942; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0hNrtZUpDDOICmNPiThVP1xpdYzQmeKBIBi4TifeyFU=;
        b=kV6xOxgZ1d6uet5VBVd7Pou/bDDgN7lCQL8zxKLD3MG4SHDhQrqsCnhvBq6I8MnibK
         p43MJFeSNLgZw1m0nxP0WbXly/yBG1JZG7ZiUYexOYF6vDkeNFtfrP5jeFgrWFzcXMUJ
         dbeSOOvxDRrPQuTPuIkPqRS+mvyFBOvscY8ej7Kkrg2PoJfErF0xQeaNTa7B8zEPhzv6
         7FfJVqXF23lj6XkMrAYk3ShHwQb/vMi8huIGCP3n3k24O5DZvcWDkh0MxV3DJ4vxXMmz
         ABa+8+VEuwAAJF6aqqQ4BDJRaZSCGRYcDFKZSVlXWjvH0/TaqOSG5a60B+hOwnjauTYD
         sfbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770672142; x=1771276942;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0hNrtZUpDDOICmNPiThVP1xpdYzQmeKBIBi4TifeyFU=;
        b=sjRCoYLom4R7VDEalED2dOeMTCVLDQnzi3qCR/9Hlf8B0y+0F9QcBehvx5aC5pMBnK
         NI4QM6XYCAbf1pM1VHWfc6c+gs0ZrrUM7zdypswpe4YvG4EzvhWNXyAoa7bsWyWqaTMu
         Su9RkBEiw7rEHyHDjCIgdcuXKJpCmtC5rAe2z7XSnJThvPNMXB3P4uc7AdBoeeRsoNi8
         Oezl0H09fkPywk/yHnHd/Yp/fkiNQLCddJkn7DxNdooGMxchwcNHnEUSDsYQVSI1pNgq
         E4zG8WMQzMOtFOObdEmWYmifCOMxpZKoR8zb6eZ/voKJmeKdWD4u4r7N473PNmrTMjmD
         UYMQ==
X-Forwarded-Encrypted: i=1; AJvYcCUuAU8ihCaWfdfiEjyLnmCP76MZuPGd9SjseAN5MD4H2h1eW3PWUDgA/JqF3BBzH3NjiUzvgqHPVbw=@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+1rHYEVG5WrwL0+uCllAeCs+peycxhwz9bvVFLRoO2GctGIxf
	ZCtqf635T1SSFEbkPWWej5XTwaT383p6CJG06MZgbhbpqTNzehPubiwq
X-Gm-Gg: AZuq6aJKvajBPz3z4cGK5ueWgTqhLTcSmePSDpDcJcOd5wyhB0Q5CuoDwCDriVTfHFu
	i4tp7ivwa2mckaNWOo+QW7zey6j3xnLXJf3MBCB6duBJS/K0HdNG/dWXUHjhjyLzTQPrt6+VZa/
	KHDqHz9bZXI+hFjP0f140Ozji9FUjWn0gJBi9jdjtQg2fAtrmNPkvCtmkBIZ/MIl96cHiJpg6cI
	Rm3POUyntCHagvBZj8/5ZG8KuOfgIr9idjFUkBGjH82sXL2WKruyM9HxsPPFuLs5bMCYhbtv3BW
	oV9AppPig8nB3iumc669HNtBJ2mwou72CGTgM4g35YgKpard0SYfcDjSG0AdB9yyobbizbtbHCI
	WXgv4eqSN1T1PV65ASxjyxVsgD+qbjJj9iKuib26aXfuGQQA/EVFuPiDUN0evjaFMzqO/lWLnYu
	ieSjCYbdxIh0xvcwZUm1gbfNIjaOKt9o4T9W0QN6/B79c=
X-Received: by 2002:a17:903:1b2f:b0:2a7:9163:8e68 with SMTP id d9443c01a7336-2a951609173mr131094785ad.6.1770672141842;
        Mon, 09 Feb 2026 13:22:21 -0800 (PST)
Received: from fedora ([2405:201:3017:184:52f5:ed80:f874:1efc])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a9521f8a50sm121346305ad.80.2026.02.09.13.22.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 13:22:21 -0800 (PST)
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
Subject: [PATCH v1 05/10] man/man2/statmount.2: Document STATMOUNT_OPT_ARRAY
Date: Tue, 10 Feb 2026 02:47:38 +0530
Message-ID: <91f613b422c405f77993c2d9c993495a30fb7e53.1770671863.git.b.sachdev1904@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <cover.1770671863.git.b.sachdev1904@gmail.com>
References: <cover.1770671863.git.b.sachdev1904@gmail.com>
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
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-5068-lists,linux-man=lfdr.de];
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
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[linux-man];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: CC687114C6B
X-Rspamd-Action: no action

Document STATMOUNT_OPT_ARRAY flag and the corresponding fields
introduced by it. This text is based on this commit message [1].

Retrieve only file system options, separated by null bytes. For security
opts STATMOUNT_OPT_SEC_ARRAY is used.

Link [1]:
<https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=2f4d4503e9e5ab765a7948f98bc5deef7850f607>

Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
---
 man/man2/statmount.2 | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
index dd1f1f17d..e47af22c3 100644
--- a/man/man2/statmount.2
+++ b/man/man2/statmount.2
@@ -52,6 +52,8 @@ .SH SYNOPSIS
 .B "    __u64  mnt_ns_id;"
 .B "    __u32  fs_subtype;"
 .B "    __u32  sb_source;"
+.B "    __u32  opt_num;"
+.B "    __u32  opt_array;"
 .B "    char   str[];"
 .B };
 .EE
@@ -114,6 +116,7 @@ .SS The mnt_id_req structure
 STATMOUNT_MNT_OPTS	/* Want/got mnt_opts */
 STATMOUNT_FS_SUBTYPE	/* Want/got fs_subtype */
 STATMOUNT_SB_SOURCE	/* Want/got sb_source */
+STATMOUNT_OPT_ARRAY	/* Want/got opt_... */
 .TE
 .in
 .P
@@ -274,6 +277,16 @@ .SS The returned information
 .I smbuf.str
 the source for the mount.
 It is a null-terminated string.
+.TP
+.I smbuf.opt_num
+The number of filesystem options set on the mount.
+.TP
+.I smbuf.opt_array
+The offset to the location in the
+.I smbuf.str
+buffer that contains file system options separated by null bytes.
+They can be iterated over the help of
+.IR smbuf.opt_num .
 .SH RETURN VALUE
 On success, zero is returned.
 On error, \-1 is returned, and
-- 
2.53.0


