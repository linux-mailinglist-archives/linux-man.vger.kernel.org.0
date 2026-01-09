Return-Path: <linux-man+bounces-4758-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B3322D076DF
	for <lists+linux-man@lfdr.de>; Fri, 09 Jan 2026 07:45:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 88C2D305D9A0
	for <lists+linux-man@lfdr.de>; Fri,  9 Jan 2026 06:43:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C28C02DEA70;
	Fri,  9 Jan 2026 06:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NwClqe59"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com [209.85.215.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E1722DB7AC
	for <linux-man@vger.kernel.org>; Fri,  9 Jan 2026 06:43:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767941003; cv=none; b=RiKBx8pxgqDGF208FxiUcTFJxdIBR5d4NeD97Jg7D50v8KThk2DrfOJkF1QjyQvi+FDojXsXHelWGgLCELq3EUMSBMWI9kJi/b/jGmKUt/kIS1sP9nICzCShn0Y+0HD95w+TJU4N/ih0NhzcVUQmqNybD4GeLj0SultBK1+pmH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767941003; c=relaxed/simple;
	bh=jRVbHghjksWFBDihR1sINyvOSrKvx6rsnXQY+AWmUck=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=h5BIr6H3klFmyxIK2g+3Jy8UluPXlSOj6U/e6BaVDMGtP07KDHwrOGzea9iRN/FZS0BmptByV1p05a2T2KFZxvEe3hzvMSzxo3qWDJXaG0dxhPA6XQNKuTYJrd9JtF3JBOm5BLXOD4e7JkK+uK/3MsRc3H64MzbAd4UgqCjgtK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NwClqe59; arc=none smtp.client-ip=209.85.215.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f195.google.com with SMTP id 41be03b00d2f7-c551edc745eso348866a12.2
        for <linux-man@vger.kernel.org>; Thu, 08 Jan 2026 22:43:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767940999; x=1768545799; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=uu4RxgsPVXPCS+1P9tKIJX6mcqzPqol7JPDxtKOcbUQ=;
        b=NwClqe59RJLyiVSdITY/AlOBmnitvDi3r8GRt63W9YOUZezmXqtfym0eDQt0xdihQC
         YBQC+F7ZxFkHVa7znodbRDQtJafWo6r1XrsRVAUlvV97FadNJ17r57sMxfzt0OcTpCnq
         itnG70gJFG9Ic/7crzJ44a5CGkogNrYEMKdfgF/clQQdkXaPbtEAnAFZEoCyfUwA68sL
         9CWf6c7VfzSQh+sBMiRul1TT5VqjWSYPuUYyq9zTaap5p8umvCXuvJAV0x/Ik+VuDc22
         7Pe3CSKE9l8tKfERkbskzuYb0UAMzn0QX4nOZo0M3C8D/vRigrrKevIDhihUhz81htNh
         MwAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767940999; x=1768545799;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uu4RxgsPVXPCS+1P9tKIJX6mcqzPqol7JPDxtKOcbUQ=;
        b=a+XaWI0Bc8unR3kaccoxUxjVOad0jOQqWghdvWvD1Y0e4Rskkj/094iwZgu5oRpvbS
         0hlveSYUACaE3A27dkIy1DCSPvxVVSllnOWYh31c+7gsrpustH62YYK80Jye3cze7TIe
         ynzVqSyVB8VVPr92L+r2XIEltOzJJINudQy00uVGL5noHIwG+kppUOXpvTqrV4kyzm+k
         sQsm/C63ex0B8rnG5KtAeTAfIZWImKYzLmGPdzj271vvR8tJjY4lnhSHozoe0qSY5MbN
         mnfvWV3xmWrIIuSPfMVT+Tcw8TKPa4t9Vi21svG1jXndBJHQCr719Oocn2MAgDwVAkVx
         g9qg==
