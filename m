Return-Path: <linux-man+bounces-4984-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0PSTFcgXemlS2QEAu9opvQ
	(envelope-from <linux-man+bounces-4984-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 15:06:00 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D90A2777
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 15:05:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C707C306F447
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 14:02:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94A5B21ADC7;
	Wed, 28 Jan 2026 14:02:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="h9zyH4y1"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com [209.85.214.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C84A23B632
	for <linux-man@vger.kernel.org>; Wed, 28 Jan 2026 14:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769608955; cv=none; b=ZL+nJThiKgKLhfOOtiv8wpaZStTt+c5Lb8b5LN1ibTqPqZBmNR0xJSbs2IHMn2mSo+8yibc9g9V4QNP4rHxZaermUbmZg805b9Iul5U+YQxPNnCYYy6ga3E+2eHSQXkEWgvEmlFqGdKYmSF0h8xU7/Mr3mL4VgLfYTrGOts0Rvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769608955; c=relaxed/simple;
	bh=+KCOXpuTxCo3qjLt7jq+6fDxxqznx5V0fvujgM+YFbU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Q4R630Eka27nQ8PNmcZ+t8H4GScrYjk5SIM8FJjpEIrlfKv50cNF3cpldv2Fhj+0t/TFSqhk4bVZo9gto5EV73ralPHCNnOnn/6HaBJMu5jdou2J+J+oPXdWlN9zlHZIamItZfZoVwO7PGP7rEcjASF9PHP6mYYSzCLI2VytaLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=h9zyH4y1; arc=none smtp.client-ip=209.85.214.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f193.google.com with SMTP id d9443c01a7336-2a7a23f5915so46015495ad.2
        for <linux-man@vger.kernel.org>; Wed, 28 Jan 2026 06:02:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769608953; x=1770213753; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PKD59H9k08a2+243gLvH5N5yJoMzhWSBvqPqgBJgEE8=;
        b=h9zyH4y10NGiOG7BcNeVEgwJOcxXS99qzmBbi/2n9NVkTDB2m4/K4N/bfy2XHdJkAk
         qfoB8Dg0Lw3Ug/+5BI1MNsGGSuBZMFgbTDPOYhfzvFW7bA68sqIYx660naKqm+T3bKHA
         M2gh3Nv/TbghMUhzxmPcJU7ocUJzBQ/Bazxr8MkgI3GeVJUE+nSDh9KbqkhSKlbgI5y8
         hHnkzY+o5w/TLrBTROBox8iIM64hq0M1+QVYsqGdkwJLphEjuAYRl4IrgX/EWipBtvVi
         JxaKqhX81jBbiuzlW56rQwAoEmNnYFxFALPbhPIkoTnUc6MFe42YZMZVlIdqrr7lCmx2
         0W9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769608953; x=1770213753;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PKD59H9k08a2+243gLvH5N5yJoMzhWSBvqPqgBJgEE8=;
        b=XiAhiUJy+CTXarRL7LUtpYUe3lTZwQ17KbGFbQFSf8yYUjY6CAdimzaZjDuCVJzadE
         gqbupfZGckE6CZktwLTdkyAg2qTSR/qxO3yEJ6RhIhpo1H8WRvnUIFiFDtgeNqEdi9QH
         qn3ZtVjmDkUFqGrGAgeiOTQdCu5ZZP5NFxLSmgYT377iRjbuJRXKgHfxdoPcuvPKTFqw
         3qNKNhibsWnbdVdrnfWM8Tr05reQbNij358RyLqDNxfRC8brYbirpe89/PK4TgCWQ7VE
         mSXZGh+8QLKfqoL95rOJoTPVs9MTKr+d8uUw9g7PeN9yEcxIyf3TOidqLbjq97RqT8VY
         kXlg==
X-Forwarded-Encrypted: i=1; AJvYcCVn6SUnTeGYsL8j3qwU1S+gaDp7X7o4JusEAZVKei11JfgppNaOhpRTGF7D4z3wjsyxIWgdvQ2hRds=@vger.kernel.org
X-Gm-Message-State: AOJu0YxR5UI4dDPLttzj89EdxVJcEg4lWtXAE5AWrNng7CGXNZBfsRAy
	ULejwxjvXo+P/AsXT53uwF5O6QZzNr3txzW6IF0Y3ZMZ8rxiSNiBzYZ+
X-Gm-Gg: AZuq6aIBB+4MpN8dzh7nDNOCN6XuBs9hncVhj7XwZji/RL808sPKtrsArqyevUq/MSY
	8dH5SaoZOGDPkMevedfI0CiJO4o3Qa7eWoWperqZVhkRIt9C2s5gpYmig2PoLRfmhkHQRr6O+Nx
	Y5NoFpSmb1HvGF9yJReek/wtuMYConNV331ysdSN3nKR5rNobv07PP7QHOc3fEdSp1dWKdVQT9c
	HEtZxmSBuXbuVjixJsF7n/v4FpaHYKidFx8oyKZhpOvzez7XtPSuaB2wsMgHFGWsa6D/c6PRw02
	Akds2+1imbySNkKt12eDKWo0SW8pqA4wijsHiQy+avOgwX8tHSJD9A0gZ+fqfR/z771EWfIUiyy
	Y4pIZgBscvEcxUNrRYcvaazpHhUWHOoQYkKpaHWyjh9YlLsw7y18hmbO4GFsU4BoVcmNi+09k86
	rasPBGTPeZAHcSWH3IKYhxkf08j0cpDj2NGPnIGgrlZj8=
X-Received: by 2002:a17:903:384c:b0:29b:e512:752e with SMTP id d9443c01a7336-2a870dedf9cmr62133545ad.47.1769608953276;
        Wed, 28 Jan 2026 06:02:33 -0800 (PST)
Received: from fedora ([2405:201:3017:184:6222:99fc:e57b:efec])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b426a64sm24182115ad.45.2026.01.28.06.02.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 06:02:32 -0800 (PST)
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
Subject: [PATCH 8/9] man/man2/statmount.2: Document STATMOUNT_SUPPORTED_MASK
Date: Wed, 28 Jan 2026 19:27:37 +0530
Message-ID: <d0813bdbdd231e41f323aa2c5a8417d6ceb69348.1769608658.git.b.sachdev1904@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-4984-lists,linux-man=lfdr.de];
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
X-Rspamd-Queue-Id: C2D90A2777
X-Rspamd-Action: no action

Document STATMOUNT_SUPPORTED_MASK flag and the corresponding field
introduced by it. It is used to determine the flags supported by the
current kernel. The text is based on this commit message [1].

Link [1]:
<https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=8f6116b5b77b0536d2ad7482ee42bfe58b8fac01>

Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
---
 man/man2/statmount.2 | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
index 4ae609818..79ee752c1 100644
--- a/man/man2/statmount.2
+++ b/man/man2/statmount.2
@@ -60,6 +60,7 @@ .SH SYNOPSIS
 .B "    __u32  mnt_uidmap;"
 .B "    __u32  mnt_gidmap_num;"
 .B "    __u32  mnt_gidmap;"
+.B "    __u64  supported_mask;"
 .B "    char   str[];"
 .B };
 .EE
