Return-Path: <linux-man+bounces-5211-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iKL3ACmanGmKJgQAu9opvQ
	(envelope-from <linux-man+bounces-5211-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 23 Feb 2026 19:19:21 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8A117B6AB
	for <lists+linux-man@lfdr.de>; Mon, 23 Feb 2026 19:19:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0791430440A8
	for <lists+linux-man@lfdr.de>; Mon, 23 Feb 2026 18:17:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0BBB33B6FD;
	Mon, 23 Feb 2026 18:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="X2jYT930"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com [209.85.210.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB41533C198
	for <linux-man@vger.kernel.org>; Mon, 23 Feb 2026 18:17:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771870654; cv=none; b=YFZHXCHWwIVxHMJDBtGQhk9lcwWsaT4SiBXd0DDNOKaYsJ51qQOOKEkaWYz9caqFs3zOSf1EYgUu+GY0u53g+4rdhPsuGQuIwIPL5BeBZPKF5LDi1VE7dfyoT3fLTwLj567KpHbMn/kJpgtXmMWJUboFa2CWLXE+ryb1gp3Qbqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771870654; c=relaxed/simple;
	bh=rKiSJpvHzC26gNwUv7SOHcviwsTuEgBEO4AKEmH7x5g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WTa3ooMMFTJnoGrdfLGtB0l7SQqYE+bqbrkVB+21h1hqu1sGyTiqhXBYun57tdfgM9xVgkz3QF59WquK6JCxcvsRRDIewAgTbtRNlXJHl7rQ1wOu/sA+F7p5OG5Qlx5PT79AWmDxOQqfbX2qIAyCUzjK9EcJOgLfMP3qzq0Vpbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=X2jYT930; arc=none smtp.client-ip=209.85.210.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f196.google.com with SMTP id d2e1a72fcca58-824a3ba5222so2466472b3a.2
        for <linux-man@vger.kernel.org>; Mon, 23 Feb 2026 10:17:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771870652; x=1772475452; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wcw/PqwocRM5Id4EKWOCJb15MR8JyYwObAk/H/U2vB8=;
        b=X2jYT930/V+2gdwjI3iPO9X2AgghWDu8pN/nGxVjnQNS0H2MkIUn4zCsTJ+pK+oTAs
         4c6GOPILO89nbqrNKVJmYrUW5DHB+ulb/T0C4P3YeK3MyX+XcQk5QiWhlb2EE1RoB3at
         Ni8H23gfhza+UviAgpD/cf+g99qZizuoJ+KyHb1H5/sVFGIxqltgd/hUnI2uDTG6Osmv
         +a90ySOtImMKtbXgysDB99s9hLhr7rngctYV03t/8n5tZNHBCPVdx4/Iowd6Ht5eDOJE
         q8iL0h6/LBZHLGCD6tdzMPX6PhtfUoXLdn31JQiKrK/cXZCxT8U1wRWHL+wbgjNfBauX
         02aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771870652; x=1772475452;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Wcw/PqwocRM5Id4EKWOCJb15MR8JyYwObAk/H/U2vB8=;
        b=cCM8ajc441gzRz1WEv1V2E08Vwp5M5sDxSt++w7IMSasDHSOwJVZErDinsVKHkQpP9
         O8uolnWdixxt9E9M8+8S5DBPQwmyZgrraG/HgX9aB04LPQUG+oN0EJDIYgkGLrXbovP2
         qVm42iUkWNAKLDIyTtZyh/R3jLWGu0gRcahF1IVOsbTqGW41K4uMcxSar9pyspqXKJIN
         nyQztgt+Zbg3izOwbMCIH2koLd0+bJHnvKaD0wJAXZLe9OfxzwTFRK0aI3LmV7XSo3Tl
         F/JqwQ4qs+0IJPqn3eHuIcAFmAPkO6T5zCc7vyCYXd7+uM8EV5LbiIGdBhW5AobSCGRh
         3cbQ==
X-Forwarded-Encrypted: i=1; AJvYcCUQXMvVVegHqqpYXluDZtDVvKpobhLDDt1HevxYBZ5Jc4NE62CS1E4AVhve4RSnXKa5xg25uJ0Zmhs=@vger.kernel.org
X-Gm-Message-State: AOJu0Ywg0nsfobZadH7ai7PfdOBwbKFddYamidHfXAKtCmtAPLGxXi7L
	O/3DMJflVKoXd48I+XDCLGl4r9zKrFNy2kKJz92RG1yI5zs754R3ptg3
X-Gm-Gg: AZuq6aIBrGN/E9jGlwVj0Tl56MilmAMNPctHiK6OeUtooCGT/vQoGbKK97saJeXdtYa
	D88TBEredfBVezgW5RtnVU9umn6enpjLqNm2xy2NDLGzRv4we7ua81dBjZUccBgzF19Eb+JPNkm
	JTOTWdWeXKdufvpM6SyQ8gClcpWT+TK3ckFRLdlm2hsVLrd+dvGi1gRG++x56xRC/fOuseR3f7u
	gMCtYV7SozR2yd6eaD1w5v9RHpcMkArKPhsqATHQlQHzB18PBBf6jVqd9ajQTkQ5b1cxDztZTJF
	6dtPK3nLl/UEpg2ynDD9U5vOf99Bp6oKMEDgTOnPEPhXGO83nKCFlKs96MXdpJKXsUnbZslM8Tl
	RqH6RZWia2rU1U4kF9y/XGKI4FJnou0l5C9YOHtvK6MuDj/6dLy1p5ooDpZedGlhD1HFzKVpfA+
	ZLJrD9zyjHhi2LA0UZeDqGxMBLrfEbLOZMDz+v0PvxjknwCCZTyjeK15zbB+jZZAbO
X-Received: by 2002:a05:6a21:e0a4:b0:395:7fb:9362 with SMTP id adf61e73a8af0-39545ec9972mr8379963637.19.1771870651808;
        Mon, 23 Feb 2026 10:17:31 -0800 (PST)
Received: from fedora ([2405:201:3017:184:8df:188f:bb44:232b])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c70b726eb92sm7888784a12.33.2026.02.23.10.17.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 10:17:31 -0800 (PST)
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
Subject: [PATCH v2] man/man2/statmount.2: Document STATMOUNT_BY_FD
Date: Mon, 23 Feb 2026 23:47:03 +0530
Message-ID: <7d4b22c595feeadb3be6df8a8781344597120f7e.1771870502.git.b.sachdev1904@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <aZx02VGlW2GfBdce@devuan>
References: <aZx02VGlW2GfBdce@devuan>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
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
	TAGGED_FROM(0.00)[bounces-5211-lists,linux-man=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bsachdev1904@gmail.com,linux-man@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6B8A117B6AB
X-Rspamd-Action: no action

STATMOUNT_BY_FD introduces the ability to get information about a mount
using a fd on the mount. This functionality is currently in linux-next
[1].

Link [1]:
<https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20260126&id=d5bc4e31f2a3f301b4214858bec834c67bb2be5c>

Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
Message-ID: <57c96336ccfbdc05f60b7875c315a8c1dd0d14b8.1771870334.git.b.sachdev1904@gmail.com>
---
 man/man2/statmount.2 | 37 +++++++++++++++++++++++++++++++++++--
 1 file changed, 35 insertions(+), 2 deletions(-)

diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
index 5ac96796c..a5b135bee 100644
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
@@ -89,7 +92,7 @@ .SH DESCRIPTION
 .I bufsize
 with the fields filled in as described below.
 .I flags
-must be 0.
+must either be 0 or STATMOUNT_BY_FD.
 .P
 (Note that reserved space and padding is omitted.)
 .SS The mnt_id_req structure
@@ -110,6 +113,25 @@ .SS The mnt_id_req structure
 .I req.mnt_id
 (since Linux 6.18).
 .P
+.I req.mnt_fd
+is a file descriptor on a mount.
+If STATMOUNT_BY_FD flag is specified,
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
@@ -392,6 +414,17 @@ .SH ERRORS
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


