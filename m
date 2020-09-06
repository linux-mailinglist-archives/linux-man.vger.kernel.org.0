Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D80EE25EDE6
	for <lists+linux-man@lfdr.de>; Sun,  6 Sep 2020 15:03:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725803AbgIFNDN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 6 Sep 2020 09:03:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35664 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728763AbgIFNCr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 6 Sep 2020 09:02:47 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0034AC061573
        for <linux-man@vger.kernel.org>; Sun,  6 Sep 2020 06:02:36 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id z9so10759279wmk.1
        for <linux-man@vger.kernel.org>; Sun, 06 Sep 2020 06:02:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=LHVN+wT0GC5KHI/1bnlyTknhXSNP6/7yuH+wdzpi00A=;
        b=Vlr/Z+/59uJUkydxsyRr6l9L2bju0qgU0r3QZBSewo+cWnJ7Eeqiv4IzWpSFxDIPAL
         6sxjg6MqHvrI0HV4lwBp39eZwA+38c7+5mcKWX0hDsajEVHZfBomkiBmqgmcbum5gwyI
         DDPJ6l1aQnhm+wnbA5R4f71xkZO+XGXs8zfPXfql45woMxw373M1jSneB4ewce0hafhY
         zZXkBx8lznk0WnxEINdFn693GkXtyGC2CRU5Q3nHZtUBjDOpQbX8AHzC9BOlYXmXwHPA
         bwuY4G/8VdsJtS3VJ6wtanFevImucqcf5s+/CFknY9dIEUVdXQ4aXD6gHO7hydfJKTy8
         bB1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=LHVN+wT0GC5KHI/1bnlyTknhXSNP6/7yuH+wdzpi00A=;
        b=YH+ySnflngWdKfOSbYUiH9KVbZUSuoHhM3ClWrMbpta5BPg+Eu09eLTleFMNpSL8MY
         qHa8jtdNaxARIvNz0qaLwyCunm7bslbEClTmw48wN4cYNJkJujXAtsWY8RL8m6HREftl
         3j1p/wzu7qgG1VPd4qrJBzQ3xXJcxHVyhGtOa+nu0QMEUCyt3Dv6QZx6r0lX4/SCA8n8
         rFYXQV/jTFIoD7VcrjQE/X3ZdvGVGGPACbp3Rs6ZbaqpRH3A6/h6b0QOqmVB6fTQFdcQ
         eB+hzj5iJoYNgteNGCDdlASELud0DA3drpbY4vlGMRMQEkWI+3MQhDU9RAL6s4bvWGrr
         /UsA==
X-Gm-Message-State: AOAM530KyEK9xCioVktBrVNfYZ4DfpLhRQ1VIfisMZ+TjLA2sSukuB5A
        LYIc4uKsCo2RnFqwDs3QR6Q0aS0Am7E=
X-Google-Smtp-Source: ABdhPJwYNC3EU4uqulPX86lsFKOap0mLd84Rm6dx+oVK/oJRqMuDJkMykmYf2RRZWWcSvNXep5Q4wg==
X-Received: by 2002:a1c:a3c4:: with SMTP id m187mr17208500wme.159.1599397355506;
        Sun, 06 Sep 2020 06:02:35 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id i6sm25044916wra.1.2020.09.06.06.02.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Sep 2020 06:02:34 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 0/7] Remove and/or fix casts
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200905151501.609036-1-colomar.6.4.3@gmail.com>
 <498c522e-e684-22eb-de82-e766973d4461@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <515d4ff7-2f60-456d-755a-68c232f59561@gmail.com>
Date:   Sun, 6 Sep 2020 15:02:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <498c522e-e684-22eb-de82-e766973d4461@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/6/20 2:59 PM, Michael Kerrisk (man-pages) wrote:
> Hello Alex,
> 
> On 9/5/20 5:14 PM, Alejandro Colomar wrote:
>> Hi Michael,
>>
>> [PATCH 1/7] sock_diag.7: Remove unneeded casts
>> [PATCH 2/7] pthread_sigmask.3: Remove unneeded casts
>> [PATCH 3/7] msgop.2: Remove unneeded casts
>> [PATCH 4/7] user_namespaces.7: Remove unneeded cast
>> [PATCH 5/7] dlopen.3: Remove unneeded cast
>> [PATCH 6/7] bsearch.3: Fix intermediate type and remove unneeded cast
>> [PATCH 7/7] qsort.3: Fix casts
>>
>> Here's a set of patches removing unneeded casts when they are
>> unneeded or incorrect, and fixing those that are incorrect but can't
>> be removed.
> 
> I've applied all of these ,except 5/7 (I'll reply to that mail).
> Mea culpa for 2 and 4...

Oops -- and I meant to say: thanks for the patches.

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
