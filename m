Return-Path: <linux-man+bounces-4983-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mPpXAXQYemlS2QEAu9opvQ
	(envelope-from <linux-man+bounces-4983-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 15:08:52 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 706B8A2810
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 15:08:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E86023064F30
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 14:02:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B593D23D2A3;
	Wed, 28 Jan 2026 14:02:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Yhztc8gn"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com [209.85.214.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F8723B632
	for <linux-man@vger.kernel.org>; Wed, 28 Jan 2026 14:02:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769608949; cv=none; b=ajEERm4/Seh84txBx2vvxbM98deHya6Zw+lI50LDm+X0PEgdrKtEgv4wAndbuoti5sJSWLmdNoTA/pknT62d9z5f+8WCpgcfIcPp7n2lZnsN3eV8uN08akH9WYLRalfLW6opOjBF/lIAsElYx8YeeYWq/xg1LQAARSaKxXNbq3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769608949; c=relaxed/simple;
	bh=TcAI0GlqP7+CKpXQHFN3krplQbdcWXXwg40RHBSP/0U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HuyPPdJhFhY2oyi9rE6LRlCREgpbRxxdljhUfE7XNcTuhchHsJYSayad8U6s1I2fkitdpPslUSs0SH6PUZubRXh9VS7iOUpnGCiwrG5KQ9sBoXJrzWuKYy0xb8VTq/vNDTbuXSkC2HLxuyhdaoRtxIwa5aQ8MTr5LPlL4tpeWdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Yhztc8gn; arc=none smtp.client-ip=209.85.214.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f196.google.com with SMTP id d9443c01a7336-2a12ed4d205so45857585ad.0
        for <linux-man@vger.kernel.org>; Wed, 28 Jan 2026 06:02:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769608947; x=1770213747; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PLKnFzWtXZYIqUvOS1a+rbq2qLpX3qhqUZpl8Yj3JAI=;
        b=Yhztc8gn7UKkLeY7jWUtBWd6sqDhvLpy/j777A9kFmb8wBFdDwsLiaO/+wJmLl+49G
         XhkcWzswT1PumPbLtbKh6WXone2yJ6PduYqXRzrTXt8WckASocchRRlGWMXABC6oHXob
         6YwuJ3xFvzjRyMrbeAL/1DS8BkeARtsHdZHh/hNqvQhSc7jQUv1kdLqnVQM+q93CavkI
         uRvN4neX0WgsXpqqEf3gh1uy4hL/7vJpdtJf12e0OM2tg6uDDIiJ0WDTSaYGFnQ9Ry7i
         ZRmRBbkucSQVF2fwVYxYCBoQqBQfyqcFEoBPsSkWpzYcTpcEYOFlwTad5NG1K71zJbyV
         Fo+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769608947; x=1770213747;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PLKnFzWtXZYIqUvOS1a+rbq2qLpX3qhqUZpl8Yj3JAI=;
        b=XnktlFdwY3gGLPEwRl3fIXUjAvKcRbBUPiHq7qP04hErAvdBgQ4k6BVWIZckDDCkX0
         vtnqMTD8X/7lBdUYz21HKlog/s3Yh7FUoVeJt2Xhiw0TRhYuZVcPluZALraCzZVYcGTD
         zxahFt9NB9gLyTePfvjxDpRxhTshFrGZs0IekRBIn96uwlqEzWB/cI8zn+q1LXcfCZwO
         XkTfVwyvunCmETKLu9DKhp+YA+Kd3dL45N8SVOhPISKca6ZCsYq3duzEtE0+kxw8IFDd
         IWUHc2Q5X4UDPXKEZTvWqHXZqFYKZjXvEGrjEtLVsuctyfLDg/9rkd+xoUkVUlApzVMu
         Xm8g==
X-Forwarded-Encrypted: i=1; AJvYcCVieVQVUs+T2WYoIaaQaqDFS1zLM3KZC43FOwOrhLAHp+qmLi9xuzzXi92iEpf4vHPnByPsi6/HYYo=@vger.kernel.org
X-Gm-Message-State: AOJu0YyEDiVxSPMrggh47lEM6uJJ4ud6UmKF5jDWH1gQCazp4lUHA8pt
	PtXG5JM6ea86AVU2E4MJ4AsJ0TLQ0hEiEkrJ1BU2m0ngGUM6M+IXrbw8
X-Gm-Gg: AZuq6aKm9CIb+pGbrjh8xXTT+Gajw/mG2Xn4uKLR/eelSgqs+r3sVQTQt8ShuWeI9uH
	tPuLktmTqTD9tJjsJ+Sn91pxxcBfo852MJPucXf+kazl/qHzsj1RXu4tMlQ8EqmK5TSi0znl+f7
	KsVgys8FqUQXThvhQEyc8Y2iGGsplOWvXEJHkJtbe/Zfw1LE3bZQaVEkPAqRbJOzRxkCv08LtUv
	2ro9LdawKBXT6QU6JfmDrZr58fXN4AJ8o4Nk8OPG2sUeyF9bKMH7Tjoz7DP3/dP7GfgKGCL0Xa/
	XBFA7t2ef9IEt0vvoTzzKRZzm9ptIsSS+PKpKSRHfcrSsGIwjHf6wMlHQ2RDfi2JrJCBM7zB7Wc
	vJRx0QI64/13kDvzfY7H/opAThm8YXa23SiPEU00hojLlO4j5EHS+VD5YSk0NEdAPQifvAX1/U7
	KHJ5a3mjkMEGYhjeyw9v+epWmiId2d6SwOAszzyJ7YHBg=
X-Received: by 2002:a17:903:1b0d:b0:2a7:7c66:f3d1 with SMTP id d9443c01a7336-2a870d78e73mr58417885ad.26.1769608947156;
        Wed, 28 Jan 2026 06:02:27 -0800 (PST)
Received: from fedora ([2405:201:3017:184:6222:99fc:e57b:efec])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b426a64sm24182115ad.45.2026.01.28.06.02.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 06:02:26 -0800 (PST)
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
Subject: [PATCH 7/9] man/man2/statmount.2: Document STATMOUNT_{UIDMAP,GIDMAP}
Date: Wed, 28 Jan 2026 19:27:36 +0530
Message-ID: <03658d771bb50174b5bbba2e9d794430da3b7a15.1769608658.git.b.sachdev1904@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-4983-lists,linux-man=lfdr.de];
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
X-Rspamd-Queue-Id: 706B8A2810
X-Rspamd-Action: no action

