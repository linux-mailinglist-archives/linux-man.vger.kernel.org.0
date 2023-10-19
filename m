Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 903847CFC49
	for <lists+linux-man@lfdr.de>; Thu, 19 Oct 2023 16:19:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345906AbjJSOTp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 19 Oct 2023 10:19:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42800 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345795AbjJSOTo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 19 Oct 2023 10:19:44 -0400
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com [IPv6:2607:f8b0:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92821119
        for <linux-man@vger.kernel.org>; Thu, 19 Oct 2023 07:19:42 -0700 (PDT)
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-68fb85afef4so6646958b3a.1
        for <linux-man@vger.kernel.org>; Thu, 19 Oct 2023 07:19:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697725182; x=1698329982; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Gaa2U80P7mB6OizBD1tAswCHIkIvNjtxbggRXo8wo1o=;
        b=wKNMAfiMVkzoO27d44VmlTCrZxBF3zi+QsC+IMWhopTUtOsJgVdAgzY2tyw87J9qcb
         RX6NPa9ho53IiC10gIPbo+47CDhspez3KV2AMkMMslgJwt4Wms/UAdi3ecD3uqlLyYd2
         iIC3tvqMBcEZvxql8eS5Kkxw+dqdAZ2gS76IMxXtkpSc9j3gBoTleBQgZosxMO0alQVB
         wauzSJ0Ggep8Up/0bDb7HvGAjybCOYIsK5cHg++uqMEwITz8GCUjJ5VPgEuSzFpWEBDc
         HXr/d0jfVEML+mfWQO6ouk4VFDoS1Vt7jmMbxM+bPDfO4RELbfFJ9o14+zWJlitIsUwU
         sRVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697725182; x=1698329982;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Gaa2U80P7mB6OizBD1tAswCHIkIvNjtxbggRXo8wo1o=;
        b=eh39eM9kjWEkhRBHzRMGHYHtmNmAMf2cnH89MQFTaaUK3aBSvic48iWAKnJBBS/kRf
         pzU2cQhwSxmlTyDXJ+OYDGgakSD3iA1nmBBfenK1+VN9dnPC5s5skC4p5IB+tl/oYALW
         /FHz/EMDqMUtptJ14tYj5qzMue17E98exNN/7DqDU/0TAwg0xjoHIWEz+Z4yNgwMS23J
         NIPuzds3Ek9QyjdGxyBeebT5JzZ5NBrpSx43nOpMrfZ2eRHc0yigNYut4Ok/vsZU47vg
         G4yKwaPxOGF1h8zenFX7As8J0PkUAupqzdmydBOYYpPd/y7HlvPbeU4VQlJ0iKg+o6Xc
         czjw==
X-Gm-Message-State: AOJu0YznAaLBEEo+L0lmZ0oWkZOSRUXpV/rhyRoGR4UjZQtS6hhPC7zD
        r4CL0KwSR8nPsk4taPdH0GepKG3jWyFXEtCnKO+tyw==
X-Google-Smtp-Source: AGHT+IGI8eySa+QtKX0PZ7nVcgZ1at0KXqIho0UqeZwKRwnGTOzCXsBbqnd0/srSGvei2245y9zBng==
X-Received: by 2002:a05:6a00:a0b:b0:6bd:9281:9453 with SMTP id p11-20020a056a000a0b00b006bd92819453mr2332675pfh.9.1697725181863;
        Thu, 19 Oct 2023 07:19:41 -0700 (PDT)
Received: from ?IPV6:2804:1b3:a7c3:a647:51c8:7d15:99b:dc36? ([2804:1b3:a7c3:a647:51c8:7d15:99b:dc36])
        by smtp.gmail.com with ESMTPSA id t6-20020a625f06000000b00690c7552098sm5352853pfb.44.2023.10.19.07.19.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Oct 2023 07:19:41 -0700 (PDT)
Message-ID: <5281b000-2acd-4641-bc9f-a1e7df44f05d@linaro.org>
Date:   Thu, 19 Oct 2023 11:19:38 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] ld.so.8: Describe glibc Hardware capabilities
Content-Language: en-US
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
References: <20231019123139.1808532-1-adhemerval.zanella@linaro.org>
 <20231019123139.1808532-3-adhemerval.zanella@linaro.org>
 <ZTEpFReLAM-VhwKA@debian>
