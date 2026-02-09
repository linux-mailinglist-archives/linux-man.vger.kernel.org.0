Return-Path: <linux-man+bounces-5073-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WBkcLC9QimmmJQAAu9opvQ
	(envelope-from <linux-man+bounces-5073-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 09 Feb 2026 22:22:55 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6179A114C2D
	for <lists+linux-man@lfdr.de>; Mon, 09 Feb 2026 22:22:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5F306301C905
	for <lists+linux-man@lfdr.de>; Mon,  9 Feb 2026 21:22:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC81B30E828;
	Mon,  9 Feb 2026 21:22:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Z30sYTQ/"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com [209.85.214.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A89F02EA173
	for <linux-man@vger.kernel.org>; Mon,  9 Feb 2026 21:22:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770672171; cv=none; b=V6X+0/tUhFIDT20to1nBZTRJdixa6z03zpiDEo/yX9K7K4Hh+sTa4YdkTTdBeJt7OuBRojy+sNeXaVxzZRxfLIYmgQutWxWYSimqgogAlwQzZClwwJ63J85QYHCqd9HPAAu+ZDSxLf2IatMa5dAPC57rWaGMpTGRhXflpRBA9ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770672171; c=relaxed/simple;
	bh=XbW3gGg8wKm94FKkKVRS7sL7Cq3bBVppcx6Y0fQcYDs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LaK119o+qvoL0t1HPsvU8MH/NUv69Fcg1GolWyyAm1GsWVcdaTdQ+CzSe/IRTfSp3I/UODJa1x6NSC1jfqUnxzMC3Q5KNflVAPZ3JhRPa+zdzWdO/bPC6rSyXK0wwdUwJYDaAPJKPPIrK5G5XZpZuNin9ct9wotDZEvMyKb3vTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Z30sYTQ/; arc=none smtp.client-ip=209.85.214.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f196.google.com with SMTP id d9443c01a7336-2a95de4b5cbso27775565ad.1
        for <linux-man@vger.kernel.org>; Mon, 09 Feb 2026 13:22:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770672170; x=1771276970; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JOhtZzDM3ftMKiaijyxqCjnL3u0pxWrJe8u3S6Y7mUk=;
        b=Z30sYTQ/y8vriAMCUfkpXVYhO7xG4TdzEkl8L/WGcUoKD7S9X22UhJGvGq1MuDTvZQ
         gbsroJQsXBPZMoqKqWLxEYogP5RK6drmS0GhQiJcnxWgEzAizEHcGMnAhmkSafJ00UEx
         o5NKwvSkmpoiqmUGKmAZBFFN9mx0ftvqsRmB+t3s85sTMJsPwIxwNMnjYT0b4dfE7FxV
         rGAupoFDuJSjeqpUmg71apKiMBPOFDchECHTyGR/UzHpNpaTe5vOM+sbEgS1jkmjEojT
         e8hsxdp0xxTDqMFGiaHNZAOFdtCNWYO5fmLV2AcN6FmCH5PHgA2ZORePcfcFHQ8OsmtA
         pfrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770672170; x=1771276970;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JOhtZzDM3ftMKiaijyxqCjnL3u0pxWrJe8u3S6Y7mUk=;
        b=IiRkfOgeKSR5pvD+30V6/VRdfT3rUlbEf0sxk5CAWU6mtPEbL4wPjppjr5tdV3GNN+
         uVqI7M+1VAS5Z1UQdj6A7/mPnCahBYfSntL2Re9t3HxXx7zrTgZN0MzCXZNyrN6NiVf+
         Cec1R/x4RkJJoADtqFRUDPuXDBYCqnmwCvhuCp1gsp1E/4A1YsaiDqn6rmMolKCYm7R3
         H5M2SVywKvyjh8UoqeWnv8fqQUaEabAGTMve/bX+PwenT/7HPUKO46kDbD6Ho2Q6AL+T
         GYs1C20w4/h4mnkhl6/ZsCiUNbzW0MFB0/hScPBMjDvd/u2LtgedGWBpoNFfEMM41sSs
         CWaw==
X-Forwarded-Encrypted: i=1; AJvYcCVgTmDOkvUfoR9HhODnx+q2wkn8XJb2W5clEWaGztzIvDESjUH6lnZZpXKdHHyck2AXYFKg1um+540=@vger.kernel.org
X-Gm-Message-State: AOJu0Ywz2POJdtvPaTXWVyFjpgmXrHL16r0jnkuQ11DuwdsMNw2xSIC6
	NKueTaxtcvjh/eIRXYAyOFaZLMSc3obltBFn3o1KpPvg+lFc7Lq7mbBL
X-Gm-Gg: AZuq6aLxwkBQpJOEzE4GcCYOFQvqnkNEi1UP1yfGsC+fwSJWz+5SGBV1TwE9fApGre0
	xcyupRqs53Qa0RnqF0t6oaPvUG8p49n8winfLgcPHfT+oeS0RK1HHPlqkCcVUAMzZapXpcDTCgH
	+3TziwaIZjx6G63H4DqZhvdF3xnPKFAmb/srt5HssP3RBQ25JhOQ5AmUaugETnGoBOEmoD2mbbb
	YkrQOiTlkXOXFkfOigHweNplfGhlUySrnyXdVpaXntAhiwPrOIdWrS284tlZY6Yr6t5wAW8Fy3R
	qAhN2LFCSRNdDZOjXGfcDEV8IomWYCYjY4rl+pHRVzGndWv54ZkwDxqmMZQFS2//voQsyrW8JmE
	8tcRpNQuV92pLVE6Aw4Gr4FTw4eAdMfmE2Mg7rdJmjr45AK7+xxn6Y1LZQ93EWKW+ZUZMYxKPaD
	f3rFSYPvpcU1Ol1n/30sIYoqBj1kOK0ubVHjBvNCCesWw=
X-Received: by 2002:a17:902:f54e:b0:2aa:eaa7:2a9 with SMTP id d9443c01a7336-2ab105482fcmr706875ad.8.1770672169945;
        Mon, 09 Feb 2026 13:22:49 -0800 (PST)
Received: from fedora ([2405:201:3017:184:52f5:ed80:f874:1efc])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a9521f8a50sm121346305ad.80.2026.02.09.13.22.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 13:22:49 -0800 (PST)
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
Subject: [PATCH v1 10/10] man/man2/statmount.2: Document STATMOUNT_BY_FD
Date: Tue, 10 Feb 2026 02:47:43 +0530
Message-ID: <fd68e1d5a021275af117f5668022bcc44d5d226b.1770671863.git.b.sachdev1904@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-5073-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6179A114C2D
X-Rspamd-Action: no action

STATMOUNT_BY_FD introduces the ability to get information about a mount
using a fd on the mount. This functionality is currently in linux-next
[1].

Link [1]:
<https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20260126&id=d5bc4e31f2a3f301b4214858bec834c67bb2be5c>

Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
---
 man/man2/statmount.2 | 35 +++++++++++++++++++++++++++++++++--
 1 file changed, 33 insertions(+), 2 deletions(-)

diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
index e835eb0f6..484fec383 100644
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
 .BR "    __u64  param;" "       /* An ORed combination of the STATMOUNT_ constants */"
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
@@ -109,6 +112,24 @@ .SS The mnt_id_req structure
 and is used to specify a foreign mount namespace in which to query
 .IR req.mnt_id .
 .P
+.I req.mnt_fd
+is a file descriptor on a mount.
+If STATMOUNT_BY_FD flag is specified,
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
@@ -384,6 +405,16 @@ .SH ERRORS
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
 .B E2BIG
 .I req
 is too large.
-- 
2.53.0


