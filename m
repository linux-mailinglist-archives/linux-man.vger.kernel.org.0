Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 868A025BEFF
	for <lists+linux-man@lfdr.de>; Thu,  3 Sep 2020 12:24:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726268AbgICKYA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 3 Sep 2020 06:24:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726025AbgICKX7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 3 Sep 2020 06:23:59 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F7C4C061244
        for <linux-man@vger.kernel.org>; Thu,  3 Sep 2020 03:23:56 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id g4so2609899wrs.5
        for <linux-man@vger.kernel.org>; Thu, 03 Sep 2020 03:23:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Ot0F1DBB1o/jGfnmXQY2etZ0+BIL5czbYZ7UeYtgd4c=;
        b=WJs9H1x+/qe4WyXch3vOr4elsRjA5OtUYBbkJaLfYA9j69u1MKPeGZQtl3TO72nPbh
         a4LwW/gAHenqG6xXxzCFfkcfp46EXYTKAIDKRzUcMO3qMF2/QGqxrpf4YKGTKWuyNgtI
         mTuBVCMuvtDNHtM59IJlnLGZR/j72ay3DzfmeVZ+OW0CxytdnZwtDykHLp7ABWYwIIFl
         d+ybxBADQqaC3KMAXCloRR9LcFlcq65iWkDvcIeZ2xXrk9N2biKIIs17pJEOuMGGTbr7
         tkO3SWR7iHUahcKSdGBVer1GMJD+aEcO99dKris11lXRhDJD//ipW+WHIV4DWbXcXAnz
         zg5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Ot0F1DBB1o/jGfnmXQY2etZ0+BIL5czbYZ7UeYtgd4c=;
        b=JNvbZu9G8RHAMTWtWW+VKsqmtdw9rgFcPAOwqD5THM6Yd74RaKe1pmlhn70eR6DT9t
         gw7ItH3XIvgDKjJRh6pnPFlEJytMdA0orfpoq5YfMn8MBS7NcTNwlbC/5MwA7Zy5PyME
         BwNZQA5iEzGcZxnlt8nKOCUxre1gksTRvgBv0XQsaLtM8jFgm3ole2tCRhzPwmx5U+Z7
         M+a01J1RYhN2MVHxXPNtC1fbM4YwrWUDNnxMS0FeCoLxw1OAVpHRqhM8HNDbRTFthr3e
         PbCyM1Nz1yxVcKGxUmGLSWKZSUIMdyWlwbLilbtnBWQazSkUuPAHS7IPBJpnWjtCQ3fi
         YEzg==
X-Gm-Message-State: AOAM531nyjTxULTZh6mRcj45vxaihhfd1g8RaZdxepvvvByOepZU0TaS
        E/jjZLUYyD07Knarm4CCkbw=
X-Google-Smtp-Source: ABdhPJw6gr31N9/nFYUQ7aQuR8O+ybMWl5dfZZZVRQYiPHR+GvHIdmWrYgeZus/650Uoav4Jmprm3A==
X-Received: by 2002:adf:e6cf:: with SMTP id y15mr1696974wrm.346.1599128633731;
        Thu, 03 Sep 2020 03:23:53 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id b11sm3824344wrt.38.2020.09.03.03.23.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 03:23:53 -0700 (PDT)
Subject: [PATCH] memusage.1: Use sizeof consistently
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
 <e1b424c2-77c1-e995-a866-67a122d7bb07@gmail.com>
 <20200825111924.gwf3ck4bdq42lrzr@jwilk.net>
 <d084b7eb-a691-52e8-4996-5080af0175de@gmail.com>
 <CAKgNAki_wyf7dCShjpAaRLUeuL=+EFZYeVp0fY-EKHyOBW2hRw@mail.gmail.com>
 <d72263bb-7c84-3f33-ee44-a2cac2e2662c@gmail.com>
 <806999b7-8947-d350-2125-f04b69846f37@gmail.com>
 <d3537144-e4da-8359-bc08-4eaf8c7bd059@gmail.com>
 <9fcc512e-a12c-5b28-126f-aaf1854ed290@gmail.com>
 <2b288808-c840-343f-9e56-8097765e5528@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <876dcc97-8151-7160-5eda-19307f0483c1@gmail.com>
Date:   Thu, 3 Sep 2020 12:23:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <2b288808-c840-343f-9e56-8097765e5528@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

Continuing with the series, this is the first of the last set of
patches: (2).1 as numbered in previous emails.

Regards,
Alex.

------------------------------------------------------------------------
From ad5f958ed68079791d6e35f9d70ca5ec2a72c43b Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <colomar.6.4.3@gmail.com>
Date: Thu, 3 Sep 2020 12:11:18 +0200
Subject: [PATCH] memusage.1: Use sizeof consistently

Use ``sizeof`` consistently through all the examples in the following
way:

- Use the name of the variable instead of its type as argument for
  ``sizeof``.

	Rationale:
	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man1/memusage.1 | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/man1/memusage.1 b/man1/memusage.1
index fa1987c79..a03468442 100644
--- a/man1/memusage.1
+++ b/man1/memusage.1
@@ -247,8 +247,8 @@ main(int argc, char *argv[])
      int i, j;
      int *p;

-     printf("malloc: %zd\en", sizeof(int) * 100);
-     p = malloc(sizeof(int) * 100);
+     printf("malloc: %zd\en", sizeof(*p) * 100);
+     p = malloc(sizeof(*p) * 100);

      for (i = 0; i < CYCLES; i++) {
          if (i < CYCLES / 2)
@@ -256,11 +256,11 @@ main(int argc, char *argv[])
          else
              j--;

-         printf("realloc: %zd\en", sizeof(int) * (j * 50 + 110));
-         p = realloc(p, sizeof(int) * (j * 50 + 100));
+         printf("realloc: %zd\en", sizeof(*p) * (j * 50 + 110));
+         p = realloc(p, sizeof(*p) * (j * 50 + 100));

-         printf("realloc: %zd\en", sizeof(int) * ((j+1) * 150 + 110));
-         p = realloc(p, sizeof(int) * ((j + 1) * 150 + 110));
+         printf("realloc: %zd\en", sizeof(*p) * ((j+1) * 150 + 110));
+         p = realloc(p, sizeof(*p) * ((j + 1) * 150 + 110));
      }

      free(p);
-- 
2.28.0
