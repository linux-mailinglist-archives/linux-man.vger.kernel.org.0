Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8471E511717
	for <lists+linux-man@lfdr.de>; Wed, 27 Apr 2022 14:46:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233189AbiD0Lzp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 27 Apr 2022 07:55:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233170AbiD0Lzo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 27 Apr 2022 07:55:44 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81C21167D9
        for <linux-man@vger.kernel.org>; Wed, 27 Apr 2022 04:52:32 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id v64-20020a1cac43000000b0038cfd1b3a6dso3264405wme.5
        for <linux-man@vger.kernel.org>; Wed, 27 Apr 2022 04:52:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=vNaSTiSVUNSViz+xv3hCR2DgLK9dk3Z6aSFid/6AEBc=;
        b=XOj+eO08RjzXM7Jb8pGJZ/Y3rS3F1SrLrBGmtC6/1ILC+GGomeKTm2yYo8on+fwEgz
         trKsjLSR2d7YvyrteMzs7Dgp8KotCGymDv6xasC4kWVZdp4s1wBkF1+k0IgO95vSONvg
         MX+9XNuf/pI/wsIPBvrKNwnxcP+YzrG5qkKk3TcMLwcWkC2QwkJ1jqyF4+mTmkgr856Y
         kBttEskA4l8rvaPpbsqeISrh4ofwYpwCd5CjHh8MjeHZXU9HZekhWreAmZQVZxbdmzM6
         ilm8AIT5BW9nKCR2Jz8CaPHirxOg1GN3qcSpd4qPdjjlr9//l+kI3SSpJ6Rw0vFTdEyz
         rgSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=vNaSTiSVUNSViz+xv3hCR2DgLK9dk3Z6aSFid/6AEBc=;
        b=lmpDOH4rU6kF9p8FVR4ZARUSmj9JAtvxV3LDrsNm9snOK1a39E7mpae0AJwMd+APPj
         Ij/Sszbwrtb5ZlxKO4wDWG7hspK/pi5JUe97N+pRUP3uVhZEHfv4W2O5jzX3AoMsOkE/
         oV03RGIG3MTM4HiLvJXHdupDc9dCeF0lW1fHicSokr+FRhOZcF8kSjgdlHIvr7FJ3UHx
         aE6EN3wMt7j8CzKk+irpF/hHsYMnpM0+JIFFizZ+kjws1ibV8ho0ktzXikPco8/J1slh
         qGuVuW1aMlBalaw8VMkD4tPs4WKmTUBxFWskU1N+fc2BgF0g0shINxT0/vBaPPSVqLWy
         AyYw==
X-Gm-Message-State: AOAM531BT71V2Pn46XF0nRW/kSqwhdyYm8FK3cvpXBdfoQcYQTZ3U3LI
        zePU9C+8dB7omRifeSe2WRg=
X-Google-Smtp-Source: ABdhPJzniBm+gF43C8a/D7A0mbX4itDdEQhNUH8dZ5LIoWZsveuVMMyQ5jCP9CJFY+WwhQtpD4RRUg==
X-Received: by 2002:a05:600c:a08:b0:392:a561:9542 with SMTP id z8-20020a05600c0a0800b00392a5619542mr25183332wmp.62.1651060350944;
        Wed, 27 Apr 2022 04:52:30 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id v13-20020adfe28d000000b0020375f27a5asm14137912wri.4.2022.04.27.04.52.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Apr 2022 04:52:30 -0700 (PDT)
Message-ID: <ba1de951-082e-5c6e-73ef-21c401ed066c@gmail.com>
Date:   Wed, 27 Apr 2022 13:52:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: (same) errors in ceil.3, floor.3, rint.3, and round.3
Content-Language: en-US
To:     "Dr. Wolfgang Armbruster" <dr.w.e.armbruster@gmail.com>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com
References: <c6f78359-c187-d132-7d1b-05ffe131c39e@Gmail.Com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <c6f78359-c187-d132-7d1b-05ffe131c39e@Gmail.Com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Dr. Wolfgang Armbruster,

