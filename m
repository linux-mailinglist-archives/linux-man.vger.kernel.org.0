Return-Path: <linux-man+bounces-5195-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KP97FiAYm2lasQMAu9opvQ
	(envelope-from <linux-man+bounces-5195-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 15:52:16 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 18C2716F789
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 15:52:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0A1A1300C81B
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 14:52:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB060335BA;
	Sun, 22 Feb 2026 14:52:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="f6WU4mmw"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com [209.85.214.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB9392253EC
	for <linux-man@vger.kernel.org>; Sun, 22 Feb 2026 14:52:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771771931; cv=none; b=Dmr39Q1/YW7m0T02EpyfVz+uFjePxvd1Xs2qjxdyvxUes7pRVd2BI/FdR35WPEMHPITFDSn3TiKVwHv7gTxJy7JnPuH6mD235dwrQfujERbTld3530RHaQv6brVIQK/wsZfi428rPJVu88nyazBBdjb/lTrMDZhWZY+YowItHxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771771931; c=relaxed/simple;
	bh=rq8V9P75b1Llpz/QYKlVd/DNGPDYJVp3gcuc2l0e8zY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FKyH6exxkwkCOP92BlH/E+VOEqESDiTGQ5Fd4+Yg6ssP5gCZsJUw+2AHiA2nzOrldA926XCS5JkwiFBmc27S5YdkqNN4uMTzWsC5VmwpxxcAhuUF2FTA9L6FGax2d+F2vHuFT7iaXbVqOq+7/o4psbDdyc9m91GEdwa52Wy07kQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=f6WU4mmw; arc=none smtp.client-ip=209.85.214.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f195.google.com with SMTP id d9443c01a7336-2a79ded11a2so23206265ad.3
        for <linux-man@vger.kernel.org>; Sun, 22 Feb 2026 06:52:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771771930; x=1772376730; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JwMOtRBGs+52yq5wfpoCSfdrBzsp/DUlSGxZESfUN9o=;
        b=f6WU4mmw/iFn9uO0O5/Uq0sluOgS7iEJuqx/1CTUQb4OZeliZkoAtVxOmtl/as1mhv
         t2tUWHVcJmnk+bLfhfmwfIY/QGD2Rq1BlIBPWDeIOxqInNb4kRTwMwMHsQOhxjehKM9I
         zcmVwIL4Rr1+Uvgx8uq25Na9jT6oyX+zRnvj2n3tNLns/3Sw0C2OQSB7+sIQtAal91CY
         MCs/1ApA9AWb9t1BEhpVEwGFMdiIgZS0sfsEU9Qq8TrDDdr4vo16RBWoYFQsF4ksqfzl
         MjeZ+nmvEQ/8YPtbO+Pq9hHpcUpApX+XioBJHn/HKu1E/wpOw3FEibjrX1eAXvZ9mHix
         HIDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771771930; x=1772376730;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JwMOtRBGs+52yq5wfpoCSfdrBzsp/DUlSGxZESfUN9o=;
        b=ns5yFdEIq6B7un1dAusGW7gBHK4cVEWpuH8UQJdPyB+nWZ8/qddn85+Dkzq8KNoKqK
         Bb0gwK12G+6Ib4o8shHUzqGLk/LhKkeNWRGALoD9iDBC9nVgsy9uXuN4l5bF/XZNrAME
         a9MJSYHoquj7wZEtP/Y58dBONMh7WHZpXU91M0W1Lr30CA8GxVfKJ9RueqgZw0/fUQHW
         wP9863WsghNBtYOk/QcyoWd1DRt4V4DVT7FWaPMRNffQPJOiZNKBc2Xdvf77c7+dEVy3
         tBC04Q7I+79ph9Sn55ciIIBUW0wvMrUnpUE/oabeudf5pXIL7pVU48sFMnnSEE+J8+d3
         pe8w==
X-Forwarded-Encrypted: i=1; AJvYcCX6eNRTq9dNGYkfRo77D9p5lNvkf7MxOvZGx6hqfCLCAhmcAbP7Kccozs9UVTv7RnZU3isHQw04XIg=@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6YBZLANKWXha3s3/QGV+NhPnU2c+l2fEWZUPifzXkMQaDMYVu
	Q4I30gd5Ltgc/4O34YJBHDMLGATPUfeUD6qawuHzJcpi07Jgd45kUbhX
X-Gm-Gg: AZuq6aJzi4Oq9tsgLb5OX/a7j4atOuwpjeu6xZlyXy9SDEuK4U8IegINVDBcU3wHHHG
	WuM7u9w4CYSNz8GozH/GZgV4L+v/TgBf+dSLigGo/UiXkQX0sD87SDlBlwDtEyVVLapn7+Eq9t8
	M0dnUnGdm07jFSf81ueroKvxUKe0K6Z0yMk9jlKtOYR3aY7KPc6wdkAMAWq3BwUNUFXM02NUgk1
	pthRINo+8dHzhMiltJkJng0+pvtXdyGgD8bRCyoccu5IWyYIMxnfeSePMn1rSoDjeFjmfzMxP4j
	a4qzfpy2EU5Q48XFz0hpZGbDPx1K9OJyRhVMcuR+ogjVqOoBou7SLa3gMBKCMttVnb65xOenv8x
	Ly7Zbic9BKbe1XRUVQdxm8YNzW/KPGfTUDe5vmG75PA8yMJZT7ITV6Fv9B4tI/CCDSzAZZjy94b
	1sjXdg8nR3eyv3TgRB7IiLvmxGFAxX7y5mEd9JOjmyPl+ytxlq5ChEdPE=
X-Received: by 2002:a17:903:4b30:b0:2a3:1d78:7505 with SMTP id d9443c01a7336-2ad745690bamr45781665ad.56.1771771930023;
        Sun, 22 Feb 2026 06:52:10 -0800 (PST)
Received: from fedora ([2405:201:3017:184:52f5:ed80:f874:1efc])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad7500e02asm45355415ad.56.2026.02.22.06.52.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 06:52:09 -0800 (PST)
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
Subject: [PATCH v2 06/10] man/man2/statmount.2: Document STATMOUNT_OPT_SEC_ARRAY
Date: Sun, 22 Feb 2026 20:15:56 +0530
Message-ID: <185c7248b4ee5dbe840904d0b0b3782b29ed6579.1771771560.git.b.sachdev1904@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-5195-lists,linux-man=lfdr.de];
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
X-Rspamd-Queue-Id: 18C2716F789
X-Rspamd-Action: no action

Document STATMOUNT_OPT_SEC_ARRAY flag and the corresponding fields
introduced by it. This text is based this commit message [1].

Retrieves only security options separated by null bytes.

Link [1]:
<https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=aefff51e1c2986e16f2780ca8e4c97b784800ab5>

Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
---
 man/man2/statmount.2 | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
index c238a3d9f..c4200d76e 100644
--- a/man/man2/statmount.2
+++ b/man/man2/statmount.2
@@ -54,6 +54,8 @@ .SH SYNOPSIS
 .B "    __u32  sb_source;"
 .B "    __u32  opt_num;"
 .B "    __u32  opt_array;"
+.B "    __u32  opt_sec_num;"
+.B "    __u32  opt_sec_array;"
 .B "    char   str[];"
 .B };
 .EE
@@ -117,6 +119,7 @@ .SS The mnt_id_req structure
 STATMOUNT_FS_SUBTYPE	/* Want/got fs_subtype */
 STATMOUNT_SB_SOURCE	/* Want/got sb_source */
 STATMOUNT_OPT_ARRAY	/* Want/got opt_... */
+STATMOUNT_OPT_SEC_ARRAY	/* Want/got opt_sec... */
 .TE
 .in
 .P
@@ -289,6 +292,16 @@ .SS The returned information
 buffer that contains file system options separated by null bytes.
 They can be iterated over with the help of
 .IR smbuf.opt_num .
+.TP
+.IR smbuf.opt_sec_num " (since Linux 6.13)"
+The number of security options set on the mount.
+.TP
+.IR smbuf.opt_sec_array " (since Linux 6.13)"
+The offset to the location in the
+.I smbuf.str
+buffer that contains security options separated by null bytes.
+They can be iterated over with the help of
+.IR smbuf.opt_sec_num .
 .SH RETURN VALUE
 On success, zero is returned.
 On error, \-1 is returned, and
-- 
2.53.0


