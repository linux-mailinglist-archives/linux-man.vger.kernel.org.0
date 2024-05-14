Return-Path: <linux-man+bounces-919-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 57DB68C5C50
	for <lists+linux-man@lfdr.de>; Tue, 14 May 2024 22:28:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 100C4280FBE
	for <lists+linux-man@lfdr.de>; Tue, 14 May 2024 20:28:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF67A181335;
	Tue, 14 May 2024 20:28:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="buu2BPMB"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 134AB180A96
	for <linux-man@vger.kernel.org>; Tue, 14 May 2024 20:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715718506; cv=none; b=R4CPLoCHelEPZ9VMuLY3RL834cmu/9CJpaobyCk/hI0XMp/n3lqcU09Co33JNZX8RNyENKoiHXHXT731JOCCbLHIN5NvVH3w12FPgy3VCAT3AvNzQ8b49nUXuTTbvRbLb7EgigB2vsGFwSYtAkZr0C3dv6407ktzMm0jUtJc+LA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715718506; c=relaxed/simple;
	bh=dL2aHpYnBop60t+fyvNaneR/9rtTtr3bPEBJMwBOJYM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=oXDFDLBg+d4COh5DaYFYzqNO4GdE4Ff75E2pOnr2uVug5eZ8BSvrLA6lPhhLXOyIHK4g0fNDcblsju4qjqdWgKPiSUvbOIk4CxPgShcosKBz178RUNFHJhYNwTLTlIpsxCIYStBrWuwQKVo4GCaCVoJo0T960M6rNReJJoxdXpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=buu2BPMB; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-34d8d11a523so3830755f8f.2
        for <linux-man@vger.kernel.org>; Tue, 14 May 2024 13:28:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715718502; x=1716323302; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=B9yWmwuzuGQnaUXc/2+JyLOoIQOhe9D2MbO3QAMV4Vw=;
        b=buu2BPMBGfvGSGzb2gRiL+cNseE3C9IbDQJCvDDbZV/7dbpAKd3gIlWPAh8MUdfbco
         Cu6aM15N9BoFAcrW5BdS1d0BHNBBuEbioEZQHoGXcSmHMsTcSZAc9x8NqJ53SSS4HCsO
         XYzxej2Zm27Blw0tOpb8hETOeSQ6Scvhj8lcyu1lcWkcCL5s02lFeRkBSynUGOWilKr7
         kuTGMjsr5NvJYf9sW0VfUAw0+IdnuRDGK2s/auOH08Fgvz0zLMmSIW0RZluoYjdQIzVs
         Nzse4rmBtZUuAS9qpyR6Z1zpX0cUAiW/Giam10MLJWs2MjJ7s14LQRzyOwHZmR0EMww3
         4fOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715718502; x=1716323302;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B9yWmwuzuGQnaUXc/2+JyLOoIQOhe9D2MbO3QAMV4Vw=;
        b=E2E8kXYYGNvJ5ah8LiGY/02zilYpvw8Pna9XKGbteBFlbQ+xrnlCtBDim1ZYLGRF57
         2zLbfqaWdTtOKQL5h8ajW8+HVE6MQmY2bPcSGob1aln7EFs0ZV/FWN5IqsjcySnNmSoM
         VQCwEKNoiksNJe1re34Gf5CNA2KUvsPRXE31eGtDiklDBnUACUeUa9UXLDAGOrUG6vmM
         yqZzWQ/+SiJPkk/atxDgZ64Dv0TjSkBMlU6fjMh/WKQhWNzylP6xC3L3BZe5YOjroelq
         wJRyQGIPS9aBm4/G5Z4KS0DXQEDCojOw/Qo15Yqhju2oc18h70IiHl40GyJmzQYmf2Aa
         n0XQ==
X-Gm-Message-State: AOJu0Yzf6Khh/OH3GAE/twM1lhlYPYYNhtEZjRRnqLVsoBEo4J0/SIFu
	VtkmcXzeA7L1+E89cWJ4jiuSfgMsHfm2x6UJkRLUfoAHwfwvwU7D
X-Google-Smtp-Source: AGHT+IG52jHgCsIVoU6aT9f/wOQ0knuswmzP9aTp2HQQxDxLu5JpSHjeFYb8jyltWVdv4IkvbG/DRw==
X-Received: by 2002:a05:6000:1845:b0:351:ad5e:488a with SMTP id ffacd0b85a97d-351ad5e4aaemr8612198f8f.41.1715718502152;
        Tue, 14 May 2024 13:28:22 -0700 (PDT)
Received: from teknoraver-mbp.teknoraver.net (net-5-94-218-116.cust.vodafonedsl.it. [5.94.218.116])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3502bbbbf08sm14475143f8f.96.2024.05.14.13.28.21
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Tue, 14 May 2024 13:28:21 -0700 (PDT)
From: technoboy85@gmail.com
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	Matteo Croce <teknoraver@meta.com>
Subject: [PATCH v3] proc.5: document 'subset' mount option.
Date: Tue, 14 May 2024 22:28:19 +0200
Message-ID: <20240514202819.95347-1-technoboy85@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Matteo Croce <teknoraver@meta.com>

The 'subset=pid' option was added in commit 6814ef2d, document it.
This option mounts a procfs where only the numeric directories related
to the PIDs are present.

	# mount -t proc proc_pid pid -o subset=pid
	# mount |grep -w proc_pid
	proc_pid on /tmp/proc/pid type proc (rw,relatime,subset=pid)

	# ll -d pid/{1,$$,cmdline,version}
	ls: cannot access 'pid/cmdline': No such file or directory
	ls: cannot access 'pid/version': No such file or directory
	dr-xr-xr-x. 9 root root 0 May 14 09:43 pid/1
	dr-xr-xr-x. 9 root root 0 May 14 09:43 pid/25146

The only non-numeric entries in that procfs instance are
'self' and 'thread-self':

	# ls pid |grep -vx '[[:digit:]]*'
	self
	thread-self
	#

Signed-off-by: Matteo Croce <teknoraver@meta.com>
---
 man/man5/proc.5 | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/man/man5/proc.5 b/man/man5/proc.5
index 8022ca49e..cdb4aa859 100644
--- a/man/man5/proc.5
+++ b/man/man5/proc.5
@@ -105,7 +105,12 @@ This group should be used instead of approaches such as putting
 nonroot users into the
 .BR sudoers (5)
 file.
-.\"
+.RE
+.TP
+.BR subset = pid " (since Linux 5.8)"
+.\" commit 6814ef2d992af09451bbeda4770daa204461329e
+Show only the specified subset of procfs hiding all top level files
+and directories in the procfs that are not related to tasks.
 .SS Overview
 Underneath
 .IR /proc ,
-- 
2.43.0


