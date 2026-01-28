Return-Path: <linux-man+bounces-4981-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oAUZClYYemlS2QEAu9opvQ
	(envelope-from <linux-man+bounces-4981-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 15:08:22 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF82A2801
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 15:08:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D194B3053BAC
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 14:02:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A460221F06;
	Wed, 28 Jan 2026 14:02:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OjdF0AF/"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com [209.85.210.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C874B21A457
	for <linux-man@vger.kernel.org>; Wed, 28 Jan 2026 14:02:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769608934; cv=none; b=uDxfc1RrsT8jW8gbNw1XKkdlMfj5TYTMstYut0gp6SM+Wp1BzCFLx1ckMcK55Ro3xYuk0MkocYKU4FQ5oZ7NCzlGA4LkuWUa3rHoXXl9FwFto9I0SCIDclPre/XjZzI93Wt7JXSUQAeE/6vYAnBQ2o7n2Wqb2Gimpr6tVtfAZ5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769608934; c=relaxed/simple;
	bh=+GxEdSA1yQcDTlFtje4y53WH3Kd9oUBvg19BPOPvxOg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XYDPEgcTXil12MD7ySu5WqQ78VYuexQTFbrq4l1zCHP95BHFm+XUh/AweVLn0IuWwN8IRgBOBFC+as5kngXh6aQNhL+YmG2LMopAXYME+TWxs2fUUgua7f3xl3TotpP9nUMUNKgJz2XvOTYS4SZPBstKV33y12DRjDPzT053oPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OjdF0AF/; arc=none smtp.client-ip=209.85.210.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f193.google.com with SMTP id d2e1a72fcca58-823081bb15fso3883028b3a.3
        for <linux-man@vger.kernel.org>; Wed, 28 Jan 2026 06:02:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769608932; x=1770213732; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JJgyhC1v60HrfWitit72g3Ghh592jCmfJIyC2pa91ZM=;
        b=OjdF0AF/cepeZtxMTA7Ilk8mXDd6gfum9uesZb9E4pF6/SmzdFHuXBKFHFQhq/yVWg
         R01G7lZJCMyLDhR7gcqK4QE8R7LOFBKNp4Ys7GtOxrXpDMqdWoDgSoynTcYOXy8Rmqd1
         uFF4dIcvs7cMTSb65xxx3SO+l4MkPWMHxyUIAp7c/z/3QdlT3VsBALEPS77sizbiMyWz
         KVS9QI5tzkPD8wEr/u4gB4IzgNz75AvulvXX7WqyqoodGWnscEpfAD695fQhdbT0sqM3
         jHdYYmN+sWAvdEL+I8TPLcn6I3GIDfk9PX2dtuh0gAnLPcsMMYxPO8eZtTBISkKGI1dm
         pGCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769608932; x=1770213732;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JJgyhC1v60HrfWitit72g3Ghh592jCmfJIyC2pa91ZM=;
        b=DQuiqEd/x6nj2W+jhAHHB7JQkOwYMcvMuw/n7/7JV8ScMs/Ok/gI6n7jNRS1jmsRf7
         NzCfMkogHSmZsuSdaIqu9TxdHd/u0dp8Z3KXvXCN+cjmtnv9cqGKwGrujboT3GFZ9WBU
         WKBCeK8a0V6IbrqmNc1SIhOEFj9etKrra1cz0k8/CKJJqoYqUCvMPOcpJgOhGREKaweK
         lrvUH6AOwcw9w5IG5VGXFudJL0ZLCJFWGloycBm29znwp3BtHmQpflJW8Fv/4X1Tz5iG
         7KFHHA4bxY1VDTxNcrpCQdNMBddBgs5SaC6muXmNWCOcBOh7crlWWbqm8c7/6IyItwWR
         bZXg==
X-Forwarded-Encrypted: i=1; AJvYcCWrdl8NLkaFlciJLMPssNbAEChS+cVOIo9GTvxqwmajy1zhGUirt2elaUyIpYn2VOqx5yhD3fC+B5s=@vger.kernel.org
X-Gm-Message-State: AOJu0YxvMK0kzwmVeN1hGz5ELaRNEH6v8xvPKuETJSCwdEMvoAlrIVa5
	sZIYav22XM8a0a6ap+1PWaE8GbDNXjwLWonu8J0Utq1/ECenZG/Fers4
X-Gm-Gg: AZuq6aI8i2Z8fbf9d60hFSD8rfPkX/lPD0y75h0ba1NKwymU+rEn3Ui09lnVMAY4QH0
	s2FMuJWq2sgBibtHJ5EadXHMet/3EZmlFAxDe2uc3yces+XjxgubEsKUHhNmGv8bc0A8PFhYMMq
	9uadSJBGF3mrPl56uCowS8B6j1dUtel4TYchNN5WGnkUuvqhhq/RXt0M7fAJEOAoi39pTwO5feB
	khtz26cv04hiB5L3Ndk6nFLQs0oEmO58yLSr6tcsvSrlPm4hdBVTcK2HG0opEkMEDecehWtWBX+
	18l+4asWyQHH8KL4seD9kGBwkoZaNlbbnjTRwFngomHvAoqbzYxxEX3yrlr9Pb78LCvmi4yN1Lq
	KKKchxo1nRYIIaMxtFBbEMU26XHRPHEqB1jlvJF7sLim/ZjIVJ4XT/X70rey58r3xkitT2uPTdQ
	zWuVsTrMTViwxvmAwbiQ86qo2gp7Wukc8PlH0a3u5yhJA=
X-Received: by 2002:a05:6a20:cf83:b0:35d:1bcd:6882 with SMTP id adf61e73a8af0-38ec629f23fmr4538826637.23.1769608931962;
        Wed, 28 Jan 2026 06:02:11 -0800 (PST)
Received: from fedora ([2405:201:3017:184:6222:99fc:e57b:efec])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b426a64sm24182115ad.45.2026.01.28.06.02.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 06:02:11 -0800 (PST)
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
Subject: [PATCH 5/9] man/man2/statmount.2: Document STATMOUNT_OPT_ARRAY
Date: Wed, 28 Jan 2026 19:27:34 +0530
Message-ID: <be09040f394bd0a3ffd1e9f21ecd94dbfac97559.1769608658.git.b.sachdev1904@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-4981-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: BBF82A2801
X-Rspamd-Action: no action

Document STATMOUNT_OPT_ARRAY flag and the corresponding fields
introduced by it. This text is based on this commit message [1].

Retrieve only file system options, separated by null bytes. For security
opts STATMOUNT_OPT_SEC_ARRAY is used.

Link [1]:
<https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=2f4d4503e9e5ab765a7948f98bc5deef7850f607>

Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
---
 man/man2/statmount.2 | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
index 8d390fc53..e9e1f28e7 100644
--- a/man/man2/statmount.2
+++ b/man/man2/statmount.2
@@ -52,6 +52,8 @@ .SH SYNOPSIS
 .B "    __u64  mnt_ns_id;"
 .B "    __u32  fs_subtype;"
 .B "    __u32  sb_source;"
+.B "    __u32  opt_num;"
+.B "    __u32  opt_array;"
 .B "    char   str[];"
 .B };
 .EE
@@ -114,6 +116,7 @@ .SS The mnt_id_req structure
 STATMOUNT_MNT_OPTS	/* Want/got mnt_opts */
 STATMOUNT_FS_SUBTYPE	/* Want/got fs_subtype */
 STATMOUNT_SB_SOURCE	/* Want/got sb_source */
+STATMOUNT_OPT_ARRAY	/* Want/got opt_... */
 .TE
 .in
 .P
@@ -278,6 +281,18 @@ .SS The returned information
 the source for the mount.
 It is a null-terminated string.
 .TP
+.TP
+.I smbuf.opt_num
+The number of filesystem options set on the mount.
+.TP
+.TP
+.I smbuf.opt_array
+The offset to the location in the
+.I smbuf.str
+buffer that contains file system options separated by null bytes.
+They can be iterated over the help of
+.IR smbuf.opt_num .
+.TP
 .SH RETURN VALUE
 On success, zero is returned.
 On error, \-1 is returned, and
-- 
2.52.0


