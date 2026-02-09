Return-Path: <linux-man+bounces-5070-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8LXMBZhQimmmJQAAu9opvQ
	(envelope-from <linux-man+bounces-5070-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 09 Feb 2026 22:24:40 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AD2A3114C81
	for <lists+linux-man@lfdr.de>; Mon, 09 Feb 2026 22:24:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6273930276A3
	for <lists+linux-man@lfdr.de>; Mon,  9 Feb 2026 21:22:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3F2F30E0E9;
	Mon,  9 Feb 2026 21:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="m78MJIW+"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com [209.85.214.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8E7C3064A0
	for <linux-man@vger.kernel.org>; Mon,  9 Feb 2026 21:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770672154; cv=none; b=Tx0cpi/wFytsPZ708v0wHUCCcE92N66+Dua0DUhIWaLys4RbyPaHmmcXxg43mIM1VBsVN7WR1s9iCMDcblIGhYSyxdIhVujMzhQckOnS3SNR99pF8lBoD33jkAG6cwht6pXqmWxxjYYGxQBUMqFf3Sk9WdVXm5y/AnTqTphoc3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770672154; c=relaxed/simple;
	bh=CDtJC3aUf8bV9z2g3R0+16wSzbMNzpycJrrTnlUwerk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=J8aYBZlvW1uNvgAyO2Cg8vRGc8XwEY+ZE/mCuOfdwwzewOjLML2l4AdKMjoOa9rA4Gcssd2OqfPxDr3/kJwIQBP543hABzL2uRdrN+clUi3Fx+tSPQF1Vw/D1WVnPvOvvmYxSvzgJ/2nzQa/7FCBM3cuLB4EesCC84KT7YwOVTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=m78MJIW+; arc=none smtp.client-ip=209.85.214.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f196.google.com with SMTP id d9443c01a7336-2a963f49234so9758605ad.1
        for <linux-man@vger.kernel.org>; Mon, 09 Feb 2026 13:22:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770672153; x=1771276953; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CLRrj4+71aOFSQmtioZ/w85BdjhNNXXIzSVbSmo4NSo=;
        b=m78MJIW+Pad/PnMMm3D72B69aQM9Bo8UG6UolPCPVceH6rEOzl7mRCm2Vf2iOjx1eU
         Uu69m/Eqkdwtkq+1eG0oHsfMJfkjDL7OPcOeEHhn4tKmdcbCefjKgRNY++3WraeBkQcT
         Wc9+dLsw/tk9SJIu1nKjp8NyliGtkC7aCcyYyVSrm94ORM9b9Y/+3oz98+IaymHsuqr6
         a1z80ouJ0MbcQyL7vgL5rdzG8Rnl7y8ajGKSqsLBgDqXejTazYfbCYZzugy5YDk0Obks
         TdSLLwZVdB5mPQSeAMKB7K2rsydUL2GvvOKOqz3J+G2oN5VEnN6VzTWX13E0JNWvEg+Y
         ZELA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770672153; x=1771276953;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=CLRrj4+71aOFSQmtioZ/w85BdjhNNXXIzSVbSmo4NSo=;
        b=DlZ8JEL2WAacK7Fs4QWS4vxFwEgkw8pEt18QPw1wQgkN5i1GZ9zVEZb9K87hC/FP2a
         jiZgYnWu6t2Tp8zHLHV/NRwg5LkmenJimqghxNbjI2shB97K4gcwfuxzFofJJs0Zatrs
         2NSUPugHgzgFoLhJnlLB1ljtNhztrG6b2snfok82vYPhA+NsDuZdyNG2ESp2s3Ip5pTP
         30k1mtRngJL2/x2Z359j4FJFRUSD5V8diSuu8cGf5khWJiCLo5TLg+TUFmnt6QR1AT0x
         uqWDIna8gJ4BYX+ZBDx5jAqfqdE/nfkAtIosFIoe9CnvX6qEdXPRT6vDxMkOQfi7h0Yh
         qmIw==
X-Forwarded-Encrypted: i=1; AJvYcCVflgqeL2R1ch+WIWRR0dcJNeD6z3OhyFkBj90dJes8y51o6L0KP4Vpl/RRj8ggcCYQAwEb+otZUt8=@vger.kernel.org
X-Gm-Message-State: AOJu0YwM/AbOts6vJnAaGrAtV28JkcJQKQH89N8MwoabD3dt2XClNJru
	pRf0SaGoDch9lWu/c29zbHj9Vn9Ozy8YzeYBzA+LsfMqHxttAI+4Hll2
X-Gm-Gg: AZuq6aJa2auwqcTP2O7xgouGe5r1VT9QqQxcWuWikrQYhIk3EpP12L3B3RKpOVcB3b3
	6xY6XMN7uOIMetsJz9XK8qMEDsswgf1WbM25wiZn9Ar/L3WPgjDeLLg6OtsKkyAy7z+3LkmVatn
	0OSr0Lvcj9k0OczHU5TyenFU2bxtsIzWJLtvJJIDewD/m0DYDKeWZcZYAI0gfHFSc9eQAlRZx5H
	rE4La9w13WnkdErV2X+jiCKhT7oVSbY9rtE2hoYout7B8OXmlEOpW3pNQ6ytXrlC2Kf3p7A5IT7
	/od4TwNcNoIJJujz9W+i+vHUhXELOD4Hn51NbeFPXQRVVTbuJ41lQjb/TaMYAoEQmr+HA8B36sb
	K8dWUrMqUUnYqJ7lmuo+vHnWtuu44XuLPNxhxtcpw0skaG+I0Z2w0OVsgvtJb+b+vYaHb/Na0g9
	nd7CEH5gJC1fgmPkXqYa6oSUc1dmLUpLuiPfqjho+2VEE=
X-Received: by 2002:a17:903:2282:b0:2aa:cfee:a476 with SMTP id d9443c01a7336-2ab10b3dffdmr512575ad.48.1770672152988;
        Mon, 09 Feb 2026 13:22:32 -0800 (PST)
Received: from fedora ([2405:201:3017:184:52f5:ed80:f874:1efc])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a9521f8a50sm121346305ad.80.2026.02.09.13.22.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 13:22:32 -0800 (PST)
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
Subject: [PATCH v1 07/10] man/man2/statmount.2: Document STATMOUNT_{UIDMAP,GIDMAP}
Date: Tue, 10 Feb 2026 02:47:40 +0530
Message-ID: <fe86edd32cea5b9bf80320fc2ce9b6507a85af1c.1770671863.git.b.sachdev1904@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-5070-lists,linux-man=lfdr.de];
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
X-Rspamd-Queue-Id: AD2A3114C81
X-Rspamd-Action: no action

Document the STATMOUNT_{UIDMAP,GIDMAP} flags and the corresponding
fields introduced by them. Most of this is based on the commit message
provided here [1].

Link [1]:
<https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=37c4a9590e1efcae7749682239fc22a330d2d325>

Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
---
 man/man2/statmount.2 | 34 ++++++++++++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
index b7acde8f4..4da55eb38 100644
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
@@ -299,6 +305,34 @@ .SS The returned information
 buffer that contains security options separated by null bytes.
 They can be iterated over the help of
 .IR smbuf.opt_sec_num .
+.TP
+.I smbuf.mnt_uidmap_num
+The number of uid mappings in case of an idmapped mount.
+If STATMOUNT_UIDMAP was not unset and this field is 0,
+the mount is not an idmapped mount.
+.TP
+.I smbuf.mnt_uidmap
+The offset to the location in the
+.I smbuf.str
+buffer that contains uid mappings as string array separated by null bytes.
+They can be iterated over with the help of
+.IR smbuf.mnt_uidmap_num .
+The whole range of uid mappings must be resolvable inthe caller's user
+namespace.
+.TP
+.I smbuf.mnt_gidmap_num
+The number of gid mappings in case of an idmapped mount.
+If STATMOUNT_GIDMAP was not unset and this field is 0,
+the mount is not an idmapped mount.
+.TP
+.I smbuf.mnt_gidmap
+The offset to the location in the
+.I smbuf.str
+buffer that contains uid mappings as string array separated by null bytes.
+They can be iterated over with the help of
+.IR smbuf.mnt_gidmap_num .
+The whole range of gid mappings must be resolvable in the caller's user
+namespace.
 .SH RETURN VALUE
 On success, zero is returned.
 On error, \-1 is returned, and
-- 
2.53.0


