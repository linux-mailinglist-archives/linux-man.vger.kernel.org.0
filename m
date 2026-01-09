Return-Path: <linux-man+bounces-4753-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 2607BD076B2
	for <lists+linux-man@lfdr.de>; Fri, 09 Jan 2026 07:43:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id EDCB83015194
	for <lists+linux-man@lfdr.de>; Fri,  9 Jan 2026 06:43:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E80232DF145;
	Fri,  9 Jan 2026 06:43:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZnDamZH4"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com [209.85.216.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C39382DCF6B
	for <linux-man@vger.kernel.org>; Fri,  9 Jan 2026 06:43:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767940991; cv=none; b=rFfKPioKR9Kl+wYq9NDC20LSvgNfUe7S0zEdg4Tw4rcxhOjPEvt76Seilm3U2D+JFbjfW8DJ7XwApxtwvhn5Pu/TKWFuv4UpCVZvzZV3pc//W6wWtIQMtelNGN+P7J2wv1re2sKDa4IVkJbtqRNTq1ab+EH01uM19g5VVaazPI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767940991; c=relaxed/simple;
	bh=XBLXrtokd6R9zlgMxh9FS84cGxeNhFAc0N8fNPAK9Ks=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KN3tg2BhCF46CwdifuGHnke/FcOKk6VGAN2/8d5nSV8mi/cRq08MZP0di7NoEZbxhFQlgYOJI8bWVrh9a1/2k5haY+ZIFE+OBBT+MgSgsmunU5XjlbGcgpN9OdlSTyxqGx4NUHPV5Snw6ZY0oLzwLRBn+EqrwMxgvlvnXwP+urA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZnDamZH4; arc=none smtp.client-ip=209.85.216.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f67.google.com with SMTP id 98e67ed59e1d1-34c868b197eso3535343a91.2
        for <linux-man@vger.kernel.org>; Thu, 08 Jan 2026 22:43:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767940988; x=1768545788; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/DDeRE6shHPP48JbTOyYTstrXoySBh6syAapsLkqCho=;
        b=ZnDamZH4f+XdvAP26Akfj2rY6MBTMe4Ui2olNdrR335C66zC1KuJL5kw0BYMCgSf8/
         lTLn0jVE/AGOuErJ5MTeO5WOrG/yuYdH+qHbK/Z3YqyXlo4rkSvdV9df3ey+jOt5YMl0
         c8UT3y+btqnnzzRAUepEytUWTV+O/v00DX9vvyvXo/d9/C9vR8zog7rPRlWVnb4TZYZn
         TiIWRjXo/hDoPOy4dVR0wfW6HvDHs9yO4KdCF6Kt3nghtb2yduP1qS9hHPHokl6rew/+
         7Tsps4ypP1l38nYEJM/pC36TpdZ9k0wsuUciTmXxfVUnGHoh5u0sYwAGhd2qJ/LwvCL2
         xcVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767940988; x=1768545788;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/DDeRE6shHPP48JbTOyYTstrXoySBh6syAapsLkqCho=;
        b=BD2fU5P412//c1dKVTQd7yf/sM5GikgGP4MmJqajt/38rTEulXQ55z9vTpi+rEbx8K
         XNGAvZ2qhDBExcODEUjMKgi58612JIDOQxOeG3zBwuqa0NI92MgqovEmTXVCbLUo1ToL
         2jRAHsueVxIpkyrdR2y0tZn1n0lloOhGUaXb8yMvFUP+k7ZmOd/hcqLKqvGCHOmFGicc
         Vb7X3gk9xXP2C3xFuIJstmZIETBcrQRiGtsXMQC2jPFQm0J5xph553XviOSqwg50Y9aQ
         f+61kWVhByvU6QlDAgMdN74qzbnS6sX+V/yTpEcy+DbxYrVCCA9nSKArKzzzv9OLwSzw
         hC+A==
X-Forwarded-Encrypted: i=1; AJvYcCWLIdDKZy+6oYCyYC2KRafR89mvm/Yk60/7qAOitbcD3+mSdU5x4fxYAnInhH5O1ECNp+ueUZfMhUI=@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4gPoQrRXeP0Tf0d3E85zcDVVjPWGDonyADBPL+6TVmio8JCpA
	5RWvIGUfc8gDcId7dYf2zjZK833KnyeGtxOsrbLLZg8c1/FwnG0t3NYz
X-Gm-Gg: AY/fxX4I9FYSBGBVVzK11bo89n1YqHvJgtqBScwQz4hVYdo+a31UdX/AyxwC0Il6oWi
	atMuyZaourI2tbg6MFMBQxUHkkcHIax6GE5IaYOvlq6Tzd3rK2bBkutCF5N4EM55dpROmn4VvTJ
	z7DrZ59S0oezasa8c0Mu0cHKApyvdIQGg/qqnNHJU3Rz35U0Y8tFFbxVNujNd9wmQRq8OcrSxGY
	cbXd2oGB+Q4IAI8hIJHeAAh5mMEN9FoBeHiuhobeD+XpZnhot/u0OfP01+qz9C/x2mZPgUEXYts
	TTJcpxlttSyoNAdpfcrgBZxlnEXZOh9fQmyZgWjKUxhPKwiuHgYIgFhOVjvKUDSTfIQqG6m9F4y
	/Kd+eMxFi2oRlMEPUIre4yJhen2t7MYG62ARz4qW9/M/wfrypg9NpqqWeSaPndIrJJMUyPmMZ64
	xTFUMwYZNL8K4pcTKaOwpZtbpWBLrEPXHAakFxzVxpvjfk2A2sZUa6KtkVYTZEFcFCzwGF95Mg/
	9AuiYypZaWK+wm7
X-Google-Smtp-Source: AGHT+IHKO34hE0Z7mAU1zpaPd+WmisVpRIOMQ0297PmIVIscSSR3EtMl0GCZyVeTB3e9lpV4Z1emQA==
X-Received: by 2002:a17:90b:1d0d:b0:343:6a79:6c75 with SMTP id 98e67ed59e1d1-34f68c62a3emr8636596a91.29.1767940987940;
        Thu, 08 Jan 2026 22:43:07 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-e0e7-1287-13c3-bc3d.ip6.aussiebb.net. [2403:580b:5de8:0:e0e7:1287:13c3:bc3d])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5f88e95dsm9597421a91.12.2026.01.08.22.43.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 22:43:07 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 07/25] man/man3type/intptr_t.3type: DESCRIPTION: ffix
Date: Fri,  9 Jan 2026 16:40:25 +1000
Message-ID: <c5e354f0878c8c002534cc1a2de0937fd3a61422.1767939178.git.sethmcmail@pm.me>
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

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/intptr_t.3type | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3type/intptr_t.3type b/man/man3type/intptr_t.3type
index 452e760e610b..a753a55c4bf8 100644
--- a/man/man3type/intptr_t.3type
+++ b/man/man3type/intptr_t.3type
@@ -76,7 +76,7 @@ .SH DESCRIPTION
 .I intptr_t
 values.
 The length modifiers for the
-.IR [ u ] intptr_t
+.RI [ u ] intptr_t
 types
 for the
 .BR scanf (3)
-- 
2.47.3


