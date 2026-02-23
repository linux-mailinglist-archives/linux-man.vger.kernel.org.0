Return-Path: <linux-man+bounces-5207-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iNVuC71gnGntFQQAu9opvQ
	(envelope-from <linux-man+bounces-5207-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 23 Feb 2026 15:14:21 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 80BE4177DBD
	for <lists+linux-man@lfdr.de>; Mon, 23 Feb 2026 15:14:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 17E6D305F3C7
	for <lists+linux-man@lfdr.de>; Mon, 23 Feb 2026 14:13:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB91D283C83;
	Mon, 23 Feb 2026 14:13:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FZbwhqAs"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com [209.85.216.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D4DB27FD49
	for <linux-man@vger.kernel.org>; Mon, 23 Feb 2026 14:13:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771855999; cv=none; b=Gyf1F853hT6Vsht/b/gcXYaqj3XJgdF+tXj7aTW8euQ9fyppCTYswt6mQSUBFitudwBeGapOZVQFVky1gi/UN2VDKmhFfXuQ/0S4ajwsRZMrsUDArAGS5Xh3lWeP92KxfVEADl/Mn0B3erAQcqALVnwHTjab9ygnRZuHF9nyEqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771855999; c=relaxed/simple;
	bh=ZJtC3FDug6GwTbgLmwt1ZJwyohNX22MnvVuo5NuozfA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Ce7eOIhTMU3FZm4b3gfOfzNg0jpASq5xYulYmZNpE9HGt/DBVo+LLO0g2lt/0FuQiFbwl89BkbXMKzKjAdd21qYwRRoS+VJUAYtzAyJotd3nQOsYTyFwtpwcR+i9mS1IENSAh4mg9Si4iICMiDHySorURgTUDWXU4IFQ6W6XzJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FZbwhqAs; arc=none smtp.client-ip=209.85.216.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f68.google.com with SMTP id 98e67ed59e1d1-354b79a9ad5so1820224a91.1
        for <linux-man@vger.kernel.org>; Mon, 23 Feb 2026 06:13:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771855998; x=1772460798; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9G7DmoijMxl3yMGRQlxMeHtefSDJwV8Nl76N+tV6wBc=;
        b=FZbwhqAsNMGca6fusHrB99RmWbTq6Cwav5w3qpQzyRCqXiEgPyDZQ/Esr3J/GnHygc
         tszonJ1YPLZtDWtoUOsrdO3xD1y1KF6DNujo/SlyxcOSOzOH1xRewL6FP06+IkzvsO9p
         NFj3hZSsPVSITIqGV+tghD/LmgzQ7NaKFoJuAAUwNTByelmgpGVCUoCct2EzzSPpiAat
         aqgynr+XLAK8qa8oNkA3zBIKKOTkvpmO/DK5RKNkQMomr9RmmviIf4hK0gioSZ6pF4Vx
         TLyJgYdxG3K+BbMUO5DdVmDZf+fRcifwHeNezd2EAeZ8b3D+IFxlijfv+VFVeuKzt81c
         mR7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771855998; x=1772460798;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9G7DmoijMxl3yMGRQlxMeHtefSDJwV8Nl76N+tV6wBc=;
        b=YdG2oHj+3w7b4Xa20UmmUKVHiWqsXm1v0wCuqJZ1QLvlc1G5tmVf0/J49NHu/lGTD1
         /HYRY8iIRCFrs0d+NhQc60PIkDxK3Ryby5KXWcD3cHIM3Hys/PNAIrj7d90qOP6p65HO
         bULOR0wMdB9inKN8PLI82iFZO2tjHJYuF6VUltmGS6TDAShM2gHmBAXCnadmYzc0fUcT
         fT2Ir18JGP72pKaEfSlrDuHcgplO54PCxOXzjPAXdJZ/UMNirwFD2zLXnGYRBjjRA2NM
         DjMoFWPUxz678Eww5YMyPwSmNIknAfETCOZGObu/EesTFiMOjepWqkuCe72024JMHrRx
         lxJg==
X-Forwarded-Encrypted: i=1; AJvYcCUWPXT+TEOhU5iBL37aiXlfUJjvkDcA6a3tqaAd3xoJnGsVeBbi8oPpagES0TI4f87J0JlW2zon2Cc=@vger.kernel.org
X-Gm-Message-State: AOJu0Yx950R4P9DI5Y1HQkXrLfh74OwK/sqh1rr8swXYq0c+gpVo2t1c
	blVtjGzn1Eks+3c2unBiiS5PikqfWrCjd6v5+0bXUiWZFHkNKxnxoArz
X-Gm-Gg: ATEYQzxtQ2NKNd/NO2KE09CjWPw9+mWv9Wc5ILypVmhC7Taeyz7QuwP2h1iCZqoLWaV
	KmHmGkJbTWkBa/b4iPdSEZCOvYrBiW0Z+lY+XAh0S5RLbiET53LAVBMSO+4C8ztUvS+b3OixgPw
	RL2XsLu9GpP+0Mb9FX9Oo1fiJjMQ2xT0WcHdwI4i+UYYrhq+qck5IgnQCf3n74feIDPN0Kz9We+
	QtyvJ6WyhRdL4IoDoX9vfs3LTgRW7eAjLKvVT1l3rx5Z9wLNT8ThmjzvJGSYzlqhZ5ReHa7n56x
	AzSkLRFDATwTRNcfiASi/JaJEhKNUO4xPUzO3PKRpUsoMdpsgBmhaw0RcRBtc3vDuIrOremYvN/
	TQYAo6tOd/34cYY+YxHJqYhc3U3iX6I8SYojEWZFNrmYh/lKtsHOJXSGAY8QDh4G6410xFxWia0
	SJONqnT0K4raadIIV3eJFBLt7JiaIf0N7TaNyVx8GE3mmF0wQwRKZ3M4o=
X-Received: by 2002:a17:90b:3fc4:b0:354:aa76:8283 with SMTP id 98e67ed59e1d1-358ae7c948emr7594864a91.3.1771855997909;
        Mon, 23 Feb 2026 06:13:17 -0800 (PST)
Received: from fedora ([2405:201:3017:184:52f5:ed80:f874:1efc])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c70b71a75e7sm7214260a12.14.2026.02.23.06.13.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 06:13:17 -0800 (PST)
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
Subject: [PATCH v2 3/4] man/man2/statmount.2: Document req.mnt_ns_fd
Date: Mon, 23 Feb 2026 19:40:25 +0530
Message-ID: <a250e5c44e03428b5817ee863ebe6b47977ec9ab.1771855680.git.b.sachdev1904@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-5207-lists,linux-man=lfdr.de];
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
X-Rspamd-Queue-Id: 80BE4177DBD
X-Rspamd-Action: no action

