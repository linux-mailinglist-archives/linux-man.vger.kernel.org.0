Return-Path: <linux-man+bounces-5376-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qOQaOlAg6Wn2UgIAu9opvQ
	(envelope-from <linux-man+bounces-5376-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 21:24:00 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C09A44A1C9
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 21:24:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 06149303DD55
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 19:23:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 122AF36E476;
	Wed, 22 Apr 2026 19:23:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lYozQXnV"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CCCF2FFDDE
	for <linux-man@vger.kernel.org>; Wed, 22 Apr 2026 19:23:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776885826; cv=none; b=Z+w0UoqWutg8lZzATZZhF3LAN5+r7kKz8dw43xTj8mIz/7HpUF/TwyUQwILl9FJA9B8hUGVxnM0sC5SNYa2jWM6NBMBouEBVYV4w6UA7HFLwP2HytK5PEwwyF4oR1sIw/tFrP42BHDMJmUZ63DAfiScwVnsE+qS/yubY+nsEw3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776885826; c=relaxed/simple;
	bh=lpM9KPPjbSUczunsza6MsbydbrGWivlHahAiMT1Ir38=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ezG7LNaATTYc/io04OiIEjvVl/KbutIeJyKGtShuMv/gHJVJ54kCrJODTJ3JotXEj0GT9k1fyt27C1Rpnx8/WLMSAkF+IA7nRM5lIjXR69GJI52Ifs+7IhgOXtVyBnRlvBXpFs/iMxYdt+oy1R3p80Mc+LVteZhRNML2FGY9lLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lYozQXnV; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-43d43e09de5so3321202f8f.1
        for <linux-man@vger.kernel.org>; Wed, 22 Apr 2026 12:23:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776885820; x=1777490620; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4I4LynQno4gvqmfsXWpxy3dFX0TFW3pQgD0amJLfdIA=;
        b=lYozQXnVgrbZHNDWBfYHBcNf25PGX5uZzj6AeOJEJWY4YB+l+YYgXt20lybUcvIFU9
         balc9IxtM213bXGp20tvRPrZ/uvBJvgS0gVeOLIiqIj5WU51YLHlZ3s6P+nBGS9u8BDu
         r72+7eOOEKCamQn+IM8RUuBkzn0btKrVn64ALgtEokm4VLuGDGCvPPt3np5moVHZMBGC
         1TUSlZbIkchzys2tNCcLENkwXv5kZjUns3JR+Y8cQ/XcfFrUVuZcn7+pipLOt+UcZtj0
         VifQPYKMiqAnr5SuZ45Nw/UNfXm1rtwTjZUTX7OSfXzHsnGLjAdQVU4ev40T/wo0Eedd
         8JYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776885820; x=1777490620;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=4I4LynQno4gvqmfsXWpxy3dFX0TFW3pQgD0amJLfdIA=;
        b=mMWEWGYLMXmZMkjqADeXtskdaT+Jmc+ca6eixxbb8T5O0oC4l7cH0R8lD6TVoSDKgw
         yUPdLEpH+htlwPQtPTJWMgCqAc2GbrvgLjnDiGp6brmNqmjLFv7fnrmYfBpXWeUl37lg
         9GGgw6q8AiSMGHaIULa6LtJa+K+A1ZLxKGxI1XhCGxl02y/0dcqXTpsdcXkGx4yMzkw1
         n9Skuouv8Qa4LzFJYHRlf5legAxzvRF9SrouNEORZrUqzwMOPBCfAqhZNFcWSkypKFtS
         Ec6PYcuwEszF7XgdowZvU13r0vx53sxQuMpZkZbaZhMMSpvMjxIwb/dzx9ZPvVZSY46y
         N8bw==
X-Gm-Message-State: AOJu0Yzuhvu3CcY4WdNNTOJJDzWwCQ6nsbdCLbkCRfd77vXXIbEfQpYB
	N7+/1RpP8AP5r+uNfWlAVRkEM6hooxGIsAjqZBbdr5+VNDDmXcCBgsn6
X-Gm-Gg: AeBDiesGmcD2g/KI4nJhuPV1Bx7dbNL9Jqy7hyWDYHUIQ4j+hUAWimZvELdnJBFD6Wd
	QxsHUWwgyz3GVkENuvpH4sNPGQ0DM5M/7VrWXIrKxV+wfdLnvnYDK0sg6rJDipt18h3mmLnIB3V
	lpa2nAfr81PYtdgPxXM+0YCinkXQ5JCW1ikrtMVGnt8Hp7LBkZtwVQHERzIhyEab9XeMGHdtEVt
	z4CwCaLvQgqInXinFe6BYJzMAt92bpkxPFEnHhcBixhXUtlPv665zXp0BaMojlm6VbLpV0MCA0k
	DQiZefXHdiSYw53RfDhr1x9cdisbi1szRf+1AXWldwSG4dvqJQ+QlZN+IkKkOFEh8TNR/7GVYs9
	WuK3d7DihTIPdsjZuZmZXGAOs7j31cKH06OGzAiX57q70gw4NdUOR0kHQqHlranmdnpu0tfYxU2
	uqsTVoQjuxSfJilWJyA38CHOhQ6NlURBq7AfqHsxpUZiEjLh36vd1uJX748oI=
X-Received: by 2002:a05:6000:2013:b0:43d:c95c:4259 with SMTP id ffacd0b85a97d-43fe3e07216mr36027439f8f.30.1776885819809;
        Wed, 22 Apr 2026 12:23:39 -0700 (PDT)
Received: from localhost (ip87-106-108-193.pbiaas.com. [87.106.108.193])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43fe4e591cesm64208701f8f.36.2026.04.22.12.23.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Apr 2026 12:23:39 -0700 (PDT)
From: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>,
	=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc: linux-man@vger.kernel.org,
	=?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH v4 1/2] man/man2/landlock_restrict_self.2: Document ABI requirement for logging flags
