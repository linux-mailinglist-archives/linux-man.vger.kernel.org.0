Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 29CF04F066F
	for <lists+linux-man@lfdr.de>; Sat,  2 Apr 2022 23:29:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231433AbiDBVbZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 2 Apr 2022 17:31:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243172AbiDBVbW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 2 Apr 2022 17:31:22 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20C4227B35
        for <linux-man@vger.kernel.org>; Sat,  2 Apr 2022 14:29:30 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id l62-20020a1c2541000000b0038e4570af2fso3400424wml.5
        for <linux-man@vger.kernel.org>; Sat, 02 Apr 2022 14:29:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=HN0tb4JiVZN6KEQw1tAMCdyrrK3dvu9Q0mb2FfMGntM=;
        b=lf1TWTANp/jS1p7Sj28iWOzN4Rv4vT/zKouxeEKhTbq1S26qxT+HLGKI8KmnPOfOW9
         GKgW9BzdN//1IRH1v/aDCBEm+bIEtACevvA4qfXm0CgF3nipgpf8IC9lPfkuG5W/UATf
         NubMgPgZythCu2notA93UgZoW9R+m9fjgSQhIKVPQwQvyi9aG56gPtYXtjwlmNai1dAS
         /vTuZGdukL66m38C1QSz6wDxpD820Eq4cFl0+Kkx8UxkeU7qP3Vb9DBaUf0looiLWijL
         77SqE9zR7P1Z0Fw/oLOFdamE6LRKB9HQpniwwlNAPTebOAyaEz4Fl6OwcJy6JMFWwa5G
         slqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=HN0tb4JiVZN6KEQw1tAMCdyrrK3dvu9Q0mb2FfMGntM=;
        b=0vLar6LmKkaNGZ8YHO7OAG9cQBdDJTmww40W7dSy7dE2PO6JLSsUD59U8mNZK990ak
         x9veXiP3pffsv0LstUT1w3UiYA4d06nSQCHgqHaxWTuveUwJJtqcTxWxNPxzVweNOpbc
         e+D9T+uZ1Gt88VFrASJ1iFNcQgJAeMZ8txggBy142qnYaZdgf1qNzTjD/qNC/17Pa2xR
         YtPjWkkHKMOv47ox5DzuxTv53Pm3/o1za8/kyJCdxvMCh8nUU456gIgXYecv3yabr1LW
         Lc/ULrzM7bE0dSfcmW8mi8jAsd4wvzHdyJgLW31qFNtZpjVwMw+9zOnvjxKjNj5jewRM
         fHpg==
X-Gm-Message-State: AOAM532sh5KyQT62RKsnMpS1wiXPSTQY/kHAZtjyDnhvrRxTiMa7iQsh
        QW7ernbpfCGlKx5Ez4d+khB1khQN0EJJGg==
X-Google-Smtp-Source: ABdhPJyqdE8Xfr2lNFK2V/jIoLOxQYZrXLzM+pOlblLUwFYyVzUaXfGx2WUmVjuGtYQ0CtSkS3jf4Q==
X-Received: by 2002:a7b:c1c9:0:b0:38e:6e89:1454 with SMTP id a9-20020a7bc1c9000000b0038e6e891454mr911211wmj.65.1648934968543;
        Sat, 02 Apr 2022 14:29:28 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n37-20020a05600c3ba500b0038cc9d6ff5bsm5278203wms.4.2022.04.02.14.29.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Apr 2022 14:29:28 -0700 (PDT)
Message-ID: <23503999-21bd-bb6e-4653-e607fd474ca0@gmail.com>
Date:   Sat, 2 Apr 2022 23:29:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] uri.7: Update RFC reference (2718 -> 7595)
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     linux-man@vger.kernel.org
References: <20220328185621.7650-1-alx.manpages@gmail.com>
 <20220328222958.6tubgws7z6dv3lk5@jwilk.net>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220328222958.6tubgws7z6dv3lk5@jwilk.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jakub,

On 3/29/22 00:29, Jakub Wilk wrote:
> * Alejandro Colomar <alx.manpages@gmail.com>, 2022-03-28, 20:56:
>> -IETF RFC\ 2718 (section 2.2.5) recommend the following approach:
>> +IETF RFC\~7595 (section 3.6) recommend the following approach:
> 
> The new RFC doesn't directly contain the recipe in question.
> Can we point to the last paragraph of section 2.5 of RFC 3986 instead?
>
Yes, it makes sense.

Cheers,

Alex

---

    uri.7: Be more precise in RFC reference

    RFC 7595 points to RFC 3986.  Let's refer to where the info actually is.

    Reported-by: Jakub Wilk <jwilk@jwilk.net>
    Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

diff --git a/man7/uri.7 b/man7/uri.7
index d0280dc2d..9ef20f8d4 100644
--- a/man7/uri.7
+++ b/man7/uri.7
@@ -514,7 +514,8 @@ path, but the two are equivalent for an HTTP URL.
 .PP
 For URIs which must handle characters outside the US ASCII character set,
 the HTML 4.01 specification (section B.2) and
-IETF RFC\~7595 (section 3.6) recommend the following approach:
+IETF RFC\~3986 (last paragraph of section 2.5)
+recommend the following approach:
 .IP 1. 4
 translate the character sequences into UTF-8 (IETF RFC\~3629)\(emsee
 .BR utf\-8 (7)\(emand


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
