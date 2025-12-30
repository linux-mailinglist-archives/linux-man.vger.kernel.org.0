Return-Path: <linux-man+bounces-4584-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC8DCE8CD4
	for <lists+linux-man@lfdr.de>; Tue, 30 Dec 2025 07:44:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 288B230022C2
	for <lists+linux-man@lfdr.de>; Tue, 30 Dec 2025 06:44:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65FFA2F7449;
	Tue, 30 Dec 2025 06:43:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AY8ifw+l"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D09D62F7475
	for <linux-man@vger.kernel.org>; Tue, 30 Dec 2025 06:43:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767077038; cv=none; b=JJPkHFSve7XWg9ZQQecVVzy5+U2quKofYYrBXuhD3UjlEtOidkIF2Yn36G1A4wQnOy8Wi+gUSH5EURN1YjEQZlnFQiGQ6oI0i7r8tBtZJzUSlDe9UdmkIpAg9JkQTsCKCP1D5Dg8Od1YYqrN5ITDGHWpCEbxcudja+urRpcOVVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767077038; c=relaxed/simple;
	bh=IqfaGE1pDtY4OYgTFGEV9YWhaMs9a958l1/hckQeZHQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uzWBUb3d4Kx5opQy9LX0dla0xLFEyUFZ6yXgMe/aOXvBz/jqh9DlmQmJ/fuGjuhPo+CDFhY72HqyTu4KK2SSF4qbewqH48hX7b1P/7xg9FJ3paX2OwG+KQmWa0hyCCWa18COIiG0cvvwasx8eJncxMIJujrZGYdON7rJd4VRNdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AY8ifw+l; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-29f1bc40b35so166989635ad.2
        for <linux-man@vger.kernel.org>; Mon, 29 Dec 2025 22:43:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767077036; x=1767681836; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ane7LXNJgD8EAzN795LGQO06pEV/k2XlZbNEbb0QtsI=;
        b=AY8ifw+lzEyq1r5kfFhxBmxR1zbIP4+JBNcP2Is3Dd3fho2gL7O+70yPLPNeXh4JBI
         dwIkTRNgOjlEgq8zluRy4fGCsGsbIHOho6HAaTZuu+JxQx1DjZDgCF9nCAAaXJOInMKr
         Vt1RY8odxbXvd9/YYI19e2GwoadpF4LjQ7cjoFuc3Q3W3fh0b8s07cOLxbQBp62HfMdn
         ruHR1Yg+8LCbVGM0LYsZUxiY+p+UP7WAKiZOYnY6M9yNWdKfp7yiyG/AeNpyusIeL5vY
         l1vuY+3uBJ3CCLPG3h/KeWLxps+02DyL9D/Oe/hN6MTyn4XoeBCJm3NY9a/Q48XlUpTU
         jHKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767077036; x=1767681836;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ane7LXNJgD8EAzN795LGQO06pEV/k2XlZbNEbb0QtsI=;
        b=mhCVEcZ8lsfyq8GHP0RxeJ+Tq+c8btDA6LqQivKmCSJOCxFa2D0lvaI52F2dEk2cHV
         RQr0nv9wI5J7vv86QoXUNSn2CbmsTlzCj6oibYJbH8tG2ld3RAij3x5eLXLwQ7DVD6eS
         K2lSYJF8uN091G243uPp0TxYOT/vMhZKi9pxC8gdhssNp+golI8RjnrXeG6tiFmohela
         pI9Cv+953A3v/mHc4NupWQl8b5Ec78rhH+/qAGeiR4TyqgAuV7HDGEyhJkHORhsubKaY
         aERPOd9d1mAqaSTwM7Kd9t99nwvKlvE2iYKdi/UJG+ZAbVT4lBmdAv4QnAyzbkU0ARMq
         7vTw==
X-Forwarded-Encrypted: i=1; AJvYcCU9qjhUa3xrKMkJ2lGQKqOsKWH35KMPhSYmUczxPwcs4YQQXI3IvJkqYoCzvZpeMao+HBpFkFbUw+4=@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+k37NbcBOjSJwWbLZQLQbHoPBOn0mFBSxm/g53rCnYLVr5elf
	KSYk+hYnhj27dYd9UwoKtXDMdSuq6KQ+dG9f7ZJOwBoByez34249T+o4
X-Gm-Gg: AY/fxX651wZWjqakVDVPV9BxYq37Q9pPApWH1LSqTrytDv1z6rm0INa9+pnftsVCjxu
	wYkTAmsbmDB6tR98TbViSfcD3mS7O/qkwebReXHxSfEn4Ft7H8z7mKgvxVa6hwXYl3rRtLjMyKu
	8RuB4XqidDi1qrYO/KqzHfqzhPq46ER3T4Kb212ZZNtYF2W12jjy5ljtbU42hmGGmvyNyfqr99d
	DKr59XpOzo6kFhwWb1E5/F7PTwOWQZ8hfy8gxl3H2YQiuqQcoj+oV0dlBWPSDLyIAT7NpN8Bst2
	mEL/eYqgNj4y6nQUX86kLtr3vrjp+oE0DQlxGi7aOys5FbvpYRgSo8cPR15VmxCa2BYgFKh8mZd
	XmgEwV2b2e2Zq8NMVYDpmJodC6gCMi6a2QSlI/3Yx30id72qFrtGLuHaJGsKrrZUxd67uW1R92P
	ljxXh8/oNQI3V/W2VukNEZMBaBIYyK2eVmr8b5uLbTkEiBAR2smFHKpnJVDw+ZWc2wu6TN+cp7C
	eyBiOiWujhvZX7HuRXso1Z9g4Nq
X-Google-Smtp-Source: AGHT+IGHs1FnLS8mXkw5iY4MER2UdDVGpTcdqZdnOnq/V58FuwyV37EhMx1Gfid1/Udi6oKbwKgxhw==
X-Received: by 2002:a17:902:e747:b0:2a0:b02b:2114 with SMTP id d9443c01a7336-2a2f220697cmr320059315ad.11.1767077036012;
        Mon, 29 Dec 2025 22:43:56 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-841f-6737-2002-883a.ip6.aussiebb.net. [2403:580b:5de8:0:841f:6737:2002:883a])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d5d566sm287458395ad.71.2025.12.29.22.43.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 22:43:55 -0800 (PST)
From: seth.i.mcdonald@gmail.com
X-Google-Original-From: sethmcmail@pm.me
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 2/4] sys/man2/sysctl.2: HISTORY: wfix
Date: Tue, 30 Dec 2025 16:42:01 +1000
Message-ID: <1477de655f76e1e6e85c12cb03c068b120704511.1767072049.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1767072049.git.sethmcmail@pm.me>
References: <cover.1767072049.git.sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Seth McDonald <sethmcmail@pm.me>

Include 4.4BSD in the initial list in HISTORY, rather than stating the
function's origin in 4.4BSD as a full sentence. This is more concise and
consistent with other man pages.

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/sysctl.2 | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/man/man2/sysctl.2 b/man/man2/sysctl.2
index c59acff553..6566c4f5be 100644
--- a/man/man2/sysctl.2
+++ b/man/man2/sysctl.2
@@ -73,11 +73,10 @@ .SH ERRORS
 .SH STANDARDS
 Linux.
 .SH HISTORY
+4.4BSD,
 Linux 1.3.57.
 Removed in Linux 5.5, glibc 2.32.
 .P
-It originated in
-4.4BSD.
 Only Linux has the
 .I /proc/sys
 mirror, and the object naming schemes differ between Linux and 4.4BSD,
-- 
2.47.3


