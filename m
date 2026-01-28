Return-Path: <linux-man+bounces-4985-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4LEmOOsXemlS2QEAu9opvQ
	(envelope-from <linux-man+bounces-4985-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 15:06:35 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 69842A27AF
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 15:06:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D94D43075F08
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 14:02:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87AC3231C91;
	Wed, 28 Jan 2026 14:02:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FXRG6WMy"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com [209.85.214.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 961E8241663
	for <linux-man@vger.kernel.org>; Wed, 28 Jan 2026 14:02:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769608963; cv=none; b=RvrQd1Bw+dpH3RNs4Rljx6Dam72YtjtyZdCA4TdCteJk4vQVAN6NekAE+xhcTm3HQNU0b2g7iUy64HOVLNBwFKGNvdMskAlSl+4u7q3yG3xjpnfFqyzm7yH3iz1d9eT9fFISKYUTCGWp6QQqDo6Y7kQ5SOnvylJVU4G8urbEptg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769608963; c=relaxed/simple;
	bh=LDi0exzhCm3kmj0vMHQ/YcU7aepk2BYK9UfglzhINpM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=igNYRopOZQcfVX9FejXt5PpP7ynou2jRo3ENZ4yho6GeUTVIWefqR2UjqbFHx8u6ase8duQ/I5niJA/RoYYmgBklcE7mxq2Ebgs2oWGFts17UotLb5Z1/voBYvx3J50C5Es4sGvno7QrzY4Mom7ek4HCC86G7hrPDvaI/M00DJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FXRG6WMy; arc=none smtp.client-ip=209.85.214.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f195.google.com with SMTP id d9443c01a7336-2a09a3bd9c5so50052025ad.3
        for <linux-man@vger.kernel.org>; Wed, 28 Jan 2026 06:02:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769608961; x=1770213761; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j4RC/JKUxEaS+5UJQo/U/RXYQJzwR79k/DL2LAerCq4=;
        b=FXRG6WMyo1jDP2HAFaxl49eTR1CZTTkZ2cSA4Pj9GLygjaXEszRdcRdvIlUsU4Md6J
         CoIWnEMzC4qofgGDSnQycvSSnF56BYXXQlS4Say9eE+hW/ARxVajT0FnpXAbTG/K0mWS
         ms+5RyjfjFMDXAhB5G8e08KvYWq53NV2us9lPTKeJX0J1YLdYbMUH8cAglvyun42Lm0H
         9bZOCdIKEaabowbK4PZAl+VvZaxqor2FrcqEtDBrRJcc00a/KSv5XTQnCnSNTqIDuJSQ
         rDqrlQsxbnTIR5dzvFk54d78DQJh664MU7TrzMMhqev6SHQIWgU/yrFqpYr3R7DvLtJy
         nNQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769608961; x=1770213761;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=j4RC/JKUxEaS+5UJQo/U/RXYQJzwR79k/DL2LAerCq4=;
        b=n2GIOlblxNc/XX9PDUeUkuFtefgh8xILVlmUzPwI6rsdru5Irk+Gaqmog5yUmqa9J8
         lQUdKd9M9vbOxEvp8V+8NZqwf7EYiXsPbgV6WIU4GeTuywbW3NgbueQgMLBvICK2sNrU
         CHVaZ5SqQcf1syAvZMU3lYitGCCBpIo2QbVFm3Dn4jde9EgSqyaJ0fqIUHH22zjSzChB
         2yK47rron10dPmvp4Suli+NUnc23gmBldq2Hla7o/PV9R/r5/sZTtrWv0kYFEIijMkfk
         b/WjdsCTGiKFEubZ19dKVd4I1gQMQLvKlEwzGGcPmj/VY/V5HH5zrQ1JlENK4G3TzZB0
         2nzA==
X-Forwarded-Encrypted: i=1; AJvYcCVQ3RN5ZeRY9eoTG9eNEO3SbuNhl8jJGdA9TlVxpzEydh0ZsGJVH3jdpTeyNgUxZ2bAVQybDHBkZ4o=@vger.kernel.org
X-Gm-Message-State: AOJu0YyUQAn38T3Plj6DrtCj5sZDmUVqAx4sbSYGIC6go9+e4q0NDkOu
	PzLUxbcH+2jAdIcV9ImyCFwomoafjhBzQZN7YsvMJnoz1fZPh+v3JEEU
X-Gm-Gg: AZuq6aKcBjQSPbMiLZQjz6L9Dyzj08x+xMBPYRt9+tkEo9I/DXkzJA5cwhjJQVNCjxB
	c/jgxjAXkpUl3yeYis5H/sIpimiQoa6HEvWiqIYioHbLpWE8OAUk3d7M15I9H1yvJ8M0moda0Ry
	lsLnXcMsA2IG7YGB9WYArlMGHHkuiobv1uwjjCfJFsu33cZwEDngZQtsDuCoMHvIZQphomutPdk
	liF/8XZjMjIUIB4Csm7RUaLXEydwZ8dC16UQ7WpXQJ7GUf4V5vysnL1hxglyPE+VTNkhIaPa9+7
	JitPws+e/Myn5ynPqzAB8Y4HOaU80OXU8tPWaPw+fd72WJvA9bEoMFaDDyhEBRkZsDFRwULmYXT
	uVTCVOmY6M3ojywmE4T5wp0tlbxMojmIHrwnZREAyuk52XERCJI5BiWY7bPwIprXPucsNTNNDPL
	RJfvNa9vkOZyydi9uvavgXlMIr6Er0NpoLsMbW6fxFqts=
X-Received: by 2002:a17:902:ef52:b0:2a7:d7b8:7672 with SMTP id d9443c01a7336-2a870d4d015mr51242415ad.4.1769608960749;
        Wed, 28 Jan 2026 06:02:40 -0800 (PST)
Received: from fedora ([2405:201:3017:184:6222:99fc:e57b:efec])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b426a64sm24182115ad.45.2026.01.28.06.02.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 06:02:39 -0800 (PST)
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
Subject: [PATCH 9/9] man/man2/statmount.2: Document STATMOUNT_BY_FD
Date: Wed, 28 Jan 2026 19:27:38 +0530
Message-ID: <5bc8d1e2b565f5c10c9591c9fab8b6e7f545bf5d.1769608658.git.b.sachdev1904@gmail.com>
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-4985-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 69842A27AF
X-Rspamd-Action: no action

STATMOUNT_BY_FD introduces the ability to get information about a mount
using a fd on the mount. This functionality is currently in linux-next
[1].

Link [1]:
<https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20260126&id=d5bc4e31f2a3f301b4214858bec834c67bb2be5c>

Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
---
 man/man2/statmount.2 | 33 ++++++++++++++++++++++++++++++++-
 1 file changed, 32 insertions(+), 1 deletion(-)

diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
index 79ee752c1..d354f988e 100644
--- a/man/man2/statmount.2
+++ b/man/man2/statmount.2
@@ -24,6 +24,7 @@ .SH SYNOPSIS
 .EX
 .B struct mnt_id_req {
 .BR "    __u32  size;" "        /* sizeof(struct mnt_id_req) */"
+.BR "    __u32  mnt_fd;" "      /* fd on the mount being queried */"
 .BR "    __u64  mnt_id;" "      /* The mnt_id being queried */"
 .BR "    __u64  param;" "       /* An ORed combination of the STATMOUNT_ constants */"
 .BR "    __u32  mnt_ns_id;" "   /* The id of mnt_ns to query the mnt_id in */"
@@ -86,7 +87,7 @@ .SH DESCRIPTION
 .I bufsize
 with the fields filled in as described below.
 .I flags
-must be 0.
+must either be 0 or STATMOUNT_BY_FD.
 .P
 (Note that reserved space and padding is omitted.)
 .SS The mnt_id_req structure
@@ -97,6 +98,23 @@ .SS The mnt_id_req structure
 it should always be set to
 .IR sizeof(struct\~mnt_id_req) .
 .P
+.I req.mnt_fd
+is a file descriptor on a mount. If STATMOUNT_BY_FD flag is specified,
+.I req.mnt_id
+and
+.I req.mnt_ns_id
+are zeroed, the function will return information about the mount the fd is on.
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
@@ -366,6 +384,11 @@ .SH ERRORS
 points to a location outside the process's accessible
 address space.
 .TP
+.B EBADF
+.I req.mnt_fd
+is an invalid file descriptor.
+.TP
+.TP
 .B EINVAL
 Invalid flag specified in
 .IR flags .
@@ -374,6 +397,14 @@ .SH ERRORS
 .I req
 is of insufficient size to be utilized.
 .TP
+.TP
+.B EINVAL
+.I req.mnt_id
+or
+.I req.mnt_ns_id
+was specified alongside
+.IR req.mnt_fd .
+.TP
 .B E2BIG
 .I req
 is too large.
-- 
2.52.0


