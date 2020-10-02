Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CB279280F3B
	for <lists+linux-man@lfdr.de>; Fri,  2 Oct 2020 10:49:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726017AbgJBItC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Oct 2020 04:49:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387550AbgJBItC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Oct 2020 04:49:02 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8035C0613D0;
        Fri,  2 Oct 2020 01:49:01 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id t10so885374wrv.1;
        Fri, 02 Oct 2020 01:49:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=K7eAm5kls60n05g4vOafAYjVrjTDKWTSLwCtfNq5U7w=;
        b=GCrPAB9JCM+GcuECmdM2g6L33RNDCMeTnk96Sy7QRr1XfpkQRbolqbuoeQ/ZKlMQE8
         XEWN8+3+0M/Q5RRyKMMh3cCz+CEPuxRIBKsZWDPjOQlPw41D5a3HUilPMsVKd6tbKCTp
         TWkArQK1Te+bHUT+8zFq+XnkTb5KCH/U0cS/qU8FSOx+DJ9onp0MapLwGg5wJ80nt9tv
         9tnLkWFXHuNQKv3I8ySkX3Xgcy6dRSevLZj4jjqS1+9mXvvoCoXe1SAW0IVQjTUgXz/p
         XZA3iyiNISiVJIFgxf3k1sOmLYYierho4TNu6oVYHPiueCeYfyI3C+yBAdg84roRFamy
         Mmvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=K7eAm5kls60n05g4vOafAYjVrjTDKWTSLwCtfNq5U7w=;
        b=bWWMNsNx9sbOduTKs2ypwMdfI3o2EmVOiad9Rt2Tsyn59YUq4YRgvZiQgu35jwA6V7
         E1hE5qty3Zwl1H28pdx4NdfgXrGtx5o6WT7MhI2E/KeOsJY2v1kTFxZKS+sf20+CPCye
         Pbol0FNX8SVEUEHhwt+A9mvklsbuptKmFrbcsPlByfsI6UMzDYZqHGHXH/FEQFT1KS8H
         ifNtDHmx82Nk1Vynb/Wx9APm+SvmWJuatu8iCjAo7CNeVU9pYwSH8chBE1ZcsiA97wL1
         GtRuQufAtsArct8jB7tkEoVUNVnV/HVNPdsRVo2tdFj6w4JAdSd4XLZDWTCzZCSZT/pX
         YcUQ==
X-Gm-Message-State: AOAM530LGrlRRn2nsSJDVZpmN2TAVZkwDGV3V4mEIbfKktOCYRds5Ojr
        8qEFQN1mnJTmp4ci4o2dhhm7YUwXw7A=
X-Google-Smtp-Source: ABdhPJxiHP8fC8neI4ZdLiTzpMZHOLYjfesrmeki2/9n/e6Ky8fP3VbEpZJPU4SP2JTIdntsN+GRIw==
X-Received: by 2002:a5d:4247:: with SMTP id s7mr1730226wrr.167.1601628540258;
        Fri, 02 Oct 2020 01:49:00 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id q4sm931747wru.65.2020.10.02.01.48.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Oct 2020 01:48:59 -0700 (PDT)
Subject: Re: [PATCH v2 1/2] system_data_types.7: Add 'void *'
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, gcc@gcc.gnu.org,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <41affebd-3354-9420-0048-bffd14535e95@gmail.com>
 <20201001154946.104626-2-colomar.6.4.3@gmail.com>
 <538b683f-01d2-6148-4f1d-1b293eb5cd6b@cs.ucla.edu>
 <4b86f6e9-0d8a-f14a-73ce-ebbdc9d9edba@gmail.com>
Message-ID: <7c55f6cf-8cb1-7b63-30ec-990f8c370bf5@gmail.com>
Date:   Fri, 2 Oct 2020 10:48:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <4b86f6e9-0d8a-f14a-73ce-ebbdc9d9edba@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 2020-10-02 10:24, Alejandro Colomar wrote:
> On 2020-10-01 19:32, Paul Eggert wrote:
>  > For 'void *' you should also mention that one cannot use arithmetic on
>  > void * pointers, so they're special in that way too.
> 
> Good suggestion!
> 
>  > Also, you should
>  > warn that because one can convert from any pointer type to void * and
>  > then to any other pointer type, it's a deliberate hole in C's
>  > type-checking.
> 
> Also good.  I'll talk about generic function parameters for this.
I think the patch as is now is complete enough to be added.

So I won't rewrite it for now.
Please review the patch as is,
and I'll add more info to this type in the future.

Thanks,

Alex
