Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ABA332708A6
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 23:57:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726361AbgIRV5b (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 17:57:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40604 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726250AbgIRV5a (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 17:57:30 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76E40C0613CE
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 14:57:30 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id o5so6977626wrn.13
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 14:57:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=8G1Nja5qO1mdkgyunMZag3+7fXltV8EyD11NnhWeNd4=;
        b=Y/6c0CeJsQ1UGL/h0Wy2cCu0vthaJHP85ctIZPUA8uoLMJ5xxELupdWzF/HvkdKMEk
         ytzRabXxPizyPga7gzxLlOZwLxMaBKEBf57dkDRsggv/nxMyob3ogBcoljGQ1pkW/MBG
         oDzvMB5WuWgeUCeYkHuW+Gyhk0p+7Ub02Dr6yt9iRcrv8zDQEA5/nCTTeWj6bu2Vbmg5
         00Sqt9tUl9iT+EvW3KFzvOQTYR0hS3yi2dr4P+WK0hzC+jWZqAkKbzGmc4aZQfnYOMrB
         8dKmP4rB3hnE6XNOD/lxnyXKzL7EULX3WbswsjCDWqPpjAc0h5agoi87IvypYqRkvTKX
         Oy5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=8G1Nja5qO1mdkgyunMZag3+7fXltV8EyD11NnhWeNd4=;
        b=axAXB6G0wmfrKa/apgIZJWowuo7w0RVgPh80VuK2cIfnVlsfNWh4iZzE4TD7Fiutgf
         jqC+zCtw3oaAHkLS3s7bdXEpdU6Y86XcfjkSDhs2xRSP/Qy5YUIxUQ54r4rzw3zjukOY
         ZssL4QzHkJxVfokWofKQicKyC56SufXx5+4fLwdrwFXTTKvWD78hD/BfXOeih7blQbXU
         K5UaFAUbJIR+u8/7tRlBmkymrhMCzbWO/zWsrgwojJ8Bm33fGeyHis1pS/rvFna7gJvt
         fPuSPkqqL2vzlBmJsxwZcJ/RhEiSxISOqFI9xEVkFHhcs18Ad67M9kAoGZxc9LK3OEVB
         21Lw==
X-Gm-Message-State: AOAM531wFCa+2qmqk3RNplgVTNNZgqeCyI4q6X/rxR+fCXKvoXATBSY5
        e93K7zWdygzljyPwkep6DGBo6rXcQP8=
X-Google-Smtp-Source: ABdhPJyQkgSfAnAlwEFQ8oNkB6f3YOVEMrRV4jp8iC4ncSwLXvlI+qEi80B4DugnUDOUqESi6CTs2Q==
X-Received: by 2002:adf:ec87:: with SMTP id z7mr42804652wrn.57.1600466249122;
        Fri, 18 Sep 2020 14:57:29 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id k6sm6860140wmi.1.2020.09.18.14.57.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 14:57:28 -0700 (PDT)
Subject: Re: [PATCH 4/9] sigevent.3: New link to new documented type in
 system_data_types(7)
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org
References: <20200918170442.94920-1-colomar.6.4.3@gmail.com>
 <20200918170442.94920-5-colomar.6.4.3@gmail.com>
 <8cea2a6b-bbe1-3289-a0c2-3baa75ec757a@gmail.com>
 <3f33a784-6771-d91f-ae15-2ba599c108ea@gmail.com>
 <de6a7e53-cd66-b58b-058a-f7eefb8d5984@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <5a87f422-cb26-76d3-d89b-2287c731093f@gmail.com>
Date:   Fri, 18 Sep 2020 23:57:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <de6a7e53-cd66-b58b-058a-f7eefb8d5984@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 2020-09-18 23:43, Michael Kerrisk (man-pages) wrote:
>> Fine,  sigevent(7) already documents the type, so it's perfect.  The
>> type will be documented in system_data_types.7 anyway, so no problem.
>>
>> I guess you'll add a reference to system_data_types(7) in sigevent(7),
>> right?
> 
> Do you think it's needed? I"m not so sure...

Not sure.

There are a few things that are documented in system_data_types but not 
in sigevent(7), but not too many.

Thanks,

Alex

> 
> Thanks,
> 
> Michael
> 
> 
