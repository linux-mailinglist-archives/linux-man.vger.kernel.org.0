Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 75CAF2CF60F
	for <lists+linux-man@lfdr.de>; Fri,  4 Dec 2020 22:21:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726441AbgLDVVT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Dec 2020 16:21:19 -0500
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124]:50856 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726021AbgLDVVT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Dec 2020 16:21:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1607116793;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=eX/cLKTOxfHszRF5/KmrRKeyElEVyqJrf8UsqUxZVcA=;
        b=BMG6ZKv46P7JyeIoSFOjjedy5sXJYMTrHZQ+AmX1vaRTWfSEnlYV1f3Vw0YyYQ5eDQB7yL
        yFdxwlBUcFTmViPOl4z8SAGMe7lZUEcdrfl1a3JlbT+3+vqevdB1lqvk60v04wRhx4CEhD
        bKsaNSNczoW3ZWabHykXgqRmvKBbvy4=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-172-SN7z_0qJPpaKK9VaFSJzAg-1; Fri, 04 Dec 2020 16:19:51 -0500
X-MC-Unique: SN7z_0qJPpaKK9VaFSJzAg-1
Received: by mail-qk1-f197.google.com with SMTP id o25so6460954qkj.1
        for <linux-man@vger.kernel.org>; Fri, 04 Dec 2020 13:19:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=eX/cLKTOxfHszRF5/KmrRKeyElEVyqJrf8UsqUxZVcA=;
        b=Iv+740U5VuXdQYoS2Ck5gYfY6PdCvoMzzknzY9dHzPIzoOCxgs8lfeMoICmZ5lqzim
         CDWXY66q+chw+ekrPIs7BJbZMcZPOzt2uPm++CfCESYyHrTgG6aTK5/QAu4xbF/HT4ii
         1SaacyrozY1VESEC2EWFP2aU1lBKssqAsn5AkIDiSkXjTSbB6cs0PHqtUeAOvGuVdBRu
         +hmQR/Ssm9CIXjeKQkwvlKodkXluFl2odLBG7jnuhrnYHy5q37xeEgAPp9QqvfRDHasr
         YoXOZpvs4w7reOO04nfAWTFFiZPe86A0ejeN1Vfco3C49DGiM+1R5gjbIkUh25gNnegB
         ss6w==
X-Gm-Message-State: AOAM533Bwz6Wjtv9U1qzvdrkiaL3VoNCc2KHG3L8I7pMkX+NRSF8s2tP
        OdIT2dowsm4iWD/4MmIcYzbUx8CYz4qJs9j3H4wbSGJBFABBhVs9JPkkJsRI2Y9hPuZ5MjC5GFt
        O8U0IR/xug7uAR/NE8PhamFL3paaH9fCirho0UoiajM6O11jOOooIWbbz3DU7rMhLe5LCTg==
X-Received: by 2002:ac8:43d0:: with SMTP id w16mr11417307qtn.162.1607116790885;
        Fri, 04 Dec 2020 13:19:50 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwO7ZCYI6ySoe2pH7i/b2MZLBh++AFsL4D4IFEyLOzNDSpU6bTn8guwSy9LxukwCWJhk5stWA==
X-Received: by 2002:ac8:43d0:: with SMTP id w16mr11417275qtn.162.1607116790633;
        Fri, 04 Dec 2020 13:19:50 -0800 (PST)
Received: from [192.168.1.16] (198-84-214-74.cpe.teksavvy.com. [198.84.214.74])
        by smtp.gmail.com with ESMTPSA id l22sm6545717qke.118.2020.12.04.13.19.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Dec 2020 13:19:50 -0800 (PST)
Subject: Re: [PATCH v2] ld.so.8: Update "Hardware capabilities" section for
 glibc 2.31.
To:     Florian Weimer <fweimer@redhat.com>
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
References: <57abae5e-2394-0542-9e21-10c0bb837078@redhat.com>
 <87pnaoe70h.fsf@oldenburg2.str.redhat.com>
 <14751c26-4c4d-24c1-df12-429931b61780@redhat.com>
 <87r1uy3sgb.fsf@oldenburg2.str.redhat.com>
 <CAKgNAkjB3-LvJaTQ5cHyc-cduD6Yr0_dBrSmN_bih+YOzuBCww@mail.gmail.com>
 <84511dbb-2c38-b928-3155-1027a6078a96@redhat.com>
 <87ft4mue8f.fsf@oldenburg2.str.redhat.com>
From:   Carlos O'Donell <carlos@redhat.com>
Organization: Red Hat
Message-ID: <894de23b-145e-5b51-1393-0fc2bcb3cc53@redhat.com>
Date:   Fri, 4 Dec 2020 16:19:49 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <87ft4mue8f.fsf@oldenburg2.str.redhat.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 12/4/20 4:12 AM, Florian Weimer wrote:
> * Carlos O'Donell:
> 
>> On 6/10/20 2:00 AM, Michael Kerrisk (man-pages) wrote:
>>> Hi Carlos,
>>>
>>> What's the status of this patch?
>>
>> I'm currently rewriting the language of the section to split apart the
>> AT_PLATFORM and AT_HWCAP parts.
>>
>> They each behave differently. AT_PLATFORM is a non-nested singular platform
>> directory that is searched with no fallback, and that needs to clarified
>> and called out. While AT_HWCAP is drastically different in behaviour.
>>
>> When done we'll have two lists, and two explanations for the search paths
>> and their orders.
>>
>> I'm doing this as part of the upstream review of this infrasturcture
>> because we're going to change the behaviour in an upcoming release. With
>> the changes in place we'll have a good place to say "... and now it's different."
>>
>> In summary: Still working on it. Expect v3.
> 
> Carlos, what's the status here?  I need to write an update for
> glibc-hwcaps, and this likely conflicts with your edits (at least
> semantically).

I won't be able to touch this until the new year. I want to handle the
higher priority glibc patches for review.

Please feel free to rewrite, change, and do whatever you want.

-- 
Cheers,
Carlos.

