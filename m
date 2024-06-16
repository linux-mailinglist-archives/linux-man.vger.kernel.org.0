Return-Path: <linux-man+bounces-1194-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AE9B7909B04
	for <lists+linux-man@lfdr.de>; Sun, 16 Jun 2024 03:19:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A5EBF1C2100D
	for <lists+linux-man@lfdr.de>; Sun, 16 Jun 2024 01:19:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 312CF154C1C;
	Sun, 16 Jun 2024 01:19:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WuZ1oBzU"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 950C2154C0B
	for <linux-man@vger.kernel.org>; Sun, 16 Jun 2024 01:19:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718500775; cv=none; b=Pof8kbbyxINOQDxP4hSq1ApaUSkKzRHJFJHYv499UQgr2aRK9j+tp3rJcfOQyzg8R4I7KcaovDUc1I/qj40goxvmf5hANGvVK2xLaP9IfujgpPE6ZyOhX+d0NKf7P1+06rBy/5fk5K6JRhoLLhtCv6COK/L2TTAw+Op/wMdUwnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718500775; c=relaxed/simple;
	bh=aUpm2kbpawMgVjvgcOxStWnWJvg6SIRmcizvQiSp2Jg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fnbQrZ6bpYlAubpGxzPICwwMYWIitTU55VJ+e+gMvurpQdBOXJkxM7UXdvIfhAnACshHGgKY+dI8zoFLskh9azXMoCXkhCko9dzCbYsarLKhyxBLOMwqny4eixyuzqdzKG2in4ho+7/GEANnNeTAZGtyjbVu25HfKoGjtP6+STU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WuZ1oBzU; arc=none smtp.client-ip=209.85.222.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-797b24b8944so291764085a.0
        for <linux-man@vger.kernel.org>; Sat, 15 Jun 2024 18:19:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718500772; x=1719105572; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4MziIf6yeYqAU/IiiGQ/LzlEH05d7pIP7QXqe3vy3nk=;
        b=WuZ1oBzUnsLoNbgNwNMEBnlDcJgIdl3s1kdxyQv+Lth69W9KcHQ9b4bvqstm3KivV6
         WlmvpK4XgV2TX5mNxa0BZsJWaUHtWfqlemerigJqN8guarq8GBRq9iiOyuM+clcRt6N8
         8f3RXfZjecDzMopgvkp8EioDoApVFuEgZyQeL/nxFCcUZra+q/AfbxeMWU+ApFoEU6WO
         0IyLLXRdoJ6I+O1hN8FmJdLbleSoK3XEuF+HDHTGE+1zjwdkZDN5qzc9H0kbuMnMVdlo
         ivj2Mv3KS+5xga6xBKnqw6uqnSVCbVbRdkySu1PLhBBaOPZxoGo/dKHm+0tHPvUmfM2f
         bmGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718500772; x=1719105572;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4MziIf6yeYqAU/IiiGQ/LzlEH05d7pIP7QXqe3vy3nk=;
        b=A89nq64hzsZq/R7AIizGjsPnRgi65UumZXvGuPatOwjadskm7SrWJoIp0fglgBGIGu
         5eeeAtUVleR8UtVdVIPmFn1RMODRxcnHdjE8DeqkAsZPXr/xysNsUF5b0XC4OXlG706b
         SGARoP/cpckMU4kuiO2OaUYpxIj9aVJjWNkYt4RHba6clKlA3iEB9/skfZJA3OMWqvd5
         +ZDlzVaxQB5rZdxprCFDjNYeepqF5L51w7GP5CUi9JiIGwk87UHqvmLqIokVPy0L9lyu
         ndk60bUvXKneBLj76Mc0pYgfW45Ped9sn0H8Djc69UZ1yrgscdCmPglcQsHb2o/eA62I
         iwPA==
X-Forwarded-Encrypted: i=1; AJvYcCVt/xiqs5YArmJ3A5/EH+NyBvvon3pCcGimz/x7CSdtghENNT3M5FE3Qu0SUB1AV9CeVwFUrSur0ylKK82UYqa+u3oARctcM4og
X-Gm-Message-State: AOJu0YzzStcrkIinv+klSykvM5D5zAt9AXlwukZnKWAYFnkPQam6zt+J
	mBWX5OxPBb70/UbBWodohilAonPOedPt76CePC47gGgAAUcCzCjxsrZFxMOn
X-Google-Smtp-Source: AGHT+IGNcdKGdMG2a4+TRQCorjlXvG1F4fm7RKrMXzdBNOEL1iJoq8aBILtMLtD9xlX9PDlilRCt9A==
X-Received: by 2002:a05:6214:2b41:b0:6b0:65f8:6e9b with SMTP id 6a1803df08f44-6b2afd6a48dmr65988716d6.42.1718500772376;
        Sat, 15 Jun 2024 18:19:32 -0700 (PDT)
Received: from kir-tp1.redhat.com (c-67-160-124-188.hsd1.wa.comcast.net. [67.160.124.188])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b2a5c18209sm38130626d6.42.2024.06.15.18.19.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Jun 2024 18:19:31 -0700 (PDT)
From: Kir Kolyshkin <kolyshkin@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Kir Kolyshkin <kolyshkin@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH 03/11] floor.3: fix section reference
Date: Sat, 15 Jun 2024 18:18:56 -0700
Message-ID: <20240616011920.1627949-4-kolyshkin@gmail.com>
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
 man/man3/floor.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3/floor.3 b/man/man3/floor.3
index 2df4489ba..f4b6ac0b8 100644
--- a/man/man3/floor.3
+++ b/man/man3/floor.3
@@ -52,7 +52,7 @@ .SH RETURN VALUE
 itself is returned.
 .SH ERRORS
 No errors occur.
-POSIX.1-2001 documents a range error for overflows, but see NOTES.
+POSIX.1-2001 documents a range error for overflows, but see HISTORY.
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
 .BR attributes (7).
-- 
2.45.2


