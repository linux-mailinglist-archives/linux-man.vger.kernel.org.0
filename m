Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 147402EF11C
	for <lists+linux-man@lfdr.de>; Fri,  8 Jan 2021 12:14:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726215AbhAHLOx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 8 Jan 2021 06:14:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725806AbhAHLOx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 8 Jan 2021 06:14:53 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDB04C0612F4
        for <linux-man@vger.kernel.org>; Fri,  8 Jan 2021 03:14:12 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id t16so8637633wra.3
        for <linux-man@vger.kernel.org>; Fri, 08 Jan 2021 03:14:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=gke7z/ekJJV/M23wC+jOPEo2AOKjiA8uBxil9lsIewo=;
        b=HeJPWudWHf7ZlDaR+EreQOqA4c9wITxNA7cI0Q90ilS5tHPJAaLp5lPTOR8AlkryCZ
         nVNgteBuSeRF/jUR0MJzfQMMZn6uKkKyOl4JiuLfoWoG8VGnCsViWCWDN8/275kDiime
         kpTQ2aJdyDyyqJay8dVqrYSYA1EhIcF4q9T2jZjmS3mF3gUrLbOmTtD/QGi5ZgyQCdAt
         w67gKq/JkxUrzYPMjGnLWXxZaGqPhQ986H08vmzF3qvh0ZE8Nze3qXZ0pKhU9BRSDYBQ
         6sjgeYpHnzrn0k2qaNOL6NSXYwjUOkpGRiUPn2+05mVPG9/navWfMOye+Wqcr/lL8L09
         Kdjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=gke7z/ekJJV/M23wC+jOPEo2AOKjiA8uBxil9lsIewo=;
        b=UPzTUAPuH30ajSo2D0Ljplj0TyFtNdGvwO64Uby+udDbw18SXYHri29KhW7CQVvfQf
         NEh1nmpAoWw2dHXJasWu8GAcsvYOgTwlEGyZ6f+TsnlufLvU2IbRZZiVi8KhGDi6qKP4
         1xJiowEsplAIbPhv29LdhFoaB4Qr6bS1BzOFl+CoHEoors/QcDE89x/q1EETZse7wTFG
         b3FuMme+niX+kMtNSQx/L+aY01kQNXrsf/D+N2c+UrGm8wcs6/gpcKEC0WY2GRKVlJMB
         scVmA+VYaF9CNAbu2HX+6E8jmDJU7+eM37zQ91Eec7wOh4K1gcKDzAC725IbOz0pv/uE
         VI0g==
X-Gm-Message-State: AOAM530cuPANHZeWhocwAIJMq7UsmG7juDRXXcpmctDjxD1/w5knlKDT
        lAmXXxOHZFYSjdsQawHNUCgkqJtYpTA=
X-Google-Smtp-Source: ABdhPJxK7Ts8xc+woweAK11oagae6o1vuaaGQeGJX+NQ1vo4CT5fmZxxIbPudqDzx9gSP9weKfNuVw==
X-Received: by 2002:adf:b194:: with SMTP id q20mr3148996wra.199.1610104451633;
        Fri, 08 Jan 2021 03:14:11 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id 94sm13398016wrq.22.2021.01.08.03.14.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Jan 2021 03:14:11 -0800 (PST)
Subject: Re: Further inconsistencies in FTM
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <87f6ca4b-7f4c-20ed-cb94-3f4f88fc5077@gmail.com>
 <b65f22fe-d30d-c4d3-77e5-29ca7f67d88f@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <cc86ec78-65bd-202f-2704-e551c0442fb9@gmail.com>
Date:   Fri, 8 Jan 2021 12:14:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <b65f22fe-d30d-c4d3-77e5-29ca7f67d88f@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 1/8/21 11:50 AM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On 1/7/21 6:04 PM, Alejandro Colomar (man-pages) wrote:
>> Hi Michael,
>>
>> [[
>> SYNOPSIS
>>        #include <stdlib.h>
>>
>>        int clearenv(void);
>>
>>    Feature   Test   Macro   Requirements  for  glibc  (see  fea‐
>>    ture_test_macros(7)):
>>
>>        clearenv():
>>            /* Glibc since 2.19: */ _DEFAULT_SOURCE
>>                || /* Glibc <= 2.19: */ _SVID_SOURCE || _BSD_SOURCE
>>
>> ]]
>>
>> [[
>> SYNOPSIS
>>        #include <time.h>
>>
>>        int dysize(int year);
>>
>>    Feature   Test   Macro   Requirements  for  glibc  (see  fea‐
>>    ture_test_macros(7)):
>>
>>        dysize():
>>            Since glibc 2.19:
>>                _DEFAULT_SOURCE
>>            Glibc 2.19 and earlier:
>>                _BSD_SOURCE || _SVID_SOURCE
>>
>> ]]
>>
>> Which one do you prefer?
> 
> Probably the latter, since it is a little easier to read.
> 
> The former form has crept in as a result of my attempts
> to keep the FTM info somewhat compact. See, for example:
> 
>        chroot():
>            Since glibc 2.2.2:
>                _XOPEN_SOURCE && ! (_POSIX_C_SOURCE >= 200112L)
>                    || /* Since glibc 2.20: */ _DEFAULT_SOURCE
>                    || /* Glibc <= 2.19: */ _BSD_SOURCE
>            Before glibc 2.2.2:
>                none
> 
> 
>        waitid():
>            Since glibc 2.26:
>                _XOPEN_SOURCE >= 500 || _POSIX_C_SOURCE >= 200809L
>            Glibc 2.25 and earlier:
>                _XOPEN_SOURCE
>                    || /* Since glibc 2.12: */ _POSIX_C_SOURCE >= 200809L
>                    || /* Glibc <= 2.19: */ _BSD_SOURCE
> 
> The latter could be rewritten (I hope I got the expansion right) 
> as:
>        waitid():
>            Since glibc 2.26:
>                _XOPEN_SOURCE >= 500 || _POSIX_C_SOURCE >= 200809L
>            Glibc 2.20 to 2.25
>                _XOPEN_SOURCE ||  _POSIX_C_SOURCE >= 200809L
>            Glibc 2.12 to 2.19
>                _XOPEN_SOURCE ||  _POSIX_C_SOURCE >= 200809L
>                    || _BSD_SOURCE
>            Glibc 2.11 and earlier:
>                _XOPEN_SOURCE || _BSD_SOURCE
> 
>  
> That's more verbose, but perhaps also easier to read, now that
> I look at it.
> 
> I'm not sure whether you are thinking of doing some global edit,
> but if you are, perhaps we need to discuss this more.

Well, I'm not thinking of a global edit right now (we've had enough of
those for now I think :), but more as something to think for the future.
So yes, a discussion about if we prefer to have a single way of
expressing FTM or if there are times when the other way is better would
be good.
Your thoughts?

Thanks,

Alex

> 
> Thanks,
> 
> Michael
> 
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
