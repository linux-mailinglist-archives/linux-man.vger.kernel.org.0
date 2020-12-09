Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 60E562D49F1
	for <lists+linux-man@lfdr.de>; Wed,  9 Dec 2020 20:17:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387521AbgLITQJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Dec 2020 14:16:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52512 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387426AbgLITQB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Dec 2020 14:16:01 -0500
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2976BC0613D6
        for <linux-man@vger.kernel.org>; Wed,  9 Dec 2020 11:15:21 -0800 (PST)
Received: by mail-wm1-x341.google.com with SMTP id x22so2505370wmc.5
        for <linux-man@vger.kernel.org>; Wed, 09 Dec 2020 11:15:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=1rZt/k3t9CzXf4RKhZkrfsXMIKx82mw0UDClNj3a1sc=;
        b=PaflzcjsLdj8g0xw9ngvZJg8jp2mjX4hkeVYyd5yz+Ps/QLe8Bq5VuZi5kHZu7N2xb
         q5PICbWjmQQ1HVEKNJQwPECXp5QGrQZYJjTZQM0CZH1JtnNrijrqlp8Zud20aur16iXL
         34zPuVl5l7Hk1ijT7bKg7YKiTFe15QCg4wFIX6wn+ePoS3CdlAWCr5FylPRQHZgUgZ4Z
         W+P9O8lK9LxxezQoBL9fXH7e1jbzBEf96rXtVUZDAS+MaOVCeCXxgqMc850iBzt7eAG6
         KgDelvHCve3aDO4TG9NnRUVVndDBYuNVTDOf95otJRFOzeuyrcHnFXkcKBAJVMvNS92F
         vm6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=1rZt/k3t9CzXf4RKhZkrfsXMIKx82mw0UDClNj3a1sc=;
        b=mJbXufHcJGgm07QNgUD/O8eskpKXQdhPtIBMUw/7d3LP4Yg40spDWY5pl/fH/eH0l3
         SM8k8kmiKPzBh/DX3aLc/SSjkhbHkyDuRgDJJgKlFTZBKG5C7vhShr2YfnbuWN7okD5H
         8ZU4vWDMs7vmISj+yELUI7Jz2SFQZIYIW0NK4JZLosSBvFP0iVSY2bGzFnu3yKD3UIzt
         WTp+XcKS/e/Ym/jlMya0/snXPRh4fn1Ejg0+CIhV3HswqKf1hLHs4BgREEoQ43L129oD
         S5gIacwhAy3+oSlMylsVS6XVWrv3oZ8UYCS2VqraMXyACiU/wLBwvcIeBx2W0kI8IJzV
         dnGQ==
X-Gm-Message-State: AOAM530XxAkqJZMZxrj7G3DpvahhEeg4D9QT8dq3Gt6EKh05PPb1MDX0
        Lh4f6ic2TG8a0bIWvwrwm7U=
X-Google-Smtp-Source: ABdhPJw6ILk2qBb3ziNNLB0at17WJU4kbR1Gg7f558vkUcXkUTaSUgJ+bj6gtBwwMR7a1ZfFUwQ/Eg==
X-Received: by 2002:a7b:c157:: with SMTP id z23mr4312713wmi.35.1607541319960;
        Wed, 09 Dec 2020 11:15:19 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id u66sm5542098wmg.30.2020.12.09.11.15.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Dec 2020 11:15:19 -0800 (PST)
Subject: Re: cacheflush.2
To:     Heinrich Schuchardt <xypron.glpk@gmx.de>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, gcc@gcc.gnu.org,
        cfe-users@lists.llvm.org
References: <794cf0d1-d528-4b5a-3ce0-b1b5f588dc6d@gmx.de>
 <ca265930-00d7-44f5-b2dd-535a5cf0310a@gmail.com>
 <5257a883-29f0-6eaa-5708-d1f47356a57a@gmx.de>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <90152ea6-f2eb-b08f-7269-f8266ffb15d1@gmail.com>
Date:   Wed, 9 Dec 2020 20:15:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <5257a883-29f0-6eaa-5708-d1f47356a57a@gmx.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Heinrich,

It looks like a bug (or at least an undocumented divergence from GCC) in
Clang/LLVM.  Or I couldn't find the documentation for it.

Clang uses 'char *':
https://github.com/llvm/llvm-project/blob/7faf62a80bfc3a9dfe34133681fcc31f8e8d658b/clang/include/clang/Basic/Builtins.def#L583

GCC uses 'void *':
https://gcc.gnu.org/onlinedocs/gcc/Other-Builtins.html

I CCd Clang and GCC lists; maybe they know about that divergence.

Cheers,

Alex

On 12/9/20 7:48 PM, Heinrich Schuchardt wrote:
> On 12/9/20 7:34 PM, Alejandro Colomar (man-pages) wrote:
>> Hi Heinrich & Michael,
>>
>> What about the following?:
>>
>> [
>> NOTES
>>         GCC provides a similar function, which may be useful on  archi‐
>>         tectures that lack this system call:
>>
>>             void __builtin___clear_cache(void *begin, void *end);
>> ]
> 
> I just checked building with Clang/LLVM. There the arguments are of type
> (char *). See the following error output:
> 
> +arch/sandbox/cpu/cache.c:19:26: error: passing 'uint8_t *' (aka
> 'unsigned char *') to parameter of type 'char *' converts between
> pointers to integer types with different sign [-Werror,-Wpointer-sign]
> +        __builtin___clear_cache(state->ram_buf,
> +                                ^~~~~~~~~~~~~~
> +arch/sandbox/cpu/cache.c:20:12: error: passing 'uint8_t *' (aka
> 'unsigned char *') to parameter of type 'char *' converts between
> pointers to integer types with different sign [-Werror,-Wpointer-sign]
> +                                state->ram_buf + state->ram_size);
> +                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> Best regards
> 
> Heinrich
> 
>>
>> Cheers,
>>
>> Alex
>>
>> On 12/9/20 7:04 PM, Heinrich Schuchardt wrote:
>>> Hello Michael,
>>>
>>> function cacheflush() does not exist on many architectures.
>>>
>>> It would have saved me a lot of time if the man-page had referenced
>>> GCC's
>>>
>>> void __builtin___clear_cache(void *begin, void *end)
>>>
>>> Maybe you can add it to NOTES.
>>>
>>> Best regards
>>>
>>> heirnich
>>
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es
