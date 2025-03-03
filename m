Return-Path: <linux-man+bounces-2569-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B40A3A4BB33
	for <lists+linux-man@lfdr.de>; Mon,  3 Mar 2025 10:51:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0030F3A1E20
	for <lists+linux-man@lfdr.de>; Mon,  3 Mar 2025 09:51:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A5BF1EB186;
	Mon,  3 Mar 2025 09:51:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=uniontech.com header.i=@uniontech.com header.b="e/A6o6PU"
X-Original-To: linux-man@vger.kernel.org
Received: from smtpbgau1.qq.com (smtpbgau1.qq.com [54.206.16.166])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D6D1D63C0
	for <linux-man@vger.kernel.org>; Mon,  3 Mar 2025 09:51:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.206.16.166
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740995482; cv=none; b=ULeKLe5dOTYgbRi+KXj5F+s8WHqble51KURUeFZm3yPVImC3maS3P+hNLErL7rtWbGIluMioZTFva27RcR0D7caYiLMHgLzanju2zvAwR4E6zXm75kuM0ENHMufDQGThZy1Yo5+aJ7b4k5gE2mn+WpJuHCLmBC0URsqLcY13i2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740995482; c=relaxed/simple;
	bh=PCyPOBO+pYh79wZA7o6CHUiSwMbqGAP9zJba6WMX0t0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=sV+ubrBkF8YTRcg7qVmqUoFMp2D39pLp5/VDvObY3/t6cujEiRHXd892myyQJLhSUjaCfuqgnci5G8MZwapkxnLGh7DuH1B0DiGQisCJnLaAVvvpplC9ttHwK2oUOGjfRSooFygn7u08ph2eG/0tnvjZuzQsbBO1sMZsFLYoYwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=uniontech.com; spf=pass smtp.mailfrom=uniontech.com; dkim=pass (1024-bit key) header.d=uniontech.com header.i=@uniontech.com header.b=e/A6o6PU; arc=none smtp.client-ip=54.206.16.166
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=uniontech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=uniontech.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uniontech.com;
	s=onoh2408; t=1740995470;
	bh=50JO++NglFoOhmc/ctlyXrJ3eVSiQ5TQPUMp9C7F3C4=;
	h=From:To:Subject:Date:Message-ID:MIME-Version;
	b=e/A6o6PUYOsuW6MFh1jGW4rdIH3E3301OnSDeXcAJ30avovJijYgnyajwAvFOdT/S
	 fmLSrZZMB0xp6vGyn/SRgdee9IJXL60hzXkdXS1QfZdBt6kjmknfSGBudyX/FMzIrZ
	 nzQJeHo52qTnZQQAQFvuUMOJ8r1uxmOehiCvBMkw=
X-QQ-mid: bizesmtp89t1740995466tob89mio
X-QQ-Originating-IP: sFx/s9uzIZ7HbPm+udWh/G8SidCUHGK1ie1viE5zoIM=
Received: from localhost.localdomain ( [113.57.152.160])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 03 Mar 2025 17:51:04 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 1
X-BIZMAIL-ID: 1125207322338031480
From: Chen Linxuan <chenlinxuan@uniontech.com>
To: linux-man@vger.kernel.org
Cc: Chen Linxuan <chenlinxuan@uniontech.com>
Subject: [PATCH] man/man2/mkdir.2: add missing .TP
Date: Mon,  3 Mar 2025 17:50:57 +0800
Message-ID: <6DF9A4EE0A868FB4+20250303095057.92138-1-chenlinxuan@uniontech.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:uniontech.com:qybglogicsvrgz:qybglogicsvrgz5a-1
X-QQ-XMAILINFO: Nwz8Cs33/LprhJl5DQoyOc4HDIl7YNdZBuvGop8GbIqNe1JqFtu/jHqN
	1OXK2i7w/cXusIoJKucJP6Zh54RT2fijdytEH2Mq5JbgBCDsMD6ilyGbxL5wS6sGPJirt8F
	oeS7gUizChSO6Vr9ryO3sGj5ntLST+K1FWUoqD7WNZ/p3BuyoAKgw83/o38FyTgcbk/Fww5
	qYmVvxCZ1xRPhECvP5FNFr3K4QN1bCWQRS0NF8QRT0cwtGr9AF76xBkGka1UL4WfQlIbChn
	KrVPppuPrB4R5BLAyFhmIVowlNSKiaXAXde+Y8edPxuUd7+NwnaAinVx1NFn1uOmXBubdIA
	Wip83c2tz21jP7U7QUZvk9sB9xw6GcrCt8mowyFaichTSEnG+xSOHPsyZurk4WHI/QwOMyk
	54wrezAv92ETe3v6iyR6aF0xnofREuVk+2lPo6BurQZccg5izskppIgHtvJEgi4Hfl8o7Md
	wsKCqpWVfgg1rzv0k/nyyBD5nHZ4tmqj8RB0nVFfPDnqZm3V1Wz5/sV+bQ0k4yLyM8OZqzR
	wxkKYlXwPtNjcvDZThZ8l6rOYd+BbuR4Fa5377jWDCCUpNo4Ea2fl607QnGXvSyZZ0WtKM6
	5SIdsrBMO259VbwQ83j7EI8kKBWNylG0AIeBJt5Wl/Enp/eqLIcLSrrcm44o5a4ergpzS5l
	bZjmHJ6hRqLPSH7CAyTxhwQa7RAtOhTsdeqiI3nmVj16NOs33KLzKAolxaBzn79yF3unu/+
	ITEXmxbclccaIUUD3JRf+mJcbmWmeUI2fHVz83yFDDDg/1x8VfL0rICNmnI+7oFt8/Rn0p8
	kL0aOjqtnLoQCKmFVo4Idnv1JNXKW3LWDN4p14A7WyUNezzJhCEgzjLnTjAZIUcJ8r4QbxS
	WfpQ8C1ZuLIU/P0bTDoCK+m2ZsIwIyUJRgd6+LbYI+Mb/euHok9D9y131Hd1CBSzth8VnJk
	dGfvtsvx5OSiUzMe8Pxci1+ZzNCFoOSVo8sKchgwQEVr3wN3hVth3KZ3PG2tq0oQ8ogQ=
X-QQ-XMRINFO: NS+P29fieYNw95Bth2bWPxk=
X-QQ-RECHKSPAM: 0

Signed-off-by: Chen Linxuan <chenlinxuan@uniontech.com>
---
 man/man2/mkdir.2 | 1 +
 1 file changed, 1 insertion(+)

diff --git a/man/man2/mkdir.2 b/man/man2/mkdir.2
index 3c3fad6ee..20163c88e 100644
--- a/man/man2/mkdir.2
+++ b/man/man2/mkdir.2
@@ -203,6 +203,7 @@ does not support the creation of directories.
 .B EROFS
 .I pathname
 refers to a file on a read-only filesystem.
+.TP
 .B EOVERFLOW
 UID or GID mappings (see
 .BR user_namespaces (7))
-- 
2.43.0


