Return-Path: <linux-man+bounces-3472-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9031BB29B72
	for <lists+linux-man@lfdr.de>; Mon, 18 Aug 2025 09:59:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3B1F716B0BB
	for <lists+linux-man@lfdr.de>; Mon, 18 Aug 2025 07:59:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C1602BDC34;
	Mon, 18 Aug 2025 07:59:21 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC2382BDC14
	for <linux-man@vger.kernel.org>; Mon, 18 Aug 2025 07:59:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755503961; cv=none; b=PfyrrTMNvHBocKDO98TDOjinCv46g1KQ6FqhdbVziee0KonpygexyHpz73j+EsZAwIqrPU/jvGgvTWFkBdfdZpIc1Y6f+SO7qtvcR4kZ82Da8PVl/4omWZVM1S+VbfBVAcwHw/SP79mL8UnDMrnAOPQQohjA+5/v9gmnJ/NYI+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755503961; c=relaxed/simple;
	bh=VSHk1qlHQTVl5TQH8mkAr1QXQ8Dj/v2WhVak2vkSq6s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FbuNTv28ndBsQZI02WEh3f8E8PnqiN+dgaikS4OGbtcNRb5N3FuJHtgFdWJ/Wcrr6+8Y/NsUTgc5An4U5Ds3K+z0ZDjuG6FLFOip717W8r5TqE7Seo/sUtja4MKG5VGjd9qUwsuvyQv6JO3pbd1qNUb5PJyQhTWvCv1eglLF7oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=outlook.com; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=outlook.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-24457f581aeso28282085ad.0
        for <linux-man@vger.kernel.org>; Mon, 18 Aug 2025 00:59:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755503959; x=1756108759;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B9ftRcTxS1Ij23Fto0synt0xYpBy08GzhvLvsEFgAbQ=;
        b=E4Cl4hJbPaXspk/zCuVJCGa0xGjsjt2n2xiy7XrxRBo2u2Z8CppfaeyeiG0bVVWPDJ
         mLqEe4rsxt4aeNCj+fhkqtLWuXf5uRjxUhApQhdc67krz8kJ5hHO08zk8NhmguzJcRgN
         p6/4V1+BihNFoa9fZsr/Dua0jaBM8pgOH2IKqAvA5ilGLhZ0jtjI0xhkiPsnLYCas0lv
         ovsY29urJ0stKJ/megNoDyH2j8+NFwTqmLlIkW3RUuUVuPzDV3+SSBMlSbY4Zbra1YJ+
         d7bvc6uf4f3jxklx11CWImR43TcR7u/LxGP9ENn9x7tAGsmZ3/R7V4RJDRb5mVKJTbkt
         z8JQ==
X-Gm-Message-State: AOJu0YzrIfkACSydGJbLrTXRebz95TUA+24vDEpEWZKZD3kEhje5VUuT
	Aa/9m7Zda0FAZlR2Tn0IIm7+NNW621ifMhngFcu7MuOcaVSP8Nw3stg8
X-Gm-Gg: ASbGncuj+2fZHEYYf2njelioivzaiISx1YHKjxNM/NfpwVRKIMHly8KOrBoZT8AOQhX
	sfgnwcRbf26+VLdfBJatnXejYCebz47nKi72UoUpMKQeo5JZ+iFauJNv8wFa8kbayi6wdRDKnfX
	2tey1gx8QMS4FoI6qmHCkw3xayN10YTPHGr+HFY221ZMc8X2lGHWsy21+Iosqq2IGiBIG9K816A
	RMPxmMf41pR6AfpteI8Qs5+JjBo5M4dOXHwBV9KpwJL4e/ZFc/TJ6lQdlFwBRpozaEiV1OLEjlO
	6wsRQ/Af2kt9G6a08nSPYhSp1dYugMBw/o5YHI8oJWa5Tvpe+lEhLbnx74I/9OoB4FzluHiTZSO
	yc3J6AyddDPrQhlUUa6VA3HcaMmWCmsf52Nncjt7NdhCcCIzVeRIlw7YXB0Bd+fR8r2qI9A==
X-Google-Smtp-Source: AGHT+IGIZq8EWMW7nM7piisEmv0Lq257lmETTvaklxlubbANZI9RlMZxFudnH52qgFDTIK0nA58GSw==
X-Received: by 2002:a17:903:2f10:b0:235:c9a7:d5f5 with SMTP id d9443c01a7336-24478f347afmr105792285ad.13.1755503958770;
        Mon, 18 Aug 2025 00:59:18 -0700 (PDT)
Received: from localhost.localdomain ([2600:382:7610:1712:989a:f101:bdd0:5b1a])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-32343995da0sm7196917a91.12.2025.08.18.00.59.17
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 18 Aug 2025 00:59:18 -0700 (PDT)
From: Alex Yang <himself65@outlook.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	Alex Yang <himself65@outlook.com>
Subject: [PATCH] man/man2/getrusage.2: clarify ru_maxrss unit as KiB
Date: Mon, 18 Aug 2025 00:59:05 -0700
Message-ID: <20250818075905.40146-1-himself65@outlook.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <jclco3uxvj7drormblgik6fsa36aemanyxqaf44mhaqgbwszye@nuhauaulbrlg>
References: <jclco3uxvj7drormblgik6fsa36aemanyxqaf44mhaqgbwszye@nuhauaulbrlg>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The ru_maxrss field was previously documented as using "kilobytes" as its unit. However, the value is actually in multiples of 1024 bytes, which is correctly referred to as "kibibytes" (KiB) according to the IEC standard. This change updates the documentation to use the precise term.
---
 man/man2/getrusage.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2/getrusage.2 b/man/man2/getrusage.2
index 34e81f540..a1b30e5b5 100644
--- a/man/man2/getrusage.2
+++ b/man/man2/getrusage.2
@@ -88,7 +88,7 @@ expressed in a
 structure (seconds plus microseconds).
 .TP
 .IR ru_maxrss " (since Linux 2.6.32)"
-This is the maximum resident set size used (in kilobytes).
+This is the maximum resident set size used (in KiB).
 For
 .BR RUSAGE_CHILDREN ,
 this is the resident set size of the largest child, not the maximum
-- 
2.50.1


