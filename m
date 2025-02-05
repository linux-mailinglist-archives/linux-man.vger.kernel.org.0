Return-Path: <linux-man+bounces-2349-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 69553A29A77
	for <lists+linux-man@lfdr.de>; Wed,  5 Feb 2025 20:56:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BCDC77A362A
	for <lists+linux-man@lfdr.de>; Wed,  5 Feb 2025 19:55:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD5F720CCF4;
	Wed,  5 Feb 2025 19:56:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=tapscott.me header.i=@tapscott.me header.b="LdrIVvyk"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2845211A11
	for <linux-man@vger.kernel.org>; Wed,  5 Feb 2025 19:56:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738785369; cv=none; b=AgWmDgtu7HusxvZ3tZEZsrhbNge1EOIhzf4+D7wGKIiJmCoChZp4c8mUp9co9cxpGdg3gg0R4GGn7dZktTkn7fuduJ3043vxIQ+qQjNcz7VHmfdeBmYkrqq05Lczai5lSNnwDbZ7Ta5LZpJht0A6lUBfVdzjrVy9l8ptCXJmXC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738785369; c=relaxed/simple;
	bh=K/w4e/57lX2y8tPgrXj6W1njr0q63ZeFt4AL8JRp2Os=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=n3AY4UCxe2IqxOTNwvfL/qStGp9hKKHMKUqpdWLG5UxP4jJIvYIfern0zyg+H0/iGtVKmsK3X8GiejSVoX3f3Y1Tqm05696nOHI62VAsa/cH8wUr9h6brZDx4y3dd/nSVY5u/y9fh5fZOCwXh3XfoKeUCXkYz/NXtV+I4lhTj7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tapscott.me; spf=pass smtp.mailfrom=tapscott.me; dkim=pass (1024-bit key) header.d=tapscott.me header.i=@tapscott.me header.b=LdrIVvyk; arc=none smtp.client-ip=209.85.219.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tapscott.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tapscott.me
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-6e41e17645dso1575956d6.2
        for <linux-man@vger.kernel.org>; Wed, 05 Feb 2025 11:56:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tapscott.me; s=google; t=1738785366; x=1739390166; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jpMUD6BCL1HNh1p8/ZBia2ephMPA1mH5TrXa392n03g=;
        b=LdrIVvykA+lAXtRz51cutVfRKzkknibyiFbOnoD53ge4QMc0ncRwwUOm6mMy8nwiDB
         fQItyQ9wMbRVc7noP9gQOYh1ZJ0zpOMLqoRs00nw0EYiUSxQvWYGJSStwf3ebx2wTgKu
         9D3BR9s+xI8/UKwdHIFcDpdNOLCvBMizvh798=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738785366; x=1739390166;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jpMUD6BCL1HNh1p8/ZBia2ephMPA1mH5TrXa392n03g=;
        b=fijoowgSaS3yOpB8X9zggUhhMz00tcNyxeF4cdj/vgH1q3J6TSSHaaZr00HMOpLwPn
         P01k9AD5jhlPaE3wkbGtGQYYlnMSyASR3pPGXlG3mitTR6tbsj6bxFi/U8VvZeIO2w7X
         cIJEQJTsl0NmoiarOQyGyqcMMgybbTqH7lJgtSoQa95eAX5gyXVrYN1wLS7+5fLZwlNj
         et1WZywOcTvW3kzWuCNgfOph5jH2HhCQ8iyaJ2iFxDMfarU78De5EuwX5cvQcQI/Ah8X
         YEyGevCJyzx2AyKh3XUL8yClkCcxsIuMRTE5UNWVb1xfHyQ8Y1d0Kf6qn8YFUtfoJ86c
         j2Vg==
X-Gm-Message-State: AOJu0YxSZgGHDLkI2k42BzjhrZWA89Ep3G7Tm/I2MJf6wgK7aLZ4OIyS
	HPS7wnZwsC8S0YVDdM4qHO8iuDexr2322ywKCu0lXgvBo4Q+C2mAhNLbS+Kic0SfYFb57eYKXXp
	qhXk=
