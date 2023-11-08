Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A52577E5C5C
	for <lists+linux-man@lfdr.de>; Wed,  8 Nov 2023 18:26:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230232AbjKHR0K (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Nov 2023 12:26:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230021AbjKHR0J (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Nov 2023 12:26:09 -0500
Received: from mail-yw1-x1135.google.com (mail-yw1-x1135.google.com [IPv6:2607:f8b0:4864:20::1135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01C12E8
        for <linux-man@vger.kernel.org>; Wed,  8 Nov 2023 09:26:07 -0800 (PST)
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-5a877e0f0d8so9889817b3.1
        for <linux-man@vger.kernel.org>; Wed, 08 Nov 2023 09:26:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699464366; x=1700069166; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=pNyKoi8ZIFyGetePPxbnOtBUfvm0fJU+dNaK6tG2CgA=;
        b=wOrlU1OQ/4IofCRnnrESel30i3s1DA2CyAu06QCyUCENLjrX7sfmdrO0lTK/ZMGYYJ
         vSeLR2sjz9t58QriuC9LUZ/K+l1IKDoPDLsmDjcNA18BlLPU76wiKnjcMz6F5BIm6YML
         RcW27Y3CLg7IZbOVA6vB3hVMiepfpQxZUo57xfnkg58czyuIr+6T7c5Vl90n10NMwidh
         X5HD8hH5a42C6huXApe2ku2ulSqRcSVXCU7Hx4+j+A9pkjjf4hNNm7oz2WV2FHFF3Ztq
         Z+Xy4V8NbExWkx25XWvJQlnRxzt/EYPsrd6E3YAusr5MfSGBw+nvaT+ke/760T8ENrcu
         YWmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699464366; x=1700069166;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pNyKoi8ZIFyGetePPxbnOtBUfvm0fJU+dNaK6tG2CgA=;
        b=QBJ0s4OeChkr6sp0oQd1sFM+04eJ2foteanE+o6TMMK8A2n7mNT6EHVe6hDOUUPRvL
         tD9PvYYZjl4VByDqrL3RVT4bK8WfsTuwWayVrTw3AE0lrPuDHW5URp8iMz3JCeYEJEz0
         IV5wfCaprzme+7RC0n+2VyeEGxiCjq/fsuISgnNVeknBww27pILZzaYyiqJUW0DXumO8
         z5mIpagmpaoZQoBQSlGHlkX+B2q4tTZY4XBtXMGRJ38w6exKQpkcmQSc/YpEJ5+x+FNO
         RmY8DrHiKYSea7T4RJzndLdWOpGZzU7hAOhTJH6hhbRmRWJ+TYefB4iHeq1k5RBI30p4
         ifAw==
X-Gm-Message-State: AOJu0YwJN2W9ylLtuk/z2/U+A3AhZ0Xv+ziyRAaZOBedeM4NzjPc1GuK
        PvOlf2zPQWv2Ybi3uoVYanuLGg==
X-Google-Smtp-Source: AGHT+IHrbyEUJXqSC1L5B1pjC84mTniZ+Mj1Ps3bVrD+Hz5bqUw68eqk44/feQTmoynOtqvs1TsSng==
X-Received: by 2002:a81:a006:0:b0:5a7:fc15:3439 with SMTP id x6-20020a81a006000000b005a7fc153439mr1677841ywg.22.1699464366126;
        Wed, 08 Nov 2023 09:26:06 -0800 (PST)
Received: from ?IPV6:2804:1b3:a7c0:a715:14b6:e72b:bca2:6e42? ([2804:1b3:a7c0:a715:14b6:e72b:bca2:6e42])
        by smtp.gmail.com with ESMTPSA id m192-20020a0dcac9000000b005a7fa3ccb32sm7205741ywd.35.2023.11.08.09.26.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Nov 2023 09:26:05 -0800 (PST)
Message-ID: <f6bdd085-293f-4259-9194-960f570ad3ed@linaro.org>
Date:   Wed, 8 Nov 2023 14:26:02 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: strncpy clarify result may not be null terminated
Content-Language: en-US
To:     Thorsten Kukuk <kukuk@suse.com>, Alejandro Colomar <alx@kernel.org>
Cc:     "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        Jonny Grant <jg@jguk.org>,
        linux-man <linux-man@vger.kernel.org>
References: <aeb55af5-1017-4ffd-9824-30b43d5748e3@jguk.org>
 <ZUgl2HPJvUge7XYN@debian> <d40fffcb-524d-44b6-a252-b55a8ddc9fee@jguk.org>
 <ZUo6btEFD_z_3NcF@devuan> <929865e3-17b4-49c4-8fa9-8383885e9904@jguk.org>
 <ZUpjI1AHNOMOjdFk@devuan> <ZUsoIbhrJar6ojux@dj3ntoo>
 <ZUtaH35V3koxTSL0@debian> <20231108095910.GA9216@suse.com>
 <6bcad2492ab843019aa63895beaea2ce@DB6PR04MB3255.eurprd04.prod.outlook.com>
 <20231108154400.GA27312@suse.com>
From:   Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
Organization: Linaro
In-Reply-To: <20231108154400.GA27312@suse.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 08/11/23 12:44, Thorsten Kukuk wrote:
> On Wed, Nov 08, Alejandro Colomar wrote:
> 
>> On Wed, Nov 08, 2023 at 09:59:11AM +0000, Thorsten Kukuk wrote:
>>> On Wed, Nov 08, Alejandro Colomar wrote:
>>>
>>>> strncpy(3) is useful to write to fixed-width buffers like `struct utmp`
>>>> and `struct utmpx`.  Is there any other libc API that needs strncpy(3)?
>>>> Of those two APIs (utmp and utmpx) and any other that need strncpy(3),
>>>> are those deprecated, or is any such API still good for new code?
>>>
>>
>> Hi Thorsten!
>>
>>> Everything around utmp/utmpx/wtmp/lastlog is deprecated.
>>
>> Is this a Linux-specific thing?  Do you know if the BSDs also deprecated
>> utmpx?
> 
> Beside the design issues of the interface, which are generic, the Y2038
> issue is more or less glibc specific and a result of supporting 32bit
> and 64bit userland at the same time.
> For most other implementations I'm aware of there is no Y2038 problem,
> either because they don't support utmp/utmpx/... like musl libc, or they
> were able to switch to a 64bit time variable or used that already.
> So no need to change anything.

In fact the glibc utmp y2038 support depends of the ABI, some 64 bit ABIs
decided to be compatible with 32 bits so the utmp files could be read/parsed
by both ABIs (defined by __WORDSIZE_TIME64_COMPAT32).  This required the 
ut_tv field to be define not as a 'struct timeval', but rather with a similar
struct with 32 bit tv_sec (yes, it is a mess and not sure why it was
considered a good idea back then).

It means that for 64 bits that define __WORDSIZE_TIME64_COMPAT32ABI (mips, 
riscv, s390, sparc, powerpc, and x86) the utmp ABI is broken regarding
y2038 support. The ut_tv is also defined depending of the time_t at build 
time (_TIME_BITS), so if you have programs with different time_t support, 
they won't correctly access the utmp (gnulib seems to have some overrides 
to fix it).

Fixing those issues would require a lot of work that I don't think it worth 
for a API with some inherent implementation flaws [1] (most likely it would
require a complete rewrite, which logind basically did).  That's why I am
leaning to complete remove glibc implementation and mimic what musl did
(no-op implementation that return -1/ENOTSUP where applicable). 

[1] https://sourceware.org/bugzilla/show_bug.cgi?id=24492

> For BSD I don't really know the situation, but as far as I know, they
> don't have the problem and thus no need to change anything.
> 
>   Thorsten
> 
>> Thanks,
>> Alex
>>
>>>
>>> openSUSE Tumbleweed and MicroOS are no longer using nor supporting them
>>> and fresh installations don't have that files anymore.
>>> So new code should not use utmp/utmp/wtmp/lastlog anymore. Alternatives
>>> are e.g. systemd-logind/wtmpdb/lastlog2.
>>
>> -- 
>> <https://www.alejandro-colomar.es/>
> 
> 
> 
