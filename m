Return-Path: <linux-man+bounces-5360-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eAoMEny852mu/wEAu9opvQ
	(envelope-from <linux-man+bounces-5360-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2026 20:05:48 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BE8CA43E582
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2026 20:05:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E275E3054F09
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2026 17:58:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4C0439F172;
	Tue, 21 Apr 2026 17:58:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="stnN4dcP"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2B33939CE
	for <linux-man@vger.kernel.org>; Tue, 21 Apr 2026 17:58:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776794330; cv=none; b=X3fIumRb8IblcbZDCMpZeWtyW/Vp7Z8IN0oAyHS25AlYsgkY3DJCzXvpGqZWC/zZH1tRMGykso6VIBtpgXWHr4Uw00Pl5TM828f/MlhhaR+rRH1tAPjPPsi+j5iAz+4mSD35izp1ctZlon+UoFv8p2JzT2iKysa1hpvCiuW9yLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776794330; c=relaxed/simple;
	bh=K8DqpJYjTL5qOO/GjWZ7KQ5+VG8PiMJZEJ5PI70hXrk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=LfmUB+B9MNA7A/7BXonnq6yjHdTCQrkQ36qKVfx74ABmN6myWYPEBtZpwQWut2jS1Le2+6CRf96CFXNALkzrbAXF16+jDTR3SHrVMK8yXe4V6C6pkv0bcG3H/e8zCvUIZ6+kyG/9TEsxnF13wiDUzYcEbFGF/ZmKrHI+s3QB/us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=stnN4dcP; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-43fe8bda8e9so2366886f8f.1
        for <linux-man@vger.kernel.org>; Tue, 21 Apr 2026 10:58:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776794327; x=1777399127; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IR0AdqarKBm2r7qbrsesl4Wv1K3Je6xNcxIcWCZghjk=;
        b=stnN4dcP48vQktPjMCI0NMV9/hXWEwpI0Sdy7FWxmYcedNtLIIj0vKd/cuKEAO6gjo
         ZdQIW1cs+xGP5wjGxT4aq8x/rCr2w1rjQJ4cLlL2dPTTKj7YYEwKIvCRuT8wQGiXN7Z6
         z4R4WET6sfswLBunrs1JFFdoinyvVZUZqeZ1Sd8TAaexpqx1FhA9RvUhQLKU77Gxrxnb
         ZqFNRsEBNonyvSZTp1xmkS8F1DPbUfcS/WNv40o8puM7NedmlitP4f1erKzuZZZwNFPT
         t2VQdC882avNRQ4TQ7bs1tHs4HpAW0LkLXpte7iH9O4f2aFkT6PUAgm5KV3J0XX3iCDE
         Mruw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776794327; x=1777399127;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IR0AdqarKBm2r7qbrsesl4Wv1K3Je6xNcxIcWCZghjk=;
        b=Yo3cIp4ihnfHpIHqkswpkY/MUC2xka7nAQlx9xQv2AXtMFht2AYapeu+fevvNj4oYB
         s45zJMt+wcjLQmUgonCDupFO140WLU5X5MkeAVs0A5v3sdp/3od/b1pDAiOc2ZEPoVU8
         AIoGD7jokUkTsRj79YOpeJPYkmmQ84o+G8y7NvTqizIS7KZwM1FCsXn1zbPDZ6EG8UjN
         FawyHzzTIcWXlC2lnc4FR7kNCpDNDp1mpkPZxI49GHkt/PsITrxHcZ/H2KJIWW47txuM
         BQ1GwAdGZ1HtjQU5tbxbmWyZ0i6IXtbFIFoOTBdDVniWmDTeHIFSWGKQcIoY9jsFl1tE
         1r2A==
X-Gm-Message-State: AOJu0YxtCVUk7kDCakfeo7LJ5frxhvC0ATDvItQ0JmC/YMrwKdKVRM2W
	3NTuxcQfRQjHkAC1ezp/6J4lnvGKsrGGCZBuZRHc/HwLqMgJiw/gzOSx
X-Gm-Gg: AeBDies+3w+LI+S6QKnuvpRM4E41LjFebn4dsxvnubsTH8ly19vVqixPEaM8CoBpxX2
	x5Abw7Y0mpyuwsmbefPXCfZI21k7NAANdf8Lq1Z19xomwEHj3kXsMkrej61q4cjbJQPn5pBeAOm
	Wyy2y3td4Ylt2lPYhVcGZqEYkmsKXmJHc8MfpV+/qdlbrvm968aO79aVtMEZS9JmnRpxzyOyOhy
	lOIosJS3petDUiqqeDhyBI2iBu93qfDflEyNS07Y0iWIoe5vPMSOM1qr48gG+oxeHKc81tTWayA
	2bw0E1QxO9hePa3M285bixw0rN2q2eNRoVIJtKEflEnAJfHVSsn0b8LMRIBs0iZW9zlo3g5avVp
	g6lmEWEIYXBsYmF1CvIR9VRJyR1zTXno1ejupnYN6wNaK3R+K9ySydgV3IP8vBriqBkGr5bV1fZ
	iPAyEObcV4jNudZvyqrfyB7/xkmR3ohlceHx2ccfBck2hbIvK8K5u74wVYrNpmPM+KDzL2WQ==
X-Received: by 2002:a05:6000:200e:b0:43b:8fa4:1937 with SMTP id ffacd0b85a97d-43fe3db3cfbmr29903452f8f.5.1776794327322;
        Tue, 21 Apr 2026 10:58:47 -0700 (PDT)
Received: from localhost (ip87-106-108-193.pbiaas.com. [87.106.108.193])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43fe4e4eec9sm37217240f8f.34.2026.04.21.10.58.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Apr 2026 10:58:47 -0700 (PDT)
From: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>,
	=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc: linux-man@vger.kernel.org,
	=?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH v3 1/4] man/man2/landlock_create_ruleset.2: Clarify attr and size constraints
