Return-Path: <linux-man+bounces-4719-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0CED00C46
	for <lists+linux-man@lfdr.de>; Thu, 08 Jan 2026 04:04:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7C16530145A3
	for <lists+linux-man@lfdr.de>; Thu,  8 Jan 2026 03:04:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40F0E2777EA;
	Thu,  8 Jan 2026 03:04:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kylnQSmC"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com [209.85.210.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B08E427A122
	for <linux-man@vger.kernel.org>; Thu,  8 Jan 2026 03:04:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767841449; cv=none; b=LeKwgj8URlelRcoTYrYzzKNSIZBjDVMfpvKKvPsBf6EglTol11kUF77+ahJGAFx12R1rLuBLhHh1aGGd1O8E6Zi5zCjxmyheyLIzI2llq8qK3oYTmPRDt4dHtZQ20MlXGpTKc0rCYrwXzGIBCWWsWdufPpmizZ/qEYFLaeXOp4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767841449; c=relaxed/simple;
	bh=ffmLBBXVrGQ8WLOOP17Siqb7Ph8JW0o5vT3JqCB+sJc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hh6jBFalLw4bDiegwxyu5vNg1SMvfOAb02jYxokz59E+K1Xm/6nLgWjI7ieYLaF8ruDiwRsVl93MpMbmaAQ5hf7esX7Mrdo37Sa0XcLstKuYcNOXkIp7lagAmXVwnFe12ZrX6uyRX6WSBc9MsfKLGWgukM5FlWphnlc4LqqLNuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kylnQSmC; arc=none smtp.client-ip=209.85.210.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f194.google.com with SMTP id d2e1a72fcca58-7d26a7e5639so2037854b3a.1
        for <linux-man@vger.kernel.org>; Wed, 07 Jan 2026 19:04:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767841447; x=1768446247; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=5M2GLj/0k9uZSM2EK9Csv74XvJoo6pMpoGPbS+yGmY8=;
        b=kylnQSmChvANjA3VQpER2qkUFgW9slw1wUhK6uxGioFhKsb2J6fQSG1TNK1diCFcRS
         1ywWyW6v8MLJoXCIsWRotuSVTqH4KttQEXmgCo2R/fHiSVTZSvVG4ikAgAsCCh+i3sTg
         uoj3QM/+lNHonvtuMwBZ6mNhSGL59TyCNt/5qOzLxB7hlTxZRzdipgwU2IxH0+tUGJp3
         yrxN2Fsp+wGNaskbb2xA8udgNmvWDd1dAZN+COyp5X886SCuJyzLO1FYPLDx0QG1SKLq
         oUGW/SGV+buKO2s5eHO3ZARP4r66rhYNIoigdVECFpOwR/oMfCaoXH/ZVlV2Tw1rmawu
         WnWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767841447; x=1768446247;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5M2GLj/0k9uZSM2EK9Csv74XvJoo6pMpoGPbS+yGmY8=;
        b=at/bFWO+k3ncoFSsEt2IKJWTS+U2OhBcEoYBa7l/w+sbCS+RzS2MtK7zbZL1puHwFj
         ec8YADvnuaSpIVTWmKmCte0w0uPxSRaibq/p2iSgiZrxlcJ+QOybEDwcNcPJmdG/uSjt
         cCU7B4LvSnVEgCCcr9RbXNxE9khU+S+ZHUkGkdHluwZDqOR/jKHMVdxHNzqbCIoomihJ
         kmF4iAWGlTO2yLAo/ouWoIkOcOiKPMYWg98Ewzj3L+bmRhmqcTnQgeQ9cxANTYwAFyx9
         3o9cgRBOHP1MyTw6MrBC9PubgDGJVIB+Fvj03b7HmGmCT3SqeU+Usww8Tn+cRegHO2yD
         d+YA==
X-Forwarded-Encrypted: i=1; AJvYcCXYowYrhTuiJdlYhRCd7H7lpuLryC7VQz5RnxIDbQ19JwQhTl+2EAHDolZp1KKIlWVHBTzhxvRna5A=@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1fPaq4ajrdddTFSNpwmgkKJe8BNhwc90rCmrss8+oo0X3pnGF
	XvYhoGW3Nt8+eZ926FUeJTf6tqzggHXzIVl/O6AAbTVYp5IiSd+BwWVrwohTnlQT
X-Gm-Gg: AY/fxX449J8Tok/uNEPG0fK+ayoEy+pr+NPlELXncHGDaLbERiKiR6s6mqHFLfBisWm
	T4UU5sjZjd8Z47+3eS0csn/DTG46uXKXquFxrx8rcG0hXtNHJAiT66e7QAGfHIm3DzxbDbY6E0f
	Q/berUt7dif1fFvGQIUVCotrA21T5sQRwkDkOus+NNhO1dZVD1x016Tfn4UwGfHPHaR4yYFySdq
	2TdYP4ibQtV9IDIW1EDbISwHO3OEsQB0ik6dZ55Rh66RMj9zUNA4xRrAOo/4qsbYosMrBSxMV+e
	kWMrAeXOJMd2yGuVzdvAzDagcnqfRIcMumsZxcPSQJxTDUEMPgnDgMmmXKDW0Le+cw8bLGojjdz
	bjBvMBuD9fVkPth3DNwORG2XUieF8O+IcyXf5lUi6SEYBsYyc9Y9HSHVuqwsdgRpLS1Jl0nwdXC
	mjrL5e+tNZU5PLI+Exq09Jm/uhczDf8z5pre3GXstDQMnH/cGiTeLKvm2eA6jJkSbvY0FoSy9/Y
	DoJWY3YhyMMkvk=
X-Google-Smtp-Source: AGHT+IHEAymTmtf83hm7Yx2XpiyLEh3Bk6ITOWrnfC09jcB0l166zyZDYaC9H1fn1TEEMF0LoATAEg==
X-Received: by 2002:a05:6a00:1bc8:b0:7e8:450c:61c5 with SMTP id d2e1a72fcca58-81b80ac5aa6mr3878989b3a.53.1767841446859;
        Wed, 07 Jan 2026 19:04:06 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-ce7d-5796-70e-21eb.ip6.aussiebb.net. [2403:580b:5de8:0:ce7d:5796:70e:21eb])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bb4c85bfsm6120312b3a.30.2026.01.07.19.04.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 19:04:06 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 06/11] man/man3type/stat.3type: SYNOPSIS: wfix
Date: Thu,  8 Jan 2026 13:03:12 +1000
Message-ID: <84a9e467d506b8ed0c2d66eb8e1e87446a8a8630.1767840410.git.sethmcmail@pm.me>
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

When the VERSIONS section was renamed to HISTORY, the reference to the
VERSIONS section in the SYNOPSIS was not removed.  Change the comment to
refer to the HISTORY section.

Fixes: 4131356cdab8 (2023-03-30; "man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY: Reorganize sections")
Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/stat.3type | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3type/stat.3type b/man/man3type/stat.3type
index ea9acc5ec025..257f1c8d6b71 100644
--- a/man/man3type/stat.3type
+++ b/man/man3type/stat.3type
@@ -26,7 +26,7 @@ .SH SYNOPSIS
 \&
     /* Since POSIX.1-2008, this structure supports nanosecond
        precision for the following timestamp fields.
-       For the details before POSIX.1-2008, see VERSIONS.  */
+       For the details before POSIX.1-2008, see HISTORY.  */
 \&
 .BR "    struct timespec  st_atim;" "  /* Time of last access */"
 .BR "    struct timespec  st_mtim;" "  /* Time of last modification */"
-- 
2.47.3


