Return-Path: <linux-man+bounces-5288-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gIKUHaYfyWl/uwUAu9opvQ
	(envelope-from <linux-man+bounces-5288-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 29 Mar 2026 14:48:38 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D48352036
	for <lists+linux-man@lfdr.de>; Sun, 29 Mar 2026 14:48:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 447F53003BC3
	for <lists+linux-man@lfdr.de>; Sun, 29 Mar 2026 12:48:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF6052F49FD;
	Sun, 29 Mar 2026 12:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jiHkXcV2"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 648233C07A
	for <linux-man@vger.kernel.org>; Sun, 29 Mar 2026 12:48:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774788513; cv=none; b=RF0eeUrwBHvx/3A359Z/dSZtxVqj41X4BRWE8RpPlVOzjb92L4hqYnYWDS7HVAeqvjDeduSYhHn22Gz+w2h6YAzHR76+1AFDUCJvJ4iWH41lQsfOQqbJI7Gy9JKPag1PMT7GN3YfgQMM/AtSjstIxnADiyIVchzptAZEdZpTboM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774788513; c=relaxed/simple;
	bh=wXKJCgbwJPDy5u9k/CbNRkFKaI6G+oNv3PyRWleJHrk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=tFfylqaBdxgh1ZSNVEZb8BLLAsBw2qyOXzx3y4iG40eBgefe/ZQ7QzCP5+FKvC1kS0MWckybJlbfNUtayVHTwbEFhHc5GyWErA/QGawgVEGPqbUgdVaB9EJNkxMzZ/IQhHWlImK+8LQtWfi2EipU/lTWuKlmsJXUN/dOOskWtL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jiHkXcV2; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-486b9675d36so29527995e9.0
        for <linux-man@vger.kernel.org>; Sun, 29 Mar 2026 05:48:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774788511; x=1775393311; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NXd6tEENK8zrk8FTybnkdH+7zR/dNv2gZs9ibvRPCC8=;
        b=jiHkXcV2LwP9fOeO0CZ58tObtEYdDU1pkz4SGBBcUdVuWt798JEqHGwJS8P5GkkWch
         qEZF5hBQVNdNQFlsbFtur2vxqIoDlNyDq5txfwk4r/47qkAU2KF7DI5oOlCFO05Xi8YE
         SWch9W3gj0oxOg5EppSiccCHa98uwo/1i+5dBXHHjyEAJjFjfyeWhWsSx3W6NIyET+Mi
         jAAGgmqkBeUFIENivi4/L9lo8Z8NEVVBhkGA/alc/0PjHKC1F/7celTg58qLkAsbUBe9
         niU+NDv09qWkcOV+MVSRDse/EX1Cx3Wpuvm6Us6bZUzZynos8a4akNp3Rd4MI+hVKvFm
         THXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774788511; x=1775393311;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NXd6tEENK8zrk8FTybnkdH+7zR/dNv2gZs9ibvRPCC8=;
        b=KxHAc5AAN+m0isuJd/89n/EvMmv51BfmA18Hk9zkPbgPH8+IxM9ZlyVtxiU5e/V3RW
         ipm22toQM2AOfKoj1GY/a6XFU1KPjS07w+7L7aHhU/qj+jK7NElFRDiVmIXqClxQqWOy
         J//Gdw/bBbRcyczNtFK5aRGxTWIpn/mXxToKUjvy2UGPpAt/VOAAlyfHRxeWol1UxHv2
         SWlLZkrxrwQo28MH2nynVO/psykRidv8CD2xbC+v5OObOhXCcnIP1+sHQP/1PcCWSL+f
         Bydm17YZ0iFq5er6itm2LfcfhNt6UVlcjGimLRHblZCEzJuXVSEp/Ra+Lzl9zvr7o8Ac
         +n5w==
X-Gm-Message-State: AOJu0YxRO5GeN3rMVQjgZSbP7N0ei053rbehVL+MCKCQWdaVosRfMTxK
	hwEJlhKQeRl1YIaHn+Uo9uufvVtd7Qx2fx8/BM6tAoarRhmD7C0SHi3M
X-Gm-Gg: ATEYQzz8HTl0cHptEs75v5DCCj24GtR3WWyx0j+APCwdVoPTPYJWznkC/oIkz3kfpCd
	8PL0H3TgirBHhav1brOLwK+agN80Vjn6nJ5m6WvwOHJUOuaJuGx8jr+1eax39j23i7FqxI7RQwB
	08ltvwqQRUoC4EGOSQ2Ux7WRPx3XdG8xBylAMyEWyV5ItGPzv3XODatkHm+uERXFdU6CDQBkbB7
	E6kaZRsFG2XQPTFp84M4XCkcJmZbWWsELh7EbBo7L+o+8IsahFsuOQLacMElMGQMxx4BtcfcQOC
	SOV89M2E6XWzcvrKn2NLdT1pp0nqGSv3wvXowvIMZwN+20cFhJ9uBjvkIMC+n1KkcuC0ES1X2AQ
	xX0XH2H6IuRtRA4Ye2kwiOzOkEHO91R+myY+I5KlPJMEXVUlRBWAw/DAlpLvXMOcKd+ys3vpOBL
	0gkemaSA/DKtPHO7KYbSqaifpI/1j3gVYxGtOhF/eu6+MpZ1Tr
X-Received: by 2002:a05:600c:529b:b0:485:3ec6:e634 with SMTP id 5b1f17b1804b1-48727d84100mr139653345e9.15.1774788510703;
        Sun, 29 Mar 2026 05:48:30 -0700 (PDT)
Received: from localhost (ip87-106-108-193.pbiaas.com. [87.106.108.193])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4873061eeeasm107978155e9.2.2026.03.29.05.48.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Mar 2026 05:48:30 -0700 (PDT)
From: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>,
	=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc: linux-man@vger.kernel.org,
	=?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>,
	Tahera Fahimi <fahimitahera@gmail.com>
Subject: [PATCH 2/3] man/man2/landlock_create_ruleset.2: Document scoped field in struct landlock_ruleset_attr (ABI v6)
Date: Sun, 29 Mar 2026 14:48:15 +0200
Message-ID: <20260329124815.92502-4-gnoack3000@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-5288-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gnoack3000@gmail.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,digikod.net:email]
X-Rspamd-Queue-Id: 74D48352036
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the missing scoped field to the struct landlock_ruleset_attr
definition, and document it as a bitmask of scope flags.

