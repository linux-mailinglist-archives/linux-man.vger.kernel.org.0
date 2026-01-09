Return-Path: <linux-man+bounces-4734-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F42ED071AC
	for <lists+linux-man@lfdr.de>; Fri, 09 Jan 2026 05:20:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2FF283019B6C
	for <lists+linux-man@lfdr.de>; Fri,  9 Jan 2026 04:20:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE5581991CB;
	Fri,  9 Jan 2026 04:19:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XueYhimQ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com [209.85.214.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 933FF500958
	for <linux-man@vger.kernel.org>; Fri,  9 Jan 2026 04:19:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767932397; cv=none; b=AGSqozZAYq6hUwP/YALoSLhEdduB/PCp1wEStL3Soi/8lw2KwFIaAOPV1SAzvwi9RiBEHpehYiQIALtsQZuWjb0Hl7Xx6063Wei8RGc1u/L/3w9nV/EA7R3VO9HyaajNq7cZHHqN+89XjOSNbtiy5DWeV1yCbdn6GRS/SRXxPxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767932397; c=relaxed/simple;
	bh=kLaqg/LOK/vtfyohPOlY4cMVfuYGFD5xBGsxbVsYf74=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WC6nNkI8CK4iJbfVA4rzLCCW6mlrxFFTaAv+9hHLCywwHBLR7PNqyXyPSXELmfWqTpLi17jxUKjRP5bEbvXiOvl26Tdpu0mOVJUSfUx06WDJSLoAV+5ON5DNsx0c/UbV7QXKxGzJzdwbtbpXpDeG8/4WzcflvMPonrZEeQ6zQW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XueYhimQ; arc=none smtp.client-ip=209.85.214.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f195.google.com with SMTP id d9443c01a7336-29f0f875bc5so34183295ad.3
        for <linux-man@vger.kernel.org>; Thu, 08 Jan 2026 20:19:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767932396; x=1768537196; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ovZT7AR/SEEx5KQRqgyKO2Hb6HW8G3l2hYsU9/PcoKM=;
        b=XueYhimQyS3iwDGmSaZL8zyCAMlBlBIVtK7FrnlbJiuCC+cvbzTCTGIwUuDzM/FPEg
         iEzOwsfslVK4v3UYV5cyzla4uiCA7vADzUarhlBwXYvCMIs+2v7UuHB+hdwcLENUTs03
         Q/5j/ghAy7GxcWp8WQbhGqlTdznoD5JDJYaEeN7vgxUhyPnog1q1rygZKMD9Hf/+RpPi
         CU64sJQ8ejFUeIqfloRg0oBi0PNQdVO+iuw93D67Z3WGQTWdkZ18x7MtGEafe+l1JSTb
         /Vg/GBEFRJ4YMP+tDYXoTAjF18kUT9Sd6CkZLcv0XNa0KrOnjWfuWEC2KdMX3XuvGEd2
         R81Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767932396; x=1768537196;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ovZT7AR/SEEx5KQRqgyKO2Hb6HW8G3l2hYsU9/PcoKM=;
        b=KSCJsY/moPIgTcLMj+XTopTxTR/ta6z+VlRGSNIWcjHLL0AkljTGUs+t4ypPIMszOg
         iiARSDxIDFPAzEBSGeiXT9UQmdGlDCKIx17/EfgWqkK8qexPxc8K1dN65saCv6bzKudZ
         r6tewznPgNbWQKzspveTLzxRHZ0m8DkFFRB+ebzKgqIBo0Pn8oKiLZdbiefoWKhYWvfy
         8cvqqW0EEqSALWjUET0UVX9RM8IsEygiQoVPN3jpgQmmuT7ZExX8Wy90lhvh/mTlIk+I
         z7xuvfKkQRo9ibAFGYNAvC4Mdl8RPYEFaMPDegmlgq4RSQ/TRzG2iPATw7cgGhjqOhwE
         00Rw==
X-Forwarded-Encrypted: i=1; AJvYcCXvAauhFSYXUYFDLTqoYeGduatObMWjDCEpPZaCPtp6ouFGiS3UOCnJUsbmGSZ2UYUNcpCjakqNu6M=@vger.kernel.org
X-Gm-Message-State: AOJu0YxvwsaEFbcJrJA6dsHRIOZdFvBNdIdWiee6cAtp3KnnPLvHWcST
	Ucob28j9adieBtyPqBLZ7h3ej0WXnPSP5gZSIS7RRoybazqvgCQLWHe3GLijNizd
X-Gm-Gg: AY/fxX5hRKg+cqr1X8urFUwXwddVDwwyQUzEFoYzdyYeGvT95guPyxi/K9BtRnhY3Ci
	AYjkDqNwq+J5sftgvmGMSL4/vTAkswmvcZDDsJsX75pq8HrNVp28l/P5MNWhCnyBnHyBxzSfLgK
	+CqnxWQLvnKd6kZhvqsHj6Q3e6Cw5Q6mT8aEDvN1sa2/AfeKbMqlPwpGHLeSD+z0RgBpiQOmUJH
	lURBPzj2jtME2QJs7E4g498bDeEnXUn3dRUoxqeCskG0XDyuzx+xPtya8zAt1fG5Ov2ViIoegly
	hbRpKQz0hnhaDdWYmVBr33cAmQu+dWn0xjPetXkT1Hz3c+bARHj2dhTOSEs4YYxONGVD4ZnI9CA
	4Azm5HqHGntEcHoisDgW5k/XG+X/8FLReuT8EjKvJG3vyZOSC/51uaLY3G/YDsuia66u1bETSrq
	9xNE5Oo2JLtqqjODHlBdCy8Te280VasGO3P6jyt3B+s/ZdHLs6g5bKXrQ+2knNh5jC8PuZccOFO
	FPn9dIUQNoQ/8ZqKA==
X-Google-Smtp-Source: AGHT+IHWo3HySXYpyBp1DAvg8Ag7l46wkoUMV9XUYtAchwbcwJIbpFlMd/yAMgDdC9pbQKvZWS8Mag==
X-Received: by 2002:a17:903:40c9:b0:298:3aa6:c03d with SMTP id d9443c01a7336-2a3ee51bdd6mr88313005ad.57.1767932395957;
        Thu, 08 Jan 2026 20:19:55 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-1ba5-4bb2-ac31-391a.ip6.aussiebb.net. [2403:580b:5de8:0:1ba5:4bb2:ac31:391a])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3c47147sm90098055ad.22.2026.01.08.20.19.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 20:19:55 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v2 01/12] man/man3type/itimerspec.3type: HISTORY: Update first POSIX appearance of itimerspec(3type)
Date: Fri,  9 Jan 2026 14:18:55 +1000
Message-ID: <48b823b1a96548132bd3414bcb3505f15e1572b3.1767931376.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1767931376.git.sethmcmail@pm.me>
References: <cover.1767840410.git.sethmcmail@pm.me> <cover.1767931376.git.sethmcmail@pm.me>
Reply-To: Seth McDonald <sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Seth McDonald <sethmcmail@pm.me>

itimerspec(3type) first appeared in POSIX.1-1996.[1]

[1] ISO/IEC 9945-1:1996, Section 14.1.1 "Time Value Specification
Structures".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/itimerspec.3type | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3type/itimerspec.3type b/man/man3type/itimerspec.3type
index 00eca6702293..7c366b186894 100644
--- a/man/man3type/itimerspec.3type
+++ b/man/man3type/itimerspec.3type
@@ -24,7 +24,7 @@ .SH DESCRIPTION
 .SH STANDARDS
 POSIX.1-2024.
 .SH HISTORY
-POSIX.1-2001.
+POSIX.1-1996.
 .SH SEE ALSO
 .BR timerfd_create (2),
 .BR timer_settime (2),
-- 
2.47.3