Date: Tue, 21 Apr 2026 19:58:39 +0200
Message-ID: <20260421175842.6870-2-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260421175842.6870-1-gnoack3000@gmail.com>
References: <20260421175842.6870-1-gnoack3000@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5360-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: BE8CA43E582
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

When used with special flags like LANDLOCK_CREATE_RULESET_VERSION,
attr must be NULL and size must be 0.

Signed-off-by: Günther Noack <gnoack3000@gmail.com>
---
 man/man2/landlock_create_ruleset.2 | 23 ++++++++++++++++++-----
 1 file changed, 18 insertions(+), 5 deletions(-)

diff --git a/man/man2/landlock_create_ruleset.2 b/man/man2/landlock_create_ruleset.2
index d4eb5d827656..dd14f0ceba7c 100644
--- a/man/man2/landlock_create_ruleset.2
+++ b/man/man2/landlock_create_ruleset.2
@@ -116,11 +116,7 @@ Otherwise,
 can be set to:
 .TP
 .B LANDLOCK_CREATE_RULESET_VERSION
-If
-.I attr
-is NULL and
-.I size
-is 0, then the returned value is the highest supported Landlock ABI version
+Return the highest supported Landlock ABI version
 (starting at 1).
 This version can be used for a best-effort security approach,
 which is encouraged when user space is not pinned to a specific kernel
@@ -129,6 +125,15 @@ version.
 Unless noted otherwise,
 all features documented in these manual pages are available with the
 version 1.
+.P
+If
+.B LANDLOCK_CREATE_RULESET_VERSION
+is set,
+then
+.I attr
+must be NULL and
+.I size
+must be 0.
 .SH RETURN VALUE
 On success,
 .BR landlock_create_ruleset ()
@@ -159,6 +164,14 @@ Unknown
 or unknown access, or unknown scope, or too small
 .IR size .
 .TP
+.B EINVAL
+Non-NULL
+.I attr
+or non-zero
+.I size
+in combination with
+.BR LANDLOCK_CREATE_RULESET_VERSION .
+.TP
 .B ENOMSG
 Empty accesses (i.e.,
 .I attr
-- 
2.53.0


