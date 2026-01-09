Return-Path: <linux-man+bounces-4738-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1A1D071B6
	for <lists+linux-man@lfdr.de>; Fri, 09 Jan 2026 05:20:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5E8143010BF4
	for <lists+linux-man@lfdr.de>; Fri,  9 Jan 2026 04:20:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B14201925BC;
	Fri,  9 Jan 2026 04:20:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Vcmyurf9"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com [209.85.214.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56B0E500958
	for <linux-man@vger.kernel.org>; Fri,  9 Jan 2026 04:20:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767932406; cv=none; b=P4qXlHOzKvcuSxBzjzO0O7v4wp84kT3IQNCZtV/wsDHzECnXdnOfR3t2y/uU4aekqyXHq9qPEzNPiSXRyWi3kmM/cCAmB1Mw8HEEXkIRFZvwbG5qFSuCG5iVlqL1pHPPPynBjIa5qEZzE2H7XrosYMf6oP+O/KPGuUovFJ7Crl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767932406; c=relaxed/simple;
	bh=G+mNuWG1E+13/m5XPQrwGpLjrAZQJXFRA5HLiBPiqXQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FFtzAMfagAixRpOtrk1bgVJIxV4E9+3Zif7KxQ7BOhi78VrzhRgvxeQhCU7swLaSnqOGYSuVB+vYMZwudIyUqjezIdpTfMhZr3ZV485tugwXf3O8mZ4QLgouRT/LjjmQdCqQL0C6r9VpTAAWsd+2BB3MxI50WM2FI0oN/c02TNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Vcmyurf9; arc=none smtp.client-ip=209.85.214.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f193.google.com with SMTP id d9443c01a7336-2a3e89aa5d0so28171235ad.1
        for <linux-man@vger.kernel.org>; Thu, 08 Jan 2026 20:20:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767932405; x=1768537205; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=SATgBnTC6FLv+bsANowKYEYtKHjX0nS3VHuYfRGdXOQ=;
        b=Vcmyurf9lAkmX15dwNvDpc1lbljNf3JJ1svwYQUMaAwuo00IVHHUjsk4q2bXuK04lo
         OVf2l4YGtOVjyiPewLxBPtSfYQRL/BbXKVlK+g3zWyX7g2jkclEADAyNUIiNPZz65ZpJ
         VKxYuJCBrBIB0298HrTR6re7WjQCUiRgKpQ+yLnbp062gXxMEqxz19cwepQnMmQZtGA7
         0MIY7swxVElatug5cSfcRLQ4h+eEB6e1MYGZT2njUcgjznpjgGTzAdjWnR0YF60fMpW5
         zTIbidIu8iIEpLnJ051ft1Y5MD6OdqkR++mTjuyibtZteOYaS5tqzZnY3dVE4zeSPB+G
         xHUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767932405; x=1768537205;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SATgBnTC6FLv+bsANowKYEYtKHjX0nS3VHuYfRGdXOQ=;
        b=duPXmOEbC4vMryUFS7OL/QHjM7m5qPmfcX8xdsgD3ZF/f77Zv1q+RfnzLwQE0Hx2rY
         NyUFest8Q7oM3xZFZvJUl1BMdjpUIVaaJVX3MGO2rKzYiaa0CSeOzKni5NtaXovvXhko
         ZwxHYgaGb7FUCsp6entWKCq1DCsVnQF8g3p8nuIq9p/cnUfFgGWgvssGYvEX+9/76Dcv
         H0hXQKbzFLunoCdBWNG00U14jfnSPLs7HRwjKa7RAbSh0Byp00CAt+GR3/mQLIObFhog
         9t7Uh4iBSgY2fMl66HV6rAss+wxBo0reoW4UL98zayLZLsyLqPVUjBlt/1PF8KIShfPf
         8A5A==
X-Forwarded-Encrypted: i=1; AJvYcCWwCNXfa5D0J3YYsmQvu5X5FdB0dvhM4Qx8e3yUh79VfaqcrYopUpap2zju1Y4ySytXN/wXWRHS4VE=@vger.kernel.org
X-Gm-Message-State: AOJu0YzDwcfHUdzRSN66ubx5aqQyy9meP1Mt12xWa6Jg/O/H+QZc7/mo
	5nflYbekgDfA1dDB/YNDWvIyDknY+V3qsEElce0DyUCStj0r8RHDOllK
X-Gm-Gg: AY/fxX6TmHCjUatXEl4XuU5RpuCSmnYb5AcmRbjUCO4OXpoTl1oh3O3gVXUKguZjdXt
	URbwv81eoZhw+Ex0ARN96hkwA0zZ68G2PZUT+3PT+2DfB1RDihknPBSSyAhbWBnzkvkMW+UR8gC
	LAvt1zO/zpk7ULhTLLZl5co1uv8UcC4LwXsLY8V4NFhlcpwuZvw35TU32duq4FHow/ET5qv6xJC
	g/d/EpxkCImn4aNTTDqZdOXHds9yyIaOoqffkvtxWTvnYdPy6pqynySEYwOJbfvdBDxmeGI0fPg
	3AideiCQ4fxb4vqAEash9Uj4BWQkl83ArX283FP7ycWXquSdNHFd/QxBlwYJOTZrEaKi98e+Mo7
	v0HN3roSkkoEzCFmSua85sUrnJuEscq9ie+bmS9vALIYKUJHjHGpev/MCL52Q8LGOl/3xTV37tO
	/q6H6PrjvzfU3Q7pT7MTsCk8yLZ6u5tRtUSo0aLg/TbMOoOp6ogqlVNnZbCs5N2SXHkBajg7OTt
	/pLgWp+QFsH5Obtnw==
X-Google-Smtp-Source: AGHT+IHUxPoKvmSOH/gTpOCEPUUACN2J9kEwWH4ps7SUBxIURmftt4GJKQ2AOyhoFPT5u1M40lEikQ==
X-Received: by 2002:a17:902:d50d:b0:2a0:bea0:8207 with SMTP id d9443c01a7336-2a3ee49e052mr85954125ad.49.1767932404613;
        Thu, 08 Jan 2026 20:20:04 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-1ba5-4bb2-ac31-391a.ip6.aussiebb.net. [2403:580b:5de8:0:1ba5:4bb2:ac31:391a])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3c47147sm90098055ad.22.2026.01.08.20.20.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 20:20:04 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v2 05/12] man/man3type/sigevent.3type: HISTORY: Update first POSIX appearance of sig{event,val}(3type)
Date: Fri,  9 Jan 2026 14:18:59 +1000
Message-ID: <6919cafeb4e367c998588574812693bd67b04a2a.1767931376.git.sethmcmail@pm.me>
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

sigevent(3type) and sigval(3type) first appeared in POSIX.1-1996.[1]

[1] ISO/IEC 9945-1:1996, Section 3.3.1.2 "Signal Generation and
Delivery".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/sigevent.3type | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3type/sigevent.3type b/man/man3type/sigevent.3type
index 97e369df5199..c544ab611ef8 100644
--- a/man/man3type/sigevent.3type
+++ b/man/man3type/sigevent.3type
@@ -115,7 +115,7 @@ .SS sigval
 .SH STANDARDS
 POSIX.1-2024.
 .SH HISTORY
-POSIX.1-2001.
+POSIX.1-1996.
 .P
 .I <aio.h>
 and
-- 
2.47.3


