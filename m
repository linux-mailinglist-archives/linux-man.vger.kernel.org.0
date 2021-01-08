Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 00A5E2EEF93
	for <lists+linux-man@lfdr.de>; Fri,  8 Jan 2021 10:28:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727626AbhAHJ1j (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 8 Jan 2021 04:27:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36194 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727416AbhAHJ1i (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 8 Jan 2021 04:27:38 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06D92C0612F5
        for <linux-man@vger.kernel.org>; Fri,  8 Jan 2021 01:26:58 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id k10so7249763wmi.3
        for <linux-man@vger.kernel.org>; Fri, 08 Jan 2021 01:26:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=CFdwVea+ihx0BHWTISyp07mzlALa69rQKRy3GZteFtM=;
        b=jVrokzFojcLmaN//o0weiosy0uVWYfzRmvSp1dCogBh1wSR7NBrt1E5gr1I1tYvw4w
         ZCsslU0xNiDymPtlh2jTYrLYTi3W2A1Yl8BGPGAOGV7NBTrtAfZWypCsicNtQ4giD6Xp
         xSO/gg6rqwcpeNr84blSWFtekVx1CVsEepo0LQ1JTlycUuglxGQ4X+XQ/yoRGctBniNE
         q/tI880zSGGLB7vJyTl4AZtOU1EDujTN0qerjcE9HYtoPO6Xz99+ceGNLoyjmsAS7GBr
         92+9aziU9u0Hq/5n/vn9tnFxRtSTq3nuL5kVVjb4Ra1VcLreTuAOCWD/4HZhvrc/EtX+
         4g1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=CFdwVea+ihx0BHWTISyp07mzlALa69rQKRy3GZteFtM=;
        b=AJdxj78JPTij7iqMZ2upUgpHoMNjqjXr0ttuQHeaZS4lSJdaJX2mWKscnq8/eAIXV9
         Qlhydb1YVO4nVoOAEnjFusiUNuZ67v+ie+k6of8fpS5hySFICYBJNBnA35d8k+Sq5KCD
         NJWQ0Fee9oB695/y/sOFJ4bVbXznBOn5Jyi4xc0O+BP4UXvn8lvjnoARpHqST6D3wqlT
         hK+1hBUsbi7VQurZJHiIQWG0obugFSlT4L6gQV04oBgkwhJtkssVrivWYQZq572qL6Pj
         BcID0cjnwfTmXnfFv7Il06ZvaSDUmVHIoO9DJTpXewQWJsClITvB4wZSQG8qICmteVGZ
         d6Mg==
X-Gm-Message-State: AOAM533bVbtmH/HugobskTJqVgHfIG1wnNRsipA30pj9mkI826TBQDI+
        EfXUZF4EDmMXqb/qFtepjQvUJoWNaJQ=
X-Google-Smtp-Source: ABdhPJxnAqsam/qyA6h7MV5VccLiPLqkWeYpOPkxf7dBSrkFa4PGyMxsfT1f2he46rHwP1G93gF0pg==
X-Received: by 2002:a7b:c246:: with SMTP id b6mr2263705wmj.154.1610098016519;
        Fri, 08 Jan 2021 01:26:56 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id 67sm12227993wmb.47.2021.01.08.01.26.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Jan 2021 01:26:55 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: setlocale.3: Wording issues
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <e198d995-5a85-bda1-1a82-57260b9d4efe@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <25b829b8-ad0e-06f0-c97a-31277f71f1ef@gmail.com>
Date:   Fri, 8 Jan 2021 10:26:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <e198d995-5a85-bda1-1a82-57260b9d4efe@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 1/7/21 7:32 PM, Alejandro Colomar (man-pages) wrote:
> Hi Michael,
> 
> I don't understand what this paragraph means, I think it needs some wfix.
> 
> Around setlocale.3:179:
> [
>        On  startup  of  the main program, the portable "C" locale is
>        selected as default.  A program may be made portable  to  all
>        locales by calling:
> 
>            setlocale(LC_ALL, "");
> 
>        after  program  initialization,  by using the values returned
>        from a localeconv(3) call for  locale-dependent  information,
>        by  using the multibyte and wide character functions for text
>        processing if MB_CUR_MAX > 1, and by  using  strcoll(3),  wc‐
>        scoll(3) or strxfrm(3), wcsxfrm(3) to compare strings.
> 
> <<<Especially these last 2 lines
> 
> ]

I see what you mean. I had to read that a few times to parse it.
It looks like the text was added in 1999. I think the following
clarifies and preserves the meaning:

[[
       On startup of the main program, the portable "C" locale is select‐
       ed  as  default.  A program may be made portable to all locales by
       calling:

           setlocale(LC_ALL, "");

       after program initialization, and then:

       (a) using the values returned from a localeconv(3)  call  for  lo‐
           cale-dependent information;

       (c) using the multibyte and wide character functions for text pro‐
           cessing if MB_CUR_MAX > 1; and

       (c) using strcoll(3), wcscoll(3) or strxfrm(3), wcsxfrm(3) to com‐
           pare strings.
]]

What do you think?

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
