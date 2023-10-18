Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B196E7CE95A
	for <lists+linux-man@lfdr.de>; Wed, 18 Oct 2023 22:47:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232453AbjJRUrd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 18 Oct 2023 16:47:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232307AbjJRUr3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 18 Oct 2023 16:47:29 -0400
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com [IPv6:2607:f8b0:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 666CB13E
        for <linux-man@vger.kernel.org>; Wed, 18 Oct 2023 13:47:23 -0700 (PDT)
Received: by mail-pg1-x52b.google.com with SMTP id 41be03b00d2f7-53fbf2c42bfso5440294a12.3
        for <linux-man@vger.kernel.org>; Wed, 18 Oct 2023 13:47:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697662042; x=1698266842; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=yUE3hVzFnM97gNGZ1MnyDQUGOkDI42JtMrzs9f+zI5A=;
        b=NLmVc3cgEUdBOCQh/0wLXf70hpbs+t1pdDi5PkREyXxVsu4R0dn9tD5H+kU1p7DYXL
         KB80k4tiIcz6LTwaToPpxvMziqjH2C134jPuEYAjrXaZSv8RlQ4++XW/8LbYQ5nKsw0A
         lZ0lKZjn6guJrcb/npIpLpV0yvvalVTEtJ05FLa+EibMT0v4g8ZAvtA0dWQxgzAGyoBK
         oLzH4iPO4Hw3wS8GVXt9oNsq4XR2mwRreWt7+zWaaqrcVW7sew0rXrryVBhp2Mz/WYrK
         IrPwH/DXXq+pJcw3rVfJ6MRGITvHNiAtiGhHnP2EAhJIA/ywd74oHskoUYlpoP1TyNHP
         YOmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697662042; x=1698266842;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yUE3hVzFnM97gNGZ1MnyDQUGOkDI42JtMrzs9f+zI5A=;
        b=pucaxqmawfoRwqJezHmR9OQQAcMYzkRa3LYASTXaoxhfyY65EpHoKrvQtGWdUM1IId
         IWnHPrlERuX3lPaz4D8suN+I77Ul2a7jxG6NcanJOZfJaEBEIgG1cRQxaWQowubIa9aT
         jAR8CKgtiMG6J9ng8issTaVKPB2+m1Ls4b2G/CtBXO3WGY8CkQMF1h23+2gcKSx0blSe
         ZkRv5QrN1nn28C3VfN3pMkKSpfv8I+3s9JRgrdpnb0QUWDW4wUoFQbQW3jnW16bhaoVM
         RCbYlwtr6RtQ1E2Ko0GB6I9GXr0lzLRGQb7rdwEYauJcPw7GZ0fxGZQK303q3z2tzEEo
         kKyA==
X-Gm-Message-State: AOJu0YwX+STRP9a8epXJ8i1Oc/ONpkNHPKtha90xqA181pPrN04qeq8r
        LxOSa3isA3/J/zeUcPgWkULQ7A==
X-Google-Smtp-Source: AGHT+IH0D4Nn0fzRAdOA3CPd/HXnmm3La/LRAf+HOlBSwq/XM0DIvL2ltWJqh/vVq1uNLk+tU/sCcA==
X-Received: by 2002:a05:6a20:54a3:b0:17a:7c2:d4a6 with SMTP id i35-20020a056a2054a300b0017a07c2d4a6mr308947pzk.55.1697662042438;
        Wed, 18 Oct 2023 13:47:22 -0700 (PDT)
Received: from ?IPV6:2804:1b3:a7c3:a647:51c8:7d15:99b:dc36? ([2804:1b3:a7c3:a647:51c8:7d15:99b:dc36])
        by smtp.gmail.com with ESMTPSA id v2-20020a1709029a0200b001c20c608373sm349345plp.296.2023.10.18.13.47.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Oct 2023 13:47:21 -0700 (PDT)
Message-ID: <d961437f-8dfb-46b9-9fb0-210daa5c6950@linaro.org>
Date:   Wed, 18 Oct 2023 17:47:19 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] ld.so.8: Clarify LD_PROFILE in secure-execution mode
Content-Language: en-US
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, alx.manpages@gmail.com
References: <20231018172104.1196993-1-adhemerval.zanella@linaro.org>
 <20231018172104.1196993-3-adhemerval.zanella@linaro.org>
 <ZTAvvolND_9zrcRL@debian>
From:   Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
Organization: Linaro
In-Reply-To: <ZTAvvolND_9zrcRL@debian>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 18/10/23 16:19, Alejandro Colomar wrote:
> Hi Adhemerval,
> 
> On Wed, Oct 18, 2023 at 02:21:01PM -0300, Adhemerval Zanella wrote:
>> Different than specified, glibc 2.2.5 does not ignore LD_PROFILE in
> 
> The text being removed talks about glibc _before_ 2.2.5, that is,
> every version until 2.2.4.  That doesn't match the commit message.
> Please check.

There is no different between 2.2.4 and 2.2.5, LD_PROFILE is always
accepeted for secure-execution mode, while LD_PROFILE_OUTPUT is 
ignored (the default path is used ("/var/profile")).

I though it would make clear to specify the profile path only on
LD_PROFILE description, but I don't have a strong preference.

> 
> Thanks,
> Alex
> 
>> secure-execution mode.  Instead, it uses the default LD_PROFILE_OUTPUT
>> (/var/profile) folder.
>>
>> Signed-off-by: Adhemerval Zanella <adhemerval.zanella@linaro.org>
>> ---
>>  man8/ld.so.8 | 15 ++++++---------
>>  1 file changed, 6 insertions(+), 9 deletions(-)
>>
>> diff --git a/man8/ld.so.8 b/man8/ld.so.8
>> index 5b5c22825..74286d583 100644
>> --- a/man8/ld.so.8
>> +++ b/man8/ld.so.8
>> @@ -664,7 +664,7 @@ Profiling output is appended to the file whose name is:
>>  .IP
>>  Since glibc 2.2.5,
>>  .B LD_PROFILE
>> -is ignored in secure-execution mode.
>> +uses a different default path in secure-execution mode.
>>  .TP
>>  .BR LD_PROFILE_OUTPUT " (since glibc 2.1)"
>>  Directory where
>> @@ -672,16 +672,13 @@ Directory where
>>  output should be written.
>>  If this variable is not defined, or is defined as an empty string,
>>  then the default is
>> -.IR /var/tmp .
>> +.IR /var/tmp
>> +or
>> +.IR /var/profile
>> +in secure-execution mode.
>>  .IP
>>  .B LD_PROFILE_OUTPUT
>> -is ignored in secure-execution mode; instead
>> -.I /var/profile
>> -is always used.
>> -(This detail is relevant only before glibc 2.2.5,
>> -since in later glibc versions,
>> -.B LD_PROFILE
>> -is also ignored in secure-execution mode.)
>> +is ignored in secure-execution mode.
>>  .TP
>>  .BR LD_SHOW_AUXV " (since glibc 2.1)"
>>  If this environment variable is defined (with any value),
>> -- 
>> 2.34.1
>>
> 
