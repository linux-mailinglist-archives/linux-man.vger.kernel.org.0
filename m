Return-Path: <linux-man+bounces-5404-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YH89H0b07WlTpQAAu9opvQ
	(envelope-from <linux-man+bounces-5404-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 26 Apr 2026 13:17:26 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DC4104698C8
	for <lists+linux-man@lfdr.de>; Sun, 26 Apr 2026 13:17:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A1C6530134AB
	for <lists+linux-man@lfdr.de>; Sun, 26 Apr 2026 11:17:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E83B323EAB4;
	Sun, 26 Apr 2026 11:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="A8O8gtYg"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DCB740DFD5
	for <linux-man@vger.kernel.org>; Sun, 26 Apr 2026 11:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777202243; cv=none; b=OoMdS9UHpp4dY4xomv2/fka2+ptt94FcnWr9hss1NwqJi+k/vY5L0KiAqr6lv9uy9Ht5qy3jzHjM9K2m6w8U+MWWkuM2s4Z67Qp5SBbYK16Npq59qzuhQ3uJzX08mIHW1vbkhXvddW84I66EqpTeL6Qo2HmoQa5/bYqXGz1uJt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777202243; c=relaxed/simple;
	bh=8WDABOnv0oRr0Xlt1Vp3RqnPw4MYOfSYfLVOkMihFjs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=QsLIdD8xJrRIseDpQNbbwTsFrPiz9guPqPsvw02MEk1sev3So9TzrbwU5XiWHcBrDWgdNDFPUrLAZGeGJaix+T8l4SXLHLvKWE0l9izE77ZPZhLhoMyLuo6DSqIsPloAokcHuu/4Hjzb580oxqOaaY97ft2ri1bEOuJWCiqcrcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=A8O8gtYg; arc=none smtp.client-ip=209.85.216.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-35f9ab079bdso6145114a91.2
        for <linux-man@vger.kernel.org>; Sun, 26 Apr 2026 04:17:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777202242; x=1777807042; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4CnIeJWcFZKVnhJOoVR4qQ0eBDBqsKV7zCkXnluAVTA=;
        b=A8O8gtYgbzPBu5wT0eYwdqqDpYeyQrohrKWgM8W6lHJVo0z33dGmVMfgafwgsTs245
         M2Oo305vcyP5wMOzMagnIlq34EYum3Tau8AjRiOonb/Qpr0rjarpGz3HpLWVDcE0U4YL
         FNuZ1Fe94ugXv654aJXk8BHohAuVKcuWJlRSyxjS+WG53I005rTbjL0ZOqqej9ZHKL8p
         hrRyj51bu651kuNwQJ7Cp2p+eKOZ8dSDgZVVTXX1/lCZ9SC0lus7jh1igpuSor+r8l5a
         0pTPoruoDT2lEEJXd1KOZI9zWBJT4WHnPMaW8Jy7iXrwxm6YSD/+yht7MSB2qbcpzAMy
         BvtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777202242; x=1777807042;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4CnIeJWcFZKVnhJOoVR4qQ0eBDBqsKV7zCkXnluAVTA=;
        b=WhiiYUcJIUw0CcxR78US+CVQp/tIX88lqDnYnLOk6DTw8qqpcynu6cko/XTTBQhXH1
         sauHmTC+FSI5VrTAyv5sgNgrVXvmSpG+8L7OAhLOEpRVQ1CZoOo3/9ZoPFMm86T7GTw/
         hJYfb/QWYKMld7cr0jodwqpv4uPFehUdIeH4Shd0nAUd1kq4uC61C3NzxE4ZVJTg6EFg
         WAXguDYs+KBuXLl71J6OxCQj6Z77snD/iHatI8ueXpj6442DeaoeWIqWGCQ7Y9ktrShw
         LjfNcU1qet0Sprm2iIKTHfMnl5LsVzX8O9bfanrUdv1zoZIxXF4Wxnp5Ie/Z3YAQYno+
         t/Gw==
X-Gm-Message-State: AOJu0YwkBgeO/Cc5Ka9lX3KJOq9ncMsGCO+XZ45aX+7/6G7rV0CaNiEp
	qFReEbeYkD8OJAILlp+ZfdnO4oPFNIHCxTXVNxlH8zgH6eQWmkg/8mj3/cZDkklc5AI=
X-Gm-Gg: AeBDievtUS4ghIi9lUPHrrlJi4Cje8evyXyTW1x9rcW5J8DzYNeJOQTv6OBdu4p2IRh
	YN+vSlcnYhIVKZ1aLLBut5YhwZ6yqiIEU2zXIFzDtE/Z/qLVmsvuoDB7yiGD+jmPzOfLhUXw1sX
	bAGv0smSk3bjyWQBprH9OnWloKrtiRrBfuNxJSEaPXrt4Z1/qK9ucD7STUf9WTHHBdV6MLnHuFc
	p+3HIRCtCgyp+f7P/k1hW1uaqxkKdauy7X23GIIvWb6HR8LBk8ZkkiyeDZqSRc83GjmIqjvtQ3p
	fXcv9LYlC3YOA+wh19NGSpsFtMdRSsZcIlAMpKSpHhLjl7/MongRbBC1XMsg8bKYo+oodt6cN+o
	eug9T+8QShVRQOLXTL5Si0/27QMvXWlg6gxZgjjRg3XRnSOSrxWfDeJ7yZeZTrtpNAjsiG4629y
	hYeq2u48N6u/9qdKIhTCpicREXu1Sry+pw/dLTpPfH+o0VD+qQVZcN47PhZTv8ehCISw==
X-Received: by 2002:a17:90b:1850:b0:35f:b46e:e329 with SMTP id 98e67ed59e1d1-361403ca60emr42363824a91.6.1777202241693;
        Sun, 26 Apr 2026 04:17:21 -0700 (PDT)
Received: from toolbx ([103.103.35.11])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3614186adddsm30035080a91.2.2026.04.26.04.17.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Apr 2026 04:17:21 -0700 (PDT)
From: Dorjoy Chowdhury <dorjoychy111@gmail.com>
To: linux-man@vger.kernel.org
Cc: alx@kernel.org,
	brauner@kernel.org,
	jlayton@kernel.org
Subject: [PATCH v2 0/2] Document EFTYPE error code and OPENAT2_REGULAR flag
Date: Sun, 26 Apr 2026 17:14:24 +0600
Message-ID: <20260426111707.36541-1-dorjoychy111@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: DC4104698C8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5404-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[dorjoychy111@gmail.com,linux-man@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[4];
	PRECEDENCE_BULK(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[linux-man];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]

Hi,
I am the author of the patch series that adds OPENAT2_REGULAR flag support
for the openat2 system call. The patch series has been picked up in the
vfs-7.2.openat.regular branch of the vfs/vfs.git tree. Hopefully, it will
make it to linux 7.2 without problems. I wanted to send the man page changes
beforehand. I can ping when/if the patches make it to the linux kernel and
then we can merge the man page changes. Thanks!

patch URL: https://lore.kernel.org/linux-fsdevel/20260328172314.45807-1-dorjoychy111@gmail.com/
applied mail: https://lore.kernel.org/linux-fsdevel/20260416-abgraben-seeweg-a44ce660957f@brauner/

Changes in v2:
- new commit documenting EFTYPE error code (review by: Alejandro Colomar <alx@kernel.org>)
- use semantic newline (review by: Alejandro Colomar <alx@kernel.org>)
- use B instead of BR  (review by: Alejandro Colomar <alx@kernel.org>)
- v1 is at: https://lore.kernel.org/linux-man/20260425134048.62616-1-dorjoychy111@gmail.com/

Regards,
Dorjoy

Dorjoy Chowdhury (2):
  man/man3/errno.3: Document EFTYPE error code
  man/man2/openat2.2: Document OPENAT2_REGULAR flag

 man/man2/openat2.2 | 20 ++++++++++++++++++++
 man/man3/errno.3   |  3 +++
 2 files changed, 23 insertions(+)

-- 
2.53.0


