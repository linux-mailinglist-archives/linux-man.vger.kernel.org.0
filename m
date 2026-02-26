Return-Path: <linux-man+bounces-5229-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eLamOfG6n2n5dQQAu9opvQ
	(envelope-from <linux-man+bounces-5229-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 26 Feb 2026 04:16:01 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 25ADA1A068F
	for <lists+linux-man@lfdr.de>; Thu, 26 Feb 2026 04:16:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 91FB7300C544
	for <lists+linux-man@lfdr.de>; Thu, 26 Feb 2026 03:15:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E8772D780E;
	Thu, 26 Feb 2026 03:15:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bdTdBjWq"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com [209.85.214.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314B131328A
	for <linux-man@vger.kernel.org>; Thu, 26 Feb 2026 03:15:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772075757; cv=none; b=sDXFu4vpIyfYbOud0829cMckzc1Yedt4S0v/tz13ZoyGrmw+RJe/HVpqVms27Uncn+wJzVKvrzs3GDuRH6vATfZFyqwTxjAoihXvDRJhnJxTSd4g4jXqQUbKlX35lNBr7lUmfegSgy5E7xGFjJ4mtVsRbucsKCD2CH9VlGZjG38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772075757; c=relaxed/simple;
	bh=EctMNlMwcWH8kTFa3Hc9NImprJePmuyUjrGnoa5IqIc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FWG4r3Fsblx2BaRC3cr0nmWea/pH+x5Ow1572Ef1wiISkR70MiH1U1CEo7UQAtcL6x/aUnU4Rg06bPJ0yxSd4GleQodC+wf+x8IvBuF8N2ttJAm+E5G1XomBGf4KOhOQoh9GSz3ByKgGqEW2XUdqvuroG1nitzqaJT/F/1SxjFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bdTdBjWq; arc=none smtp.client-ip=209.85.214.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f193.google.com with SMTP id d9443c01a7336-2ad9516a653so1528165ad.0
        for <linux-man@vger.kernel.org>; Wed, 25 Feb 2026 19:15:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772075755; x=1772680555; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WszyCjKFKbn0nkF8UO+s5Uxt7j8q//zUS8zvrRDxODc=;
        b=bdTdBjWq7AK6gK9+L+j0pxBoEMCMHh3UcCfB7Jp0soTDJTihcTAiWbbqF8Rv7TxtO4
         aTZcFpk26qq5ve9BrToDIaA/CjOQN5Q4FLzYMRxoBsHAAn7ZgJCRfxaDvf1pZqfqM+qd
         BIQwQInhGo3az2siROajhXwrvSHFQu81fedI8vVeLRCrwGRyBX/O0Fpx9CNVbEhdlz0n
         PSCd4vGgM8k7y2RBqyAefAy0KwVaS1ehhio9PxjSxf2jeXYRxQbkZrcpqA7nhqAzT7hq
         9YLp/LoxndfsAXB7Lr7FcFT7xzVAVnT8XzfOvQBaKVsqw+Oi9TPowtTf5LotnCQvaKF1
         /14w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772075755; x=1772680555;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WszyCjKFKbn0nkF8UO+s5Uxt7j8q//zUS8zvrRDxODc=;
        b=aDssPbRaKBUMbO18hV8MbAMa37u3NVf765AT7c0pbqx/UHOeSoH3glO+DlODzBz9VP
         VGvgkfSX0FhsVGr3C1VIBM+bZkxhyr/ZymA0TLFK1K5y1GK+rZhELanjJsOgW5WuFe6y
         dHYvmZe9OONSaWNLoN6qdQ+CQSYfLAq5hg8KDQ+e7cbcYx0zeQR5GO3DtBGdaXd/8S+8
         t1e9zCUcw8Avf+WrDqJw93LVwSM8tgh2+AgupOIW6gdsv9eOACVnNYC7aBf+YEHAjChK
         JYKHq/eHoLlGE3mPA9n0YvHgPLiNdnykIMx3zWwCun+S7bhOVvUBTtf7E/NImvphTOmE
         5AVQ==
X-Forwarded-Encrypted: i=1; AJvYcCUiiSkVP7t+cexK8dqSeZ5vnDMrtK3IRbCCF1QyvPhlD8owUVAjFIV3SvevQhIWzGQm+c9mClUkQp0=@vger.kernel.org
X-Gm-Message-State: AOJu0YwcJu1D8UDkfqhkMpeCxHwzKdATmj194Nyl8dOWNqJohQiMbNyi
	QA3j8GSPL2Lc7DnGKlay6l/Kbi5UutH9odx9tFAKcOsg8y7tvG+Enhvb
X-Gm-Gg: ATEYQzw8YF5LOFHXJXyoGeIczuAERGn1ogkAas0YkGIL9la+etlEP99+EzZG2EnyNe1
	KKCkgl91RyBb9Ve7kYpiUC5kTLf/T0Ihb1xf91YH7jN44Bnzk72Py4pvJ5moG25nFy+brPIRZTh
	dA+bC4jLrnNaD82D1YexzZtex0Gh9PkstlE1bVKJQJF7m01E1zhCJx3AxXT/JO0lfaRKis/cLpz
	9Ye3SUjkNnz8PgJvBKc/P9OeFzZLBz3Y/ZtvG1zAn0fJYZFb8+jWqFRYQxjCEXL9QDHkZQZfZpZ
	1rTqhyXU1v/s9m5r4vOrXQt5x37dJC8MZ1iky1oIg1XxbiXmidfBqxpWjvWloJjMH72b5Oxp07K
	2yC7Z+Dvs4SylSzfk30d8GFGkK1FEmmQC8lkZFNie3kodlEnL4iTeZIhz6INlyPpGlbQsPKAQxG
	Uc/nG1a2YeBdTR0HQGmZe10R+ehLzI9EcHFm7UntoJdpA4pnN53g/VfQ==
X-Received: by 2002:a17:902:ec8f:b0:2aa:e6c1:cea1 with SMTP id d9443c01a7336-2ae02e58e72mr7180025ad.17.1772075755271;
        Wed, 25 Feb 2026 19:15:55 -0800 (PST)
Received: from fedora ([2405:201:3017:184:8df:188f:bb44:232b])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb6a041asm7242575ad.57.2026.02.25.19.15.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 19:15:54 -0800 (PST)
From: Bhavik Sachdev <b.sachdev1904@gmail.com>
To: alx@kernel.org
Cc: avagin@gmail.com,
	b.sachdev1904@gmail.com,
	brauner@kernel.org,
	criu@lists.linux.dev,
	jlayton@kernel.org,
	josef@toxicpanda.com,
	linux-man@vger.kernel.org,
	miklos@szeredi.hu,
	ptikhomirov@virtuozzo.com
Subject: [PATCH v3] man/man2/statmount.2: Document STATMOUNT_BY_FD
Date: Thu, 26 Feb 2026 08:40:16 +0530
Message-ID: <ef5a337e52f904d7eeb1e3fa82a09b04b46a4860.1772075365.git.b.sachdev1904@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <aZzuI5pPe19gFvPf@devuan>
References: <aZzuI5pPe19gFvPf@devuan>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,lists.linux.dev,toxicpanda.com,vger.kernel.org,szeredi.hu,virtuozzo.com];
	TAGGED_FROM(0.00)[bounces-5229-lists,linux-man=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bsachdev1904@gmail.com,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.993];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 25ADA1A068F