Thanks for the precise report.
I applied the following patch.

Thanks,

Alex

---

     ceil.3, floor.3, rint.3, round.3: Fix floating-point limit values

     According to IEEE 754 - 2008 , section 3.3, table 3.2
     <https://irem.univ-reunion.fr/IMG/pdf/ieee-754-2008.pdf>
     the value of emax is described as
     emax = +127 / +1023

     <https://en.wikipedia.org/wiki/IEEE_754#Basic_and_interchange_formats>
     states the same values.

     Also, to be more precise about the number of mantissa bits,
     clarify that the implicit bit is included in the count.

     Reported-by: "Dr. Wolfgang Armbruster" <dr.w.e.armbruster@gmail.com>
     Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

diff --git a/man3/ceil.3 b/man3/ceil.3
index a01b75c5e..1b83258c1 100644
--- a/man3/ceil.3
+++ b/man3/ceil.3
@@ -93,8 +93,10 @@ so this error-handling stuff is just nonsense.
  (More precisely, overflow can happen only when the maximum value
  of the exponent is smaller than the number of mantissa bits.
  For the IEEE-754 standard 32-bit and 64-bit floating-point numbers
-the maximum value of the exponent is 128 (respectively, 1024),
-and the number of mantissa bits is 24 (respectively, 53).)
+the maximum value of the exponent is 127 (respectively, 1023),
+and the number of mantissa bits
+including the implicit bit
+is 24 (respectively, 53).)
  .PP
  The integral value returned by these functions may be too large
  to store in an integer type
diff --git a/man3/floor.3 b/man3/floor.3
index f502be22f..d64e4a512 100644
--- a/man3/floor.3
+++ b/man3/floor.3
@@ -92,8 +92,10 @@ so this error-handling stuff is just nonsense.
  (More precisely, overflow can happen only when the maximum value
  of the exponent is smaller than the number of mantissa bits.
  For the IEEE-754 standard 32-bit and 64-bit floating-point numbers
-the maximum value of the exponent is 128 (respectively, 1024),
-and the number of mantissa bits is 24 (respectively, 53).)
+the maximum value of the exponent is 127 (respectively, 1023),
+and the number of mantissa bits
+including the implicit bit
+is 24 (respectively, 53).)
  .SH SEE ALSO
  .BR ceil (3),
  .BR lrint (3),
diff --git a/man3/rint.3 b/man3/rint.3
index 70d2205d2..a15ca0d79 100644
--- a/man3/rint.3
+++ b/man3/rint.3
@@ -128,8 +128,10 @@ so this error-handling stuff is just nonsense.
  (More precisely, overflow can happen only when the maximum value
  of the exponent is smaller than the number of mantissa bits.
  For the IEEE-754 standard 32-bit and 64-bit floating-point numbers
-the maximum value of the exponent is 128 (respectively, 1024),
-and the number of mantissa bits is 24 (respectively, 53).)
+the maximum value of the exponent is 127 (respectively, 1023),
+and the number of mantissa bits
+including the implicit bit
+is 24 (respectively, 53).)
  .PP
  If you want to store the rounded value in an integer type,
  you probably want to use one of the functions described in
diff --git a/man3/round.3 b/man3/round.3
index 5b6169823..a3968ca88 100644
--- a/man3/round.3
+++ b/man3/round.3
@@ -93,8 +93,10 @@ so this error-handling stuff is just nonsense.
  (More precisely, overflow can happen only when the maximum value
  of the exponent is smaller than the number of mantissa bits.
  For the IEEE-754 standard 32-bit and 64-bit floating-point numbers
-the maximum value of the exponent is 128 (respectively, 1024),
-and the number of mantissa bits is 24 (respectively, 53).)
+the maximum value of the exponent is 127 (respectively, 1023),
+and the number of mantissa bits
+including the implicit bit
+is 24 (respectively, 53).)
  .PP
  If you want to store the rounded value in an integer type,
  you probably want to use one of the functions described in
