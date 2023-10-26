Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D01267D883A
	for <lists+linux-man@lfdr.de>; Thu, 26 Oct 2023 20:26:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230322AbjJZS0Q (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 26 Oct 2023 14:26:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230218AbjJZS0P (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 26 Oct 2023 14:26:15 -0400
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com [IPv6:2607:f8b0:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 464211A5
        for <linux-man@vger.kernel.org>; Thu, 26 Oct 2023 11:26:12 -0700 (PDT)
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-6b20a48522fso1217658b3a.1
        for <linux-man@vger.kernel.org>; Thu, 26 Oct 2023 11:26:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698344771; x=1698949571; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=lq68U361Jn86ZaG1QbQn2/r5I/VZ3XeR9yJtl2mGhzg=;
        b=TxfMpAvnOid8kuM0aZGPVMufLfHdv3L2wgkkhKL8S/A7QH6SWeq3bD8gQRAmY+caRt
         iLDWZkKtxBvV45bEUgz3+/IoTGpvLrQNeI8boPLsNHSscAPPBwLbgucyGTR4TJUkZIPj
         cGgvIvbRO+wSNvk7MhxOmtF6rTD0Z1tupZpxy2u/gKNbWoDesdTlo57hRtJhD5CsFwLO
         6Jw7r3XOFs8ibWau9IHB/o1AsHbBItngWAKRFh974Ln0vOQQ1xm0vsO63+lR+73BHU8S
         cIZxczQcFyCulGZZQBnu4Yey37XN+6CrvuqEKXVhmEO/uo4594gWI9IlxGZ76dQiqyHu
         xG+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698344771; x=1698949571;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lq68U361Jn86ZaG1QbQn2/r5I/VZ3XeR9yJtl2mGhzg=;
        b=BVx0nqj78ZT7eHEGKIqutbnH5R7hVG5CJP72C9BrbZMY6vqc5R9FfoC3R3InqavJK9
         HnA8HjKgHNhpPPTqjNo/vnNfWZ/6lLkgsAcihqHe13kIwGi4VpUNuP+5adPPAz/l3u68
         m94eedUttTgZxr3N9Ggey8lq9/z5Ofuc5tSSr/WtHxSR3YOnLD86Ei+ln6f5ED/FVSSo
         uvK+hdz5v0EL4UT04cNzTbBSJgpbi1BnpUYcMcf+80uVTZvuQKfjqJzRaLFbx4+Mea9Z
         FM/se12ifJ1qEXz1cN/+c1S2zIBzvIvll2DXXEgeGGNBzmdcsfxVKRq8Ap1ScksNWbv9
         gdaQ==
X-Gm-Message-State: AOJu0Yz7r4PfJoMkLj9Mop6AQmAmgI1SR0gy8pU6OKPf8xMg1MxPsTpU
        qmz+R6wpmp3s2wuFpHRS4hWMJg==
X-Google-Smtp-Source: AGHT+IHCKO3npmNNqW0im0BXgJXyGYa67ZssqsdDzxL3HmorNi6oadjuOWho6JR4Mspibe7ZEaFZGQ==
X-Received: by 2002:a05:6a00:2492:b0:6bc:ce7a:6f39 with SMTP id c18-20020a056a00249200b006bcce7a6f39mr285890pfv.32.1698344771090;
        Thu, 26 Oct 2023 11:26:11 -0700 (PDT)
Received: from ?IPV6:2804:1b3:a7c3:a647:4493:5647:32ad:a4d8? ([2804:1b3:a7c3:a647:4493:5647:32ad:a4d8])
        by smtp.gmail.com with ESMTPSA id e8-20020a056a0000c800b006bd26bdc909sm11604360pfj.72.2023.10.26.11.26.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Oct 2023 11:26:10 -0700 (PDT)
Message-ID: <7c164d27-c966-4b20-be3c-4f2b3f4d32f3@linaro.org>
Date:   Thu, 26 Oct 2023 15:26:08 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] ld.so.8: Describe glibc Hardware capabilities
Content-Language: en-US
To:     Stefan Puiu <stefan.puiu@gmail.com>
Cc:     linux-man@vger.kernel.org, alx@kernel.org
References: <20231019172315.208972-1-adhemerval.zanella@linaro.org>
 <CACKs7VBtQNA-j=HapaBcM47gRE72jaBBU+c59G4Xx3WimPRFsg@mail.gmail.com>
 <d66f16b9-c65f-4fe5-9b86-05373a52561d@linaro.org>
 <CACKs7VBdNpWL6-GsECk46s7rK+aDiSr5BjROFL-T_Mh2AvPQ9Q@mail.gmail.com>
From:   Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
Organization: Linaro
In-Reply-To: <CACKs7VBdNpWL6-GsECk46s7rK+aDiSr5BjROFL-T_Mh2AvPQ9Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 24/10/23 04:59, Stefan Puiu wrote:
> Hi Adhemerval,
> 
> On Fri, Oct 20, 2023 at 8:50 PM Adhemerval Zanella Netto
> <adhemerval.zanella@linaro.org> wrote:
>>
>>
>>
>> On 19/10/23 16:10, Stefan Puiu wrote:
>>> Hi and sorry to jump in so late in the discussion,
>>
>> Thanks for the review!
> 
> Well, I'm glad to nitpi... um, help :).
> 
>>
>>>
>>> On Thu, Oct 19, 2023 at 8:23 PM Adhemerval Zanella
>>> <adhemerval.zanella@linaro.org> wrote:
>>>>
>>>> It was added on glibc 2.33 as a way to improve path search, since
>>>> legacy hardware capabilities combination scheme do not scale
>>>> properly with new hardware support.  The legacy support was removed
>>>> on glibc 2.37, so it is the only scheme currently supported.
>>>
>>> I would suggest (caveat: non-native English speaker here):
>>>
>>> s/It was added on glibc/The feature was added in glibc/
>>> s/improve path search/improve the path search/
>>> s/since legacy/since the legacy/
>>> s/hardware capabilities combination scheme do not/hardware
>>> capabilities scheme does not/
>>> s/was removed on glibc/was removed in glibc/
>>
>> Ack.
>>
>>>
>>>>
>>>> Signed-off-by: Adhemerval Zanella <adhemerval.zanella@linaro.org>
>>>> ---
>>>>  man8/ld.so.8 | 48 +++++++++++++++++++++++++++++++++++++++++++++++-
>>>>  1 file changed, 47 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/man8/ld.so.8 b/man8/ld.so.8
>>>> index cf03cb85e..5b02ae88f 100644
>>>> --- a/man8/ld.so.8
>>>> +++ b/man8/ld.so.8
>>>> @@ -208,6 +208,14 @@ The objects in
>>>>  .I list
>>>>  are delimited by colons.
>>>>  .TP
>>>> +.BI \-\-glibc-hwcaps-mask " list"
>>>> +only search built-in subdirectories if in
>>>> +.IR list .
>>>> +.TP
>>>> +.BI \-\-glibc-hwcaps-prepend " list"
>>>> +Search glibc-hwcaps subdirectories in
>>>> +.IR list .
>>>> +.TP
>>>>  .B \-\-inhibit\-cache
>>>>  Do not use
>>>>  .IR /etc/ld.so.cache .
>>>> @@ -808,7 +816,7 @@ as a temporary workaround to a library misconfiguration issue.)
>>>>  .I lib*.so*
>>>>  shared objects
>>>>  .SH NOTES
>>>> -.SS Hardware capabilities
>>>> +.SS Legacy Hardware capabilities (from glibc 2.5 to glibc 2.37)
>>>>  Some shared objects are compiled using hardware-specific instructions which do
>>>>  not exist on every CPU.
>>>>  Such objects should be installed in directories whose names define the
>>>> @@ -843,6 +851,44 @@ z900, z990, z9-109, z10, zarch
>>>>  .B x86 (32-bit only)
>>>>  acpi, apic, clflush, cmov, cx8, dts, fxsr, ht, i386, i486, i586, i686, mca, mmx,
>>>>  mtrr, pat, pbe, pge, pn, pse36, sep, ss, sse, sse2, tm
>>>> +.SS glibc Hardware capabilities (from glibc 2.33)
>>>> +The legacy hardware capabilities combinations has the drawback where
>>>> +each feature name incur in
>>>> +cascading extra paths added on the search path list,
>>>
>>> IMO, this part could use some rephrasing. How about:
>>> The legacy hardware capabilities support has the drawback that each
>>> feature grows the number of paths added to the search list.
>>
>> The main problem was it did not only grows, but it did quadratically since
>> the new capability is combined with the others.  It was minimized because
>> the actually used capabilities was filtered out by the processor/kernel
>> advertise features. So maybe:
>>
>>   The legacy hardware capabilities support has the drawback
>>   it requires multiple search paths due the combined supported capabilities,
>>   and each new feature grows the number of paths added to the search list
>>   in quadratic manner.
> 
> Maybe:
> The legacy hardware capabilities support has the drawback that each
> new feature added grows the search path exponentially, because it has
> to be added to every combination of the other existing features.
> 

Ok, it works for me.

> And then you have the sse2 example below, which I think clarifies the
> point very well.
> 
>>
>>>
>>> Also, maybe this would better fit under the legacy capabilities section?
>>
>> Indeed, I will move to there.
>>
>>>
>>>> +adding a lot of overhead on
>>> I think "adding a lot of overhead to" sounds better here. "Adding to"
>>> instead of "adding on".
>>>
>>>> +.B ld.so
>>>> +during library resolution.
>>>> +For instance, on x86 32-bit, if the hardware
>>>> +supports
>>>> +.B i686
>>>> +and
>>>> +.BR sse2
>>>> +, the resulting search path will be
>>>> +.BR i686/sse2:i686:sse2:. .
>>>> +A new capability
>>>> +.B newcap
>>>> +will set the search path to
>>>> +.BR newcap/i686/sse2:newcap/i686:newcap/sse2:newcap:i686/sse2:i686:sse2: .
>>>> +.PP
>>>> +glibc 2.33 added a new hardware capability scheme,
>>>> +where each ABI can define
>>>
>>> Maybe s/each ABI/each ABI version/? I'm not familiar with the feature,
>>> just guessing from the examples below; they were very helpful, IMO.
>>
>> I think it would be better to use 'architecture' here.
> 
> Maybe 'architecture level' could work, based on Florian's mail to
> llvm-dev? Architecture is too broad, I think, and Florian says that
> the levels don't correspond to micro-architectures, since in the
> x84-64 the progression is not so clear.

Ack, architecture level I think works better here indeed.

> 
> Anyway, the links were very helpful. Maybe you can leave a pointer to
> them somewhere, at least in the change description?

I will add them as a comment.

> 
>>
>>
>>>
>>>> +a set of paths based on expected hardware support.
>>>
>>> a set of paths where to find the expected hardware support?
>>>
>>> This is based on how I (mis)understood the feature, though, if that's
>>> wrong, then the above might also be wrong. I guess the x86-64 glibc
>>> would install the x86-64-v2, -v3 and -v4 directories on disk; when
>>> running a program, glibc can then check what the current CPU supports
>>> - say if it supports x86-64-v3, it loads the contents of that folder?
>>
>> They are search paths, so glibc itself does not install them.  The
>> glibc Hardware capabilities search paths are constructed based on
>> pre-defined list (where only a handful architecture actually define
>> them) that are matched against the supported one by the hardware.
>> The initial patchset that actually implemented this feature has
>> more details [1].
> 
> By "glibc installs them", I meant that I would expect them to be part
> of glibc, is that not the case?

Not really, there are extra paths the loader might consulting when
loading shared libraries (either at startup or by dlopen).  It is
expected that package manager of something analogous to build and
install the optimized libraries on the expected folders.

> 
>>
>> It has the advantage that each glibc-hwcap path are not combined
>> with each other, so there is no quadratic increase when a new
>> patch is added.
>>
>> So, let's say you have a x86_64-v3 chip (Haswell or Excavator) [2].
>> The result search patch will be
>>
>>   glibc-hwcaps/x86-64-v3:glibc-hwcaps/x86-64-v2:
>>
>> It is also supported by ldconfig, so it will also check on all paths
>> defined on ld.so.conf along with combined one with glibc-hwcap.  So
>> let's say you have "/lib/x86_64-linux-gnu" on ld.so.conf, ldconfig will
>> check all possible subpaths based on the glibc-hwcap list:
>>
>>   /lib/x86_64-linux-gnu/glibc-hwcaps/x86-64-v4
>>   /lib/x86_64-linux-gnu/glibc-hwcaps/x86-64-v3
>>   /lib/x86_64-linux-gnu/glibc-hwcaps/x86-64-v2
>>   /lib/x86_64-linux-gnu/
>>
>> And only adds a possible candidate iff the file exists.  For instance
>> if you have:
>>
>>   /lib/x86_64-linux-gnu/glibc-hwcaps/x86-64-v4/libsomething.so
>>   /lib/x86_64-linux-gnu/glibc-hwcaps/x86-64-v2/libsomething.so
>>   /lib/x86_64-linux-gnu/libsomething.so
>>
>> The ldconfig will setup a ld.so.cache with all the entries, but
>> ld.so will only select the x86-64-v4/libsomething.so if the CPU supports
>> the x86-64-v4 (Skylake, Zen4); otherwise it will fallback to
>> x86-64-v2/libsomething.so if the cpu support x86_64-v2 (Nehalem, Jaguar),
>> or libsomething.so as the x86_64 baseline.
> 
> Thanks, that makes it much clearer.
> 
>>
>> So maybe a better description would be
>>
>>   glibc 2.33 added a new hardware capability scheme,
>>   where each architecture might define
>>   a set of paths based on expected hardware support.
>>   Each path is added on the search path list
>>   depending of the hardware of the machine.
>>   Each path is independent and not combined together,
>>   so it does have the drawbacks of legacy scheme.
> 
> How about:
> glibc 2.33 added a new hardware capability scheme, where under each
> CPU architecture, certain levels can be defined, grouping support for
> certain features or special instructions. Each architecture level has
> a fixed set of paths that it adds to the dynamic linker search list,
> depending on the hardware of the machine. Since each new architecture
> level is not combined with previously existing ones, the new scheme
> does not have the drawback of growing the dynamic linker search list
> uncontrollably.

Works for me, thanks.

> 
>>   .PP
>>   For instance, on x86 64-bit, if the hardware supports
>>   .B x86_64-v3
>>   (for instance Intel Haswell or AMD Excavator)
>>   , the resulting search path will be
>>   .BR glibc-hwcaps/x86-64-v3:glibc-hwcaps/x86-64-v2:.
> 
> I think it would be useful if the existing levels are defined
> somewhere; maybe Alex can suggest the proper manpage.

For x86_64, these are in fact defined by the ABI itself [1].
The powerpc and s390x names based on the IBM chips names,
but that also maps to specific ISA as well.  I will add a 
comment about it.

https://gitlab.com/x86-psABIs/x86-64-ABI/-/blob/master/x86-64-ABI/low-level-sys-info.tex

> 
> Regards,
> Stefan.
> 
>>   The following paths are currently supported, in priority order.
>>   .TP
>>   .B PowerPC (64-bit little-endian only)
>>   power10, power9
>>   .TP
>>   .B s390 (64-bit only)
>>   z16, z15, z14, z13
>>   .TP
>>   .B x86 (64-bit only)
>>   x86-64-v4, x86-64-v3, x86-64-v2
>>   .PP
>>   glibc 2.37 removed support for the legacy hardware capabilities.
>>
>>>
>>>> +Each path is added depending of the hardware of the machine,
>>>> +and they are not combined together.
>>>> +They also have priority over the legacy hardware capabilities.
>>>> +The following paths are currently supported.
>>>> +.TP
>>>> +.B PowerPC (64-bit little-endian only)
>>>> +power9, power10
>>>> +.TP
>>>> +.B s390 (64-bit only)
>>>> +z13, z14, z15, z16
>>>> +.TP
>>>> +.B x86 (64-bit only)
>>>> +x86-64-v2, x86-64-v3, x86-64-v4
>>>> +.PP
>>>> +The glibc 2.37 removed support for the legacy hardware capabilities.
>>> s/The glibc/glibc
>>>
>>> Regards,
>>> Stefan.
>>>
>>>> +.
>>>>  .SH SEE ALSO
>>>>  .BR ld (1),
>>>>  .BR ldd (1),
>>>> --
>>>> 2.34.1
>>>>
>>
>> [1] https://sourceware.org/pipermail/libc-alpha/2020-June/115250.html
>> [2] https://lists.llvm.org/pipermail/llvm-dev/2020-July/143289.html
