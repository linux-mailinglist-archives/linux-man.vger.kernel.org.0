Return-Path: <linux-man+bounces-4977-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MBd/JU4YemlS2QEAu9opvQ
	(envelope-from <linux-man+bounces-4977-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 15:08:14 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DDC8DA27E9
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 15:08:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CDCFA3050D7F
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 14:01:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F10B227EA8;
	Wed, 28 Jan 2026 14:01:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dNlhHIOz"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com [209.85.214.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E42BD21ADC7
	for <linux-man@vger.kernel.org>; Wed, 28 Jan 2026 14:01:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769608904; cv=none; b=rwajPvsExVHXFwFKLODSyByFOuGYTxq7owENH7it40zIX7s+GZdufL0oJQHJc8wIUyAcqx11OtgbbCfgevg2GXxQjR+EvNuaa2m/vVNmm28GU7VHtvgMWhNUoAjeJtSUkTIh9dtgcW1txVKNl9Ukc68iCpS9vJMZY01zrmvjh+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769608904; c=relaxed/simple;
	bh=yOFbI57odM2RekiXxfjeE1nSe+15SFpMiPDdK9F/iDM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YKMxaetwYcVMGbUr13iwvOdvF53SP51hd2a/S+MQzT83T++SJ0PxXqxeMDyIUkrYNUSekGuM6d8eGahpLkYbSc/NvdrhiQEioxdg15SrsfiPehCyxYfhNdo6IIz9L/0kafqDD+FPK2uB2BeFwTluj+O+IPIaWyjkpZTnwcASffI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dNlhHIOz; arc=none smtp.client-ip=209.85.214.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f194.google.com with SMTP id d9443c01a7336-2a7b47a5460so4551805ad.1
        for <linux-man@vger.kernel.org>; Wed, 28 Jan 2026 06:01:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769608902; x=1770213702; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PNJ7IhBUFUJXZrMMRldRjDNnLtmAdT5jjLs/YEX8fcs=;
        b=dNlhHIOzuw7p0JUMU8Nvl52Ww33V7YQgglXLD0UMXHdMXNYjVGF98ngrDcTtad8TLa
         7qKTwciI0pzzPyZfU+qDRSE4NxE+z7/A/cc68m/bCMk+XwSKZOaAcnhmYUUAlnnWajq+
         wZX3jefMKPObNmnx2ABZT2v+I7vM+Hd2XIQ4zmmHigVqWyb5ExdZ09GpkKboNSD41dXK
         sAvBzrAFTxTrG4Ywb02ejlVVvet2XNkOO5EqQ+NK++wvA5Y4c+N5sHbcjzInHWV/QpnH
         FbRSue/Ob6eaixKSstCyve87NXazbrkVCdFauF92nSaTm05VmVucUdj9GlU2E54Xph+Q
         RxWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769608902; x=1770213702;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PNJ7IhBUFUJXZrMMRldRjDNnLtmAdT5jjLs/YEX8fcs=;
        b=hKKrgHyYoZvhQB8YQZsy7G3yv1BN7b/Scrd4vjDVpHFLnsyIxEo35fwtttHcgCqTcI
         Md6b1OdRhGwH6RCX58NuAf8eMlv9vSmM+ld7qD9z5YEEynbyLbxTH/flFzDiuksdKz9A
         KcbuLr4rI+axE3+Zt/J5JComTu+Pmjmzo507oLFc9BZbZXZCJFSs1PGYMKKttuscjOrV
         Qs0dMsF90xH9hgFGq56jTrSugTZMga1ftJ/zIC7T3rDKfUFkxwH+xaVyLeqOk8zfwTRV
         nJX6entfSue7dxlfK/qpUs4bnvJQN2vNBFVBgMxcRVDvYe767yNzgBdLgBd2JZEHcnTt
         7SsA==
X-Forwarded-Encrypted: i=1; AJvYcCX1xXgCHiGH1iIe3tHec7hTvBpa8uHBVV6oBRnefmgNgQ6cEiFkko1S6xbU4lbSv+CcxisiK8W5Hp4=@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4sRarN44wvnTT8DXQDk6yY4gPLI6t1mMTcw1XEGoHY+rqix67
	SgEFGlyeotiX34+b5XhutQoGoXomHkjO3mW5J6gCFAWqZcoceC8CaExZ
X-Gm-Gg: AZuq6aLyNgsDlYJH5Jzhf7zqRheBSAw1xzpc8+ilxf2ypAEfyMcChul9diqVXCaq3Ke
	SpepOOO9a3S34SwWN4hSmUfmWeDUXqez2YNqZPRsItTH9VoYyMQ3a/+GTPdBC9F4LfkOwCRSm4Y
	FCoovU1Z1ocvMG7w+yRXT8dArqLx+fe/IEU+rnI2kyzxJwKoCy5PAgHd4tKhXgSSuEIC6QNVBEP
	uKW0+8C7vNCi6zDVgy4U8R/C7oW6mdsurtd60eszWy96U19cVfifo8Sqs2adRtnB80Ci6oRZcq3
	0WGDdg+uJehUTU8FFJUVhK3xwU4uzzrf1l5VlYTn6c2A6Ht2bkCerq7xPylvy1cTb+3Daranm/T
	H7Iec3bRb4+VfJ2rTKsejqCjp+gKnY368XeCOh1IexqAS2sv610FRbw+Ki8R9kUshFsC7fiK0AK
	T8C2bNHUzgo4G8X3FNwoEfCP8mjzZlVD5iShEfyzYJXbpZZPh4DX/OFg==
X-Received: by 2002:a17:902:cf09:b0:2a0:9a3b:d2a4 with SMTP id d9443c01a7336-2a871272221mr55099545ad.10.1769608901621;
        Wed, 28 Jan 2026 06:01:41 -0800 (PST)
Received: from fedora ([2405:201:3017:184:6222:99fc:e57b:efec])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b426a64sm24182115ad.45.2026.01.28.06.01.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 06:01:40 -0800 (PST)
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
Subject: [PATCH 1/9] man/man2/statmount.2: Document req.mnt_ns_id and STATMOUNT_MNT_NS_ID
Date: Wed, 28 Jan 2026 19:27:30 +0530
Message-ID: <b312000a204c408f452757793c12e65be510cb96.1769608658.git.b.sachdev1904@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-4977-lists,linux-man=lfdr.de];
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
X-Rspamd-Queue-Id: DDC8DA27E9
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
 man/man2/statmount.2 | 24 +++++++++++++++++++++---
 1 file changed, 21 insertions(+), 3 deletions(-)

diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
index cdc96da92..8cf6775ff 100644
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
+.IR req.mnt_id .
+.P
 .SS The returned information
 The status information for the target mount is returned in the
 .I statmount
@@ -232,6 +246,10 @@ .SS The returned information
 relative to the current root (ie if you are in a
 .BR chroot ).
 It is a null-terminated string.
+.TP
+.I smbuf.mnt_ns_id
+The unique ID of the mount namespace the mount belongs to.
+.TP
 .SH RETURN VALUE
 On success, zero is returned.
 On error, \-1 is returned, and
-- 
2.52.0


