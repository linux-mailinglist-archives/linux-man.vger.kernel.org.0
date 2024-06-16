Return-Path: <linux-man+bounces-1196-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4511B909B07
	for <lists+linux-man@lfdr.de>; Sun, 16 Jun 2024 03:19:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EF0CB1F21A5D
	for <lists+linux-man@lfdr.de>; Sun, 16 Jun 2024 01:19:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BF9C1552E6;
	Sun, 16 Jun 2024 01:19:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XcRrFvQa"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEA7F154C0B
	for <linux-man@vger.kernel.org>; Sun, 16 Jun 2024 01:19:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718500777; cv=none; b=TKdpNdy7F2+MVCVbEtoYiyTQ+jlsw1ksf06byA20bq717s1fcibeYjOJ1Jhoh6SDwMAqfnYmBKIxcNkXhUWal/HWaAeyVAa9bkPth4M+KSMQu5WdXSOrZkp9TC6zxa33k86FUqxaFl/oPjHI/APBAysR6O2ADlvF8wSGJSaahRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718500777; c=relaxed/simple;
	bh=A8c8RUdNXBimPEwodirYTxaotL9RV4QVZ5/ZMd+yMAM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dYP6XxLxHhX25SsKCUflk0dAMJa0CE7/d5pv1jPJOqqISExIyZn1DFx8mzlCd3vd8Xefxi8s60PPaVr5vzgAG5om7BZ0TK9TladTDoyeuNpOxCsNV8EYpW8SAxbrKttnpmESkY0cyuZ6Ml4Az7WuEl/FUv1HSMyWDwz2i4Iy7Kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XcRrFvQa; arc=none smtp.client-ip=209.85.219.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-dff0c685371so2761852276.2
        for <linux-man@vger.kernel.org>; Sat, 15 Jun 2024 18:19:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718500775; x=1719105575; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rP2PHxv9vRM2nxi74B3uImhEWT4WvNTZAWIpxvkWYVs=;
        b=XcRrFvQaS2sRuW2RGq8IVQj61yPk/5PtOzd6J1+EPBzjDcDQne4r3WcoIFr6bTWHBf
         A3UyA4rKAPGsQrhutYKGYpB3AZozpQ3kn65hpjrgML0/eWf+2spqe8iEQaVUXaBEpfhs
         vCyYWXvWYS6ruJhSEw8x0wPqIMg0Uri+2nunDzhbC+U77os4dcKPspP2mtNPR3q/r6Cp
         2n8T/seJKIYSQewyg+cJZZX6ViP41R+YQIlgbPzkRaGbH3PvplNrOPgUTSCMSXywGoFW
         oZRKeU7oHhFRNg2CXtem+mFk28Bng+hggaP+GHdcBPvFVtoJ2wFprAVF7Zaoc8elV1df
         nPzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718500775; x=1719105575;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rP2PHxv9vRM2nxi74B3uImhEWT4WvNTZAWIpxvkWYVs=;
        b=pvc6Xm6jdE2uqo4oT56wsTWu2Bmi3KijV0DpPexOOe3A/Drbbcg/plzDLvjBMShyX2
         xyQlaJF+X8O0eiK8KX/HpxLW3woXJ7NMfkSDIfE2R9JHyarcw+i0opV68sIQryesCHTx
         K7D825RMv/UNByGno/S+55QZYkiVQxw+06HL62uTjou6dTWnFx9kZWusILDJCIiplnye
         U4oXIXoWqQ7CovcN85W+7OGS0SCe2JKj0W68qFzuRFj2VdLeLNJPsybS+kwrsiofBjM/
         lGrXKw6kzHe6t2JB+9eKUMVQ1/8TIF6r5dRJWY5DUy+d8AHDtOWRM96YlgnCIyDV0fxK
         llPg==
X-Forwarded-Encrypted: i=1; AJvYcCXYEHyeZi8myiB9Zn0IGVzpPw04iMjDwh8HMejr6YA9Tw5oSOI7TvvEtrTGGhw74yOF6TlF5/Sjca4atsvcWCKztD9ERumV9okA
X-Gm-Message-State: AOJu0YxXukysYr1ANJ7dN+MDOn/4ihbPmBTZE//G89Zuil4+Y0NoaVPh
	4oRb7M4ySQrDyo4zYLKm/61J73UhoWgpGFY9QMqor4l4NkkS3bxdWjjvQ4hq
X-Google-Smtp-Source: AGHT+IF7K/gL/QpPL6/ts+71VMCUCSbtCaicogm41jPh6Um4jHFUXIOgDHxa83mvSxTj3XVmx8l8lw==
X-Received: by 2002:a25:dc88:0:b0:dfd:f10f:52bc with SMTP id 3f1490d57ef6-dff15350b0amr5982468276.1.1718500774686;
        Sat, 15 Jun 2024 18:19:34 -0700 (PDT)
Received: from kir-tp1.redhat.com (c-67-160-124-188.hsd1.wa.comcast.net. [67.160.124.188])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b2a5c18209sm38130626d6.42.2024.06.15.18.19.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Jun 2024 18:19:34 -0700 (PDT)
From: Kir Kolyshkin <kolyshkin@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Kir Kolyshkin <kolyshkin@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH 05/11] getdtablesize.3: fix section reference
Date: Sat, 15 Jun 2024 18:18:58 -0700
Message-ID: <20240616011920.1627949-6-kolyshkin@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240616011920.1627949-1-kolyshkin@gmail.com>
References: <20240616011920.1627949-1-kolyshkin@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There is a reference to NOTES section, which no longer exists since
the commit 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY:
Reorganize sections").

Fixes: 4131356cd
Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 man/man3/getdtablesize.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3/getdtablesize.3 b/man/man3/getdtablesize.3
index 9482886f7..032514530 100644
--- a/man/man3/getdtablesize.3
+++ b/man/man3/getdtablesize.3
@@ -44,7 +44,7 @@ .SH ERRORS
 .BR getdtablesize ()
 can return any of the errors described for
 .BR getrlimit (2);
-see NOTES below.
+see VERSIONS below.
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
 .BR attributes (7).
-- 
2.45.2