X-Forwarded-Encrypted: i=1; AJvYcCWJ+StPhuRnjkfeO2Nwayb49A+75HyYA7VQhcyuX7gSclhCMW3WEC2fuZSU72NjMRsGsfmvrSYwh7w=@vger.kernel.org
X-Gm-Message-State: AOJu0Yw46VsCqWovpaufI2Wv1bV1GOvA4zNBr5kOFuhQsUTXUuYNyCLQ
	Fa5x8UHXFPURO2oiOFP0KhlRhC8XBIgX9v0JN7V/FmsTTmSI0Q5CuEZ6W3O4c5kr
X-Gm-Gg: AY/fxX5a9WRHFnI0M0viNJPbYLGjhxsi48FMmtEX3nX82/B9MC8m7WSxHw2dINHUjZ5
	WL+I9tkgNN0F6o03YNfkHa80b6ZgsFwYN81Mm11/8iXLEmTIf9HvWA4W2/UHK/DaABm9uKHXSzq
	xewDi1oEsJCmGzNbeGvfmIjhSPEGeICUKllSwgMhQol8c1ed/VM4zE23a6AycZWFPR+SBaFa6ER
	zwDaDkQs6mAZA+abyUutTEly6Qk9V6EhPbU7OUYzEhjHLeFCrHw7VJ6RFDuhytNdEQ1YJneNF9N
	NI6lnXuNLSHaO5iO1NAnvyv9NPBlYkX5HQCptfnkcuJpbhBX4dl0T4EchHS1Ask0G8z3HQgoP72
	wTCuadkYADFdYet+q51GC7Orq9tMtPB/kPoqVd5Z60rk675dQVzcOduFGt+9ChYxBdjBDImUek/
	c8nvEn2PcMSfsPmmGuSp9qnVKdLjYCv/neW2kH/J54Fnd8hz6MMR3ghKPElro2nop385Eo1HR/Q
	3TbGIhbtPt0F8Up
X-Google-Smtp-Source: AGHT+IEoUUbCsvwwMIme0B5pFVzzjFWM965bZmZcuql1ax02Y18BzSqAkKrZR1T4VNW2H2d8jgF0eQ==
X-Received: by 2002:a17:90b:57f0:b0:341:134:a962 with SMTP id 98e67ed59e1d1-34f68c277b0mr7657667a91.28.1767940998823;
        Thu, 08 Jan 2026 22:43:18 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-e0e7-1287-13c3-bc3d.ip6.aussiebb.net. [2403:580b:5de8:0:e0e7:1287:13c3:bc3d])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5f88e95dsm9597421a91.12.2026.01.08.22.43.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 22:43:18 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 12/25] man/man3type/ptrdiff_t.3type: HISTORY: Update first SUS appearance of ptrdiff_t(3type)
Date: Fri,  9 Jan 2026 16:40:30 +1000
Message-ID: <741cd602cffbc97d9682639a2c6abd751f522c41.1767939178.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1767939178.git.sethmcmail@pm.me>
References: <cover.1767939178.git.sethmcmail@pm.me>
Reply-To: Seth McDonald <sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Seth McDonald <sethmcmail@pm.me>

ptrdiff_t(3type) first appeared in SUSv1.[1]

[1] X/Open CAE Specification, System Interfaces and Headers Issue 4,
Version 2, Chapter 4 "Headers", p. 803.

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/ptrdiff_t.3type | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man/man3type/ptrdiff_t.3type b/man/man3type/ptrdiff_t.3type
index 9d7811a1fe51..21839f3cbc2a 100644
--- a/man/man3type/ptrdiff_t.3type
+++ b/man/man3type/ptrdiff_t.3type
@@ -40,6 +40,8 @@ .SH DESCRIPTION
 .SH STANDARDS
 C11, POSIX.1-2024.
 .SH HISTORY
-C89, POSIX.1-2001.
+C89,
+SUSv1,
+POSIX.1-2001.
 .SH SEE ALSO
 .BR size_t (3type)
-- 
2.47.3


