Return-Path: <linux-man+bounces-2314-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 64612A2285C
	for <lists+linux-man@lfdr.de>; Thu, 30 Jan 2025 06:07:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7276E7A2AD4
	for <lists+linux-man@lfdr.de>; Thu, 30 Jan 2025 05:06:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 457DB1465A1;
	Thu, 30 Jan 2025 05:07:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b="MT7AOZ2o"
X-Original-To: linux-man@vger.kernel.org
Received: from sender4-pp-o94.zoho.com (sender4-pp-o94.zoho.com [136.143.188.94])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C4CC84A2B
	for <linux-man@vger.kernel.org>; Thu, 30 Jan 2025 05:07:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.94
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738213627; cv=pass; b=j9XzVq3fzcPw/ilcyW4wOChIBxNjZiKrYLWg8fi2r+1Y9pcBVeCSlFAwcAHHfBO+oa9dR7LzvsPzYRrcnG5pDf3YIiZNFfw7asv5bBKsSP7Ky2ifemeKqran9MgVJ93lbuu5JOhwj068hD0XR7JKicFsyS44n656N3dtH9J1xws=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738213627; c=relaxed/simple;
	bh=fESfUJF9lk1J7nGB6B8AUTDpzwMxDrOYnoL21zHmBjQ=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=dv5WSNfNbE5vq4xN4B0kGPaMpU5AJ5JU3nF8jLUfo2imVcLEUgpP5NU8gcf/O9dG38oXuKVPrKMPt4zzmXVZrZBMUbFzw9MtkBdKMJkRko8VtuAtfuOPwBtRjdx0dlC6yLSMja5f/i2BNPk5KXB4clPFVp4p5xyu8kfQe3vNYCc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com; spf=pass smtp.mailfrom=zohomail.com; dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b=MT7AOZ2o; arc=pass smtp.client-ip=136.143.188.94
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=zohomail.com
ARC-Seal: i=1; a=rsa-sha256; t=1738213621; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=cmeQcwniW8T45CJ+kiOgqDuZeinWNiugoety1fTiEmJhCrJZfnmQhdUVlDLxFK6NxjV+W1dIbegcE/9cqKnbfm0dYaPF9UMav45B8jdeyxugWA8ARt6F6p2QReOJh9Fv3xHjHTDLeJ+CEfufx82mnA+9lpvDWozCVqtKTlptxcc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1738213621; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=MWvIA3UQ4fn12RlF9uES5wqY+/kZzbtYbb/MoR8qDaU=; 
	b=BaD9MHTN/QCLdXeELE0XZNZUEeszUc3Ir1KoFRGU2yYE6Tden+Kw893IDxwZvTM08lFjGNPADjrpKciTp0lbj4fXfiFmT/IyxHP6RbzrdPpIDRsuuNqXO5qOopPgKukMGo02OAWFT1TiJ4dQKXfXHsKPIaSsIHzHAkqBxYxsgUo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=zohomail.com;
	spf=pass  smtp.mailfrom=safinaskar@zohomail.com;
	dmarc=pass header.from=<safinaskar@zohomail.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1738213621;
	s=zm2022; d=zohomail.com; i=safinaskar@zohomail.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-Id:Message-Id:MIME-Version:Content-Transfer-Encoding:Feedback-ID:Reply-To;
	bh=MWvIA3UQ4fn12RlF9uES5wqY+/kZzbtYbb/MoR8qDaU=;
	b=MT7AOZ2oIlHSVYYgb8dfwp3R8RaYw6BRa6QKLFzywb+FDYkLBTBrSkdcVts8Oke+
	Jofx6ixcTe3YrDUbLzkT7Z+p8eOy9bj5wMVQ8QYMvGCVRDUwUHfb+J32nxYWO1vqLzh
	MPsr5T79nVmFoMLgx2vMnuQgHha4GurMjMujJY84=
Received: by mx.zohomail.com with SMTPS id 17382136171121005.5456677812834;
	Wed, 29 Jan 2025 21:06:57 -0800 (PST)
From: Askar Safin <safinaskar@zohomail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH] man/man2/rt_sigqueueinfo.2: change tid to tgid
Date: Thu, 30 Jan 2025 08:06:25 +0300
Message-Id: <20250130050625.3356602-1-safinaskar@zohomail.com>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Feedback-ID: rr080112277a6c610f5f4591c1b4d6b358000040768bf74b6a21fcf9b8e65c25a34f3ad84885f1bd9c7d7ae8:zu08011227a35cb2efc5629f308c4ee9b70000e3e156b6b16f21632752bde2a1f8525a7874c7f91d7f77e789:rf0801122c1269c1397750ba824af338970000a5074ff4c3de9c3cb0be1bf6d044506d7618e200a1db744f1201ff026d67:ZohoMail
X-ZohoMailClient: External

There is a typo. Author meant tgid.

Signed-off-by: Askar Safin <safinaskar@zohomail.com>
---
 man/man2/rt_sigqueueinfo.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2/rt_sigqueueinfo.2 b/man/man2/rt_sigqueueinfo.2
index 5e55e89..8bd1800 100644
--- a/man/man2/rt_sigqueueinfo.2
+++ b/man/man2/rt_sigqueueinfo.2
@@ -48,7 +48,7 @@ system call sends the signal
 to the thread group with the ID
 .IR tgid .
 (The term "thread group" is synonymous with "process", and
-.I tid
+.I tgid
 corresponds to the traditional UNIX process ID.)
 The signal will be delivered to an arbitrary member of the thread group
 (i.e., one of the threads that is not currently blocking the signal).
-- 
2.39.5