X-Gm-Gg: ASbGncsqXr0acCvPJCbCPBv0Qist8u0OMm+GP5SoeAJU99gShH66XHYaxzw6DQ4BJ0C
	eQMte7n58Z97gCE5GJy/qRVIYbljnbfTK0oksESPfq9ay+w2olt+kSdLHcjYS/0ZNjqYqvUzNYR
	FIpabPvbmcFXI1fAQMv1QMqhk17K8pk+cRfCOU9x7JiuJaViI8jki8/ALdIOHieSJFoHfoYr6V7
	jrbVgUmotCcnpyRWaiAon2c45Sh4jKWn5uclmH+gaScP1lAEGXowPVyeYLBXRcssu0+GDSjFcuy
	hgsDqwZtTKuZM2qHFs3Ob923ACh509e+jXfjrQYC/ILrcqajxgqc29TLGxg=
X-Google-Smtp-Source: AGHT+IHd08RC01s3EdHHOI8uH7hbtH5Se2T8goybhQaXmksjViN64vsm+xYoHvrbyo0xBNZO4Xn7KQ==
X-Received: by 2002:a05:6214:212d:b0:6e4:1e1d:10a7 with SMTP id 6a1803df08f44-6e42fb03ae4mr58129196d6.1.1738785366684;
        Wed, 05 Feb 2025 11:56:06 -0800 (PST)
Received: from HP-TOPOS-MACH-LIN. (syn-068-173-224-020.res.spectrum.com. [68.173.224.20])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-46ff30fc6fesm58682381cf.27.2025.02.05.11.56.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2025 11:56:06 -0800 (PST)
Date: Wed, 5 Feb 2025 14:56:03 -0500
From: Cody Tapscott <cody@tapscott.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH v3] Clarify that exclude_kernel does not affect time_running
Message-ID: <722e9b3689ff2d11083366cc1da7e2df3e26fb8a.1738783813.git.topolarity@tapscott.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Re-sending due to bad e-mail client settings that introduced artificial
line wraps.

My apologies for the confusion.

Signed-off-by: Cody Tapscott <cody@tapscott.me>

--

The man page recommends re-scaling event counts as (value * time_enabled
/ time_running), but does not mention that some time-filters (esp.
exclude_kernel and exclude_user) do not affect the reported time_enabled or
time_running, causing a very noisy estimate of the true event count.

This limitation is easy to encounter when profiling events that are dominated
by kernel (>= 50%) vs. user time and which are relatively short compared to
the PMU muxing frequency (<~10x the period). In those cases, it is common to
see (time_running / time_enabled) report, e.g., ~50% active time when perhaps
almost none of the user time was actually spent with the counter running.
---
 man/man2/perf_event_open.2 | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/man/man2/perf_event_open.2 b/man/man2/perf_event_open.2
index bcc6a39cb..bc22a3b12 100644
--- a/man/man2/perf_event_open.2
+++ b/man/man2/perf_event_open.2
@@ -1063,9 +1063,22 @@ .SS Arguments
 .TP
 .I exclude_user
 If this bit is set, the count excludes events that happen in user space.
+.IP
+Note this does not affect the
+.I time_running
+or
+.I time_enabled
+fields, so enabling this may impact the reliability of the estimated total counts in the presence of multiplexing.
 .TP
 .I exclude_kernel
 If this bit is set, the count excludes events that happen in kernel space.
+.IP
+Note this does not affect the
+.I time_running
+or
+.I time_enabled
+fields,
+so enabling this may impact the reliability of the estimated total counts in the presence of multiplexing.
 .TP
 .I exclude_hv
 If this bit is set, the count excludes events that happen in the
@@ -1677,6 +1690,16 @@ .SS Reading results
 and
 .I time running
 values can be used to scale an estimated value for the count.
+.IP
+Note that for most events these values are not affected by
+.IR exclude_hv ,
+.IR exclude_idle ,
+.IR exclude_user ,
+or
+.I exclude_kernel
+and,
+if these are enabled,
+the scaled estimate may be significantly less reliable in the presence of multiplexing.
 .TP
 .I value
 An unsigned 64-bit value containing the counter result.
-- 
2.34.1



