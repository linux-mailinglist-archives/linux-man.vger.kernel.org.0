Return-Path: <linux-man+bounces-2408-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C647A32F28
	for <lists+linux-man@lfdr.de>; Wed, 12 Feb 2025 20:01:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8C592188BB85
	for <lists+linux-man@lfdr.de>; Wed, 12 Feb 2025 19:01:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BA8525A622;
	Wed, 12 Feb 2025 19:00:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="creRUzh+"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B85131FF611
	for <linux-man@vger.kernel.org>; Wed, 12 Feb 2025 19:00:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739386848; cv=none; b=VWRgE3E40XQ+yxJGPmBV7zHgmpNG1Ba9PgVx2Eclna5y3980FhvC3bt0GD2G5eeXOPDhnVhvd3xMumaqYO/UD1qmbrun75pwjvgkjoQcNwjq9VeW80iVQ5IHvlohgIygWcf97RWG9Jlpeu+1eqS85BIJ6MGY9wkPjfBeLyKnzMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739386848; c=relaxed/simple;
	bh=7UtBVAEjl8epfbc5rVqpItwh8DgzzV3FgDTfEKcM/Dc=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=krRe1GmAdDjwLL/JnClA7p1pe3X57n5rQFsowwTXQ8WMDwxhkO44ioc8Vq6FX29jJ/5gVMg8ddJ2TGO2ZLw6FYYElZOmrjZCsQvQQmzuI3WZfVF1/lEQm86nysa8bi8Weu5Zag4dsYOkpycuO1krzYOZzCR13D02q5Aky36jte4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=creRUzh+; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4394345e4d5so631555e9.0
        for <linux-man@vger.kernel.org>; Wed, 12 Feb 2025 11:00:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739386845; x=1739991645; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TmUbqXO7DTCdglc5uAdlKxmqBvGkkJco191hO41eLU0=;
        b=creRUzh+AP0aHGfARHeq7e7tU+Pm9rQa8vj4vP+R6oftpUcIVa0v5NVMwbPOT/sdk4
         5cErgnIt943ET5Cu0rPiR7QM9M9Up8uCUWtn7Rx+agOXvJwaM4i0R8+Z3Lk79+9XJMbv
         +S4H1lPFVKjIYEcvJFUe14y+d5iGqSr/veLsTQNRsC3VgosrRZ0cJtO+kzNZ88BAH0D3
         TOCglDp8HVA36JplFN4cGH8nV8OBCHs0CBwELdw74EyXWbRjx4KH+JycXGf2mdESug7x
         wCPKe55xc7on9dAjy9Bh6K93aBCSwVTVBMWcZTAx6QO/7gWkk2lkHgutDDmQNjBl7ehT
         0r9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739386845; x=1739991645;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TmUbqXO7DTCdglc5uAdlKxmqBvGkkJco191hO41eLU0=;
        b=InBQS8Y+9tUVBm1SPyPqULhd9tPNEap869cWm+rfvuKQvk2FmlNQsdKO1kzX6d394A
         ESUJvaMNCLnMlU0JiERIZSRKwPVpT60DiVcCdAGJ8xGfMtjgk5aMFfqA4fOKBsidWqu9
         AUr++QwJduJD9iep8KIeHhGL7HeIHaz38pLNdPuN8VPY8NjtZ215DgEouDulu1Ah+KY6
         LlEbiZzbWGhKs6f5s0bt/xeB0I8MllUyzyKcr7Q+gKTxAkp7/uEZ6t6FCitcGRqtVFjA
         kIC9tRjMFKyQUiUz6Za4KdFX3WaQJR/f1C/foAKn/DyRxW5BJpR44OU10v3FLDiE1DgZ
         Eh6Q==
X-Forwarded-Encrypted: i=1; AJvYcCV6lfKI+0dyuhzba/poF6myKrOx2fLUxOPHAfx6xt4a6WT6OsllwD11cIPF92QnVHfroo16LK7B7t8=@vger.kernel.org
X-Gm-Message-State: AOJu0YzQnrTQ8PYGa/voV/Ct/inrhfsFsPz5YRF2l6AWOsU9MVaJ03BF
	oBcT07FLm6a2mn3sleiOFAZVWXgxYuN/guSKPqVAEf90+XKPN5o=
X-Gm-Gg: ASbGnct6wikXn1grnBLqFJw/+Sdvkys0rcabW7n10DshuAVOdmigFH2p6goD1wxxGc7
	7Ypdg8dAhSBiB/B+3LLLcZip9iBDX6a+XFPlp7VuunxjAlZl8B9YNo8ZlausdKCBnvagzKmW4kD
	PhgwBtmKunSBGaxWizFEdteuq35iDNQGfBIfhLIkDCmaxBSnTRxcsgDpTE12AbQoilWB0RVucUC
	ihtp5CQOoIwoBLPHlGLqChqvjrl2dDoxXTddomFLPN2xNnRUEgu8kaZnjlo+VQ9BFC66tNgCUIr
	Cn7xhyCCUEnVbg==
X-Google-Smtp-Source: AGHT+IHDF7rjQTCm8hAfMKB2GvodEA2rHAhcjJIleta6NwR4WXeyPNPTp6+QaOeChN/Cv237PeBhhg==
X-Received: by 2002:a05:600c:4450:b0:439:41dd:c066 with SMTP id 5b1f17b1804b1-439581d4e2fmr43680905e9.31.1739386844777;
        Wed, 12 Feb 2025 11:00:44 -0800 (PST)
Received: from Amit-PC. ([176.231.106.129])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4395a04cd94sm28481065e9.7.2025.02.12.11.00.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Feb 2025 11:00:44 -0800 (PST)
Date: Wed, 12 Feb 2025 21:00:42 +0200
From: Amit Pinhas <amitpinhass@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Amit Pinhas <amitpinhass@gmail.com>, linux-man@vger.kernel.org
Subject: [PATCH] [PATCH v1] man/man2/kill.2: Wording issue in kill(2) with
 sig=0
Message-ID: <0cd62e37c65a6872080f39cdd21d2e4f111488f6.1739386814.git.amitpinhass@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailer: git-send-email 2.43.0

The fix was found from the relevant man page itself, as it had a wording
issue regarding the return value when sig=0.

Reported-by: Amit Pinhas
Acked-by: Alejandro Colomar
Signed-off-by: Amit Pinhas <amitpinhass@gmail.com>
---
 man/man2/kill.2 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man/man2/kill.2 b/man/man2/kill.2
index 96468622e..8bb75545b 100644
--- a/man/man2/kill.2
+++ b/man/man2/kill.2
@@ -79,7 +79,8 @@ .SH DESCRIPTION
 processes belong to the same session.
 (Historically, the rules were different; see HISTORY.)
 .SH RETURN VALUE
-On success (at least one signal was sent), zero is returned.
+On success, zero is returned.  If signals were sent to a process
+group, success means that at least one signal was delivered.
 On error, \-1 is returned, and
 .I errno
 is set to indicate the error.
-- 
2.43.0


