Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 375232EF18B
	for <lists+linux-man@lfdr.de>; Fri,  8 Jan 2021 12:43:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726220AbhAHLmi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 8 Jan 2021 06:42:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726205AbhAHLmi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 8 Jan 2021 06:42:38 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5CCFC0612F4
        for <linux-man@vger.kernel.org>; Fri,  8 Jan 2021 03:41:57 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id d13so8646992wrc.13
        for <linux-man@vger.kernel.org>; Fri, 08 Jan 2021 03:41:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=F34QIjl/xSMbriw112a5lowJUvYMeCDOAFF9477DNCc=;
        b=XhyicnMLAlRbOdD1bM4/groeLuqOeT9Gw9e7VkIwKlksPvutWYmbUV0DjJyBB3WCT3
         ZAeqV3CDMdd50F3vNNl3sSxba6LguwiJ4JItaAR6JLkQ/tUzNo2xCRyVSx7XdMKuA40X
         cGKv7oJTeRts3YlzsFg0TTmbkaOe64pJnrPrOR7n/VAmXbJvmOrLe9SqXaj513znI3/h
         aE/uO0yv0fdIYKoxHB2cQprTYPKncuCQ38MdZKOxjY4QNoFkIaUvFatJy1dWa5fdFCdi
         pMbfIxWPjGmcBb1BhlQj5uBX7d+eqLCsqEeOsE7BMw/9mnEE4nOVFCRmSOfzv4YfheND
         X+5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=F34QIjl/xSMbriw112a5lowJUvYMeCDOAFF9477DNCc=;
        b=jR1bAfJbZZH5YR2taZjeWkd4VU95jd29UY7D0Q0zBXO2r8lYQMhe20iO5830c0HTHN
         5/nKE7jgSIGcuClK7PGZT9hZghwy7xwskrYL2S8+kTmSdyCTBXmjt0YX5JRCUQnwnHKh
         qOxUsRypchF8IA7W9oBHuIEY4QMYZHxp4KpPrzQRfg8qQ3RqAg1UNVOOOhieQVgAMwFK
         Qf6QYNQQTLBCk3D6mJNgNhekGLbKl/5RlQ9KD36cJcIjcTP1BesZUhNaWYvvzdcDYKWH
         76hhH88kF9R1LEVYEztv57C63Ib6WSsBSOTS91PP19KNcDg8iO5DBivmCzka4Zkw15PH
         HFNg==
X-Gm-Message-State: AOAM532NizjdZZ3Oqn+MnA0vNRYIpK0cNWEmnmwkzu6WrOFSWzIOId06
        GKqVDpb5gNyDvoU+k+YnuTNYF/F4CNo=
X-Google-Smtp-Source: ABdhPJxaMjj+HCc+LJFF96xKSX761Ex2Y4m+EqmRQPCUS40tb9gQKeOufucM1njHghDyoiA8TPC+eQ==
X-Received: by 2002:a5d:4ccb:: with SMTP id c11mr3128645wrt.324.1610106116547;
        Fri, 08 Jan 2021 03:41:56 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id s3sm11145921wmc.44.2021.01.08.03.41.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Jan 2021 03:41:56 -0800 (PST)
Subject: Re: setlocale.3: Wording issues
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <e198d995-5a85-bda1-1a82-57260b9d4efe@gmail.com>
 <25b829b8-ad0e-06f0-c97a-31277f71f1ef@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <ed25f72d-e88e-e2c5-66de-3cf70c0cdfc5@gmail.com>
Date:   Fri, 8 Jan 2021 12:41:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <25b829b8-ad0e-06f0-c97a-31277f71f1ef@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 1/8/21 10:26 AM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On 1/7/21 7:32 PM, Alejandro Colomar (man-pages) wrote:
>> Hi Michael,
>>
>> I don't understand what this paragraph means, I think it needs some wfix.
>>
>> Around setlocale.3:179:
>> [
>>        On  startup  of  the main program, the portable "C" locale is
>>        selected as default.  A program may be made portable  to  all
>>        locales by calling:
>>
>>            setlocale(LC_ALL, "");
>>
>>        after  program  initialization,  by using the values returned
>>        from a localeconv(3) call for  locale-dependent  information,
>>        by  using the multibyte and wide character functions for text
>>        processing if MB_CUR_MAX > 1, and by  using  strcoll(3),  wc‐
>>        scoll(3) or strxfrm(3), wcsxfrm(3) to compare strings.
>>
>> <<<Especially these last 2 lines
>>
>> ]
> 
> I see what you mean. I had to read that a few times to parse it.
> It looks like the text was added in 1999. I think the following
> clarifies and preserves the meaning:
> 
> [[
>        On startup of the main program, the portable "C" locale is select‐
>        ed  as  default.  A program may be made portable to all locales by
>        calling:
> 
>            setlocale(LC_ALL, "");
> 
>        after program initialization, and then:
> 
>        (a) using the values returned from a localeconv(3)  call  for  lo‐
>            cale-dependent information;
> 
>        (c) using the multibyte and wide character functions for text pro‐
>            cessing if MB_CUR_MAX > 1; and
> 
>        (c) using strcoll(3), wcscoll(3) or strxfrm(3), wcsxfrm(3) to com‐
>            pare strings.
> ]]
> 
> What do you think?

Much better.

But I still don't get why [A, B or  C, D].  What does it mean?

Thanks,

Alex


> 
> Thanks,
> 
> Michael
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
