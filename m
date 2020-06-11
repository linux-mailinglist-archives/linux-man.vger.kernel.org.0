Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3E0471F6F0A
	for <lists+linux-man@lfdr.de>; Thu, 11 Jun 2020 22:53:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726251AbgFKUxT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 11 Jun 2020 16:53:19 -0400
Received: from us-smtp-1.mimecast.com ([207.211.31.81]:48865 "EHLO
        us-smtp-delivery-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726180AbgFKUxS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 11 Jun 2020 16:53:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1591908796;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=gwVlHEWxzrDeDBm9P98R8eQ7FF2oFMGcUD7oanNOe1A=;
        b=Dbpman70nKPs+OSTb96vSDxa16pX22ccYS16zJdJS2pAJpBOeFFayjzkXDBfL44eAcQxPW
        yyBwNBxbLk6zVXUbp6CXbTQ26V/gEMsqpUCnY8s4i7Hk0EAoXpWGH/OujGQiQNl/ThPTeI
        1ITdD1tm9dARL1swnfdZcCC6nml7FLM=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-329-eLa29M7YPuqeu_Kxck1ZeQ-1; Thu, 11 Jun 2020 16:53:13 -0400
X-MC-Unique: eLa29M7YPuqeu_Kxck1ZeQ-1
Received: by mail-qk1-f200.google.com with SMTP id 205so6198127qkh.5
        for <linux-man@vger.kernel.org>; Thu, 11 Jun 2020 13:53:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=gwVlHEWxzrDeDBm9P98R8eQ7FF2oFMGcUD7oanNOe1A=;
        b=Oi2sofzOzadWg89BeFVJOErnHmL2fX9vVJt8WpuB16ijEOFY1NEKyKLeFl79qfc+xp
         ZdER816MFP+U88bZCGr8pBG4bh0fR3XLhmZZBVe29f+W6qi5p9x6oGQ+myAcy5XoK4z5
         q7KuFTWOadfUMo6XMw29L7URw9znr/nH1ikzlgt/OW54iGXPRm5lvjrbgWqjvgm9HMnW
         XCEGi6ITUxN2+MikxzJXdkPHq8QluXsRw3UGW39zK1Rfz2CIO8p10HLUV2rnoEP7DiVb
         wFWio4oyV4Kx8Iu4t4FtjPp0JgLGoj4Z3VuJR4VD9n4Oz3XSNPi4lS6SExL60UCfJLYZ
         qztw==
X-Gm-Message-State: AOAM532xEUDjzZ4kCwokP1xGLUWj/aNa6hxlfXhXlooudXvvCbTe0SVk
        G6EHkaIzRkZ4Oawx+M0hLT+v7devQsEB9RgHLksuLpaTdj2bZ0dd+VgRIArNayXrxCMJc8war0a
        8CxArYtb8DIZD4FCLEo83
X-Received: by 2002:ac8:5648:: with SMTP id 8mr10422731qtt.280.1591908792217;
        Thu, 11 Jun 2020 13:53:12 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJza+kNYIO/d626VrcYpo81PDlKcS5VULZDmUV3LY2ukVz/xw86b6qtIt3eTLJjDddwwMfSyDA==
X-Received: by 2002:ac8:5648:: with SMTP id 8mr10422713qtt.280.1591908791984;
        Thu, 11 Jun 2020 13:53:11 -0700 (PDT)
Received: from [192.168.1.4] (198-84-170-103.cpe.teksavvy.com. [198.84.170.103])
        by smtp.gmail.com with ESMTPSA id r77sm2888984qke.6.2020.06.11.13.53.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Jun 2020 13:53:10 -0700 (PDT)
Subject: Re: [PATCH v2] ld.so.8: Update "Hardware capabilities" section for
 glibc 2.31.
To:     mtk.manpages@gmail.com, Florian Weimer <fweimer@redhat.com>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <57abae5e-2394-0542-9e21-10c0bb837078@redhat.com>
 <87pnaoe70h.fsf@oldenburg2.str.redhat.com>
 <14751c26-4c4d-24c1-df12-429931b61780@redhat.com>
 <87r1uy3sgb.fsf@oldenburg2.str.redhat.com>
 <CAKgNAkjB3-LvJaTQ5cHyc-cduD6Yr0_dBrSmN_bih+YOzuBCww@mail.gmail.com>
From:   Carlos O'Donell <carlos@redhat.com>
Organization: Red Hat
Message-ID: <84511dbb-2c38-b928-3155-1027a6078a96@redhat.com>
Date:   Thu, 11 Jun 2020 16:53:09 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAKgNAkjB3-LvJaTQ5cHyc-cduD6Yr0_dBrSmN_bih+YOzuBCww@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 6/10/20 2:00 AM, Michael Kerrisk (man-pages) wrote:
> Hi Carlos,
> 
> What's the status of this patch?

I'm currently rewriting the language of the section to split apart the
AT_PLATFORM and AT_HWCAP parts.

They each behave differently. AT_PLATFORM is a non-nested singular platform
directory that is searched with no fallback, and that needs to clarified
and called out. While AT_HWCAP is drastically different in behaviour.

When done we'll have two lists, and two explanations for the search paths
and their orders.

I'm doing this as part of the upstream review of this infrasturcture
because we're going to change the behaviour in an upcoming release. With
the changes in place we'll have a good place to say "... and now it's different."

In summary: Still working on it. Expect v3.

> On Tue, 2 Jun 2020 at 08:14, Florian Weimer <fweimer@redhat.com> wrote:
>>
>> * Carlos O'Donell:
>>
>>> +Care should be taken when packaging such application with a package manager,
>>> +particularly the scenario where an optimized library is being removed.  With
>>> +certain package managers, particularly rpm, the newer version of the
>>
>> Twice “particularly”.
>>
>>> +application is installed first, which means that for a period of time during
>>> +the upgrade all applications that use the library may start with a mixed set of
>>> +libraries e.g.  the old library from the feature-based search path, and new
>>
>> Commas arount e.g.?
>>
>>> +libraries from the upgrade. To avoid this scenario the new library version
>>> +should delete all known optimized libraries in the post-install phase.
>>
>> There is a different mechanism: Debian has patched glibc to disable
>> hwcap subdirectors if the file /etc/ld.so.nohwcap exists.
>>
>> You now list the AT_PLATFORM directories (determined by the kernel on
>> most architectures) along the regular hwcaps directories, although they
>> are handled somewhat differently.  For example, on s390x, if you have a
>> “z15” machine (as indicated by AT_PLATFORM), the “z13” subdirectory is
>> not selected.  ldconfig will add it to the cache, but it will not be
>> used at run time.  I'm not sure if your proposed description gives
>> readers the right idea what happens.
>>
>> Thanks,
>> Florian
>>
> 
> 
> --
> Michael Kerrisk
> Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
> Linux/UNIX System Programming Training: http://man7.org/training/
> 


-- 
Cheers,
Carlos.

