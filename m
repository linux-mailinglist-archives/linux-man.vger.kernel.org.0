Return-Path: <linux-man+bounces-3502-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D22B2C922
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 18:10:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5FE36720C66
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 16:10:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA91E285052;
	Tue, 19 Aug 2025 16:10:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b="LQ3JpJTy"
X-Original-To: linux-man@vger.kernel.org
Received: from sender4-pp-o95.zoho.com (sender4-pp-o95.zoho.com [136.143.188.95])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4435D284690
	for <linux-man@vger.kernel.org>; Tue, 19 Aug 2025 16:10:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=136.143.188.95
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755619826; cv=pass; b=Czx77PHkMJpvPRbbmdGYk7WCTDpLufDIfL6imW2jXGjCL3kT0tk5gtfrxEBElb1NZAJBxLFX/fp5pGgKC7Jdb8XOW8+Z0KN9pTV78QkR7AzeEaj/HGLS9lMvR8qv6jDbMZmRqseL1IibbEsdhJMO8YikYFZS6vZH4bWom6anCa4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755619826; c=relaxed/simple;
	bh=t6e55Oxhqxa7t7WsmWMvY1p965X3VSiVLoNFY+ddP1Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SPSQXhLf+PR8ml+ODJwVPqO/CcsJ5dwpvCtE0g5fBbqfHTGMudb1+KyOjGIijA6NK6CNT1qAscFPp/GotEc6L9dTtLp/CLbogXKC5SoQH+8lI2UhNYWnKfJuBb7pBqoo27ZUzW0y4g9wpcaSY5GkgZmYTDeEqN3/eb9tMPU7gjc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com; spf=pass smtp.mailfrom=zohomail.com; dkim=pass (1024-bit key) header.d=zohomail.com header.i=safinaskar@zohomail.com header.b=LQ3JpJTy; arc=pass smtp.client-ip=136.143.188.95
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=zohomail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=zohomail.com
ARC-Seal: i=1; a=rsa-sha256; t=1755619812; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=U60mPff6L5SwFCXlI1xA7T0vMPeia5ePwyKEcOGbZjfkFTxFEJ5R26aksI0+ik9vjXk48CJvSGt+PjVv5AggpBt1zIdo+vh48QCl8C8TNfJLCqK4eV6iVL9nGXwJb7Dp5G8hCklZ6tYxAd/tvF2ZIi052VSCVb5xOHR3OVNnRXw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1755619812; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=qkWsm7rLlFQqYTmw37e+gB0OpRcIFsbKW5XQ45MS3eE=; 
	b=fiT0lG/Mh2V/hdTL0c3W8t7a43wh/uPZJILa+xEVEZm3XLBUya30ZzmIsjU680o9JnijxYtrHz0R3tDq8ryn6y0I9ciHDKOycUEjBKg39AyKoAvHQtLXUnq4m/anQVAw3FAflw4uBuaAqSIr3lqz3/5PHDpbklQkZi2NrzT7aGY=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=zohomail.com;
	spf=pass  smtp.mailfrom=safinaskar@zohomail.com;
	dmarc=pass header.from=<safinaskar@zohomail.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1755619812;
	s=zm2022; d=zohomail.com; i=safinaskar@zohomail.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Feedback-ID:Message-Id:Reply-To;
	bh=qkWsm7rLlFQqYTmw37e+gB0OpRcIFsbKW5XQ45MS3eE=;
	b=LQ3JpJTypuG/3GWvFt7YCf+yQG3JTPKx+P2afKFNwtZojnmwdlcwWfXHWKsBAxkN
	JVqg/T9U6nxuizylY/QCwIjgJUfHgc62OgEVDD+VUdy71mlTQ15UU/FwysbYld9A68K
	slCHNbpaf/jV2PbbLeQ8VxJlkx6Max2YFcfHm0X0=
Received: by mx.zohomail.com with SMTPS id 1755619810094195.65460869693482;
	Tue, 19 Aug 2025 09:10:10 -0700 (PDT)
From: Askar Safin <safinaskar@zohomail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v2 2/2] Remove pread and pwrite from list of syscalls, ever existed in removed archs
Date: Tue, 19 Aug 2025 16:10:00 +0000
Message-ID: <20250819161000.768159-3-safinaskar@zohomail.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250819161000.768159-1-safinaskar@zohomail.com>
References: <20250819161000.768159-1-safinaskar@zohomail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Feedback-ID: rr08011227cf9da0e21821c9e06818335d00005b89dd9006a88cc5f744a35e84583e584cb0c1256bcfc56b0c:zu0801122767f86ae8332e76d49b1b19ea000015e70d3f8635636029bd8a1e82ef60662ab74bb039e1280b26:rf0801122c53251ea6eb9f9d943b1925ac0000d8f5aebbe4e30b90e2d26dbcde7e7d0b6873408de31779a32b4674f1169c:ZohoMail
X-ZohoMailClient: External

Current version says that pread and pwrite ever existed in
avr32 and blackfin archs only, which were removed from kernel.
This is not true. pread and pwrite are present in modern
Linux for all archs. They were merely renamed to pread64 and
pwrite64 in Linux 2.6, as explained in big table in this man page

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


