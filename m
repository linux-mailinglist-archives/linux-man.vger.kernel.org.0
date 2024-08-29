Return-Path: <linux-man+bounces-1724-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DCFFA964A5A
	for <lists+linux-man@lfdr.de>; Thu, 29 Aug 2024 17:43:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 902B21F23ED4
	for <lists+linux-man@lfdr.de>; Thu, 29 Aug 2024 15:43:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CEE21B372F;
	Thu, 29 Aug 2024 15:43:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=efficios.com header.i=@efficios.com header.b="pfK1hoOM"
X-Original-To: linux-man@vger.kernel.org
Received: from smtpout.efficios.com (smtpout.efficios.com [167.114.26.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF87C1B252C
	for <linux-man@vger.kernel.org>; Thu, 29 Aug 2024 15:43:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=167.114.26.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724946190; cv=none; b=RckpQl5IxVKQTpoI1/1HEIuR7coEr98fIBGBTHVn6h3owkd8uUuZsC1IUGUh6rT11aCf18YqHHhwpmfXLUJmLTzeKy1D0Z/iF2CBb1MSo+BHk6oBiQoC5TMXJS3tg09uHNRAuA32qmTEmlxJOo3lmB77eT7czfSP5AzfzNb+Q70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724946190; c=relaxed/simple;
	bh=xMzAlnLEy18dw7glsHU0KDwQnIYCh9ZrOtijFMxKevY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=PLE16KPNEmfDaVtEciRHEcvC81N6r71yJkl3oEhMjxK0M4jlaARAX4vb7zNJin0Q857tQ1JYsFIqO6ipjJEFwuQSSuBSpVx/utfSSpWBx5es8BYR0XaLa/tCsIcU+dbJNuGU8p7f/sAuTSsZ9KOqq1X7V/QOXiQxH5JMbSEeFGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=efficios.com; spf=pass smtp.mailfrom=efficios.com; dkim=pass (2048-bit key) header.d=efficios.com header.i=@efficios.com header.b=pfK1hoOM; arc=none smtp.client-ip=167.114.26.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=efficios.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=efficios.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=efficios.com;
	s=smtpout1; t=1724946186;
	bh=xMzAlnLEy18dw7glsHU0KDwQnIYCh9ZrOtijFMxKevY=;
	h=From:To:Cc:Subject:Date:From;
	b=pfK1hoOMcVZfdgpoKmJzLh+cUEehk1/TIs0XWjXxDBZ3/bOceZ4d0la+k69cY/coS
	 oBr88kQTwrdFg+NLcqWIlJJLpqQKeISMQvZRZUTbHsAtO5eTh69fekBAfLufHq6EXC
	 Nm8fmmBrV35/l6X4z1I1o6ageWbnMRswX7zIMHWLfFjqOWu2h4oytg82nX9zHE79wH
	 eyDXVIHAucedh0FDz+VC3s4+NWAgy1pGVMxxl20mpa7mhkxdKzKg8nMsF0LzLTDlsn
	 kbNu8MhI7ncpD4DCNiXpddq5LATrAVfuHZ4pL6hQO5omEuEFm8+QHpnjoniLiGdHlo
	 yq7ulQxyvCj/Q==
Received: from smtpout01.internal.efficios.com (96-127-217-162.qc.cable.ebox.net [96.127.217.162])
	by smtpout.efficios.com (Postfix) with ESMTPSA id 4Wvlt24jB4z1JjN;
	Thu, 29 Aug 2024 11:43:06 -0400 (EDT)
Received: from laptop-kstewart.internal.efficios.com (laptop-kstewart.internal.efficios.com [172.16.0.60])
	by smtpout01.internal.efficios.com (Postfix) with ESMTP id 63CB87B1;
	Thu, 29 Aug 2024 11:43:06 -0400 (EDT)
From: Kienan Stewart <kstewart@efficios.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	Kienan Stewart <kstewart@efficios.com>
Subject: [PATCH 1/2] pipe.7: Note change to default pipe size when soft limit is exceeded
Date: Thu, 29 Aug 2024 11:43:03 -0400
Message-ID: <20240829154304.2010305-1-kstewart@efficios.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

See upstream commit:

    commit 46c4c9d1beb7f5b4cec4dd90e7728720583ee348
    Author: Alex Xu (Hello71) <alex_y_xu@yahoo.ca>
    Date:   Thu Aug 5 10:40:47 2021 -0400

        pipe: increase minimum default pipe size to 2 pages

Signed-off-by: Kienan Stewart <kstewart@efficios.com>
---
 man/man7/pipe.7 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man/man7/pipe.7 b/man/man7/pipe.7
index d1fad9974..c7f3fbb9e 100644
--- a/man/man7/pipe.7
+++ b/man/man7/pipe.7
@@ -223,6 +223,9 @@ So long as the total number of pages allocated to pipe buffers
 for this user is at this limit,
 individual pipes created by a user will be limited to one page,
 and attempts to increase a pipe's capacity will be denied.
+As of Linux 5.14 the default capacity of individual pipes created
+by a user is two pages instead. Users may reduce the pipe capacity
+below this default value.
 .IP
 When the value of this limit is zero, no soft limit is applied.
 The default value for this file is 16384,
-- 
2.45.2