@@ -126,6 +127,7 @@ .SS The mnt_id_req structure
 STATMOUNT_OPT_SEC_ARRAY	/* Want/got opt_sec... */
 STATMOUNT_MNT_UIDMAP	/* Want/got uidmap... */
 STATMOUNT_MNT_GIDMAP	/* Want/got gidmap... */
+STATMOUNT_SUPPORTED_MASK	/* Want/got supported mask flags */
 .TE
 .in
 .P
@@ -313,6 +315,7 @@ .SS The returned information
 They can be iterated over the help of
 .IR smbuf.opt_sec_num .
 .TP
+.TP
 .I smbuf.mnt_uidmap_num
 The number of uid mappings in case of an idmapped mount.
 If STATMOUNT_UIDMAP was not unset and this field is 0, the mount is not an idmapped mount.
@@ -340,6 +343,12 @@ .SS The returned information
 .IR smbuf.mnt_gidmap_num .
 The whole range of gid mappings must be resolvable in the caller's user namespace.
 .TP
+.TP
+.I smbuf.supported_mask
+The ORed combination of
+.BI STATMOUNT_ *
+flags supported by the current kernel.
+.TP
 .SH RETURN VALUE
 On success, zero is returned.
 On error, \-1 is returned, and
-- 
2.52.0


