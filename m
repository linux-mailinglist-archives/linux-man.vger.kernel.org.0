Return-Path: <linux-man+bounces-1728-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 40C5E9650E1
	for <lists+linux-man@lfdr.de>; Thu, 29 Aug 2024 22:45:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E070C1F22FC7
	for <lists+linux-man@lfdr.de>; Thu, 29 Aug 2024 20:45:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B5251662F1;
	Thu, 29 Aug 2024 20:45:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=efficios.com header.i=@efficios.com header.b="tO84TkN7"
X-Original-To: linux-man@vger.kernel.org
Received: from smtpout.efficios.com (smtpout.efficios.com [167.114.26.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8651F335C0
	for <linux-man@vger.kernel.org>; Thu, 29 Aug 2024 20:45:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=167.114.26.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724964344; cv=none; b=o2pMnu7o4GVGl1/UvhnbhqeIiKHILFrstDcqTYA3RUjs9Td+VUWMb4MBdtE/cwC3aoG/Xr3rRi/8JJlBXRtnLKRJVA6cjwyVFBfEoQcnKyofFWcD616FSvCTLJLJi8Y/iey5GKMW2Z5JeQcaVx2UHR+wsPXPiZZEm3esDZzoc5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724964344; c=relaxed/simple;
	bh=jixr1Karpt0ddWthcx/CNT3F/TVBzNi1VwEHO8CUQOM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=XtPtrSX/+anFQTfAx22HTJWfU3HFGSpnxZVpUb1efZ4iuFSjoHZYcInS5nijmmkRlE0Q/Zxlu+ftkTPYHc2VGwmf9B6OD2/JLnx8cdHQfH6Jh/edQHYAoxSLc/5cfXQGqruJc9JNmDGDscahv/pThucqd50idaIrpKZUmGrf2SE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=efficios.com; spf=pass smtp.mailfrom=efficios.com; dkim=pass (2048-bit key) header.d=efficios.com header.i=@efficios.com header.b=tO84TkN7; arc=none smtp.client-ip=167.114.26.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=efficios.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=efficios.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=efficios.com;
	s=smtpout1; t=1724964328;
	bh=jixr1Karpt0ddWthcx/CNT3F/TVBzNi1VwEHO8CUQOM=;
	h=From:To:Cc:Subject:Date:From;
	b=tO84TkN72kKcaCg/g+gu5WcWHoWRlsL4SRLMu99hObjiU4pvSJEvoRjSDJWcGVMRX
	 WPkEaorZf+dHmdCREbklvjzqoWqp+tDNXcwD57iQM5CDQKG/ZcJghYRKX0w1AMmEcA
	 6sjlphJ1ekaXQpiBbWqqRc0276WlRvbwuEvQ01AvTRpautOmlBoAPPpc9fXzlj/NMy
	 +VJY/UhAp84q5SlObX4UVcLChY1fQTbIIAKUfXkbw8K7NJiYSjroyVpsmHUzmFG0uG
	 XFRKA4TnUHCEOLXNpRnnV+WlNGoN34vjfmAjXW70uZ/uIQM6BpHCnA1c1oV2+/ZHcu
	 30LVjt9pk7A8A==
Received: from smtpout01.internal.efficios.com (96-127-217-162.qc.cable.ebox.net [96.127.217.162])
	by smtpout.efficios.com (Postfix) with ESMTPSA id 4WvtZv74lTz1JHH;
	Thu, 29 Aug 2024 16:45:27 -0400 (EDT)
Received: from laptop-kstewart.internal.efficios.com (laptop-kstewart.internal.efficios.com [172.16.0.60])
	by smtpout01.internal.efficios.com (Postfix) with ESMTP id AAF77816;
	Thu, 29 Aug 2024 16:45:27 -0400 (EDT)
From: Kienan Stewart <kstewart@efficios.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: alex_y_xu@yahoo.ca,
	Kienan Stewart <kstewart@efficios.com>,
	linux-man@vger.kernel.org
Subject: [PATCH v2 1/1] pipe.7: Note change to default pipe size when soft limit is exceeded
Date: Thu, 29 Aug 2024 16:44:49 -0400
Message-ID: <20240829204448.2027276-2-kstewart@efficios.com>
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

Hi Alex,

I appreciate your feedback! I've made the changes requested.

Here is a range-diff against v1 and the new v2 patch.

thanks,
kienan

Range-diff against v1:
1:  7957cb086 < -:  --------- pipe.7: Note change to default pipe size when soft limit is exceeded
2:  b0aa965eb ! 1:  4074d2770 pipe.7: Note change to default pipe size when soft limit is exceeded
    @@ man/man7/pipe.7: nor the
      for this user is at this limit,
     -individual pipes created by a user will be limited to one page,
     -and attempts to increase a pipe's capacity will be denied.
    --As of Linux 5.14 the default capacity of individual pipes created
    --by a user is two pages instead. Users may reduce the pipe capacity
    --below this default value.
     +individual pipes created by a user will be limited to two pages
     +(one page before Linux 5.14), and attempts to increase a pipe's
     +capacity will be denied.

 man/man7/pipe.7 | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/man/man7/pipe.7 b/man/man7/pipe.7
index d1fad9974..ba5b77df3 100644
--- a/man/man7/pipe.7
+++ b/man/man7/pipe.7
@@ -221,8 +221,9 @@ nor the
 capability).
 So long as the total number of pages allocated to pipe buffers
 for this user is at this limit,
-individual pipes created by a user will be limited to one page,
-and attempts to increase a pipe's capacity will be denied.
+individual pipes created by a user will be limited to two pages
+(one page before Linux 5.14), and attempts to increase a pipe's
+capacity will be denied.
 .IP
 When the value of this limit is zero, no soft limit is applied.
 The default value for this file is 16384,
-- 
2.45.2