From:   Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
Organization: Linaro
In-Reply-To: <ZTEpFReLAM-VhwKA@debian>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 19/10/23 10:03, Alejandro Colomar wrote:
> Hi Adhemerval,
> 
> On Thu, Oct 19, 2023 at 09:31:39AM -0300, Adhemerval Zanella wrote:
>> It was added on glibc 2.33 as a way to improve path search, since
>> legacy hardware capabilities combination scheme do not scale
>> properly with new hardware support.  The legacy support was removed
>> on glibc 2.37, so it is the only scheme currently supported.
>>
>> Signed-off-by: Adhemerval Zanella <adhemerval.zanella@linaro.org>
>> ---
>>  man8/ld.so.8 | 48 +++++++++++++++++++++++++++++++++++++++++++++++-
>>  1 file changed, 47 insertions(+), 1 deletion(-)
>>
>> diff --git a/man8/ld.so.8 b/man8/ld.so.8
>> index cf03cb85e..3025da861 100644
>> --- a/man8/ld.so.8
>> +++ b/man8/ld.so.8
>> @@ -208,6 +208,14 @@ The objects in
>>  .I list
>>  are delimited by colons.
>>  .TP
>> +.BI \-\-glibc-hwcaps-mask " list"
>> +only search built-in subdirectories if in
>> +.IR list .
>> +.TP
>> +.BI \-\-glibc-hwcaps-prepend " list"
>> +Search glibc-hwcaps subdirectories in
>> +.IR list .
>> +.TP
>>  .B \-\-inhibit\-cache
>>  Do not use
>>  .IR /etc/ld.so.cache .
>> @@ -808,7 +816,7 @@ as a temporary workaround to a library misconfiguration issue.)
>>  .I lib*.so*
>>  shared objects
>>  .SH NOTES
>> -.SS Hardware capabilities
>> +.SS Legacy Hardware capabilities (from glibc 2.5 to glibc 2.37)
>>  Some shared objects are compiled using hardware-specific instructions which do
>>  not exist on every CPU.
>>  Such objects should be installed in directories whose names define the
>> @@ -843,6 +851,44 @@ z900, z990, z9-109, z10, zarch
>>  .B x86 (32-bit only)
>>  acpi, apic, clflush, cmov, cx8, dts, fxsr, ht, i386, i486, i586, i686, mca, mmx,
>>  mtrr, pat, pbe, pge, pn, pse36, sep, ss, sse, sse2, tm
>> +.SS glibc Hardware capabilities (from glibc 2.33)
>> +The legacy hardware capabilities combinations has the drawback where each
>> +feature name incur in cascading extra paths added on the search path list,
> 
> Use semantic newlines:
> 
> The legacy hardware capabilities combinations has the drawback where
> each feature name incur in
> cascading extra paths added on the search path list

Right, I am still getting hold on this scheme.  I will send a newer version 
based on your suggestions.

> 
>> +adding a lot of overhead on
>> +.B ld.so
>> +during library resolution.
>> +For instance, on x86 32-bit, if the hardware
>> +supports
>> +.B i686
>> +and
>> +.B sse2
> 
> .BR sse2 ,
> 
> Otherwise, you'll see a space after the comma.  BR alternates bold and
> roman for its arguments, and puts them together without spaces.
> 
>> +, the resulting search path will be
>> +.B
>> +i686/sse2:i686:sse2:. .
> 
> .BR i686/sse2:i686:sse2:. .
> 
>> +A new capability
>> +.B newcap
>> +will set the search path to
>> +.B
>> +newcap/i686/sse2:newcap/i686:newcap/sse2:newcap:i686/sse2:i686:sse2: .
> 
> .BR newcap/i686/sse2:newcap/i686:newcap/sse2:newcap:i686/sse2:i686:sse2: .
> 
>> +
> 
> .PP
> 
>> +glibc 2.33 added a new hardware capability scheme, where each ABI can define
> 
> s/, /,\n/
> 
>> +a set of paths based on expected hardware support.
>> +Each path is added depending of the hardware of the machine, and they are not
> 
> s/, /,\n/
> 
>> +combined together.
>> +They also have priority over the legacy hardware capabilities. The following
> 
> s/\. /\.\n/
> 
> Cheers,
> Alex
> 
>> +paths are currently supported.
>> +.TP
>> +.B PowerPC (64-bit little-endian only)
>> +power9, power10
>> +.TP
>> +.B s390 (64-bit only)
>> +z13, z14, z15, z16
>> +.TP
>> +.B x86 (64-bit only)
>> +x86-64-v2, x86-64-v3, x86-64-v4
>> +.PP
>> +The glibc 2.37 removed support for the legacy hardware capabilities.
>> +.
>>  .SH SEE ALSO
>>  .BR ld (1),
>>  .BR ldd (1),
>> -- 
>> 2.34.1
>>
> 
