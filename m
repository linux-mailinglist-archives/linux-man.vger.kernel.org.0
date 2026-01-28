Return-Path: <linux-man+bounces-4979-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CEGkNVIYemlS2QEAu9opvQ
	(envelope-from <linux-man+bounces-4979-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 15:08:18 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F2CA27F0
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 15:08:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 565BD3051D22
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 14:02:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C28EF23185D;
	Wed, 28 Jan 2026 14:02:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Wzny4X+u"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com [209.85.214.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 685BF230BF6
	for <linux-man@vger.kernel.org>; Wed, 28 Jan 2026 14:01:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769608920; cv=none; b=qV2MmNcI1++vyIt+SN7KHyIhFDk6qe79CxG37eW/STzOz+YJTa6VlpDjX4xkqpIm+5H/0MBd3l6PhaXEVyPAhdoUeuOCqIZq0a6ipP2JdObthbfpJua+FJ59SMD9DOzbfZQoSdOl/POjcw2uysy7zRzDzW6kntbbnxv/nqbjrTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769608920; c=relaxed/simple;
	bh=I8hbxKTN5FaI5/Xk65nvlkJQtXY24fo2hQj8mR0PmJw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pWHksc+SsBl+szVvXI9Dvyv+iFGFTMoszYs+VQJQFtH99sVyDs9xCZHrBAfsU+xAGFH996DYHJL8pnqHgKEXnRsTn7c3X9Lg8pi8NmpnE9bcHr4+hO/a6564sCdmxiJHVH09Z4Rne/WvK7e5RlbJhUO2D1aK0EvRHfxK9O0V0/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Wzny4X+u; arc=none smtp.client-ip=209.85.214.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f196.google.com with SMTP id d9443c01a7336-2a7b23dd036so35993895ad.3
        for <linux-man@vger.kernel.org>; Wed, 28 Jan 2026 06:01:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769608919; x=1770213719; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7ojsn4mbrZGqEbH1Ji2uXEq+5cIOso4rPJ/Zq6G+eRM=;
        b=Wzny4X+uoRaJO/KQXNnvI6/EWsJ8KieS1UkOwr+0R12s/nG4PzKAZOnW0rXAszQPp6
         aRj+jnXp9aQFW3YZt4P0LPxtlX8Fpl2j7EJYo0l56FN5Pzz76NeAy8uv0r2/YnWE20na
         xhPdSVmAmlMpq1Z6gfJDSumMflRMyB64UeA44XUFgi0ka5lOE58v4BTeqL2o+nHzNuLd
         BuIAhPjRI0eE62HMIvzPdiTfNV/Li+YPrTV/Km+e6TxiWE7T9K2v4EM9w63YRJsG4gyf
         P36AGtjY1QDci/ZJzq1BL1t2zcEs+gSKfufrgqvzwCOtsi0GjLj60+A8xPW4pag+BXZE
         nqEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769608919; x=1770213719;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7ojsn4mbrZGqEbH1Ji2uXEq+5cIOso4rPJ/Zq6G+eRM=;
        b=MkjvvJbQ7CnXnX0p+0k8xLyt2sJ9oawMtwbMALiORXv23FyBSlDR7pCxO+6R0C6RLl
         80EjHN3Ddft5Ihra1X88pReDY7tq+CIW3IPqVcT5s8p6cH1tFVPjGmrWzhTsl1x0bmCV
         C6VF8YQC2lsZr1H5olWt0EGcUoKCEPAl8R8SAZahREbfK2R38+iovjdBrfLumkoWtdyX
         OJr7pusQBMeg/TZXlJOTYNwSt4NXCTeG/pWAgDbqVDmQh9Ys+OcQN3Ule9dkHr8AqaWx
         3PNsOoa7V9OdyN1ob6/oI+21nEMY4cNal9F5wAgT7vPAjmMK6KRlgYd0GvirYZ/zWB3k
         Bfbw==
X-Forwarded-Encrypted: i=1; AJvYcCWqZut3tXir7XhvLLIUpSvwFHrQNRtRTjSb2+7NTL+3hkNShWo2d2wIxM/vmEvyG28X2bobe64iZvk=@vger.kernel.org
X-Gm-Message-State: AOJu0YyxeZbUCzsXCLU0gPp4x0dgtUq4gJwIuVb0vS/nUqyZK36pRGso
	P9w0boDH2n4aRy6gNNzaK9kvGc5c+ozw75ONMNt3jaKaNgAOmt40xlgn
X-Gm-Gg: AZuq6aLki6pl0tBhCt6E3lqCimnTJg7xrjebzlhfacDdZJPX1up7ge/eJp0NlBQzz4s
	99pCwO/zxm+2y/sS9wn4cKmTVEqZgcNhRdHBylsuH6m3tIFN9Gl8x3rEFmnXe/HR+6+usSiuYCh
	R8VvTc00w6IO0moIC97OSVmQrpeRi7PRf+ZOfmYnc+YhyVMMCY7N5X/sToRNC1Bjdq7E89cqTn6
	0SWTWb3bbWHqV0wHHGpP71YdLO0yuSjl5p5ri+QHQOyFWUpkqBU0mxxDUXVVZYm2Vta9lel5Tf7
	wK2/oU9Cc9XGCTduG+GUkN/G5M8iaDl3bJxI0VLMrr3R0oDAQFprxzfTMpUIWIp7R78bq3Waeod
	WJQUHHZVqGBald/jtP7BScDUGqCu5BmXnbezl0Vn5r/eIldOOvpA4c+MzsI3B7jHvvYsSrmiFka
	+Sd9hct/6EOY4EDd68dHFW8ATD3yDvG9juA6BEpNbuOfE=
X-Received: by 2002:a17:902:da2d:b0:295:4936:d1e9 with SMTP id d9443c01a7336-2a870e3499bmr49437575ad.36.1769608918520;
        Wed, 28 Jan 2026 06:01:58 -0800 (PST)
Received: from fedora ([2405:201:3017:184:6222:99fc:e57b:efec])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b426a64sm24182115ad.45.2026.01.28.06.01.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 06:01:57 -0800 (PST)
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
Subject: [PATCH 3/9] man/man2/statmount.2: Document STATMOUNT_FS_SUBTYPE
Date: Wed, 28 Jan 2026 19:27:32 +0530
Message-ID: <70455137ab7d26ba2dec998e46a35ad8e41749f6.1769608658.git.b.sachdev1904@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <cover.1769608658.git.b.sachdev1904@gmail.com>
References: <cover.1769608658.git.b.sachdev1904@gmail.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,lists.linux.dev,virtuozzo.com,kernel.org,szeredi.hu,toxicpanda.com];
	TAGGED_FROM(0.00)[bounces-4979-lists,linux-man=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bsachdev1904@gmail.com,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	RCPT_COUNT_SEVEN(0.00)[10];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 85F2CA27F0
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
 man/man2/statmount.2 | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
index 8ff01075d..462f6060e 100644
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
@@ -259,6 +261,14 @@ .SS The returned information
 .I smbuf.mnt_ns_id
 The unique ID of the mount namespace the mount belongs to.
 .TP
+.TP
+.I smbuf.fs_subtype
+The offset to the location in the
+.I smbuf.str
+buffer that contains the string representation of the file system subtype.
+This is particularly useful for disambiguating FUSE mounts.
+It is a null-terminated string.
+.TP
 .SH RETURN VALUE
 On success, zero is returned.
 On error, \-1 is returned, and
-- 
2.52.0


