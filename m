Return-Path: <linux-man+bounces-569-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C0413879741
	for <lists+linux-man@lfdr.de>; Tue, 12 Mar 2024 16:15:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7C973281FF9
	for <lists+linux-man@lfdr.de>; Tue, 12 Mar 2024 15:15:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B457C7BB16;
	Tue, 12 Mar 2024 15:15:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=digikod.net header.i=@digikod.net header.b="phUVyM8n"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp-190f.mail.infomaniak.ch (smtp-190f.mail.infomaniak.ch [185.125.25.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CDF56997A
	for <linux-man@vger.kernel.org>; Tue, 12 Mar 2024 15:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.25.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710256539; cv=none; b=XHjtLLKYhf+rUk0nSVVjHFm6svh95WzxrP1w8IUwJwipjoyP8CMvV6LsKg2OQyAXuwgW/hh88gq63cECmLkgnR8OkgZnCHWY/0C0AFj11AV0xtTrPrKywmIUPGq0MqcdQYRikXHHYSZ3xZVFwsM1CmElV2JX4g91pu+k5ApXW0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710256539; c=relaxed/simple;
	bh=QMbkLLsXKcic8VkxWx4WZ3dp+mLb3PYXP2MQAxNdH00=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=K0Cezt0oBSbuoqGmFe+EeNBX/8CAYVDI6/FyxXPLeldL51WS8uCoG/MPctNuofHqip9yDRacUYt+Ed6uZ4RhQy59J0k51Iuap4BpD6QZcQQHDE/F7bTSYBAn/1pQQLOEn8MkKyhX+JXs8cbnmyGLksFKMhOFmzn+4yYHXmRC7D0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=digikod.net; spf=pass smtp.mailfrom=digikod.net; dkim=pass (1024-bit key) header.d=digikod.net header.i=@digikod.net header.b=phUVyM8n; arc=none smtp.client-ip=185.125.25.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=digikod.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=digikod.net
Received: from smtp-3-0001.mail.infomaniak.ch (smtp-3-0001.mail.infomaniak.ch [10.4.36.108])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4TvHJg04Qgzqny;
	Tue, 12 Mar 2024 16:15:31 +0100 (CET)
Received: from unknown by smtp-3-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4TvHJf3VtjzMppDM;
	Tue, 12 Mar 2024 16:15:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=digikod.net;
	s=20191114; t=1710256530;
	bh=QMbkLLsXKcic8VkxWx4WZ3dp+mLb3PYXP2MQAxNdH00=;
	h=From:To:Cc:Subject:Date:From;
	b=phUVyM8n8NCUxpzrRIG5hmSEmPJPcqNyMFP1jw1aDe5XvaZXR77XCEdjBOGpCawj4
	 O/OF/QxPmfYMZqPWgHNQ+aUUs+gwmlC/7BD/VzTA7TWuNlBQ25z03ZnUadrrjznXRW
	 UAtW8ahuVu7sCdy5Y/0YAGEF+fMe5GtOEUZXV5W0=
From: =?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
To: linux-man@vger.kernel.org
Cc: =?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>,
	Alejandro Colomar <alx@kernel.org>,
	=?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack@google.com>
Subject: [PATCH] landlock_restrict_self.2: Fix max number of nested sandboxes
Date: Tue, 12 Mar 2024 16:15:13 +0100
Message-ID: <20240312151513.9718-1-mic@digikod.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Infomaniak-Routing: alpha

This limit was updated and backported with commit 75c542d6c6cc
("landlock: Reduce the maximum number of layers to 16") to all supported
Linux versions.

Cc: Alejandro Colomar <alx@kernel.org>
Cc: Günther Noack <gnoack@google.com>
Signed-off-by: Mickaël Salaün <mic@digikod.net>
---
 man2/landlock_restrict_self.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/landlock_restrict_self.2 b/man2/landlock_restrict_self.2
index 43f15c932a83..fb7e48234098 100644
--- a/man2/landlock_restrict_self.2
+++ b/man2/landlock_restrict_self.2
@@ -102,7 +102,7 @@ in its user namespace.
 .TP
 .B E2BIG
 The maximum number of composed rulesets is reached for the calling thread.
-This limit is currently 64.
+This limit is currently 16.
 .SH STANDARDS
 Linux.
 .SH HISTORY
-- 
2.44.0


