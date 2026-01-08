Return-Path: <linux-man+bounces-4720-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D1CD00C49
	for <lists+linux-man@lfdr.de>; Thu, 08 Jan 2026 04:04:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5A3AE3014A3D
	for <lists+linux-man@lfdr.de>; Thu,  8 Jan 2026 03:04:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 460C426B2DA;
	Thu,  8 Jan 2026 03:04:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DLO5Jmu5"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com [209.85.210.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6DA619E97F
	for <linux-man@vger.kernel.org>; Thu,  8 Jan 2026 03:04:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767841451; cv=none; b=RnYSNB28kbS+5veJahiZi5z7hYOPzB78KQsOsW/xKYW2mP5cYVC4EnSsC9sKx5IDhEKOEZsS1i2QwNmhA5lLfZODeanFhm7jVoUBoFe8oqBk8XDOi54+6a2CEoUEe4mLbyOd6kUQACBF9Kmev3haibiHx/xKwyt7VYCng5hah9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767841451; c=relaxed/simple;
	bh=9KHJqO/Go/xujsC2pXv9/tRIBtXu85OXAF6LWzl2WGE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=en/0fTZC1THoQ0AuHIJ/LQRIFuTiKGLPH3l2AQVtLXFEvjo/ifB7ptc5kCvx9v+U5msnCRkug9NnFFDQ8YeG893NtPx6n64oSaWFkFgh1vWtXDrVRyJ8VBZoVotmR/yIExl9/6LHI+VJqvZV0t1wotWghsH0P7V8PmKZpZNhLyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DLO5Jmu5; arc=none smtp.client-ip=209.85.210.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f194.google.com with SMTP id d2e1a72fcca58-7b9387df58cso3060946b3a.3
        for <linux-man@vger.kernel.org>; Wed, 07 Jan 2026 19:04:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767841449; x=1768446249; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=kkWqGpsmRc/2OvOfckQdsGSkNMaS6HOVSNWE1mPHgik=;
        b=DLO5Jmu5K8kGDzwI3qI34lSIPLWSfiDc4rgsRjQ6ZGkIv+vsKoRXQqA95TD8vf7J2S
         4s2muoJAtqD9+p+BODk9IqM+zkdi/kTWDgDFkOybvL+nDpY3nsvjgw+KXFMSQr1fbtmZ
         LjBcQbyIF0b2fT6RfL9KN8VQMSvICMP5UwSSMQMeGOyiL1Srhqvt4dq+7bu58rkoRAYK
         XhRGm0YYXiXgoikHBbA51vuYhxge66q0tmvCFKdMBnQYraiPvaw+hSZpO/rJVd6mzlqL
         lbO4AIy9ffYKKEboR1JP2FbGunKtJZX3KgwRBjdQnVWTcwcMdhf/ElvL3BOxaLKS3apn
         1BgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767841449; x=1768446249;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kkWqGpsmRc/2OvOfckQdsGSkNMaS6HOVSNWE1mPHgik=;
        b=eK83V6qhCzM9va3nqjD3EIAupj8o9fsFzuvWzyVtmekQ+TJjFTpmh+Y/qqGt2WRLaM
         aw29IgcIG2mL3XU0m6LzrAKNr2/k/mp3Dt9Vao8iqXb0nk0ozlfOA0CBUOoRz8LFxKJi
         kHPIhu97RQrIDsGqO8yp/T3GhbunWr/bVdUVQecaNZPWD0JR7GeOGDZpnvZQP1DLJU6O
         +XyE8RIWoK4Hythybza2TUydZsIPPrAaqwIyYqQA2LsXZlFkKr46V6eSpnSMe5rIhl3+
         /AfbBtivkyjvH+iFu/aCC9SMBKIIXKcnDYdyjdbRw3QClTkb/pT6nOCJwKh7RQCJUJ8d
         fzxA==
X-Forwarded-Encrypted: i=1; AJvYcCXiNgtKKKUbMB5KDlvQwzAp/wXm6FvNWAC+jLp6U/CxbmKp8UaSrdhldQ/d5lYDic/qUcyOOk4tgeo=@vger.kernel.org
X-Gm-Message-State: AOJu0YyrBUGmltnrMmZtdHh7JFR/TX+zItnVGX8JN1TeydCsjwBupdOO
	cHLKlBnRqHJWIYihTuopINPR37pUy5XspFVNAEE1uJdp+YpX7kLqnhc7
X-Gm-Gg: AY/fxX5Dnzmo/nCQQsayA90gE2gNLGqXQjzDIG19FFEa/dqRWjLTAlIeW4mpMMPMAMn
	AdO1MJjUuw+nwSx6aAnhDjB5bo5S4qtn98zqb/+rp0ZBg97sRCkK2dGgyFnP09fwjRFCj/CihBr
	c1ptRl9Qu/GitKaVEkkt4WImJQ7R4EXVJVDPdVVLnq5hAdmRkbqFdnGLciiv9LDpmSmL/oWkRMp
	s0VaLntaotGiVcfSp2Wg0eaHuPZVx6ee5dkcB48XCd5L3LNkFYXkchjHcbKv0kaTC7+CzdPXpaB
	/nFtd5fw98o/JN2X5MEBe4ff7DnZydABwpZ+VUxMMwXvRVWu0MPZIThURvfKQwJlm3s4eY8BE1S
	dSOz+bU/xEHtFxMMIPAIclS+ZhUr5aDq+qUAZdoch8NH8cfIASOitsioQihHWsWwvZzIbJ05+cW
	z81MXJ3CLZH0rrfhdaIh+fnnkHaM6VhMJdvkUsv29knFHMTFF0oPUHIQI8FKV8qgHH1+ycRx9xU
	Fe+Y246494kd8TltnT7AvF/Bg==
X-Google-Smtp-Source: AGHT+IHGgOCci1VnGymqygHsIejzEHQ8wx131gvoJCym3wLhDxtaheFCEOY9JltWB3X/fuk0alebEw==
X-Received: by 2002:a05:6a00:770f:b0:81c:4a92:25a2 with SMTP id d2e1a72fcca58-81c4a922872mr1818874b3a.46.1767841449028;
        Wed, 07 Jan 2026 19:04:09 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-ce7d-5796-70e-21eb.ip6.aussiebb.net. [2403:580b:5de8:0:ce7d:5796:70e:21eb])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bb4c85bfsm6120312b3a.30.2026.01.07.19.04.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 19:04:08 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 07/11] man/man3type/stat.3type: HISTORY: Update first POSIX appearance of stat(3type)
Date: Thu,  8 Jan 2026 13:03:13 +1000
Message-ID: <0611f62eeedbbf5f576851c46e5ab41d19b3d3a1.1767840410.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1767840410.git.sethmcmail@pm.me>
References: <cover.1767840410.git.sethmcmail@pm.me>
Reply-To: Seth McDonald <sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Seth McDonald <sethmcmail@pm.me>

stat(3type) first appeared in POSIX.1-1988.[1]

[1] IEEE Std 1003.1-1988, Section 5.6.1 "File Characteristics: Header
and Data Structure".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/stat.3type | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3type/stat.3type b/man/man3type/stat.3type
index 257f1c8d6b71..44d45b4a52b4 100644
--- a/man/man3type/stat.3type
+++ b/man/man3type/stat.3type
@@ -135,7 +135,7 @@ .SH DESCRIPTION
 .SH STANDARDS
 POSIX.1-2024.
 .SH HISTORY
-POSIX.1-2001.
+POSIX.1-1988.
 .P
 Old kernels and old standards did not support nanosecond timestamp fields.
 Instead, there were three timestamp fields
-- 
2.47.3


