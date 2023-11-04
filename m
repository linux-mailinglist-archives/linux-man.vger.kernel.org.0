Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 369F07E113B
	for <lists+linux-man@lfdr.de>; Sat,  4 Nov 2023 22:18:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229783AbjKDVSQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 4 Nov 2023 17:18:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229502AbjKDVSP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 4 Nov 2023 17:18:15 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C77BBF
        for <linux-man@vger.kernel.org>; Sat,  4 Nov 2023 14:18:11 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-32da4ffd7e5so1934076f8f.0
        for <linux-man@vger.kernel.org>; Sat, 04 Nov 2023 14:18:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google; t=1699132690; x=1699737490; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CQW5qfO6cjAcjP2YNVyt+Qi/vD2nrSSGiPUJqyqPsYQ=;
        b=G1s8DG9UC+CwXkwt7806tdpvUIqk9SjrndzhI1Lq49wmUz7EJeVCYM/hTxWf25dgrJ
         ReUgXtU57nqilPFkWnN6TwRsf4p+xdX96BskIPKtPWiLLshJhS0HNAjw3n2D1QiBdu/w
         mUfYeq7+Aa3qr88ezwxxCLT4/DeZH5DukvRriUARcOd/mRHbKMwo02iOobS2OeiavoAI
         JnG95HokcsMzPFcpboJ/LngOuSh5rcVTIAzdbW4AqeRU25WP+1bs64UNaS6rvAE2xkW+
         D9CenEI77OWtQ5osSwF3CY+SSn6pYpcS87Leb/t1ztK+icGLtSvR6IWoVO2nmj7uGK4+
         bFKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699132690; x=1699737490;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CQW5qfO6cjAcjP2YNVyt+Qi/vD2nrSSGiPUJqyqPsYQ=;
        b=eRa+3Y4dd/YbY1uDGeWlL1hm17DsUwlfJDmvALRIsjHAo8iR+0mf4soEUAZg88Yspr
         Di0g0hmHGE/fMk7v5aR7tT3rXXNqGlAus9XW1WzE6d0Be6uSLpkq/J29Q/bgLDqrokdz
         m4fcdGh7dRHtZj9KtMMk2O5aGH07kIqfL8YArYhPJ51mI7z/PUy4zSXFLbVXS1yOWQIz
         zoHJIadUuZqx7JLAG6VYh8W5iiyNtHlRks7MwkeoWx2rQGbZCPLgPzJfP9eORO2s2MFU
         JVE7hrzfrr5TsmGclxrQhQKPwxeFowqkJSlZkEx9ot4VZJ8vD6Xe3C5202rnNE/0h9Ls
         IH7g==
X-Gm-Message-State: AOJu0YwKSewFBwv265bNdvJ4doA0dJh9rvgzRieeZxWVreuWtxD0Ssya
        upCya3CqmVcWY+dpSDCESOV8ag==
X-Google-Smtp-Source: AGHT+IEPNtY3qlQeltt2bYCrQ15gks5uFD/QhKvkHNyZMIvBctHNROhYCGzbFtEkkLq74/aqk4QaFQ==
X-Received: by 2002:a5d:64c8:0:b0:32f:76d7:7d6a with SMTP id f8-20020a5d64c8000000b0032f76d77d6amr5442549wri.35.1699132689309;
        Sat, 04 Nov 2023 14:18:09 -0700 (PDT)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id dd23-20020a0560001e9700b0032f7f4d008dsm5282024wrb.20.2023.11.04.14.18.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 04 Nov 2023 14:18:08 -0700 (PDT)
Message-ID: <c8cf6f94-97e8-41d9-ade8-9cae06313ced@jguk.org>
Date:   Sat, 4 Nov 2023 21:18:08 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: strncpy clarify result may not be null terminated
Content-Language: en-GB
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <cfbd8674-fe6a-4430-95f1-ec8bde7da32e@jguk.org>
 <ZUacobMq0l_O8gjg@debian>
From:   Jonny Grant <jg@jguk.org>
In-Reply-To: <ZUacobMq0l_O8gjg@debian>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 04/11/2023 19:33, Alejandro Colomar wrote:
> Hi Jonny,
> 
> On Sat, Nov 04, 2023 at 11:27:44AM +0000, Jonny Grant wrote:
>> Hello
>> I have a suggestion for strncpy.
>>
>> C23 draft states this caveat for strncpy. 
>>
>> "373) Thus, if there is no null character in the first n characters of the array pointed to by s2, the result will not be null-
>> terminated."
>>
>>
>> https://man7.org/linux/man-pages/man3/strncpy.3.html
>>
>> "If the destination buffer, limited by its size, isn't large
>> enough to hold the copy, the resulting character sequence is
>> truncated. "
> 
> The use of the term "character sequence" instead of "string" isn't
> casual.  A "string" is a sequence of zero or more non-zero characters,
> followed by exactly one NUL.  A "character sequence" is a sequence of
> zero or more non-zero characters, period.

Ok that's good to know. C23 calls it those "array", POSIX too. POSIX explains if the array is a string (ie null terminated) it pads with nulls, I'll paste it below:

https://pubs.opengroup.org/onlinepubs/009696899/functions/strncpy.html

"If the array pointed to by s2 is a string that is shorter than n bytes, null bytes shall be appended to the copy in the array pointed to by s1, until n bytes in all are written."

> 
> To be clearer in that regard, the CAVEATS section of the same page says
> this:
> 
> CAVEATS
>      The name of these functions is confusing.  These  functions  pro‐
>      duce   a  null‐padded  character  sequence,  not  a  string  (see
>      string_copying(7)).
> 
> Saying that these functions don't produce a string should warn anyone
> thinking it would.  The page string_copying(7) goes into more detail.
> 
>>
>> How about clarifying this as:
>>
>>
>> "If the destination buffer, limited by its size, isn't large
>> enough to hold the copy, the resulting character sequence is
>> truncated; where there is no null terminating byte in the first n
>> characters the result will not be null terminated. "
> 
> strncpy(3) should !*NEVER*! be used to produce a string.
> I don't think that should be conditional.  Your suggested change could
> induce to the mistake of thinking that strncpy(3) is useful if the size
> of the buffer is enough.  Do not ever use that function for producing
> strings.  Use something else, like strlcpy(3), strcpy(3), or stpecpy(3).

Just documentation feedback based on C23, not writing code today.

Perhaps you may have seen  Michael Kerrisk article about the risks with strlcpy.
https://lwn.net/Articles/507319/

re strcpy doesn't that risk buffer overruns? That's a surely a cyber security risk?
strlcpy is also bad in certain ways, it breaks ISO TR24731 "Do not unexpectedly truncate strings", can cause overruns and crashes.

I guess if you feel strncpy should "never be used to produce a string" you could describe that somewhere with an explanation in an article. You didn't mention why you feel it is not useful even if the size of the buffer is enough - including a null terminator I hope!

strncpy_s is a better solution, not widely available, and not part of glibc. That's another debate.

Is stpecpy standardised? If you can send me an online manual for it, I'll take a look.

Regards, Jonny
