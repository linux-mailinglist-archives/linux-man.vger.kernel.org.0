Return-Path: <linux-man+bounces-5190-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +J5iJAQYm2lasQMAu9opvQ
	(envelope-from <linux-man+bounces-5190-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 15:51:48 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A75016F757
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 15:51:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A3190300B8CE
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 14:51:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08B1134FF5B;
	Sun, 22 Feb 2026 14:51:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DRAGME3/"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com [209.85.214.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7BF1350299
	for <linux-man@vger.kernel.org>; Sun, 22 Feb 2026 14:51:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771771901; cv=none; b=Trm96sgrRnLHUrBEeLnmAwz2fB69zTWy9jR1UnnE+Yybsa108rDJYgcZ8n3xK+GVz88Kj5sYoJ6eJx3JIijzsLu8Qo6qp2tdIDjIuIQPM19lpFm2SrMMZWeP5eybBnhZ7YM0BDd5wTOIvvP3jf8iwfQCTTlobevy6L2TQd39j9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771771901; c=relaxed/simple;
	bh=DhYHk8Polcxs+5cA2H8PnvvRk+9VjghVaB7sgHFGhcU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=X/nehO9rEa86W9N52nca8YCJ37K0hqQxbYZBPzjSsjUI0oV9I0FVPjR3SfEiaZfYS4iTJa4oiaEMLdesDJN6YkNe1utE8l23EphG36ufPL3KMAA/68GFlUCuyVxEfGaUTMiHjJts02yBPGGnut+yxACihaRN+2czIo2xdZcdmig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DRAGME3/; arc=none smtp.client-ip=209.85.214.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f194.google.com with SMTP id d9443c01a7336-2a962230847so35026015ad.3
        for <linux-man@vger.kernel.org>; Sun, 22 Feb 2026 06:51:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771771900; x=1772376700; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=76y0CIAJ5X4UByfI5xJ+a6PrN0l/NhKXUbI6EZpJ5DI=;
        b=DRAGME3/wnJ9B+9JHUMeyS8qGls1lLN9pCR3tAlKED8jEKCNciJiAxlnd7Q9D6onYc
         Z2zR3+TJ4+6VFavSbnOftjUZBQEPiQ0jnoPs6hmRoJvEqu/O/Rf944EGU7UQlMA+19wf
         NL19OAnonrCRrvacsuy5CuLUk6fF+ulhGNU2sps7QjJvZLEsaQjueXTVihP/gEOCLTvS
         Q+r76zBGlzyPYWI4TvZn7Vvth3u6X9RFCgmApi3uqaO12nVraEzkSAq2Hj3xGYhLMPx7
         eelwODR8m4Z56pmkxL3nzLy0SVsa4W9KFaUwFKNU4K+4yjziDHozRwStyiQ/QuR2e/zJ
         O09Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771771900; x=1772376700;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=76y0CIAJ5X4UByfI5xJ+a6PrN0l/NhKXUbI6EZpJ5DI=;
        b=u7pfE9O5TNcILuroA5PyGM5GDGriSnA2wEJvYdVVlIDxe+RPlXG/l25XQswSUDmpcD
         dYtRQgosOdBAPXoGxIslKSSxZ7i6nz4pY+N3DGbM7ZtkfTWJmOfLj36ASGey9LHKhwUE
         mNgSVQ8vnbKw61XJu+aVgLXNzEtgHGoMwcD6u6uATDrnLhADHBIs3d1GM4B8UWzN+J3Y
         +T9jLQmbxn9AO51R8aB+DrOVhOjVvv8L3X7BmTw+QCfooZSljR/0KjXeCBI/8zi7ksLw
         hhE7sF8+a88ElFjbSuw5b1MQrMyG2wgdlJj+B9rPvlb1GObkzHC5is1nyyQBWgWIfJXA
         0msQ==
X-Forwarded-Encrypted: i=1; AJvYcCVVOvQMdtHcYZ78ZfQOVf0SNIZBfKB5sPvZmi6Qa2hJ5F2/DAtuNpZ8dgAPlPSzfHOI/+BGFBiVlG4=@vger.kernel.org
X-Gm-Message-State: AOJu0YxH+mfPcYeVItOs21DBc2lNuJ/KFP5qHJ4s8D5mzFbkKDx8XA1m
	IgZqQQPKxEIF8ZGENdpHApdbFIci3o6XTiTwgoFIqFqoVd7lufpz77oL
X-Gm-Gg: AZuq6aKkgeGXH2nCTA5vCxAKeMz99jeLnAATJZCNxCRrEhxQyXdmmBpDvF1ibV6D41B
	to4ruUnWmshjUtvzBrNL4MHDTHIuOk84NN28v+lg4oK49uDVsFu1MQAxNTuSQmv4Tni69OExgHK
	DOnEMf7SsIsMMlkZXa32fXtxG9oMd6ZjpsMMwjUQghM0fHvw4IQ4mg5KxGZC0MKwuH1JAR4Dsma
	5WuIoIjyPUDDV6myesrqDVOwn/nqffL/bPRUGeiWYSw7YXvMLPlDgu+CqqjLdcUL0CrF19b54Ai
	89Zt2I7KooZhP9VEeCe19fbq7D/0jnUX+l+0UkOsEZqbrXKgoLisQzV24+Udky85bxLieOYFcLo
	6dnZ4ecC/u8SpqQyGocJeyJUGCeA3hhF3xRdwy8KjtOjfMiHTSTOqFLrn9oO4LmQImWX9z2ZOZN
	Fz0qJhVqffhwa5atjbx+OvqzlPFOCj9UvKrxt50G2J3vjNl/744IkL5dI=
X-Received: by 2002:a17:902:da90:b0:2aa:dbd6:605 with SMTP id d9443c01a7336-2ad744ec89cmr53264595ad.28.1771771900098;
        Sun, 22 Feb 2026 06:51:40 -0800 (PST)
Received: from fedora ([2405:201:3017:184:52f5:ed80:f874:1efc])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad7500e02asm45355415ad.56.2026.02.22.06.51.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 06:51:39 -0800 (PST)
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
Subject: [PATCH v2 01/10] man/man2/statmount.2: Document req.mnt_ns_id and STATMOUNT_MNT_NS_ID
Date: Sun, 22 Feb 2026 20:15:51 +0530
Message-ID: <c7cb4bb9b8242009c672ddfd4d6568b8a7dde189.1771771560.git.b.sachdev1904@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-5190-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8A75016F757
X-Rspamd-Action: no action

Document the new mnt_ns_id parameter to struct mnt_id_req and the
STATMOUNT_MNT_NS_ID flag.

req.mnt_ns_id can be used to query for a mount in a foreign mount
namespace.

STATMOUNT_MNT_NS_ID can be used to retreive the mnt_ns_id of the mount
being queried.

The mnt_ns_id parameter description is based on this commit message [1]
and STATMOUNT_MNT_NS_ID text is based on [2].

Link [1]:
<https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=71aacb4c8c3d19da053363a5fe7538a8af082d56>
Link [2]:
<https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=09b31295f833031c88419550172703d45c5401e3>

Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
---
 man/man2/statmount.2 | 23 ++++++++++++++++++++---
 1 file changed, 20 insertions(+), 3 deletions(-)

diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
index cdc96da92..4ffddc43a 100644
--- a/man/man2/statmount.2
+++ b/man/man2/statmount.2
@@ -23,9 +23,10 @@ .SH SYNOPSIS
 .P
 .EX
 .B struct mnt_id_req {
-.BR "    __u32  size;" "    /* sizeof(struct mnt_id_req) */"
-.BR "    __u64  mnt_id;" "  /* The mnt_id being queried */"
-.BR "    __u64  param;" "   /* An ORed combination of the STATMOUNT_ constants */"
+.BR "    __u32  size;" "        /* sizeof(struct mnt_id_req) */"
+.BR "    __u64  mnt_id;" "      /* The mnt_id being queried */"
+.BR "    __u64  param;" "       /* An ORed combination of the STATMOUNT_ constants */"
+.BR "    __u32  mnt_ns_id;" "   /* The id of mnt_ns to query the mnt_id in */"
 .B };
 .P
 .B struct statmount {
@@ -47,6 +48,7 @@ .SH SYNOPSIS
 .B "    __u64  propagate_from;"
 .B "    __u32  mnt_root;"
 .B "    __u32  mnt_point;"
+.B "    __u64  mnt_ns_id;"
 .B "    char   str[];"
 .B };
 .EE
@@ -59,6 +61,9 @@ .SH SYNOPSIS
 .SH DESCRIPTION
 To access a mount's status,
 the caller must have CAP_SYS_ADMIN in the user namespace.
+In case of accessing a mount in a foreign mount namespace (specified via
+.IR req.mnt_ns_id ),
+the foreign mount namespace should be child of the current namespace.
 .P
 This function returns information about a mount,
 storing it in the buffer pointed to by
@@ -102,6 +107,7 @@ .SS The mnt_id_req structure
 STATMOUNT_MNT_ROOT	/* Want/got mnt_root  */
 STATMOUNT_MNT_POINT	/* Want/got mnt_point */
 STATMOUNT_FS_TYPE	/* Want/got fs_type */
+STATMOUNT_MNT_NS_ID	/* Want/got mnt_ns_id */
 .TE
 .in
 .P
@@ -130,6 +136,14 @@ .SS The mnt_id_req structure
 as one or more bits may,
 in the future,
 be used to specify an extension to the buffer.
+.P
+.I req.mnt_ns_id
+can be obtained from
+.B NS_GET_MNTNS_ID
+.BR ioctl (2)
+operation and is used to specify a foreign mount namespace in which to query
+.I req.mnt_id
+(since Linux 6.11).
 .SS The returned information
 The status information for the target mount is returned in the
 .I statmount
@@ -232,6 +246,9 @@ .SS The returned information
 relative to the current root (ie if you are in a
 .BR chroot ).
 It is a null-terminated string.
+.TP
+.IR smbuf.mnt_ns_id " (since Linux 6.11)"
+The unique ID of the mount namespace the mount belongs to.
 .SH RETURN VALUE
 On success, zero is returned.
 On error, \-1 is returned, and
-- 
2.53.0


