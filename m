Return-Path: <linux-man+bounces-5515-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iOS8COtdB2pa0QIAu9opvQ
	(envelope-from <linux-man+bounces-5515-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 15 May 2026 19:54:51 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CDC21555B12
	for <lists+linux-man@lfdr.de>; Fri, 15 May 2026 19:54:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 170F833A7A8C
	for <lists+linux-man@lfdr.de>; Fri, 15 May 2026 16:58:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FD2C4C043F;
	Fri, 15 May 2026 16:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="qYs2CsLf"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE8122949E0
	for <linux-man@vger.kernel.org>; Fri, 15 May 2026 16:58:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778864313; cv=none; b=uORzsifFa5bz0HHXvdyHU/P6BZjgJLIZgZ0KD82hOfpkhmFqGvQASMCIhKnAmZJTO/c4L/3NOpF4R4H73P3ZF9WfPYJ9rMiplol8CcNJpxlQUZKUIUfBTTVQfVCDxlGX9r/at3HzYpJTyO7h8g29xBtyOVCIzRlMbAXm4siJqj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778864313; c=relaxed/simple;
	bh=Aes4uaD4iUlMa5LsQ56d6zWbCBzdELI9ft3IQBti46c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=sattFwyqMLDRAVJ0xBO2jOQN85pAuuk6X3wt+us7cX4DyqYfzkIGfqk/ONs4LFWpjbZ+rcQO/nP6E3fRSX94m+ZaFFBAvX7f9ahOBEzGnZcKtIFj6mWtBHTpEY1wGoey127HkK14fa7rlPLmums2AZaNZdx8B98HjvNaRplJFC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=qYs2CsLf; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-44ce78ab5feso8947f8f.0
        for <linux-man@vger.kernel.org>; Fri, 15 May 2026 09:58:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778864310; x=1779469110; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BXliisn/M8jTWsoWM014ljMB0/cX7ixwXA84JD8wm9E=;
        b=qYs2CsLfxfWumeh5qaPn5w/V7gdOUhuL0EowoJdS0zJA1FyN2Q4JFJKKsBhED/OUel
         xQGzItkU6iOWFuQSQeNiKxY/H6qqfeT5oFPlphD7aLjfQyqogjsG1TmLEGZA62UVkiT4
         BpTm0VLEeQz9OQEu0yrKJyTUD7sNjwWrkCWg+pkd9/jMnrh18Ltgnq7DTQKgbuZXK1Cj
         gMi4rnrlMct0v2OdviCXgYuP45YjchCj4Xm7SR79G/yV3mEnKBViAPtvYZgRZ0nlzNIn
         I+fVVcs926M/+KzpDd5XTmSYDIi2eiBOvfFtBGJvZTJLQNBCSHOjnYd3psz7Rj8E+bEC
         QIXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778864310; x=1779469110;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BXliisn/M8jTWsoWM014ljMB0/cX7ixwXA84JD8wm9E=;
        b=HcQnYX3atw3/ZQRLpD2sA//s/m9/6Z2KQsasjIvsJSDGucspEM+QkReMAxQee6BY/4
         HZitoT0Z7PfadAnTo7jp+oeCPdVYWsgsAtRfW8jGi9TwNvzA8F8L8YmWKJlvXooFbWNs
         hsuxnqY6hEHuTdkcmFS+7bYCi8rywuotbT4r9npyoMeYXweGnhwgbcxJhodHgLax8RL+
         rcX8RrTyAYYrWaX4Zy/4OvxE/bgV163XYE8TRQ+gmYWn5hJtNdbAQLxOsyQiTHUT0W2g
         VHLQxNU9Ig8bNK2Kubv6sB72YhXG8ABNzHHoQCQd6Qxfb9cagMbvjtl/ykAr8EH+VoR2
         hL/Q==
X-Gm-Message-State: AOJu0YwgoRN//pIrWaoLNF2OXWvn6slTT5hUoTdX2UHTouVbqGu+yqOM
	CxOB6ZCY7QSoL69DhjzDZLIKHnCqeXfrBDwAVJfUVDpq2WgetYCOZRHPQuQTliy7
X-Gm-Gg: Acq92OEKiKzXqjOYGAAG93VuH8J4MwQttMmVSD6vaXCVqA3Aex6c5+3DkjgNU+66WwB
	4eROKDydPeI+aKZkM+D0DZYXsph/XmctoJuWPZvh05qYZui0idma4jBE7LQJ+WqDa1TE1/UVAGt
	Bg8iQ63vR6Iod+Y74vj+MIyieFAp94YCAg4ob2pMmljOEGAKTwt0Wegh+iVnGKmuV8eBJyORm4y
	SqTyrkB1/74h/VRGjvUYeyqlKKUkEGt8xhCiNlRbfzXSmm6yuSOimcoktSXMiT0zueBPTV8fanW
	Sf0LWXRXYmfJlNopFmHVFjGQ1c2XNbcx6sL+IlEtxncpDFBrrxLFQ5y+32/WS336j86F+PMmMcE
	lsdvu1uMFNiS+zg7NdijuPnIb3CmeL+ZCw8wNMb1yPWUk+JCqvpXwfosNSHX0NE1IRNWJscty4Q
	VZ67intM+OGFGHLywKbMQWm2Lb7Mznqx2L7PGekC8ocZtsjN14
X-Received: by 2002:a05:6000:290d:b0:441:1fa5:457e with SMTP id ffacd0b85a97d-45e5c36bb9cmr6995298f8f.13.1778864310159;
        Fri, 15 May 2026 09:58:30 -0700 (PDT)
Received: from localhost (ip87-106-108-193.pbiaas.com. [87.106.108.193])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45da0fe13b4sm15849985f8f.28.2026.05.15.09.58.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 May 2026 09:58:29 -0700 (PDT)
From: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>,
	=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc: linux-man@vger.kernel.org,
	=?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH v2 1/3] man/man7/landlock.7: Adapt compatibility in code example to ABI v8
Date: Fri, 15 May 2026 18:57:51 +0200
Message-ID: <20260515165753.8830-2-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260515165753.8830-1-gnoack3000@gmail.com>
References: <20260515165753.8830-1-gnoack3000@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: CDC21555B12
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-5515-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
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


