Return-Path: <linux-man+bounces-5287-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MLW5EOsfyWl/uwUAu9opvQ
	(envelope-from <linux-man+bounces-5287-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 29 Mar 2026 14:49:47 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A91352047
	for <lists+linux-man@lfdr.de>; Sun, 29 Mar 2026 14:49:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C759E3010B94
	for <lists+linux-man@lfdr.de>; Sun, 29 Mar 2026 12:48:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82CFB3128D4;
	Sun, 29 Mar 2026 12:48:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="S0uTw59Z"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7C14186E2E
	for <linux-man@vger.kernel.org>; Sun, 29 Mar 2026 12:48:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774788512; cv=none; b=eYV4H2os5skg5iC8n/Flb+Vf5Nhzh/F61RFQVrfHj9EzQwTtMbabXlGBrLZBCkpo3P5/PbnAEwjLTT1Ya+xYAQOKzpG97NwFbvLGsx5YK70jAAu37eUQuypBfDcNSWYwsM0Xrcccye5NCxNaGuHm3CwvfV1FdDKY7bmOzGAqzZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774788512; c=relaxed/simple;
	bh=ntzZz/HaG2UdFgrn9OVGlHbcZwt1VrxjLJ955Dn8uTY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=gSW5i9bFXeDibIr/o8DQugpG6/RofqGn0VMXVhMXOYl7zoKE7SZm1MgcsdKVvBBVD1duknoWfAo0YC1c3FVErka2ILVud8+LK12iQ6Yb36X3FR0uGB9GfGaGbf7S35Ezibp6Ek4TQXCKZ4utYH7Ik+QLiqWOmFXuDApn3txkQeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=S0uTw59Z; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-43cfa33a983so228810f8f.1
        for <linux-man@vger.kernel.org>; Sun, 29 Mar 2026 05:48:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774788509; x=1775393309; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dNcGFnrz17A/SmrCV1C8lQOipN9OkNjijRgd3ekYaOY=;
        b=S0uTw59ZPf9chfhFahvXZGcqIIlpdaEBXwbN0NL6xPthpCkQmAALDZ5b6TEiA2Kpe7
         p7xWe0VMP/pbIT7RLH65c+Y5P8XUnqGOqxAiW45Vc0GYPBXdwlnAyDGMMnEHTnRd/iiZ
         8AjbBYdNJTLYCKN4ayvt9WvUnmqvmxxAEUeQskctRDTFzc6T9hCdzzXaH6oORwyOol8e
         lPx/lfG34srMDy7rflbsXtEiaBUmwRWm0XqOpRPKmTZ1KiEAQWePuy5zghbZfh9Ohdex
         veaxKBTf4vbZyi5ma5SNtKGEmqAiEoK4uZKDf/+fcqEtmXBrpAOFIiusajJQtf7Fxr/f
         2mdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774788509; x=1775393309;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dNcGFnrz17A/SmrCV1C8lQOipN9OkNjijRgd3ekYaOY=;
        b=nab0ag4j9ysy0in4AA2UdHQqchOF7n4VxORcjSIuvDfhsgkTbntVmB5Ux5OroHP1i2
         1LYtxbIoGrcDBgtpmxcZ8+byqUvo/ooIqUGZVGCmj8miCDJQGNpGUAZvl+feq+eKmZVo
         VH4HeeZQGRkoaKPEU+ZYgPRP+rKkDo428+zsmClPWSCeQ91FlqqdSlWxNrp0Pc3mizEF
         LWuH7n49kWwKqeB2SY6G7CrKtDWPGspk6R960rwcAFt06gzYHfi3hgr58NPrFwGwncQ9
         pGe6q+VnvMBp8sQLVNZee+GcEobk/nQGpFREX1OGkV3lyXBvL6q/kbQom4Y2ouf2YCR/
         Elsg==
X-Gm-Message-State: AOJu0Yzk+wbEXnJNQY00orgzY+xa9cR/ajVugKIDMXJqCS+XQ8h5cDEP
	6J9umdp9NExAvKbJxoSLwTr5rkE3bTBV6gSN0tUSH3InpO/AeQLcAOXY
X-Gm-Gg: ATEYQzzUUM61YhcK4yM6OHISIMnuWSpxda3iBaqQ4bvJYFmJg9jhWF6xBjX151IsFf1
	jQr/srQvCCZrE4em2mb99wxIfGRTVhEqn62cJhf9ijZPSGkn8KoRQBQQcPONB256koVURYO9cAS
	XT5iNVx0jv8UdCY5ZHQ+kPShwPeynvWlDP9WEKAr0T2BqUXTgqZUpE4Bksw4T01QdXJLo2cYJ5q
	dfoUptPG05By1XaCmLnZgwfEEVfPPHmwjTLUgnWXJ3+6h822vs6B9cO8PlVoSqJJn64qS6wbxw1
	XX5tl0P28Jmq2BehKpeSKLAU0eUNcIKj77KAVd+oOXjyPl4B/f5I2AR9Yxkwy6WLnJWerBsLVXw
	JD7HzRV7XsXtMavO57wlL59N+aTpV5MQWsai6tEDjpn3UrqzFWMAQZQEYjfRnSKCcoruX/Na41M
	GN8cDGrQ4b1KbaaDf5kUjCBv8WtphW1GehdIRPeAEPIFYFcbloVxzkxI/KVk4=
X-Received: by 2002:a05:6000:2c10:b0:43b:6352:a262 with SMTP id ffacd0b85a97d-43b9ea62b1dmr14790363f8f.41.1774788508819;
        Sun, 29 Mar 2026 05:48:28 -0700 (PDT)
Received: from localhost (ip87-106-108-193.pbiaas.com. [87.106.108.193])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43cf247102dsm14411022f8f.27.2026.03.29.05.48.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Mar 2026 05:48:28 -0700 (PDT)
From: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>,
	=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc: linux-man@vger.kernel.org,
	=?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH 1/3] man/man2/landlock*.2: Reorder errors alphabetically
