Return-Path: <linux-man+bounces-3497-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F32B2C8D4
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 17:54:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B967D5A5BBB
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 15:54:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EB05298CB2;
	Tue, 19 Aug 2025 15:54:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b="A99FCkhI"
X-Original-To: linux-man@vger.kernel.org
Received: from sender4-pp-o95.zoho.com (sender4-pp-o95.zoho.com [136.143.188.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 977AE28C00C
	for <linux-man@vger.kernel.org>; Tue, 19 Aug 2025 15:54:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.95
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755618869; cv=pass; b=ilBTLXB51NQ/8IfW3Of1PXYb8QJVlpIkP3ZEKicgY1c7aamOcVAXNLT6PEsUotXoieddLnWQtqbKvSZ8XHXL7iW3CfLZDh8Px9KuefaZ6dERx3cviX6EtOMIlweDKaHmUWmAhjzfnz2QyYI4PFmgUTmUK/LNNr3Y0DZzb2mgIgQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755618869; c=relaxed/simple;
	bh=XYqb9Yp3sSxMYeZ71aUWf/lodl8Y8lMpbmwQnZyckSE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fMQUA9SPWnRL3c0v7WRHpLEO6aBo7fgDBuJdAqyn/IpLhDHlHnb/OUCNiuea9V0QhH7hqa1bn6nTPnavnSG107UOK7vUw5K+0dx7h3kp4Bn9ZHJX27oOHKjir3E9KRuEqKbk+fe6VwwL2h8pFpuZ5w1lIATb725JeM2ZVlSGjGI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com; spf=pass smtp.mailfrom=zohomail.com; dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b=A99FCkhI; arc=pass smtp.client-ip=136.143.188.95
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=zohomail.com
ARC-Seal: i=1; a=rsa-sha256; t=1755618861; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=MAWfr7mJWX1NMz5sxxIGBjBliJfTri9DX93t54HKarNywVZcUQ+LXPzfWlkF668puKcvJBar77MmlPIzgLvJuWJL/nC1DIZC93vVSJ2cVGvoNW9KIwtgkqEIXqfnKWYBFZbbT9Xhu36NFRTUmXB2gCUSgd+D7YCsngRvYcqbVMU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1755618861; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=IyONnunQ8i9+/49VirhvDSEF8zwym8llQWx9aeJbGrI=; 
	b=K+zdkoFfZ7IR1csLgP6eW+mJCkydziISctlAN1Wg4HpM+vYMwUleXjPoxP6c1XMcte6yOOsebYuP/7/IkQDK3BX+aLL14xmTt21OLVkjX1P/XgM1l4E8LYCwvmyRLnjXiWyoPIoH+7wJefnEN6W7aGPgd694MDlHbSV7s7KnjHE=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=zohomail.com;
	spf=pass  smtp.mailfrom=safinaskar@zohomail.com;
	dmarc=pass header.from=<safinaskar@zohomail.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1755618861;
	s=zm2022; d=zohomail.com; i=safinaskar@zohomail.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Feedback-ID:Message-Id:Reply-To;
	bh=IyONnunQ8i9+/49VirhvDSEF8zwym8llQWx9aeJbGrI=;
	b=A99FCkhIsp8oeN0g/wQ3ReePLyuLbDaFU1LEg5Vee+ZviiFhB3P0BdVcD1q5tAPU
	xo2BT3gynbpIDv2Lhp7MbGiLaaruvEQglr2yhfFfDQLvkR3mvQhmvOUpR89Ai9dJZqo
	lF44OtDPo0W3a41YVZoAyoU4opQ4iZw+eVd6lXkQ=
Received: by mx.zohomail.com with SMTPS id 1755618858437917.7321708505839;
	Tue, 19 Aug 2025 08:54:18 -0700 (PDT)
From: Askar Safin <safinaskar@zohomail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 2/2] Remove pread and pwrite from list of syscalls, ever existed in removed archs
Date: Tue, 19 Aug 2025 15:54:00 +0000
Message-ID: <20250819155400.763253-3-safinaskar@zohomail.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250819155400.763253-1-safinaskar@zohomail.com>
References: <20250819155400.763253-1-safinaskar@zohomail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Feedback-ID: rr08011227816600ef51dc074d70eab0530000227db7d9dea15f28005b911dd8f28471e65d2d1eb8690373c6:zu08011227ee29e43bc7fdb65609c3d99b000034c9d9951a51d2ae533fa66ba7f808850fc7cae5fcb5f6c71c:rf0801122c08cf314672a1e204308a0e4f000069fab4af9f21463fe486d842f3c12caf76cd0ab84c9cce21fd384dd8b8cc:ZohoMail
X-ZohoMailClient: External

They were merely renamed, as explained earlier in this man

Signed-off-by: Askar Safin <safinaskar@zohomail.com>
---
 man/man2/syscalls.2 | 16 ----------------
 1 file changed, 16 deletions(-)

diff --git a/man/man2/syscalls.2 b/man/man2/syscalls.2
index 142204839..947974ebe 100644
--- a/man/man2/syscalls.2
+++ b/man/man2/syscalls.2
@@ -1028,16 +1028,6 @@ this system call was never available to user space.
 Some system calls only ever existed on Linux architectures that have
 since been removed from the kernel:
 .TP
-AVR32 (port removed in Linux 4.12)
-.RS
-.PD 0
-.IP \[bu] 3
-.BR pread (2)
-.IP \[bu]
-.BR pwrite (2)
-.PD
-.RE
-.TP
 Blackfin (port removed in Linux 4.17)
 .RS
 .PD 0
@@ -1048,12 +1038,6 @@ Blackfin (port removed in Linux 4.17)
 .BR dma_memcpy (2)
 (added in Linux 2.6.22)
 .IP \[bu]
-.BR pread (2)
-(added in Linux 2.6.22)
-.IP \[bu]
-.BR pwrite (2)
-(added in Linux 2.6.22)
-.IP \[bu]
 .BR sram_alloc (2)
 (added in Linux 2.6.22)
 .IP \[bu]
-- 
2.47.2


