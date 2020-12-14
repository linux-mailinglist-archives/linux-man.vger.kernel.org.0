Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 766DF2DA270
	for <lists+linux-man@lfdr.de>; Mon, 14 Dec 2020 22:15:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388560AbgLNVOx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Dec 2020 16:14:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728461AbgLNVOl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Dec 2020 16:14:41 -0500
Received: from mail-qv1-xf30.google.com (mail-qv1-xf30.google.com [IPv6:2607:f8b0:4864:20::f30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA1F9C0613D3
        for <linux-man@vger.kernel.org>; Mon, 14 Dec 2020 13:14:01 -0800 (PST)
Received: by mail-qv1-xf30.google.com with SMTP id s6so8510197qvn.6
        for <linux-man@vger.kernel.org>; Mon, 14 Dec 2020 13:14:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=5f6MbzMS1AYUHWx2y4T/TE0uixQGO7cdlupZZpVKi74=;
        b=EaxSOVv8SnKkP23Y0vzwURyObuHmTqwQzuqeBemPc8ZWeyv2HXdk07M4iHLissFaym
         rOSaIyFG4Ixp2ik680xcx2UJaE/IyGn5mWqxsbf/13R/XiZGKTH45NS8dY/7AgHxP+9e
         /V3hCikFTxN1V5Ffj0t/TqemlGHkXX5fVvAdSdK9mkA8s/nsyFzmp14MdxhghVYbbtE+
         VDNx8VVFcJ32BQd54k9IvIu0dyTDQFHRqMud0yYF/Il5svBTlwodFvjYw4KG9KMX/R6r
         vQysKwCDlSDXuTrmjkjW0ndh7DwmYQNT1HdSHnw82k63AyenrHZYjnMpuHdrG1Ha7fcM
         Le5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=5f6MbzMS1AYUHWx2y4T/TE0uixQGO7cdlupZZpVKi74=;
        b=gGe0IXmNZNNpUogwLJ5Jso46wioTxIOE1bHmKJji5KReDDlbJ1244v1riChRxVAh8D
         0txqwy+lHNoOAdwQ+Lg3Jcp2gpinu79Eyz22DmuIQDdbwgvioAgK68EWuAxtbtrm/REO
         inqZq5+FrMMOr+yHtaVEnSdVi0bvIHT5Q/iRjdYGS+Wix9Up4kDnLRqITi+usyicXvA5
         Gt1eHJVonQ0BeHPF0DV0lFO8sggn2wPfWZwJdrf/AHrbOybayJsaJ7nPmwPFtfwImsAQ
         UjS0/XNLJtiYBIKpos+CqURdYDoyjVSGUajELVt9ydjkR625xXHz/dndqPgNsna7mP0a
         4VpQ==
X-Gm-Message-State: AOAM531l7whrMmsXWcM7XnvlfW5KEFdYN8QDUsGpQRD4/objShhHsGTU
        J72jocugLS6VRrHFlkrcFtY=
X-Google-Smtp-Source: ABdhPJxyKmFhLXYHFwbTsPgsChlxQYU/mChM3ozwDPvg4CjVkX7nP6ukSGkFjgZn55IGaFGwz9Ut4A==
X-Received: by 2002:ad4:45a9:: with SMTP id y9mr34688031qvu.15.1607980440850;
        Mon, 14 Dec 2020 13:14:00 -0800 (PST)
Received: from [192.168.0.41] (174-16-97-231.hlrn.qwest.net. [174.16.97.231])
        by smtp.gmail.com with ESMTPSA id j124sm15825817qkf.113.2020.12.14.13.13.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Dec 2020 13:14:00 -0800 (PST)
Subject: Re: cacheflush.2
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        Heinrich Schuchardt <xypron.glpk@gmx.de>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Dave Martin <Dave.Martin@arm.com>,
        cfe-users@lists.llvm.org, gcc@gcc.gnu.org
References: <794cf0d1-d528-4b5a-3ce0-b1b5f588dc6d@gmx.de>
 <ca265930-00d7-44f5-b2dd-535a5cf0310a@gmail.com>
 <5257a883-29f0-6eaa-5708-d1f47356a57a@gmx.de>
 <90152ea6-f2eb-b08f-7269-f8266ffb15d1@gmail.com>
 <b18b7e3d-d6a2-dba6-adad-713a171044c0@gmail.com>
From:   Martin Sebor <msebor@gmail.com>
Message-ID: <52a37c46-3488-957c-fc50-6caca177cb3c@gmail.com>
Date:   Mon, 14 Dec 2020 14:13:58 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <b18b7e3d-d6a2-dba6-adad-713a171044c0@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 12/11/20 11:14 AM, Alejandro Colomar (man-pages) via Gcc wrote:
> It looks like GCC recently moved from 'char *' to 'void *'.
> This SO question[1] (4 years ago) quotes the GCC docs
> and they had 'char *'.

__builtin___clear_cache in GCC has always been declared to take
void*.  The signature in the manual was recently corrected to match
the implementation, i.e., from char* to void*, in r269082.

Martin

> Maybe Clang hasn't noticed the change.
> I'll report a bug.
> 
> [1]: https://stackoverflow.com/q/35741814/6872717
> 
> On 12/9/20 8:15 PM, Alejandro Colomar (man-pages) wrote:
>> Hi Heinrich,
>>
>> It looks like a bug (or at least an undocumented divergence from GCC) in
>> Clang/LLVM.  Or I couldn't find the documentation for it.
>>
>> Clang uses 'char *':
>> https://github.com/llvm/llvm-project/blob/7faf62a80bfc3a9dfe34133681fcc31f8e8d658b/clang/include/clang/Basic/Builtins.def#L583
>>
>> GCC uses 'void *':
>> https://gcc.gnu.org/onlinedocs/gcc/Other-Builtins.html
>>
>> I CCd Clang and GCC lists; maybe they know about that divergence.
>>
>> Cheers,
>>
>> Alex
>>
>> On 12/9/20 7:48 PM, Heinrich Schuchardt wrote:
>>> On 12/9/20 7:34 PM, Alejandro Colomar (man-pages) wrote:
>>>> Hi Heinrich & Michael,
>>>>
>>>> What about the following?:
>>>>
>>>> [
>>>> NOTES
>>>>          GCC provides a similar function, which may be useful on  archi‐
>>>>          tectures that lack this system call:
>>>>
>>>>              void __builtin___clear_cache(void *begin, void *end);
>>>> ]
>>>
>>> I just checked building with Clang/LLVM. There the arguments are of type
>>> (char *). See the following error output:
>>>
>>> +arch/sandbox/cpu/cache.c:19:26: error: passing 'uint8_t *' (aka
>>> 'unsigned char *') to parameter of type 'char *' converts between
>>> pointers to integer types with different sign [-Werror,-Wpointer-sign]
>>> +        __builtin___clear_cache(state->ram_buf,
>>> +                                ^~~~~~~~~~~~~~
>>> +arch/sandbox/cpu/cache.c:20:12: error: passing 'uint8_t *' (aka
>>> 'unsigned char *') to parameter of type 'char *' converts between
>>> pointers to integer types with different sign [-Werror,-Wpointer-sign]
>>> +                                state->ram_buf + state->ram_size);
>>> +                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>>
>>> Best regards
>>>
>>> Heinrich
>>>
>>>>
>>>> Cheers,
>>>>
>>>> Alex
>>>>
>>>> On 12/9/20 7:04 PM, Heinrich Schuchardt wrote:
>>>>> Hello Michael,
>>>>>
>>>>> function cacheflush() does not exist on many architectures.
>>>>>
>>>>> It would have saved me a lot of time if the man-page had referenced
>>>>> GCC's
>>>>>
>>>>> void __builtin___clear_cache(void *begin, void *end)
>>>>>
>>>>> Maybe you can add it to NOTES.
>>>>>
>>>>> Best regards
>>>>>
>>>>> heirnich
>>>>
>>>
>>
> 

