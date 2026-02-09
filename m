Return-Path: <linux-man+bounces-5066-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qLkfKY5QimmmJQAAu9opvQ
	(envelope-from <linux-man+bounces-5066-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 09 Feb 2026 22:24:30 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C90F114C5D
	for <lists+linux-man@lfdr.de>; Mon, 09 Feb 2026 22:24:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2DCB53019916
	for <lists+linux-man@lfdr.de>; Mon,  9 Feb 2026 21:22:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D1C630B539;
	Mon,  9 Feb 2026 21:22:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dv1Od4oK"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com [209.85.214.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75A6C30C63A
	for <linux-man@vger.kernel.org>; Mon,  9 Feb 2026 21:22:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770672137; cv=none; b=PBANUJX+9tmyq/o7eFBanGEXLP6A6xZnQ1BYyvL553hXIjmOXlI4eo+U4a51Eg4BHaqHszWRsa/tDGc4bV79IjYtBei0w1rLjNnHY6TYvO6+I4GOdws1qwIqgW0nMMaNHIMBO8Sfq1UucrWsL+C1iFn+cqFBW2K5HreDOaWQmY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770672137; c=relaxed/simple;
	bh=jCE7tubq+c+PXvG4Tvpi8GeCBposITj015F2+HwtN98=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pvN2Ps2Puo3i3sNvEhbPgzpqYYr9VFj3Sdqo7UIEhi1hcpb4QccBTEUJzkiq5MW5KpYd2Qv0OTGTFvFzVxe2YRQepAU0X/an/GZsARtG9TRqqCCXERJGD2pdnlhD7pH9jzQ5o2/PBrt7m21OOGkcydV4cOMM/zrluUU81TcYyQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dv1Od4oK; arc=none smtp.client-ip=209.85.214.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f195.google.com with SMTP id d9443c01a7336-2a102494058so27162245ad.0
        for <linux-man@vger.kernel.org>; Mon, 09 Feb 2026 13:22:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770672131; x=1771276931; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pJhFX73pl+it20AxSkcAN8QXPHiJ5dp30ptTXkOkhEg=;
        b=dv1Od4oKNuphhTvaAicuwRtkxNWjMWA63D9yfdu7GlyeYsEwJnmS3Mu/CjPiR7x0Ev
         p90baDHzqD2f7sjxpqFDFRTqv96R9PSX+K79Sai/tMMHjff+0zUstumZSwBCiTYz3geV
         NsZfoOg2wWX6EendwjTzEQdjcKSU/YGfV2EutMlwrtnCF2n4J/YrgREyoS7b30v35zYc
         wN5nXHD/Fce5YIffsnmz63BPsFZlGy2EF5e0V2Oc4U/qaZPuTEk208nitt3CWJ/ffpke
         8kqdmowKIkSjIVm+DQ79xRs4gJNCCxokpBK0oLOyjtXhut2ZngtTBFAwE7jHFuYbhQyZ
         rJpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770672131; x=1771276931;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pJhFX73pl+it20AxSkcAN8QXPHiJ5dp30ptTXkOkhEg=;
        b=mrvjsL0q7wjHjopAr/p+e7EmaSuMwMmLrRxrKbYa7BKPmsNdsTaM93PGn12t4dB28c
         5Sh58cqyqJJqmJoMz6l55Efr0/XSmQEerVUOFReJD64pJMXEfY1iQZyU0b8wBDQVdHW6
         WIwj/6Ut5ct3DDCZFEaWaWw2FccAGFgBWxm1LGfkcDhxUB0KwZnA/naDlyXY781poVKP
         r2dQHsOdtlp66o2ZqKMn3p7vNS5y5kQe0oToYHve7wVq1mJjeZBR61CtAsKqDHxYApTZ
         3Xx6JI1lrolBo+DDwbOn1WnIbWMEtPBL5xgRIkx5nsdxyP9o8Mq/QUwWf1m+izLlQstR
         qfFw==
X-Forwarded-Encrypted: i=1; AJvYcCWCnRvM9fPWwFW8LEdbMBxYPqLm/D5G9pOvJZK3yv5CdN/WywstnE8uwNdMFjOAPdMm7Y7AHHctuLE=@vger.kernel.org
X-Gm-Message-State: AOJu0Yzs7L5V3EL8Ci0WwZ3CTIfOsfsPLh2V05YSNkOT7Fs3oZ1cUdaL
	wU/mwywqR+xxtJsFlBObWExY5ih+1XXrog74Bv0Yo/mCWVdh3Rl/ZY+l
X-Gm-Gg: AZuq6aLQiFVqtsZdhGqzcewt6K5GHa01/CkvsQyqJ56eReAeySzpzCzgJs+HPewLvML
	bx/gqP8o9YBhkKLm03JDOThgnhS7AUP54/hSLTRlL8QSaMcSRMYIPyv3ix4+xYUwNrmmMGNX7CV
	4zuh7WlDPWi96HuT7TsgXhlt+HezVX0CVyjI8d2/mUJBIPF4b8WltEjk37PTwYU5vrl0DVBUcO7
	e3aGY0wn5LPoag0v0wp9a7+9dxSIIuZoldXVeEq/OANqiQGX1ChhWvHEtRd1pKhkZ8XvyBOhTdO
	jeTgCWwxyL6u07Ub+7UlScFn1odKUxXmvQlcJGReDs78bFZPl4xV1r+uVcvwR3V6gFUanrnyAZr
	oUWA5sqb72cK0GrBP/PzDd9VQBVpruzT2YUyVpAR9rReuhMqYgSx8GnGqtbcYYcK+RNZ1zpbNbk
	UsGVn7E2A9YQ3F7VwvDMA6XLJ11NURL7bnb+oa9zrn9ew=
X-Received: by 2002:a17:903:1a6f:b0:2a0:9934:a3f3 with SMTP id d9443c01a7336-2ab0fe74d1amr1039005ad.24.1770672130584;
        Mon, 09 Feb 2026 13:22:10 -0800 (PST)
Received: from fedora ([2405:201:3017:184:52f5:ed80:f874:1efc])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a9521f8a50sm121346305ad.80.2026.02.09.13.22.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 13:22:10 -0800 (PST)
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
Subject: [PATCH v1 03/10] man/man2/statmount.2: Document STATMOUNT_FS_SUBTYPE
Date: Tue, 10 Feb 2026 02:47:36 +0530
Message-ID: <ca83056dc1c01bbccf63ba6e046fe2db7f0ed5d1.1770671863.git.b.sachdev1904@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-5066-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2C90F114C5D
X-Rspamd-Action: no action

Document STATMOUNT_FS_SUBTYPE flag and the corresponding field
introduced by it.

STATMOUNT_FS_SUBTYPE retrieves the subtype of a file system, useful for
FUSE mounts (example: fuse.sshfs, where "sshfs" is the subtype).

This work is based on this commit message [1].

Link [1]:
<https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=ed9d95f691c29748f21bc019de9566b698fdfab7>

Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
---
 man/man2/statmount.2 | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
index fee37069a..b24b4a5fd 100644
--- a/man/man2/statmount.2
+++ b/man/man2/statmount.2
@@ -50,6 +50,7 @@ .SH SYNOPSIS
 .B "    __u32  mnt_root;"
 .B "    __u32  mnt_point;"
 .B "    __u64  mnt_ns_id;"
+.B "    __u32  fs_subtype;"
 .B "    char   str[];"
 .B };
 .EE
@@ -110,6 +111,7 @@ .SS The mnt_id_req structure
 STATMOUNT_FS_TYPE	/* Want/got fs_type */
 STATMOUNT_MNT_NS_ID	/* Want/got mnt_ns_id */
 STATMOUNT_MNT_OPTS	/* Want/got mnt_opts */
+STATMOUNT_FS_SUBTYPE	/* Want/got fs_subtype */
 .TE
 .in
 .P
@@ -257,6 +259,13 @@ .SS The returned information
 .TP
 .I smbuf.mnt_ns_id
 The unique ID of the mount namespace the mount belongs to.
+.TP
+.I smbuf.fs_subtype
+The offset to the location in the
+.I smbuf.str
+buffer that contains the string representation of the file system subtype.
+This is particularly useful for disambiguating FUSE mounts.
+It is a null-terminated string.
 .SH RETURN VALUE
 On success, zero is returned.
 On error, \-1 is returned, and
-- 
2.53.0