Date: Sun, 29 Mar 2026 14:48:14 +0200
Message-ID: <20260329124815.92502-3-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260329124815.92502-2-gnoack3000@gmail.com>
References: <20260329124815.92502-2-gnoack3000@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5287-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gnoack3000@gmail.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,digikod.net:email]
X-Rspamd-Queue-Id: 95A91352047
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Reorder lists of error codes alphabetically, in line with man-pages(7).

Cc: Mickaël Salaün <mic@digikod.net>
Signed-off-by: Günther Noack <gnoack3000@gmail.com>
---
 man/man2/landlock_add_rule.2       | 38 +++++++++++++++---------------
 man/man2/landlock_create_ruleset.2 | 18 +++++++-------
 man/man2/landlock_restrict_self.2  | 20 ++++++++--------
 3 files changed, 38 insertions(+), 38 deletions(-)

diff --git a/man/man2/landlock_add_rule.2 b/man/man2/landlock_add_rule.2
index 108364528830..48d7d3b25c9e 100644
--- a/man/man2/landlock_add_rule.2
+++ b/man/man2/landlock_add_rule.2
@@ -139,8 +139,23 @@ is
 .BR LANDLOCK_RULE_NET_PORT ,
 but TCP is not supported by the running kernel.
 .TP
-.B EOPNOTSUPP
-Landlock is supported by the kernel but disabled at boot time.
+.B EBADF
+.I ruleset_fd
+is not a file descriptor for the current thread,
+or a member of
+.I rule_attr
+is not a file descriptor as expected.
+.TP
+.B EBADFD
+.I ruleset_fd
+is not a ruleset file descriptor,
+or a member of
+.I rule_attr
+is not the expected file descriptor type.
+.TP
+.B EFAULT
+.I rule_attr
+was not a valid address.
 .TP
 .B EINVAL
 .I flags
@@ -171,27 +186,12 @@ Empty accesses (i.e.,
 .I rule_attr\->allowed_access
 is 0).
 .TP
-.B EBADF
-.I ruleset_fd
-is not a file descriptor for the current thread,
-or a member of
-.I rule_attr
-is not a file descriptor as expected.
-.TP
-.B EBADFD
-.I ruleset_fd
-is not a ruleset file descriptor,
-or a member of
-.I rule_attr
-is not the expected file descriptor type.
+.B EOPNOTSUPP
+Landlock is supported by the kernel but disabled at boot time.
 .TP
 .B EPERM
 .I ruleset_fd
 has no write access to the underlying ruleset.
-.TP
-.B EFAULT
-.I rule_attr
-was not a valid address.
 .SH STANDARDS
 Linux.
 .SH HISTORY
diff --git a/man/man2/landlock_create_ruleset.2 b/man/man2/landlock_create_ruleset.2
index ae5c89f5354f..8cffd8c770fa 100644
--- a/man/man2/landlock_create_ruleset.2
+++ b/man/man2/landlock_create_ruleset.2
@@ -134,15 +134,6 @@ is set to indicate the error.
 .BR landlock_create_ruleset ()
 can fail for the following reasons:
 .TP
-.B EOPNOTSUPP
-Landlock is supported by the kernel but disabled at boot time.
-.TP
-.B EINVAL
-Unknown
-.IR flags ,
-or unknown access, or too small
-.IR size .
-.TP
 .B E2BIG
 .I size
 is too big.
@@ -151,10 +142,19 @@ is too big.
 .I attr
 was not a valid address.
 .TP
+.B EINVAL
+Unknown
+.IR flags ,
+or unknown access, or too small
+.IR size .
+.TP
 .B ENOMSG
 Empty accesses (i.e.,
 .I attr
 did not specify any access rights to restrict).
+.TP
+.B EOPNOTSUPP
+Landlock is supported by the kernel but disabled at boot time.
 .SH STANDARDS
 Linux.
 .SH HISTORY
diff --git a/man/man2/landlock_restrict_self.2 b/man/man2/landlock_restrict_self.2
index 43fc8c6efcc7..530ef9a4cd25 100644
--- a/man/man2/landlock_restrict_self.2
+++ b/man/man2/landlock_restrict_self.2
@@ -82,12 +82,9 @@ is set to indicate the error.
 .BR landlock_restrict_self ()
 can fail for the following reasons:
 .TP
-.B EOPNOTSUPP
-Landlock is supported by the kernel but disabled at boot time.
-.TP
-.B EINVAL
-.I flags
-is not 0.
+.B E2BIG
+The maximum number of composed rulesets is reached for the calling thread.
+This limit is currently 64.
 .TP
 .B EBADF
 .I ruleset_fd
@@ -97,6 +94,13 @@ is not a file descriptor for the current thread.
 .I ruleset_fd
 is not a ruleset file descriptor.
 .TP
+.B EINVAL
+Invalid value in
+.IR flags .
+.TP
+.B EOPNOTSUPP
+Landlock is supported by the kernel but disabled at boot time.
+.TP
 .B EPERM
 .I ruleset_fd
 has no read access to the underlying ruleset,
@@ -105,10 +109,6 @@ or the calling thread is not running with
 or it doesn't have the
 .B CAP_SYS_ADMIN
 in its user namespace.
-.TP
-.B E2BIG
-The maximum number of composed rulesets is reached for the calling thread.
-This limit is currently 64.
 .SH STANDARDS
 Linux.
 .SH HISTORY
-- 
2.53.0


