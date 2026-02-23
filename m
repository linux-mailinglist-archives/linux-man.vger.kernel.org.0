Return-Path: <linux-man+bounces-5208-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YB+xOMFgnGntFQQAu9opvQ
	(envelope-from <linux-man+bounces-5208-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 23 Feb 2026 15:14:25 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FAED177DC4
	for <lists+linux-man@lfdr.de>; Mon, 23 Feb 2026 15:14:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 014DB3068F0D
	for <lists+linux-man@lfdr.de>; Mon, 23 Feb 2026 14:13:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EBF5281358;
	Mon, 23 Feb 2026 14:13:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IrCdEDuS"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com [209.85.210.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C23C28134C
	for <linux-man@vger.kernel.org>; Mon, 23 Feb 2026 14:13:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771856006; cv=none; b=aXDfqDifYBsEFYrLbeHCR+yWJHAdccfYa+5BxXqHKsbxnCZkB6uxHAcMvm97xYbZ4PnDNCPK+W7ufJbtlXhHUhcSfb3g+KrZD4mjzlknNfp5/LKvzG33uAYoXcqGyOLqvwBCUHdmOUByNQnB60NxCgaILH5vVnNFobEJWHF9BJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771856006; c=relaxed/simple;
	bh=7uSrSFnMi79kSzRlfziNDfIuAcavqnnheXk+ekC7/es=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QrIbaB61NuYan9oYyZ86/hQdN3acp6g9qHsWOVF3uh4UFGDd+6A/5gb4CXg74c7t6Ztao8YprOD0MjCF9jdM+QULCaBYMvtgwysKESHO/WmCz8jUpmBrl1SU8Oq3qFZBVYaA2y441S2OMByKTMceIFm3g8WI010kXk+rLTOsFJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IrCdEDuS; arc=none smtp.client-ip=209.85.210.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f193.google.com with SMTP id d2e1a72fcca58-824ac5d28f9so4514119b3a.0
        for <linux-man@vger.kernel.org>; Mon, 23 Feb 2026 06:13:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771856004; x=1772460804; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2Jj7CK4lzak6eh8YAd0RaKb+T0gBkmC//KAb1xA1bE8=;
        b=IrCdEDuSytwGGZVvKBCs2hN1MKSuaTl9+xZnHKaEahcYjxG2c1fSnnONH8FhfHb3Pz
         DCJSfel45Y6Pnzix/wzdkQwTdg6AcrGL4kONlpzMigcd0c6uHwivCGlbUhmMGSvHuF5x
         cyvRCJynUn4do50Ec1hJBNBL5AouoJxpsz0/7LDtjJAREiXe7I1twDCRv8KiTfXLrI6j
         e3E4vhRJuAUjgdsRciQnxOTy+TfGQhPSY4mtVChG2X3GXqbCYJ5/vbckSLB+d1tHC4WJ
         W0UhBWegh8QGoW4xT67XZAg545xuANnC6VLc/0dohnfaybE+fUCOp3WTg6yGKBfd8TjM
         BpWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771856004; x=1772460804;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2Jj7CK4lzak6eh8YAd0RaKb+T0gBkmC//KAb1xA1bE8=;
        b=q6feOPgE2zdfBFQLpv/9BrHo7ytAAB7Ildp5qfgZohx8WJDW89fmWxdAFU0W7g78/G
         lYFDLMww+z3CghLPbuh1cmmUnuNYFc2kx/UnMshnbqhRL03MnzvmxbHnu7jy8e08pGK4
         oSCaAqcso43Hoq7L4LCZcbDPIgGTLC1/cO5Chevb4HeOPDVG0MBk4FPSB/cprmJOvhQ9
         cj7nTeJY3nHEADeNVMVGelCDSszZoXX08ZWWNPTtCHojquOsiAo26K7wmjSlTVKCIR/6
         v18Fe38aAUZogYynONDnPzrc5oGZQ9uqsI7a1r2wlCIIfIH0BDe5ra+bUDeWbmYjj7rK
         c77g==
X-Forwarded-Encrypted: i=1; AJvYcCUXOtWQwInhZ31pxcemZrqcjfm0g28kIuULCeRwWAbQTH1XsQylwDo80pWMzkh0RS1Fe8hVAl9Behc=@vger.kernel.org
X-Gm-Message-State: AOJu0YwYaWvfd1ZSANrUWh9LscxnecqPCVHAuouQZcMWeKffBhVLdEz5
	B6mpZQ+knAnVW9v1RnFWciZBw05B+hm6dChk0X4eTYHgDdZsCd1J8C+1
X-Gm-Gg: AZuq6aJwvPYiT7JJZUVq6WiWt6YXGKM5iRyNQjjKerDKd4q993K+ZmJ+4V4WIfxquNX
	BfGK09JIS0MnURJDyuheIkE0XXm4wGd1DzL9qOIhiq36oSQ/n9DvoqIh5S3ZIrVbRWZWMBFulMO
	yt3oc6BQVt5AfkIhNjzk4RwyBC0DYOPGOkiaiQamg3ykl2L8sXhUqU6Nk3LJ7aBrPJG6ueLS3dV
	9yvVa40kcKDR/n22kar9apgNOEkH5c17jSN8Fiifs785bBYXRO45vXVfVjpd6yssXS39nqFgMjG
	whlAYvG/yq2WeZnPIvnSo4BTWdo0E46jvsSgeSgrshtxXLZuFEvnhq5x30Af2tV6FBuMv0w9eKF
	GYqAFbchs9UALKr1vDMrsATyNw2rOd88n2MLDM/TxjAW9OOegNzIV0BRSCVIdFFfNG7xj6WytaI
	gwNMTMIE/33cNasjvAj93tvjZeb8Qa2EEO6n/VFgfyguJlvN2JyI0O/z4jBr514DTMtg==
X-Received: by 2002:a05:6a21:e0a4:b0:393:f002:ff59 with SMTP id adf61e73a8af0-39545e91cd1mr7331311637.19.1771856003804;
        Mon, 23 Feb 2026 06:13:23 -0800 (PST)
Received: from fedora ([2405:201:3017:184:52f5:ed80:f874:1efc])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c70b71a75e7sm7214260a12.14.2026.02.23.06.13.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 06:13:23 -0800 (PST)
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
Subject: [PATCH v2 4/4] man/man2/statmount.2: Document STATMOUNT_BY_FD
Date: Mon, 23 Feb 2026 19:40:26 +0530
Message-ID: <4ac53f8183d28932a7a6fd863f079c2c0f396a63.1771855680.git.b.sachdev1904@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <aZt6WFt5uATpgPDY@devuan>
References: <aZt6WFt5uATpgPDY@devuan>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
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
	TAGGED_FROM(0.00)[bounces-5208-lists,linux-man=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
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
X-Rspamd-Queue-Id: 8FAED177DC4
X-Rspamd-Action: no action

STATMOUNT_BY_FD introduces the ability to get information about a mount
using a fd on the mount. This functionality is currently in linux-next
[1].

Link [1]:
<https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?h=next-20260126&id=d5bc4e31f2a3f301b4214858bec834c67bb2be5c>

Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
Message-ID: <57c96336ccfbdc05f60b7875c315a8c1dd0d14b8.1771855135.git.b.sachdev1904@gmail.com>
---
 man/man2/statmount.2 | 37 +++++++++++++++++++++++++++++++++++--
 1 file changed, 35 insertions(+), 2 deletions(-)

diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
index 816ddc24b..73faa8ccc 100644
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
 (Since Linux 6.18).
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


