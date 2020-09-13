Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 72018268177
	for <lists+linux-man@lfdr.de>; Sun, 13 Sep 2020 23:29:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725941AbgIMV3Z (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Sep 2020 17:29:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725939AbgIMV3Y (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Sep 2020 17:29:24 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A417C06174A
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 14:29:24 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id a9so9365903wmm.2
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 14:29:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=cEabhdFXuqNomx08vdveT4SIU1Oaxh5j9A1FG1jD4Tc=;
        b=qGrTCRRnfjnRGOLdXY1SFa+tN0/AOEs2ded7BIJlzynyE4x5hxYGyxqpcl0cIXrxAy
         408aTtK7cKHRgp7KSyjilw7rSWIn6z+n//xz1DhskyNT714oM8ERIos+nZq9Yt8a3KLP
         edayWOyinSIRHwRGYdB8zGbn9qJj3eAXj69zKGzcHmibo/930sW/fhzbfTeEsQgBv+lX
         55F/lRXXjDDrVNmf2un1NFNuEdRVxtKXD/TPZJqQpF2pQrIA+YVGynqOtxoMbS5V+Md4
         fEMAnnj+LlQhKUzdtcmfT0vcwkQJnb2zHIr285QxcWbJtlZVH2vHcL+JzpUmTkMKM+gC
         bzaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=cEabhdFXuqNomx08vdveT4SIU1Oaxh5j9A1FG1jD4Tc=;
        b=r/T+Q4BuqNh2JGjqBG1vJ4Kh2YNidgS8bOLYRPlEICgnmfaC49sKVAWAPs1wcJp5Ns
         vYsIooKbfWmwh1h2pBnmIqlPPoiDZhNsOdSOcvvXdIR54bWTioSKbfYF3dzJ14F0Q3lq
         dDRGgIkbF+IDiVKqbtugRg5PITZKcWXsjGBGWMKYmO37lSLGnPT2mOt0Lyx9xVtoHY+Y
         VhRI6j4B8TEXCI+V2cC3wWsv5dmEbq1+sbdpvgmYmQMv6+Mhq1Hf+PnZpmg+q//f6shV
         oa5UFj8DqkLOEIoBnZlWkWQPWmXUOtMzEQt35LuZjQ1KtiAeMrl2kivVICZKGg40aC5C
         NQoQ==
X-Gm-Message-State: AOAM5306zlapgVQFvPAPwMID14R8G3dsakHdY/83vpX/FutG1wk5BDDA
        6tnudrso1BxZ6v5EeH6jEIc=
X-Google-Smtp-Source: ABdhPJz4xe8fSWMWkyRtZMfctgPJfiABxKMmejrZ1Gjc3MO4AM2e28ayn6jMk9W2IbpCgM4FTN44Pg==
X-Received: by 2002:a1c:40f:: with SMTP id 15mr12573125wme.175.1600032562657;
        Sun, 13 Sep 2020 14:29:22 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id n17sm18160013wrw.0.2020.09.13.14.29.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Sep 2020 14:29:22 -0700 (PDT)
Subject: Re: [IDEA] New pages for types: structs and typedfefs
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Florian Weimer <fweimer@redhat.com>,
        libbsd@lists.freedesktop.org
References: <fb6463f6-49d7-e473-d5e1-1cdf8375e498@gmail.com>
 <6c5b89f8-4281-4434-cbee-28f88d07920c@gmail.com>
 <4ea99048-4bfd-9cba-44cd-9c37fdad8fce@gmail.com>
 <CAKgNAkjys+LYn1qaSXhM2gJfkv_UOnpeNPyh3QCqNLcMNBKB+g@mail.gmail.com>
 <d093c1a5-b31a-1200-3cd6-6b5d2cf28ad3@gmail.com>
 <3a56a8af-6371-89f3-cac2-31dd64791c99@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <65e2bdf5-425b-9381-b1ac-3f101113c70f@gmail.com>
Date:   Sun, 13 Sep 2020 23:29:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <3a56a8af-6371-89f3-cac2-31dd64791c99@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael

On 9/13/20 10:20 PM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
>
> On 9/13/20 2:53 PM, Alejandro Colomar wrote:
>> Hi Michael,
>>
>> On 9/13/20 2:01 PM, Michael Kerrisk (man-pages) wrote:
>>> Hi Alex,
>>>
>>> On Sat, 12 Sep 2020 at 10:59, Alejandro Colomar
>> <colomar.6.4.3@gmail.com> wrote:
>
> [...]
>
> Here I would *not* show these kinds of typedefs. The point is
> that these types should be treated as being somewhat unknown
> (e.g., for casts in printf()). Here, I think instead maybe we
> just have a statement that POSIX makes no specific requirements
> for the representation of this type.

Agreed.

>
> [...]
>
>>>> Sure.  And for the structs, I'd allow:
>>>>
>>>> 'man struct timespec'   (For simplicity)
>>>> 'man struct-timespec'   (Similar to the git man pages)
>>>> 'man timespec'          (For compatibility with libbsd)
>>>
>> [...]
>
> Offhand, I can't think of any such conflicts. Many of the data
> types have names suffixed with "_t", and there should be no
> conflicts there.

Yes.

>
> For other types, such as timeval, timespec, etc, I don't expect
> there are many conflicts. One case that I can think of where
> there's a function and a struct with the same name is 'sigaction'.
> But there's not really a problem there, since, on the one hand,
> I don't expect that that is one of the types that should be
> documented in system_data_types(7),
Why not?

> and on the other hand,
> currently "man sigaction" takes you to the page that documents
> both the function and the structure.

Fair enough.

>> [...]
>
> Throw in 'struct timeval' too?

Fine.

>
>> Do you think there's any page that has a similar format to what we want
>> to base on it?
>
> I think nothing special is required. See man-pages(7) for general
> info on the layout of pages. I expect the types can be placed
> as an alphabetically ordered hanging list under DESCRIPTION.

Ok.

New question:

I've already started and I'm writing the short description on 'time_t'.

POSIX has copyright and all rights reserved, but do you think it would
be fair use to copy descriptions such as "Used for time in seconds."?
Or do I have to come up with a new short description?

Thanks,

Alex


