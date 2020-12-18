Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6D0A72DE13F
	for <lists+linux-man@lfdr.de>; Fri, 18 Dec 2020 11:43:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733166AbgLRKnc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Dec 2020 05:43:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728248AbgLRKnc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Dec 2020 05:43:32 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7045EC0617A7
        for <linux-man@vger.kernel.org>; Fri, 18 Dec 2020 02:42:51 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id i9so1628821wrc.4
        for <linux-man@vger.kernel.org>; Fri, 18 Dec 2020 02:42:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:references:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=C7Pircx+KXcK6zkuz9WQ0wrPyIlrxZ6ddDM/TlPxGas=;
        b=USV3FgdzvcKeYw9Ckf3ODKPX0tRNqxTb4yoZj614uLXhhb2DWuMWgcbFcwDHgD/Dkd
         W7kn5IId715cwHYAo8ORcT38GmlA5SRQtllitnznJqh4a8EIWVYTs37a8P0pqcx1ZhNI
         G2OT0mrOrtNrHwpvYunpSbxxkyFNgNLHZ2uHl/kAJ78ycn9iz9+fv2bp0Y3cSL29PvQS
         9uyXk6RZ3f/gruCoKel8/GtMfIBo9L+5LBBJHM8oslnVS614aiGHN8j1yF4k6lG1h4jB
         Ekn1V2VnDvtdctqfDyCzjwdXkr8PO71/OB0UuIdBMXTrn0nKngOXk9xIhLzf/wLBs4nq
         RJFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=C7Pircx+KXcK6zkuz9WQ0wrPyIlrxZ6ddDM/TlPxGas=;
        b=g0iA34sbL3nJhthQUVCEwaCIXhlJBwqO+01sBccWxq5QcUWjcI/GuSRENcTbaJjRhw
         WJla3vRxp6+KhgyyHpV5UTNWH6oHMt8KiLRCPDKaenh9yYpRZp/SYFZiGukPzBYm8pk8
         hWyP2dCPQTvhiTT4DnZ+qIOxkNvShnUQ+dE+OdLrp+qvN+HrVqzu7Am350WEq+dgQMDE
         4N/BQhqt906+J1Gi2EtA1fcTbX91j4aaB+lI3OinjTk+MG9er0PL1q5+W+eZUDg4Xy1b
         /ffKn93JX8i2Jxn3Wjuhrr9FdcsDND/+Uk5FkDCf6SoInUf8kqlKOkz8ntS1SrBUS4OV
         t9rA==
X-Gm-Message-State: AOAM5306CY28RBCizT9BSN/r576PgYUMlyY6jdYpdb1FBjGdWENsAT/q
        lPsFOmm85cuR/uC/MkZ0EsfnlMrCerU=
X-Google-Smtp-Source: ABdhPJyjV+QVp2QSRGFS6ypbqNGlIZ8MAe4zHVSHAOdYIn0+T4SVIPFbm9cZcN+C6Ure2qbh+rRmLg==
X-Received: by 2002:adf:e990:: with SMTP id h16mr3748171wrm.307.1608288170180;
        Fri, 18 Dec 2020 02:42:50 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id h4sm12430627wrt.65.2020.12.18.02.42.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Dec 2020 02:42:49 -0800 (PST)
Subject: Ping: cacheflush.2
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     Martin Sebor <msebor@gmail.com>,
        Heinrich Schuchardt <xypron.glpk@gmx.de>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        gcc@gcc.gnu.org, Dave Martin <Dave.Martin@arm.com>,
        cfe-users@lists.llvm.org, linux-man@vger.kernel.org
References: <794cf0d1-d528-4b5a-3ce0-b1b5f588dc6d@gmx.de>
 <ca265930-00d7-44f5-b2dd-535a5cf0310a@gmail.com>
 <5257a883-29f0-6eaa-5708-d1f47356a57a@gmx.de>
 <90152ea6-f2eb-b08f-7269-f8266ffb15d1@gmail.com>
 <b18b7e3d-d6a2-dba6-adad-713a171044c0@gmail.com>
 <52a37c46-3488-957c-fc50-6caca177cb3c@gmail.com>
 <64bd5678-4c25-668d-39b2-31c825253d1b@gmail.com>
Message-ID: <6ed5bc42-1d18-e963-fecc-cc9b1bfb2a2c@gmail.com>
Date:   Fri, 18 Dec 2020 11:42:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <64bd5678-4c25-668d-39b2-31c825253d1b@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Martin,

I sent you an email, but I received a "delivery failure".
If you're reading this from a list, could you answer, please?

