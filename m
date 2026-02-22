Return-Path: <linux-man+bounces-5194-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oO6aMBkYm2lasQMAu9opvQ
	(envelope-from <linux-man+bounces-5194-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 15:52:09 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 617B716F782
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 15:52:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 582AA300C258
	for <lists+linux-man@lfdr.de>; Sun, 22 Feb 2026 14:52:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A30852253EC;
	Sun, 22 Feb 2026 14:52:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jjSmqqmU"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com [209.85.214.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BDFC78F26
	for <linux-man@vger.kernel.org>; Sun, 22 Feb 2026 14:52:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771771925; cv=none; b=LEMb23130ifAg2uO69UtOTpGokqHDx3qXePYHsX/vBvrrBiIxT2VBV/bzV8BSTD92iJEs0pgkZzl/dqTDaeWvoIcAIf1qyw6F3voTCq2Yu5jQ9mlZi8+q/hNzWOBjEEWxl+3e9lvNVT+9C7bD3rmKtyXjBKhAthcGbwgUEqImGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771771925; c=relaxed/simple;
	bh=4psPyNHjjr6cesJp68pwEkIUFcdurTM+dBh+FWXuCD4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WqIYzkEbO1jWfJ0couPGd0y2SFLCUEgcb1RvuzIwFOmKIIIufk9fuc3ZMiJG47wxbbSVE2uokI9BRFiiZEEpDJVFcX2mmRxzVkuLFnQoRPoIe0OCRWjvVBPTd/DdziV/ZjZBx8Wce1El4NEqy65D9KlDMrB8mS3XsDaC0Idlh6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jjSmqqmU; arc=none smtp.client-ip=209.85.214.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f194.google.com with SMTP id d9443c01a7336-2ad22a5e245so23651605ad.2
        for <linux-man@vger.kernel.org>; Sun, 22 Feb 2026 06:52:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771771924; x=1772376724; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CpwAPmqADOAPTXRI5pHi4gkHnEnd9mhehY8QXM3FBx8=;
        b=jjSmqqmU62l7/ENEi+yS1CDQ8M8YyRxdLrE8A5aunSFFoJJdsVsQu3yzvzJH/Snowm
         2Y+4xvCOYIy18hV2NNUvqZStfvplURXSfgsGXYWxOpILPqVlACKOOV8+0kGWRKg2G0Cv
         wgwYjK8wtkszX5FCPkKEfYjVUv5qRxhD6bFCYiGhgdme3gSxGAfZrzS4KWOiZWKHg9rv
         gHohWF7zHYKzJF0nHQ9+M95UrTrSu3So6/qTqJaH0w3CmitUo1tiuXO8IZ1/zg13UPm5
         lAr+ArEtZFOOy2GvCsKjffNqDBvfl/OG2f5tIq4NkAUR09L9Diz64N6ANKQZQ55T5XiS
         WSRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771771924; x=1772376724;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=CpwAPmqADOAPTXRI5pHi4gkHnEnd9mhehY8QXM3FBx8=;
        b=kSqzLednjWpI6LUeE0+of5YP8wFUy5u9HnpqDDq8L4RnmdLf4hX+f4d2MtuRODpgAB
         OtT1usQ7pPkLo0WGdZsVlhND81Z90qf/uEgCoihdFtO2Equwme5gApPibWq7BdKm/+yj
         14SC0VlljXOQUZhk7DXPZiPplbkjE9LaOntI5+kDaCO4ZfvtJSqj7k/kwr13DlFcIQ5c
         y+MD/AOIHIaRXs4W295xwIJOFbM/eKcV6J2K/heubld+Afkkx8uX1ZX98PuZ+lAG0Eu3
         QMHX8CpcPG4cbR9oCT1Y5USVEi/FpQX3dhL1ii6IrGkFkh8gDMXZrdc6jMVYMathluVf
         3rQQ==
X-Forwarded-Encrypted: i=1; AJvYcCVqz9aAPbN5GV+dJZldpigQmuX5LKdl7FLB5aE5I+IdCxq3g9ZP71rk+3I9DA2JryQPokxHEPcKZjk=@vger.kernel.org
X-Gm-Message-State: AOJu0YwnPtS14Ae9hNqwvpAJkknt0F6MMe+Sk1AqzkcfZyTnRQtf5inw
	0J7Vc4o3GdZSat7GelVAtmEfsLALFaw7VqMF1kBBFHPgraJi13jI3+us
X-Gm-Gg: AZuq6aKpMnLaUneu/iy6dIDTAtAxL80iNdVU1XOZaHIerCyV9VYrD2uX0jeC++D7BtU
	Bj8pfxyQVjlHaumTlqYNAhx5F9PwQkcxYEluwrWcH7Ehav8UoBiBvef+n9UnDIWi2jUBnQ1zRc2
	TSSWqtS2vzxTcaHaVrqFCgQOg4QJD3qfjiCxGeTkaCXyIwk8ETPHMybX2farr4h0BbRm39r/Zny
	qze6dwzRbL46Ir5IS2OfbUoZN7psTaST2llhICfp4XvJRN8kT9FxE/eyqbsIHxpCG+xDSlLl5uG
	CweV1Xv6Nj6TAnPfGPH0K9jz3Avjwv6lvZxLSznIS+Pp+ZIumx2d42xdfnMqRSyYacjlmShUKTD
	NSMp+pHWuUECQ5TGoHcu0QWTDJCb8T6BO67CniDF+0PEEouomN26vq1iN3IDLU2FJ4ZZp2cFV0w
	zb7FGHoi0GdylvgXQnsPBx2h3J1I/HsZtiOJf/6CJBqYvGpBXplLhrzcM=
X-Received: by 2002:a17:903:286:b0:2a0:d629:903f with SMTP id d9443c01a7336-2ad743fea3bmr53322925ad.9.1771771923752;
        Sun, 22 Feb 2026 06:52:03 -0800 (PST)
Received: from fedora ([2405:201:3017:184:52f5:ed80:f874:1efc])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad7500e02asm45355415ad.56.2026.02.22.06.51.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 06:52:03 -0800 (PST)
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
Subject: [PATCH v2 05/10] man/man2/statmount.2: Document STATMOUNT_OPT_ARRAY
Date: Sun, 22 Feb 2026 20:15:55 +0530
Message-ID: <4e925a9f871ec408d82db0124300d97200c4a778.1771771560.git.b.sachdev1904@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-5194-lists,linux-man=lfdr.de];
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
X-Rspamd-Queue-Id: 617B716F782
X-Rspamd-Action: no action

Document STATMOUNT_OPT_ARRAY flag and the corresponding fields
introduced by it. This text is based on this commit message [1].

Retrieve only file system options, separated by null bytes. For security
opts STATMOUNT_OPT_SEC_ARRAY is used.

Link [1]:
<https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=2f4d4503e9e5ab765a7948f98bc5deef7850f607>

Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
---
 man/man2/statmount.2 | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
index f7a2feff9..c238a3d9f 100644
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
@@ -276,6 +279,16 @@ .SS The returned information
 .I smbuf.str
 that contains the source of the mount.
 It is a null-terminated string.
+.TP
+.IR smbuf.opt_num " (since Linux 6.13)"
+The number of filesystem options set on the mount.
+.TP
+.IR smbuf.opt_array " (since Linux 6.13)"
+The offset to the location in the
+.I smbuf.str
+buffer that contains file system options separated by null bytes.
+They can be iterated over with the help of
+.IR smbuf.opt_num .
 .SH RETURN VALUE
 On success, zero is returned.
 On error, \-1 is returned, and
-- 
2.53.0