Date: Wed, 22 Apr 2026 21:23:29 +0200
Message-ID: <20260422192330.7623-2-gnoack3000@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-5376-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gnoack3000@gmail.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com]
X-Rspamd-Queue-Id: 4C09A44A1C9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Missed this on the earlier commit; we should mention since which
Landlock version these flags are available.  Users can correlate this
with the Landlock ABI version as it can be queried through
landlock_create_ruleset(2).

Signed-off-by: Günther Noack <gnoack3000@gmail.com>
---
 man/man2/landlock_restrict_self.2 | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/man/man2/landlock_restrict_self.2 b/man/man2/landlock_restrict_self.2
index c43b9cc4dd3e..3b8f897cff05 100644
--- a/man/man2/landlock_restrict_self.2
+++ b/man/man2/landlock_restrict_self.2
@@ -89,7 +89,7 @@ and
 .B LANDLOCK_RESTRICT_SELF_LOG_NEW_EXEC_ON
 flags apply to the newly created Landlock domain.
 .TP
-.B LANDLOCK_RESTRICT_SELF_LOG_SAME_EXEC_OFF
+.BR LANDLOCK_RESTRICT_SELF_LOG_SAME_EXEC_OFF "  (since Landlock ABI version 7)"
 Disables logging of denied accesses
 originating from the thread creating the Landlock domain,
 as well as its children,
@@ -105,7 +105,7 @@ Programs that only sandbox themselves should not set this flag,
 so users can be notified of unauthorized access attempts
 via system logs.
 .TP
-.B LANDLOCK_RESTRICT_SELF_LOG_NEW_EXEC_ON
+.BR LANDLOCK_RESTRICT_SELF_LOG_NEW_EXEC_ON "  (since Landlock ABI version 7)"
 Enables logging of denied accesses after an
 .BR execve (2)
 call,
@@ -116,7 +116,7 @@ in the domain are expected to comply with the access restrictions,
 as excessive audit log entries could make it more difficult
 to identify critical events.
 .TP
-.B LANDLOCK_RESTRICT_SELF_LOG_SUBDOMAINS_OFF
+.BR LANDLOCK_RESTRICT_SELF_LOG_SUBDOMAINS_OFF "  (since Landlock ABI version 7)"
 Disables logging of denied accesses
 originating from nested Landlock domains created by the caller
 or its descendants.
-- 
2.53.0


