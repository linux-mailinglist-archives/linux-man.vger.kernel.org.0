Return-Path: <linux-man+bounces-2320-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CB4FFA24DD0
	for <lists+linux-man@lfdr.de>; Sun,  2 Feb 2025 13:12:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 44D8D161B40
	for <lists+linux-man@lfdr.de>; Sun,  2 Feb 2025 12:12:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65DFC1D5CF2;
	Sun,  2 Feb 2025 12:12:37 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from omta034.useast.a.cloudfilter.net (omta034.useast.a.cloudfilter.net [44.202.169.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04EF1E573
	for <linux-man@vger.kernel.org>; Sun,  2 Feb 2025 12:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=44.202.169.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738498357; cv=none; b=iV0b5N4pYCv1rKjGZo+oHtsfNTXBNqmSbsOXDVG385fGcbrtwfzySj6b8mnioVPFGcnHXbvi0aTNXpGzhoAJMcWG56WMGkXmJfuLqNbobTrsM0BReHoNkq79W3Q0Bw5Bh3ivCLOkZUdQkeC8zjR8ZUofLw4+H5oBMVuAASGDnUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738498357; c=relaxed/simple;
	bh=ci4WfmkKjoL7uXTGKv/1Z1ZweDiv+BHxtJrsBfyE0oU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=uCj/Vit67Kqh04HX1cUkWesdc1O/KypCVHHuGfe677M4EEq86iBsr2ZKcMCHfY/6CR84wXUpkLd/lJnZv+0EHQqk4LGNnlhgfaitAQ9Pga5wplqfS8FTqoA4OkLW62Y9MADuNLmqXp6pY+a2BV1RSgNxYDQWQhpqmvxPS6VT3IE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=drabczyk.org; spf=pass smtp.mailfrom=drabczyk.org; arc=none smtp.client-ip=44.202.169.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=drabczyk.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=drabczyk.org
Received: from eig-obgw-5007a.ext.cloudfilter.net ([10.0.29.141])
	by cmsmtp with ESMTPS
	id eOy3tJdT6XshweYpwtS4UU; Sun, 02 Feb 2025 12:12:28 +0000
Received: from gator3278.hostgator.com ([198.57.247.242])
	by cmsmtp with ESMTPS
	id eYpvtXnHUWkhGeYpvtXrjj; Sun, 02 Feb 2025 12:12:27 +0000
X-Authority-Analysis: v=2.4 cv=WL15XGsR c=1 sm=1 tr=0 ts=679f612b
 a=wI8P0wgu9qut9Qmby1c6ng==:117 a=x0OE6rfHJZ6H1OKZOK5cGQ==:17
 a=T2h4t0Lz3GQA:10 a=Ye9q-bpsAAAA:8 a=VwQbUJbxAAAA:8 a=VGZVzwQjAAAA:8
 a=0M_JppDzna32un60OaAA:9 a=7KbCETwRv5F4J-amU3zH:22 a=m_VEIBz21GJuPbWKIyfi:22
Received: from 89-77-246-87.dynamic.chello.pl ([89.77.246.87]:36662 helo=localhost.localdomain)
	by gator3278.hostgator.com with esmtpa (Exim 4.96.2)
	(envelope-from <arkadiusz@drabczyk.org>)
	id 1teYpu-003AIl-22;
	Sun, 02 Feb 2025 06:12:27 -0600
From: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: mtk.manpages@gmail.com,
	linux-man@vger.kernel.org
Subject: [PATCH] man/man7/signal.7: Update definition of SIGCHLD
Date: Sun,  2 Feb 2025 13:11:12 +0100
Message-ID: <20250202121112.9911-1-arkadiusz@drabczyk.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator3278.hostgator.com
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - drabczyk.org
X-BWhitelist: no
X-Source-IP: 89.77.246.87
X-Source-L: No
X-Exim-ID: 1teYpu-003AIl-22
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 89-77-246-87.dynamic.chello.pl (localhost.localdomain) [89.77.246.87]:36662
X-Source-Auth: arkadiusz@drabczyk.org
X-Email-Count: 1
X-Org: HG=hgshared;ORG=hostgator;
X-Source-Cap: cmt1bXZicmg7cmt1bXZicmg7Z2F0b3IzMjc4Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfJ4ZF4FYbOgrafVMYEWlExppIK4alNq8qCnLk94PXAWqfERTqh38BspQM0y4wVJZhX8n94SuMeRWLyp4j8F/NXgeePncCMTQsjva+MTs2AaiNp7DJMhD
 ZsWinl1g/w9du3ogE4I3M7wbu3mMympifBpNbSBZij2gclKn4QmrR0EB637dEwr97HuqttXY+ALayQBHc+57vsXkxWQ1PlyjYws=

Link: <https://unix.stackexchange.com/q/790116/72304>
Link: <https://lore.kernel.org/linux-man/Z5U0Wh_KF3Ki62Pk@comp../>
Signed-off-by: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
---
 man/man7/signal.7 | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/man/man7/signal.7 b/man/man7/signal.7
index dd04c6d1a..d2929dab1 100644
--- a/man/man7/signal.7
+++ b/man/man7/signal.7
@@ -360,7 +360,8 @@ Linux supports the standard signals listed below.
 The second column of the table indicates which standard (if any)
 specified the signal: "P1990" indicates that the signal is described
 in the original POSIX.1-1990 standard;
-"P2001" indicates that the signal was added in SUSv2 and POSIX.1-2001.
+"P2001" indicates that the signal was added or its definition changed
+in SUSv2 and POSIX.1-2001.
 .TS
 l c c l
 ____
@@ -369,7 +370,7 @@ Signal	Standard	Action	Comment
 SIGABRT	P1990	Core	Abort signal from \fBabort\fP(3)
 SIGALRM	P1990	Term	Timer signal from \fBalarm\fP(2)
 SIGBUS	P2001	Core	Bus error (bad memory access)
-SIGCHLD	P1990	Ign	Child stopped or terminated
+SIGCHLD	P2001	Ign	Child stopped, terminated or continued
 SIGCLD	\-	Ign	A synonym for \fBSIGCHLD\fP
 SIGCONT	P1990	Cont	Continue if stopped
 SIGEMT	\-	Term	Emulator trap
-- 
2.45.2