Document the STATMOUNT_{UIDMAP,GIDMAP} flags and the corresponding
fields introduced by them. Most of this is based on the commit message
provided here [1].

Link [1]:
<https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=37c4a9590e1efcae7749682239fc22a330d2d325>

Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
---
 man/man2/statmount.2 | 33 +++++++++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
index 4dc312ec8..4ae609818 100644
--- a/man/man2/statmount.2
+++ b/man/man2/statmount.2
@@ -56,6 +56,10 @@ .SH SYNOPSIS
 .B "    __u32  opt_array;"
 .B "    __u32  opt_sec_num;"
 .B "    __u32  opt_sec_array;"
+.B "    __u32  mnt_uidmap_num;"
+.B "    __u32  mnt_uidmap;"
+.B "    __u32  mnt_gidmap_num;"
+.B "    __u32  mnt_gidmap;"
 .B "    char   str[];"
 .B };
 .EE
@@ -120,6 +124,8 @@ .SS The mnt_id_req structure
 STATMOUNT_SB_SOURCE	/* Want/got sb_source */
 STATMOUNT_OPT_ARRAY	/* Want/got opt_... */
 STATMOUNT_OPT_SEC_ARRAY	/* Want/got opt_sec... */
+STATMOUNT_MNT_UIDMAP	/* Want/got uidmap... */
+STATMOUNT_MNT_GIDMAP	/* Want/got gidmap... */
 .TE
 .in
 .P
@@ -307,6 +313,33 @@ .SS The returned information
 They can be iterated over the help of
 .IR smbuf.opt_sec_num .
 .TP
+.I smbuf.mnt_uidmap_num
+The number of uid mappings in case of an idmapped mount.
+If STATMOUNT_UIDMAP was not unset and this field is 0, the mount is not an idmapped mount.
+.TP
+.TP
+.I smbuf.mnt_uidmap
+The offset to the location in the
+.I smbuf.str
+buffer that contains uid mappings as string array separated by null bytes.
+They can be iterated over with the help of
+.IR smbuf.mnt_uidmap_num .
+The whole range of uid mappings must be resolvable in the caller's user namespace.
+.TP
+.TP
+.I smbuf.mnt_gidmap_num
+The number of gid mappings in case of an idmapped mount.
+If STATMOUNT_GIDMAP was not unset and this field is 0, the mount is not an idmapped mount.
+.TP
+.TP
+.I smbuf.mnt_gidmap
+The offset to the location in the
+.I smbuf.str
+buffer that contains uid mappings as string array separated by null bytes.
+They can be iterated over with the help of
+.IR smbuf.mnt_gidmap_num .
+The whole range of gid mappings must be resolvable in the caller's user namespace.
+.TP
 .SH RETURN VALUE
 On success, zero is returned.
 On error, \-1 is returned, and
-- 
2.52.0


