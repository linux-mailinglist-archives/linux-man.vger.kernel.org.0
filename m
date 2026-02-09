Return-Path: <linux-man+bounces-5069-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oELzH5JQimmmJQAAu9opvQ
	(envelope-from <linux-man+bounces-5069-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 09 Feb 2026 22:24:34 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 29B95114C72
	for <lists+linux-man@lfdr.de>; Mon, 09 Feb 2026 22:24:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DC40F3021E47
	for <lists+linux-man@lfdr.de>; Mon,  9 Feb 2026 21:22:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 634AF30E828;
	Mon,  9 Feb 2026 21:22:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="j331GAIE"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com [209.85.214.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367B330B539
	for <linux-man@vger.kernel.org>; Mon,  9 Feb 2026 21:22:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770672149; cv=none; b=VKYzafE5Md6zbWr1v9R0/RQjVUY90d2QPsgcUwO8CGuzbgyRcA5coALLbmh4TBiwJljN9B3okjOfUGt2w3KIQmkaWMYI+qi5fxBmwpRM6oH8GgXO+Fn4Ji0c3bSnW+heR6vcZH08d8CZ2WVYhJ9k7FsGu/sldevpw+QLuOlDevM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770672149; c=relaxed/simple;
	bh=iChfn1MXlqQbuZwAY7gnDwwQ2aCSH6H/vlr3ZVmFPQk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=qjY/t8TgVbx0h6v6uFGYydqZ+RG3TJf9DOLs2CiIKC1u7ENy3nE7wzwHGBFteHG9ZJYTivRUpxtdlNl7rQ0QcqwvhdMdrP4sQluy2X2qns08FhEoVn5hoCGz9+ckiHbNxDjtLVCTiWFCMKjs7mgdMkYDClly0mxXI1mmnNTdax4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=j331GAIE; arc=none smtp.client-ip=209.85.214.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f193.google.com with SMTP id d9443c01a7336-2a8fba3f769so21566785ad.2
        for <linux-man@vger.kernel.org>; Mon, 09 Feb 2026 13:22:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770672147; x=1771276947; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U07nqX+5kieehA/WPcxvyDlp9by4l6KzIXJP4tTGA7c=;
        b=j331GAIECK39yXXAxUaOnYQchJh8btoUbWjNnRCrvgqQCD3jwOxqS/wHX+Y/oyQ8nF
         xLMfadk8RNjUQJv96yfFsxQWP7lTyw3voA7g206mnwoOksOCdrxzLYCFp28wb6rmXun1
         12GniDip+FYTQdtPCx/eC4KwBNpFrB57mbaXt5G+j0Iapzh3jTUwfJ8uk1Jed805enQR
         W3cJneth2TqLOHCORMybPAmU3e3R7KYEMD8PCOyPtwmMViokh/tULa7uWmABWPTt8RiC
         RGjkqesmw5iZUf2Zzpl6MevoB0/TpXl9FK5j8frBcn/+aMhGSHqELsoswAAMbwFLOR1n
         FUCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770672147; x=1771276947;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=U07nqX+5kieehA/WPcxvyDlp9by4l6KzIXJP4tTGA7c=;
        b=Y8gdZ70Vp2CllFpyA45LRRIxHPg8IZexkEQEzzErttC5bIUnneRJj1U6phWcZgOHKz
         GH0eDMoxL8rYREm66GDQlmFwHsdNi6PSJx5wcyQldUaTM3cDS71wlBsWd37/m6ghjjAw
         eBYr6IN4oNZiWaftpbBuIKQzhP6h6YOEl58mufswsF1SrjcRh2i1RMbNRIJCNtmt6oLI
         oysod/wVIgkwjewQAswY3M28+EIZtN90qtsmgub15vi+DdmS2BjevgY2fNPd1R/QBV+Y
         0EKSkIIYf7OSpmIuMblKJ0SXLfQUjZS/Bpsy/Gh/eH4YGG6lwDNHgBGbNzVZdfU1pJ+W
         IVtQ==
X-Forwarded-Encrypted: i=1; AJvYcCW9dQgTMY0K3cPPHNvQqz35Jsh1W/hhf96Q1o5CTlYH2lRDvcrm8NTFEpwdb5fGdLPikdIdSfZ7YNs=@vger.kernel.org
X-Gm-Message-State: AOJu0YwmXyeOlsbq0UqTJ2k2I6B737O6qNFXYFor892oJb6/RU0Ndr/T
	p0GmFn9i3ZFNcbqTN2bOi2ATYeo5iRckIIVIlzalRFo4fNMDE7VnQhM5
X-Gm-Gg: AZuq6aK6TMBV8T0KGsrgnwdS4Gm++cA7wIQ2fNYEHPB2sUShSIkzy70ZHOU9Hmz54/+
	zF/CeD8ta/af2w8IJWQyoiZa/EbgjWxuhoV/BlQtOpmhH1A7LJv5onSuJmH0MF51Geu7cHCD3dA
	4VGDE1FxHeEJY3E0CA3CgBEMYG0LUJZA/bIHi5o1PLX+ZImCmTRwJLeT1boUwTjR/EJ6pntwtru
	Cf9whDmWE3LqfMZDrQIp6Wcc5gEliY4one4QJ0qIsQM+BAYnluTnRpp0BlnYBF6DSdTfE8PjSlm
	0G+BQmIEZZF2tC2E/p+N49JQeuAF4Pc4WWhH2oesGzq+VhJnrIDtplLAhPAmCpWUJAvLZxSsxy+
	1MhWVghvJDv8Tq/tX5IWnde3/xSsJiwsLzbYvlTX6mX4MYf4PLsIiqRyTJHjeai/5j/AO7u7ct8
	425pdrYwyCYx13l/CjtgCrGreD4AO6yrOcJFsfTT1DGf0=
X-Received: by 2002:a17:902:ce8c:b0:29f:301a:f6cf with SMTP id d9443c01a7336-2ab106e5df9mr595375ad.35.1770672147454;
        Mon, 09 Feb 2026 13:22:27 -0800 (PST)
Received: from fedora ([2405:201:3017:184:52f5:ed80:f874:1efc])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a9521f8a50sm121346305ad.80.2026.02.09.13.22.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 13:22:27 -0800 (PST)
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
Subject: [PATCH v1 06/10] man/man2/statmount.2: Document STATMOUNT_OPT_SEC_ARRAY
Date: Tue, 10 Feb 2026 02:47:39 +0530
Message-ID: <7d13e42ff9e236116366ba98773a9cecf097b211.1770671863.git.b.sachdev1904@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-5069-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 29B95114C72
X-Rspamd-Action: no action

Document STATMOUNT_OPT_SEC_ARRAY flag and the corresponding fields
introduced by it. This text is based this commit message [1].

Retrieves only security options separated by null bytes.

Link [1]:
<https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=aefff51e1c2986e16f2780ca8e4c97b784800ab5>

Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
---
 man/man2/statmount.2 | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
index e47af22c3..b7acde8f4 100644
--- a/man/man2/statmount.2
+++ b/man/man2/statmount.2
@@ -54,6 +54,8 @@ .SH SYNOPSIS
 .B "    __u32  sb_source;"
 .B "    __u32  opt_num;"
 .B "    __u32  opt_array;"
+.B "    __u32  opt_sec_num;"
+.B "    __u32  opt_sec_array;"
 .B "    char   str[];"
 .B };
 .EE
@@ -117,6 +119,7 @@ .SS The mnt_id_req structure
 STATMOUNT_FS_SUBTYPE	/* Want/got fs_subtype */
 STATMOUNT_SB_SOURCE	/* Want/got sb_source */
 STATMOUNT_OPT_ARRAY	/* Want/got opt_... */
+STATMOUNT_OPT_SEC_ARRAY	/* Want/got opt_sec... */
 .TE
 .in
 .P
@@ -287,6 +290,15 @@ .SS The returned information
 buffer that contains file system options separated by null bytes.
 They can be iterated over the help of
 .IR smbuf.opt_num .
+.I smbuf.opt_sec_num
+The number of security options set on the mount.
+.TP
+.I smbuf.opt_sec_array
+The offset to the location in the
+.I smbuf.str
+buffer that contains security options separated by null bytes.
+They can be iterated over the help of
+.IR smbuf.opt_sec_num .
 .SH RETURN VALUE
 On success, zero is returned.
 On error, \-1 is returned, and
-- 
2.53.0