Available since Linux 6.12 (Landlock ABI version 6).

Cc: Tahera Fahimi <fahimitahera@gmail.com>
Cc: Mickaël Salaün <mic@digikod.net>
Fixes: 5a89b5bd (2025-03-06; "man/man7/landlock.7: Document IPC scoping (Landlock ABI v6)")
Signed-off-by: Günther Noack <gnoack3000@gmail.com>
---
 man/man2/landlock_create_ruleset.2 | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/man/man2/landlock_create_ruleset.2 b/man/man2/landlock_create_ruleset.2
index 8cffd8c770fa..5425ed59878b 100644
--- a/man/man2/landlock_create_ruleset.2
+++ b/man/man2/landlock_create_ruleset.2
@@ -44,6 +44,7 @@ It points to the following structure:
 struct landlock_ruleset_attr {
     __u64 handled_access_fs;
     __u64 handled_access_net;
+    __u64 scoped;
 };
 .EE
 .in
@@ -62,6 +63,13 @@ is a bitmask of handled network actions
 in
 .BR landlock (7)).
 .IP
+.I scoped
+is a bitmask of scope flags
+(see
+.B Scope flags
+in
+.BR landlock (7)).
+.IP
 This structure defines a set of
 .IR "handled access rights" ,
 a set of actions on different object types,
-- 
2.53.0