Thanks,

Alex

On 12/14/20 11:34 PM, Alejandro Colomar (man-pages) wrote:
> Hello Martin,
> 
> Thanks for the correction!
> Then the prototypes that changes from 'char *' to 'void *' in r269082
> were not exposed to the user, right?
> I guess then those are just internal implementation where GCC did use
> 'char *'.
> 
> Where is the actual prototype exposed to the user declared?
> 
> Thanks,
> 
> Alex
> 
> P.S.: Michael, wait for a patch revision (v6).
> 
> On 12/14/20 10:13 PM, Martin Sebor wrote:
>> On 12/11/20 11:14 AM, Alejandro Colomar (man-pages) via Gcc wrote:
>>> It looks like GCC recently moved from 'char *' to 'void *'.
>>> This SO question[1] (4 years ago) quotes the GCC docs
>>> and they had 'char *'.
>>
>> __builtin___clear_cache in GCC has always been declared to take
>> void*.  The signature in the manual was recently corrected to match
>> the implementation, i.e., from char* to void*, in r269082.
>>
>> Martin
>>
>>> Maybe Clang hasn't noticed the change.
>>> I'll report a bug.
>>>
>>> [1]: https://stackoverflow.com/q/35741814/6872717
>>>
>>> On 12/9/20 8:15 PM, Alejandro Colomar (man-pages) wrote:
>>>> Hi Heinrich,
>>>>
>>>> It looks like a bug (or at least an undocumented divergence from GCC) in
>>>> Clang/LLVM.  Or I couldn't find the documentation for it.
>>>>
>>>> Clang uses 'char *':
>>>> https://github.com/llvm/llvm-project/blob/7faf62a80bfc3a9dfe34133681fcc31f8e8d658b/clang/include/clang/Basic/Builtins.def#L583
>>>>
>>>>
>>>> GCC uses 'void *':
>>>> https://gcc.gnu.org/onlinedocs/gcc/Other-Builtins.html
>>>>
>>>> I CCd Clang and GCC lists; maybe they know about that divergence.
>>>>
>>>> Cheers,
>>>>
>>>> Alex
>>>>
>>>> On 12/9/20 7:48 PM, Heinrich Schuchardt wrote:
>>>>> On 12/9/20 7:34 PM, Alejandro Colomar (man-pages) wrote:
>>>>>> Hi Heinrich & Michael,
>>>>>>
>>>>>> What about the following?:
>>>>>>
>>>>>> [
>>>>>> NOTES
>>>>>>          GCC provides a similar function, which may be useful on 
>>>>>> archi‐
>>>>>>          tectures that lack this system call:
>>>>>>
>>>>>>              void __builtin___clear_cache(void *begin, void *end);
>>>>>> ]
>>>>>
>>>>> I just checked building with Clang/LLVM. There the arguments are of
>>>>> type
>>>>> (char *). See the following error output:
>>>>>
>>>>> +arch/sandbox/cpu/cache.c:19:26: error: passing 'uint8_t *' (aka
>>>>> 'unsigned char *') to parameter of type 'char *' converts between
>>>>> pointers to integer types with different sign [-Werror,-Wpointer-sign]
>>>>> +        __builtin___clear_cache(state->ram_buf,
>>>>> +                                ^~~~~~~~~~~~~~
>>>>> +arch/sandbox/cpu/cache.c:20:12: error: passing 'uint8_t *' (aka
>>>>> 'unsigned char *') to parameter of type 'char *' converts between
>>>>> pointers to integer types with different sign [-Werror,-Wpointer-sign]
>>>>> +                                state->ram_buf + state->ram_size);
>>>>> +                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>>>>
>>>>> Best regards
>>>>>
>>>>> Heinrich
>>>>>
>>>>>>
>>>>>> Cheers,
>>>>>>
>>>>>> Alex
>>>>>>
>>>>>> On 12/9/20 7:04 PM, Heinrich Schuchardt wrote:
>>>>>>> Hello Michael,
>>>>>>>
>>>>>>> function cacheflush() does not exist on many architectures.
>>>>>>>
>>>>>>> It would have saved me a lot of time if the man-page had referenced
>>>>>>> GCC's
>>>>>>>
>>>>>>> void __builtin___clear_cache(void *begin, void *end)
>>>>>>>
>>>>>>> Maybe you can add it to NOTES.
>>>>>>>
>>>>>>> Best regards
>>>>>>>
>>>>>>> heirnich
>>>>>>
>>>>>
>>>>
>>>
>>
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
