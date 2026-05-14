Return-Path: <linux-man+bounces-5496-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EAjSCyx0BWpuXQIAu9opvQ
	(envelope-from <linux-man+bounces-5496-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 14 May 2026 09:05:16 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 66AC153EAF1
	for <lists+linux-man@lfdr.de>; Thu, 14 May 2026 09:05:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2D1313031876
	for <lists+linux-man@lfdr.de>; Thu, 14 May 2026 07:04:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 476353BF69C;
	Thu, 14 May 2026 07:04:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="pS2q2bFb"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A31F73D0BE4
	for <linux-man@vger.kernel.org>; Thu, 14 May 2026 07:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778742265; cv=none; b=XThqq8FmUmwuTijGM2XQQRLU5RhUKT9ziFWWKYIn7eQsYy67McZVvyct/oC99TaCYQH9NqC2r+UkafTCnT1+47myP0XMnNnc3yUV9mf+VcS3MKJE91d6V1lkwVEPXEMrA6cRNjOj5eAaSi51Hp3otZFEBuBQQSuPKHGjXJXo/Q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778742265; c=relaxed/simple;
	bh=Aes4uaD4iUlMa5LsQ56d6zWbCBzdELI9ft3IQBti46c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=CdGILsUYb85qGoeKdg6rUqwTizq6RSL/V4gQY72Vbw/vKEzEFOEMFD0Pc2i5tL0FEBXTIOohog0NLT8PKWTgXGTXxWy3sEN/2o7EPnWnDgQ2+CqrGH2jWHPiLf3vPxdD3rrR9rOnrdimfKAVecXPwCSS8KAfaOGFHrmo+CjNFUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=pS2q2bFb; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-488ab2db91aso81612805e9.3
        for <linux-man@vger.kernel.org>; Thu, 14 May 2026 00:04:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778742262; x=1779347062; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BXliisn/M8jTWsoWM014ljMB0/cX7ixwXA84JD8wm9E=;
        b=pS2q2bFbiR1ZNRdh1NqthL/XsMgQeaUNOnQLBr83vX0BWUovjqamULoA2rIFjZRwVt
         lmGTPT6r4/duFIJWakB/lRq8i449hZYfh4XQ4peY7eQdwcsqoAfEWsfKCBOitFWgekqR
         +2AyA+fJyzdTj9wdua67LBmvqLDJMza2eb0jEDcBKYHiPf1vZZaOJDp8mk4h4a4TtepW
         5KcMyT3Bxexny/GXSPkLsuOr2udw+QK8x9tpNap6muJ/4jC+K+KIyXDW+JeiaaZdLYHr
         dtlfEsNOMctyPtJFcA7rfzMZLsAWKMv862gsLfoBlawSyvrAXLBQDlRiHPoyVZfxNOfM
         2Y5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778742262; x=1779347062;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BXliisn/M8jTWsoWM014ljMB0/cX7ixwXA84JD8wm9E=;
        b=GFSuDQvX6TfqMktUwRemRf0wWehvOElhygw3ew8npRNTtZdwm0uCv3iISdEeIANPn4
         +Y0obp4/lkUy2od0bKMrZZ6JDPAw67L9I0xjpj+lQHl+fQfvSPoIatWbvYKpHaxP/gae
         S0mW/RoLw7w65WIwPdgorhM8aQidBMphdMdUMpRvUaUgjTJkLENw4gCnxcCOrqo+W99G
         q3NIsbw+5QKURMOaCQHowXXwI4yxMJ7ViX7LYy006BMzHsLZMBdpPQhO6NB4oi/icyWk
         1tGSuIGtFmdT5WomJdoS4TQ/vGgXhgvoMzRmzqsKTbF6pD7/9AgP2n/1n6WnvrX7ZYdW
         /xyA==
X-Gm-Message-State: AOJu0YwqgiSACpVnSyLmjYY0E1EyLhgRyvdwXniSejxGHYij8ZJ9/GK6
	H6XRo2zaFpeuMGK1hp5t0VvezTuWGuIi3JUyzXH4Bk90XlSTvrgmno7i
X-Gm-Gg: Acq92OGI6zKDZ4VFaQyiPP/vC5LoaGCeSyAftClhyA7YymHJkcqFpIb3ovn/yHPXDQf
	jqMaJJTrpmSCzTMBQAopgmZ9GblhA093BU0wskvsA/kK5zDcKrjYYgKTGR9RzaOhnDf7jpYNZYQ
	T8Gw+be34sNboVmWaqZ3Dn7VsfCvDRrCGz5ka7Kc48uz2c2xxrEEM3WkQn/cAGTwb1oBJEZ8G94
	nt5SUKptdNeV0TwI7P+BIZg1ryVa2WnWLV5eEaGTbP0+Vbib1BBqI3OxO7MHRedDkxw5axRl7FK
	qXCRia3KgFEAUFZCH3GLZ5WVFVd5QoQPUKfyE6izuqFBzJyMjw+5KqSfnxp6XI9ASzrV0ZncapB
	8K1Jh93E1kiZzq2E/FRoEKTOrZI8PK7IBs07hN/Xfcmuf+ZANrkdLLqn0YNmEUpzVs+eZlW5Mxp
	yAY+rhucuBgD/+sWVR9iLe1E9ThWQN8qEHdrIcW7rFn6GwUXDG
X-Received: by 2002:a05:600c:154a:b0:48d:1a94:56c with SMTP id 5b1f17b1804b1-48fce9da5e0mr82305205e9.18.1778742261924;
        Thu, 14 May 2026 00:04:21 -0700 (PDT)
Received: from localhost (ip87-106-108-193.pbiaas.com. [87.106.108.193])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48fd76801f2sm14483935e9.7.2026.05.14.00.04.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 May 2026 00:04:21 -0700 (PDT)
From: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>,
	=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc: linux-man@vger.kernel.org,
	=?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH 1/2] man/man7/landlock.7: Adapt compatibility in code example to ABI v8
