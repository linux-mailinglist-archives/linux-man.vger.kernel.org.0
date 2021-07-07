Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 97ACC3BE736
	for <lists+linux-man@lfdr.de>; Wed,  7 Jul 2021 13:36:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231358AbhGGLjT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 7 Jul 2021 07:39:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230354AbhGGLjT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 7 Jul 2021 07:39:19 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00CA0C061574
        for <linux-man@vger.kernel.org>; Wed,  7 Jul 2021 04:36:37 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id i8so2632388wrp.12
        for <linux-man@vger.kernel.org>; Wed, 07 Jul 2021 04:36:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=rQV/Hym1SLy8TUn4R3O40P4zle2jTV976rmkyx/ZIsE=;
        b=QUtEsoNbzKKrnHlMgV/EJYzzbLwoKrufioUEIryfq21U4gZGe4dFlc1ygsBbftfOdy
         CHkScQ8+ZfXoIallJwjGHdc6e4h2ed64jfaWJgOnGbFMA6BmXtDkAVWGStxD8NjYtHY9
         QNq/wD8vOsjnmy/HweczFrNW53YUL6il1sAOuCIrqN/FKSm9asf9KMBqY2xUdDn61Ui+
         001Q/9RxlUk/gFRlfE4UPyb3h9HAZUFHRxeeQ9PAARuRfc/CudW6Ld0gYR4QxmCja1Db
         D4jr9U8B7hOqS3N7cWuVBe2Up4PfLcMGYw5nWtvdYdu86pdgZui01dfHBF7dn88ELYKR
         oakg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=rQV/Hym1SLy8TUn4R3O40P4zle2jTV976rmkyx/ZIsE=;
        b=TESh5dhYr8zrpu1IH0PNNVtdZJP9RzQAaB8SMHXRochwoefoqypbdJUUxdZMSuxibO
         n6oLguWnqfcZUl/vhLrE+ddIObFJGL/yW8NDtkwzX8jB2RZWfGhUi3InQRTsKTZMN7/w
         DyAW+jszl9TxJwWh/GCE8YeT/Wv3Spii4sHtUCCzzmSbirzdYntoEK6B18CvW8GUTtyN
         Fzvie5KdPWjckrQflw+XfNw/26mjfgyOPhNcXLpuUaMrhhSi7wlN/8trrb0omTxsaekm
         /Wn54P2XOzVAm6AlOnvk+Hkq3bcP+ahL18Ly0x1V3qa2nVhkm8gmjYFbQNBIdp/4BjVE
         6Bog==
X-Gm-Message-State: AOAM533iC//up5C648LzHQTQOOn0q3JRXw0fsLI2AxzzKNSsju1JKj++
        Ytn5r89BCFh55dPQeR1Hs3mjHeDoZeElOQ==
X-Google-Smtp-Source: ABdhPJwW2a0jzWkncIpxc1h2YhSxcvAnsLT/sW4bp86i2kuneiRVa8M3hgF/HK5lCsEH1VzLwXerPQ==
X-Received: by 2002:a5d:4449:: with SMTP id x9mr2109682wrr.52.1625657796271;
        Wed, 07 Jul 2021 04:36:36 -0700 (PDT)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id z25sm14275644wmi.48.2021.07.07.04.36.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jul 2021 04:36:35 -0700 (PDT)
Subject: Re: strlen
To:     Florian Weimer <fw@deneb.enyo.de>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Jonny Grant <jg@jguk.org>
References: <0bf239e9-cfc7-8889-ca00-b1d1566bd174@jguk.org>
 <87lfhpgxf8.fsf@mid.deneb.enyo.de>
 <017a5a66-ba66-7cc8-c607-f851c2e54fc4@jguk.org>
 <87363whf2z.fsf@mid.deneb.enyo.de>
 <48e874cb-2b95-2783-ddfc-ae12d9aaf8f5@jguk.org>
 <87bl7fozxi.fsf@mid.deneb.enyo.de>
From:   Jonny Grant <jg@jguk.org>
Message-ID: <23679a28-5986-0af2-4d98-7de68ed0deec@jguk.org>
Date:   Wed, 7 Jul 2021 12:36:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <87bl7fozxi.fsf@mid.deneb.enyo.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 06/07/2021 23:11, Florian Weimer wrote:
> * Jonny Grant:
> 
>> The reason it does not crash appears to be because of this warning
>> which removes the call to strlen due to the return not being
>> checked?
> 
> GCC uses the information that the argument to strlen cannot be null on
> that particular path.

It's a shame GCC doesn't give a warning

It may be GCC is using '__builtin_strlen'

<string.h> marks the param as nonnull. However, I am surprised this does not trigger the GCC warning -Werror=nonnull

/* Return the length of S.  */
extern size_t strlen (const char *__s)
     __THROW __attribute_pure__ __nonnull ((1));

Perhaps that is just a macro that is not actually used......

If I add another function -Werror=nonnull does give a warning
void test(const char * const p) __attribute__((nonnull));

https://godbolt.org/z/x37sbfWaG

<source>:15:9: error: argument 1 null where non-null expected [-Werror=nonnull]
   15 |     test(NULL);

> 
>> strlen.c:11:3: warning: statement with no effect [-Wunused-value]
>>    11 |   strlen (str);
>>       |   ^~~~~~~~~~~~
>>
>> https://godbolt.org/z/caoes5nGa
> 
> That site probably uses different library headers.
> 
> As posted, with Debian's GCC 8.3, I get this for the main function:
> 
> main:
> 	xorl	%eax, %eax
> 	ret
> 


In that case maybe https://man7.org/linux/man-pages/man3/strlen.3.html should have a "NOTES" section stating something similar to your wording ?

NOTES

The behavior of strlen(NULL) is depends on different things. It may cause a SEGV exception, or the compiler may optimize and remove the code path handling NULL.


Cheers, Jonny