Document the new mnt_ns_fd parameter to struct mnt_id_req.

req.mnt_ns_fd can be used to query for a mount in a foreign mount
namespace.

The mnt_ns_fd parameter description is based on this commit message [1].

Link [1]:
<https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=9020d0d844ad58a051f90b1e5b82ba34123925b9>

Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
Message-ID: <6577568b31ba8700214af1696d740d3b6aa1869d.1771855135.git.b.sachdev1904@gmail.com>
---
 man/man2/statmount.2 | 22 +++++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
index 843293e43..816ddc24b 100644
--- a/man/man2/statmount.2
+++ b/man/man2/statmount.2
@@ -24,6 +24,7 @@ .SH SYNOPSIS
 .EX
 .B struct mnt_id_req {
 .BR "    __u32  size;" "        /* sizeof(struct mnt_id_req) */"
+.BR "    __u32  mnt_ns_fd;" "   /* fd of mnt_ns to query the mnt_id in */"
 .BR "    __u64  mnt_id;" "      /* The mnt_id being queried */"
 .BR "    __u64  param;" "       /* ORed combination of the STATMOUNT_ constants */"
 .BR "    __u32  mnt_ns_id;" "   /* The id of mnt_ns to query the mnt_id in */"
@@ -74,7 +75,9 @@ .SH DESCRIPTION
 To access a mount's status,
 the caller must have CAP_SYS_ADMIN in the user namespace.
 In case of accessing a mount in a foreign mount namespace (specified via
-.IR req.mnt_ns_id ),
+.I req.mnt_ns_id
+or
+.IR req.mnt_ns_fd ),
 the foreign mount namespace should be child of the current namespace.
 .P
 This function returns information about a mount,
@@ -97,6 +100,16 @@ .SS The mnt_id_req structure
 it should always be set to
 .IR sizeof(struct\~mnt_id_req) .
 .P
+.I req.mnt_ns_fd
+can be obtained from
+.B PIDFD_GET_MNT_NAMESPACE
+.BR ioctl (2)
+operation or by opening a file descriptor to
+.IR /proc/ pid /ns/mnt
+and is used to specify a foreign mount namespace in which to query
+.I req.mnt_id
+(Since Linux 6.18).
+.P
 .I req.mnt_id
 can be obtained from either
 .BR statx (2)
@@ -372,6 +385,13 @@ .SH ERRORS
 .I req
 is of insufficient size to be utilized.
 .TP
+.B EINVAL
+Both
+.I req.mnt_ns_id
+and
+.I req.mnt_ns_fd
+were set.
+.TP
 .B E2BIG
 .I req
 is too large.
-- 
2.53.0


