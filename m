Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CB5EE265C4B
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 11:16:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725777AbgIKJQR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 05:16:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725814AbgIKJQL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 05:16:11 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00DC5C061757;
        Fri, 11 Sep 2020 02:16:11 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id z1so10742151wrt.3;
        Fri, 11 Sep 2020 02:16:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ijD0L2pWwfcKdg0nXzoCIwIa7y5Vm921uYbnQDKx/CU=;
        b=e1u6SF1HKUXRRafDTlVGTnk8qqqiOiZe7WEDYKFzR6yOW3SOQUtC8cAyXvJ9BAHXX5
         DjPmoKLBvFbpVYKAXITH//nswZUKjcI+o1jEylJGahu0jidcDcy4llvTksOEgLKQveLh
         IcskqjYnF++EIeNshfyxUATOWQEEJCMV1t2YkkRaa2DVI38tYcn3OSE15GnXiSv0W3Xp
         LpVsPD5+FIasYxSggiq9iEbyINHTmL09QHc+id2N3j6r3OdaekWiwq+1tBSAv9/H0tC+
         gy3MZ+u4lPCkztCUmWzQSKCwdVLPFl7U/WUe3AvPTqUiPwPd7RYl+kGZ6SeE8JsHjiZM
         J9zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ijD0L2pWwfcKdg0nXzoCIwIa7y5Vm921uYbnQDKx/CU=;
        b=qWe10FFdw0lHyHtV9aGMkC5L33N3aTVjDz0BALTl2RuxUtueqMKVbkWnMLGuw39rRp
         LPTMY8xf4IEUv0hh4bdSoP3P8Vv+UmBEBcUHEh5sz1odhJrLbpRm4Dkdfcyeg19pyPvL
         sZpcYJPYk6g6A39ffkYPNu8NrAh7SSbeQ5QSNNHMsO4oW00Y2W73jC7kTNUCfQH6UYP6
         +P2F1L2dha1+3Z714VNiABT74gjuNEb6trIblwGrE/uWoDJ4vlDIIHFdMClzp3p21HvX
         xWUnP7kdKl/SkzjfpPGl96MCfxLR+Q52OxQ+TcjSOWvIPUYpgha521lDqYAMd/FlUmIV
         /F9A==
X-Gm-Message-State: AOAM5326m1b2Ia8Y61TFdLC1tzq2aVd4GcH0JfF4BJYzgcQMRMx8fvFw
        KrXQ5Yfp+03C1tfkineVksWq0e5tsLI=
X-Google-Smtp-Source: ABdhPJyMm8oGKVnR32HjZOX8x/p+Vr9Q0UeOF7Upy/2DOg0lIVHJi/Du/85kUEYynLwP+oEY5NuniQ==
X-Received: by 2002:adf:f586:: with SMTP id f6mr1040996wro.299.1599815769321;
        Fri, 11 Sep 2020 02:16:09 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id g2sm3281250wmg.32.2020.09.11.02.16.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 02:16:08 -0700 (PDT)
Subject: [PATCH v2 11/24] stat.2: Cast to 'unsigned long' rather than 'long'
 when printing with "%lx"
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-12-colomar.6.4.3@gmail.com>
 <9e397d55-34bd-3df7-57cc-e5726198bb97@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <11344e3e-1c0b-b61a-4794-807714b1c09d@gmail.com>
Date:   Fri, 11 Sep 2020 11:16:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <9e397d55-34bd-3df7-57cc-e5726198bb97@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 2020-09-11 09:25, Michael Kerrisk (man-pages) wrote:
> See my reply to patch 10/24.

As with 10/24, here's the new version.

Cheers,

Alex

--------------------------------------------------------
 From 911c791f0168851cdfdb30a65b6935011e4a161c Mon Sep 17 00:00:00 2001
From: Alejandro Colomar <colomar.6.4.3@gmail.com>
Date: Fri, 11 Sep 2020 10:52:14 +0200
Subject: [PATCH v2 11/24] stat.2: Cast to 'unsigned long' rather than 'long'
  when printing with "%lx"

 From the email conversation:

On 2020-09-11 09:24, Michael Kerrisk (man-pages) wrote:
 > Hi Alex,
 >
 > On 9/10/20 11:13 PM, Alejandro Colomar wrote:
 >> Both major(3) and minor(3) return an 'unsigned int',
 >> so there is no need to use a 'long' for printing.
 >> Moreover, it should have been 'unsigned long',
 >> as "%lx" expects an unsigned type.
 >
 > This may be true on Linux, but is not true on other systems.
 > For example, on HP-UX, according to one header file I'm
 > looking at, the return value is 'long'.
 >
 > These kinds of casts are intended to improve code portability
 > across UNIX implementations, so I think they should stay
 > (although, I do wonder if they would be even better as casts
 > to 'unsigned long')
 >
 > Thanks,
 >
 > Michael

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
  man2/stat.2 | 3 ++-
  1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man2/stat.2 b/man2/stat.2
index b35e3c615..08af24c56 100644
--- a/man2/stat.2
+++ b/man2/stat.2
@@ -665,7 +665,8 @@ main(int argc, char *argv[])
      }

      printf("ID of containing device:  [%lx,%lx]\en",
-	    (long) major(sb.st_dev), (long) minor(sb.st_dev));
+	    (unsigned long) major(sb.st_dev),
+            (unsigned long) minor(sb.st_dev));

      printf("File type:                ");

-- 
2.28.0

