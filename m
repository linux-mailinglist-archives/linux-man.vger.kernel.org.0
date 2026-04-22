Return-Path: <linux-man+bounces-5378-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4OUeKk4g6Wn2UgIAu9opvQ
	(envelope-from <linux-man+bounces-5378-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 21:23:58 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B7544A1C2
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 21:23:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 428B3305D377
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 19:23:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02A3436D9E0;
	Wed, 22 Apr 2026 19:23:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="sQdJdLT9"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E59703F0769
	for <linux-man@vger.kernel.org>; Wed, 22 Apr 2026 19:23:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776885833; cv=none; b=VdZiHNm/0g2kJgF9EPPfkzX8AZz0j9WuOcBumixqp2ktXQ1eNuA3504SO1xWN2b9q84ycwlapR7R4u0zy1f4oQXL3K3EhAQII2SF95sZsx+lo+eaRCo8SwMOrI82uZD8LKzwDfJn1CAE6C9eIQ1/MijP6XrknBTyHaWz8VWFpM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776885833; c=relaxed/simple;
	bh=9Dacy84tKrvgyYeJsF/t+wTlw4omWiPML/sJZ5Eh/UU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=kid7tXFDC1ZujaOqrkDL1eBDOTQmIqM4K+klkrx5lkI7ZuXc+C7CjaPdTVxGRgS2XMiu0FnKsv4VSNNK7/mrSJXRkDU4I1Ys0YN4E7EghOh6vi1spZBN6k/qFnXVHt6Rb1BAyH+MeukJ5mlTK/UcPlnUPNx4N05hxqMphwoXprg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=sQdJdLT9; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-488a88aeec9so76302845e9.2
        for <linux-man@vger.kernel.org>; Wed, 22 Apr 2026 12:23:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776885822; x=1777490622; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yyh559ZzHN7Xwj/5h9NScTOc9d4u1z1xG0xthjPrfyc=;
        b=sQdJdLT9KOaRbMsjEzUN2XfiCSAG2qJZ1emFGyfMGZLdUNVHxApGsyXjAk25vsNGNX
         Wg/2vkA5Lqt3NlJ1QzplNzI+BR/UsXaud8qUWD76k+ELXMFd5VQukTxrLXkXS/HuKl9o
         r1qPPuu3hntBUxuXo7nm9QSsUp9ziRle/+mwzG4fpVdNT7WlEXk0CaSjx+j9TOlkSAD1
         ygurJJVAHDQi1Odih4iYBJ+kRvLiXAHweVUEZG3Av0OQC7TrDl0we/nukD27/TNlrKKV
         7Eh8dDKI/WjiUPhMfstEx7SFNs/o8qQ/S7dSobRT6QR3sFvMKHNua2ZFsTFoFLmpJl6U
         lpEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776885822; x=1777490622;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yyh559ZzHN7Xwj/5h9NScTOc9d4u1z1xG0xthjPrfyc=;
        b=sa4xm1t88Ebl5Pi9cd20+4YA7OdzBL/u9VZgzHqSdtJIxpL4APwpAEWYERob+jO5Ep
         kv8kNunbX6xyOGYeMuIQ8lerAsxdN5gVzW9e4/FT6NPCRDVgp41CKfyzZtbQz5xEaD2U
         LqcdEs0oYiRhQZ/fRZtrSyFAt2VJV2Yg8fp9CWo2VA41wVm40eUqNkauQnPNDhO95vUJ
         jlP6ZWdX5j3HrNXV5qtDw6sS9lFbSXrqLNcl4460gvK+Vws1G9W7+5OmjZRaKerWSQk6
         yCIN83/nM2hh9eveNwB7bpqf9FrESpHlD25YtkxA8W0KEVrl1cW9cqk7H8TG0BRAIVUD
         B+FA==
X-Gm-Message-State: AOJu0Yxvae82LQWTp//Sr7kRCchFpwubMd5s7dz8fDGMRAqs5rfYgMc3
	5bs3P5Ec+CHt3BABpPra7TJxhTM3GEY4rXJoG5KfSHG4PgPGFfyeLfSTmun+RcRm
X-Gm-Gg: AeBDievCNS6QRmttMDi+idUaG1x2lAwOg4TIKEN6K9idfwsftiFGwYOu/wrt+6iiHJp
	o24HV2Gah0Lpaj0ipdtaQxnqPBcMWxiHvqJHjgiUPRlwa3w0//oOafgmLuQ+e6u+V7vWsv3/tVX
	wZI64K4EuJVRcYXqcNVTZJAab7JrL2d0KYYpJZlX2JGzWXsrTcI2nRWsLvlVmP+VCl021lCHumt
	R3C6n5UwlSG6W0OrkwuIgE3ZuRTQ458JIrlPbogr+W8yRZ+YEq9v6zrCkpLX1Hoxnd7SoDKxtQ7
	nmB/+F8aE4F04n6zEa2ym10+0kM8i8kZYDr+OrivO7bFp2iEdmkvG0ctn+/0QuDG/EkdOQdh0hT
	su9SZ7YJoQnGH1zd7oqFgvouv4wVavZa1TR/5p6P415xquKaxOTD/ITnvEQd9D5E7j0DXlqvGtU
	5M2d4yRfHymGwaW54M4AHQovcoBvOMhs1w5RXXmIKFxsWpIoOAJ8nfF509GLM=
X-Received: by 2002:a05:600c:c10a:b0:483:2c98:4368 with SMTP id 5b1f17b1804b1-488fb771613mr266261425e9.18.1776885821682;
        Wed, 22 Apr 2026 12:23:41 -0700 (PDT)
Received: from localhost (ip87-106-108-193.pbiaas.com. [87.106.108.193])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488fc0f82bbsm790642085e9.3.2026.04.22.12.23.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Apr 2026 12:23:41 -0700 (PDT)
From: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>,
	=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc: linux-man@vger.kernel.org,
	=?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH v4 2/2] man/man2/landlock_add_rule.2: mention ABI version for LANDLOCK_RULE_NET_PORT
Date: Wed, 22 Apr 2026 21:23:30 +0200
Message-ID: <20260422192330.7623-3-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260422192330.7623-1-gnoack3000@gmail.com>
References: <20260422192330.7623-1-gnoack3000@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5378-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 50B7544A1C2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the ABI version in the place where LANDLOCK_RULE_NET_PORT is
described.  For LANDLOCK_RULE_PATH_BENEATH, the ABI version is
implicit, it is supported since the start.

Signed-off-by: Günther Noack <gnoack3000@gmail.com>
---
 man/man2/landlock_add_rule.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2/landlock_add_rule.2 b/man/man2/landlock_add_rule.2
index 48d7d3b25c9e..fe01a98d99ea 100644
--- a/man/man2/landlock_add_rule.2
+++ b/man/man2/landlock_add_rule.2
@@ -80,7 +80,7 @@ flag,
 which identifies the parent directory of the file hierarchy or
 just a file.
 .TP
-.B LANDLOCK_RULE_NET_PORT
+.BR LANDLOCK_RULE_NET_PORT "  (since Landlock ABI version 4)"
 For these rules,
 the object is a TCP port,
 and the related actions are defined with
-- 
2.53.0