X-Rspamd-Action: no action

STATMOUNT_BY_FD introduces the ability to get information about a mount
using a fd on the mount. This functionality is currently in linux-next
[1].

Link [1]:
<https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20260126&id=d5bc4e31f2a3f301b4214858bec834c67bb2be5c>

Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
Message-ID: <57c96336ccfbdc05f60b7875c315a8c1dd0d14b8.1771870334.git.b.sachdev1904@gmail.com>
Message-ID: <7d4b22c595feeadb3be6df8a8781344597120f7e.1771870502.git.b.sachdev1904@gmail.com>
---
Hey Alex!

> Also, should we say the same as elsewhere?:
>	"It is an ORed combination of the following constants"
> and then a list which contains only STATMOUNT_BY_FD?

I am not really sure that statmount flags will be a ORed combination in
the future i.e (STATMOUNT_BY_FD | STATMOUNT_NEW_FLAG) would be something
that is valid.

I think for now, it is better we don't do that.

Thanks,
Bhavik

 man/man2/statmount.2 | 40 ++++++++++++++++++++++++++++++++++++++--
 1 file changed, 38 insertions(+), 2 deletions(-)

diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
index 5ac96796c..1556342de 100644
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
 .BR "    __u64  param;" "       /* ORed combination of the STATMOUNT_ constants */"
 .BR "    __u32  mnt_ns_id;" "   /* The id of mnt_ns to query the mnt_id in */"
@@ -89,7 +92,8 @@ .SH DESCRIPTION
 .I bufsize
 with the fields filled in as described below.
 .I flags
-must be 0.
+must either be 0 or
+.BR STATMOUNT_BY_FD .
 .P
 (Note that reserved space and padding is omitted.)
 .SS The mnt_id_req structure
@@ -110,6 +114,27 @@ .SS The mnt_id_req structure
 .I req.mnt_id
 (since Linux 6.18).
 .P
+.I req.mnt_fd
+is a file descriptor on a mount.
+If
+.B STATMOUNT_BY_FD
+flag is specified,
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
@@ -392,6 +417,17 @@ .SH ERRORS
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


