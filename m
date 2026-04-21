Return-Path: <linux-man+bounces-5359-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2LE2On6852mu/wEAu9opvQ
	(envelope-from <linux-man+bounces-5359-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2026 20:05:50 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8659443E589
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2026 20:05:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 39BB330547C6
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2026 17:58:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F18B7366DB6;
	Tue, 21 Apr 2026 17:58:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XYneLNRU"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B3B73064A9
	for <linux-man@vger.kernel.org>; Tue, 21 Apr 2026 17:58:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776794328; cv=none; b=t1TiifZpOi0BLm8j2qpixF9P9pipxEgoTxhL+vQSsVdXucg/STeFEMZxBxY5ao9muVXvJAiFmzGFqqtuXXLdh3b20IygeY9VAovOPFBdRJmZJTLNxO33YWl8wGrJ6awh4QIBukgTD/PtT5qAy5ueNKSlE3SqtW/oooVgYzbmkEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776794328; c=relaxed/simple;
	bh=UKQlXiw0APct/CpKV+K7Gr9boTk2uV3qTVsQnRmtDdQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=FUCPe5cTREhqEoLwBx7WV1r4+GUi7GCvMcAka9oocYGHWZcCuKGUcRG9chji9tFCdk/1SXsurgZqEf/4COC0/WZJ6Ay6khdDjGbGy3BEVsteCYPpKFprp/N/XY4/c8n4uH6SQK5URaZ6nrr0Ab6ps4ANe5obctCykGWBjeJSi8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XYneLNRU; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-488af9fdaa7so28851765e9.1
        for <linux-man@vger.kernel.org>; Tue, 21 Apr 2026 10:58:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776794326; x=1777399126; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dyIm4JPHWSgp1r3ADz4/NgtmL8+JO9ADKdiFyKXDbAA=;
        b=XYneLNRUP9arCM3DxeKehcC6nIXrPgtU1H+Yt6wivnVdOGa01G77/WFD2+OcwiNR+k
         Ii5lh9RlkQuFSETCDO/UvMvN2ERfyJEdpw6CKrQm+9lkRceAi+ZDheuiVgsB1WQ1dl9n
         YYltM29c/yVyQZhJBYfFfGaAUWKXe42OW66H47abUIyfM2v5Fpz++rN1XrZjqsMR8ibf
         KTpaMWAmYpKEQQr8EEdWRnFFiSQAcgs2T8EuPkWnWzMZDmjfLeumTexrUk+NngS4tUME
         DN52deHb7v2T/i3SsbOQA7tFnXWlXVmkqCnvnf8u73qXziYy0cA8POau9gCj1mHvo2W6
         PSHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776794326; x=1777399126;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dyIm4JPHWSgp1r3ADz4/NgtmL8+JO9ADKdiFyKXDbAA=;
        b=g7y1qJIr7yisW5qZ5F/W1SbTFgQmLFjZnBe4S3vL77dxvbd/v2be4oKCWTvn7PAXIc
         x4JGi11rKNwUvOSzuRmqqXrpRXZD3zWY40ockFy3KDmQq5vJjiwvVqFLjGT9RNYY+cZ+
         ob3j+w5Bjhp+Yvf+LsT1F2C8Dn6CvMadAAgaTXbF/B6aqGTz70EYcys8Qo2ztVufrOVc
         jp5hgkNsq7XFDezFLwBAMiG1CeBsKgqUF1ezrct5HLhIDydk3FPbkfkpg4/Ujd+m58FJ
         cku4K2/jJfOZrTOJMzAaIysORPhF0wTT9VLIPPrweGleDu2DWrbulH5LpPqrIeuOtmiJ
         x0cg==
X-Gm-Message-State: AOJu0Ywct6vMZrWMznr0u+8/YjRkAD/iJg/zSFv+s5zXoipnSu9u6oTk
	XE4ZkefCwWgIQKR5vPA+qUbwsyc+TQTOC3ah93G80Zlh0NSF0H5G27faFO/ylpwr
X-Gm-Gg: AeBDieuqvSDhKcqehg6/CmAMxnc3LrHsAnVaEzzz8E2uuPRw/sCsmo25pzZkL9U3rFb
	PYJJmYxudagvmHZzK0htHqAT82u8AwVXCiyYtYP17Yjkgt/tbesZ4VImzW1ALNlvWSHKDBGlzfQ
	f5sEURqrq0xfdwic9asuOIQNS2xy7cGvEwSumkch3xVFRu7h1ZYa0R3NjnmrfgXmM58OFQExvGi
	PEkphhpcV5GtePl6JaXyNdMz/oC5FXlmrrewe4f3qYsaCN69mflOiW9tZiWfCRW/cc7pDMoiFOt
	LH+OxHH/LX8oeZU2vLVhETQMMsCVEGAwx3p2ZZoRgouwzPhjm6qQgRT0I2M3ILHEVX5w0jGrXpY
	S8t9X0+W8l46s8jhYBe9qhuNgKMnN29YwNk9MK52zJeEap41J5rRz6tdkfWm0vVjEKctoc453tC
	h+RETI8BdkcdH+nq+IANU5dkL4fXYkfKsQkvxmDYx9btNGe+SMgYmKxvOObTU=
X-Received: by 2002:a05:600c:6206:b0:48a:599a:3716 with SMTP id 5b1f17b1804b1-48a599a3bfamr2989205e9.23.1776794325388;
        Tue, 21 Apr 2026 10:58:45 -0700 (PDT)
Received: from localhost (ip87-106-108-193.pbiaas.com. [87.106.108.193])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48a5549f582sm24808005e9.33.2026.04.21.10.58.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Apr 2026 10:58:45 -0700 (PDT)
From: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>,
	=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc: linux-man@vger.kernel.org,
	=?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH v3 0/4] Update Landlock docs to Landlock ABI v8
Date: Tue, 21 Apr 2026 19:58:38 +0200
Message-ID: <20260421175842.6870-1-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.53.0
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
	TAGGED_FROM(0.00)[bounces-5359-lists,linux-man=lfdr.de];
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
X-Rspamd-Queue-Id: 8659443E589
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello!

Thanks for the review, Alejandro!  Here's the third round of the patch
set to bring the Landlock manpages up to speed with Landlock ABI v8.

Change Log
==========

v3:
  - split the size/attr clarifications from the "errata" patch into a
    separate commit
  - earlier patch from v2 about the "scoped" EINVAL error was already
    merged
  
v2:
  - landlock_create_ruleset.2: added a tiny patch to add a missing
    mention of "scoped" in the errors list.
  - landlock_create_ruleset.2: various reformulations for errata
  - earlier patch from v1 about the default ABI version assumption was
    already merged (thanks!)    

Günther Noack (4):
  man/man2/landlock_create_ruleset.2: Clarify attr and size constraints
  man/man[27]/{landlock_create_ruleset.2,landlock.7}: Document
    LANDLOCK_CREATE_RULESET_ERRATA
  man/man[27]/{landlock_restrict_self.2,landlock.7}: Document
    LANDLOCK_RESTRICT_SELF_TSYNC (ABI v8)
  man/man2/landlock_restrict_self.2: Document ABI requirement for
    logging flags

 man/man2/landlock_create_ruleset.2 | 57 ++++++++++++++++++++++++++----
 man/man2/landlock_restrict_self.2  | 20 +++++++++++
 man/man7/landlock.7                |  2 ++
 3 files changed, 73 insertions(+), 6 deletions(-)

-- 
2.53.0