Date: Thu, 14 May 2026 09:04:16 +0200
Message-ID: <20260514070417.7923-2-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260514070417.7923-1-gnoack3000@gmail.com>
References: <20260514070417.7923-1-gnoack3000@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 66AC153EAF1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5496-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Action: no action

* Bring the code example up to speed with Landlock ABI v8
* Use the correct ABI level in the MIN() macro

Signed-off-by: Günther Noack <gnoack3000@gmail.com>
---
 man/man7/landlock.7 | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
index 06910ccab5b1..0e3a11489af2 100644
--- a/man/man7/landlock.7
+++ b/man/man7/landlock.7
@@ -583,6 +583,9 @@ __u64 landlock_fs_access_rights[] = {
     (LANDLOCK_ACCESS_FS_TRUNCATE  << 1) \- 1,  /* v3: add "truncate"  */
     (LANDLOCK_ACCESS_FS_TRUNCATE  << 1) \- 1,  /* v4: TCP support     */
     (LANDLOCK_ACCESS_FS_IOCTL_DEV << 1) \- 1,  /* v5: add "ioctl_dev" */
+    (LANDLOCK_ACCESS_FS_IOCTL_DEV << 1) \- 1,  /* v6: same            */
+    (LANDLOCK_ACCESS_FS_IOCTL_DEV << 1) \- 1,  /* v7: same            */
+    (LANDLOCK_ACCESS_FS_IOCTL_DEV << 1) \- 1,  /* v8: same            */
 };
 \&
 int abi = landlock_create_ruleset(NULL, 0,
@@ -595,7 +598,7 @@ if (abi == \-1) {
     perror("Unable to use Landlock");
     return;  /* Graceful fallback: Do nothing.  */
 }
-abi = MIN(abi, 3);
+abi = MIN(abi, 8);
 \&
 /* Only use the available rights in the ruleset.  */
 attr.handled_access_fs &= landlock_fs_access_rights[abi \- 1];
-- 
2.54.0


