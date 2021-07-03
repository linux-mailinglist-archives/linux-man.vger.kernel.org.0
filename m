Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 676F23BA9F7
	for <lists+linux-man@lfdr.de>; Sat,  3 Jul 2021 20:21:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229481AbhGCSXg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Jul 2021 14:23:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229473AbhGCSXf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Jul 2021 14:23:35 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B04BC061762
        for <linux-man@vger.kernel.org>; Sat,  3 Jul 2021 11:21:01 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id u5-20020a7bc0450000b02901480e40338bso8020914wmc.1
        for <linux-man@vger.kernel.org>; Sat, 03 Jul 2021 11:21:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=HkCk8v1StJ848jivgIpoViaGqL4PnhoEnUFiti2cfzg=;
        b=X5RjNKX1R0S+w9wG8Mz/HPOAEEeSGLzgra3U4D4AqvB5VDBvj8PQxwrMcnDXpY1HNG
         pQd6yYkfVrVOYjiC1emWDE/raDVYcFxs8vUkcQ1wW3HcrWeylEpLev+PLf0lKux4cfBx
         UvzXAWAj0qipf48tbpsAKiCIrQkdAK6AzPJzPz9p1RKH7Ef6Ca+sNAuY51Ds8n2l7wdW
         H5+0w8kkYz8bj9GIcotrdddPINKeNJauNVtPjQF9gB152sx0klRuzzXNCkprWHqxW9qK
         ZqAjcxtxuGFlWeTsKpZKdhFqxP4sF9Mn7TEX4HUlXbE6ebKG0ELZHqKr3zhLwEgFKhl4
         K4/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=HkCk8v1StJ848jivgIpoViaGqL4PnhoEnUFiti2cfzg=;
        b=JzGIKkTV5OXxxhLq5Dbc6rvG54egKCTOocyG+8QS2uj/MTZM+qYMPzJRows2R/y8sl
         +5UAcvhgiXHTd6GNqxsfIDR4XVm/N/AocC0OR4qfMxMUC9Aa95KwzHxrgJNcHnhiwLBK
         X7rdAlyPChCWvRoDJPUsJ+tSNWU0XIV/EGUMLy1NS/hK3nTAolircv1a1/FMev+Kz4fg
         b1t5LD9xaXSx55/XZqZRGpDSA9eZ7zvsxxu6TJQqyjcJc4j4aSM41OPllSiLm5d/loaV
         67hws3yFvetNzaKpu16q3puDI4WjiZuXKSk6o6LnUB4pCxtkDBHGsEXye2q1UKImMdxX
         8oQA==
X-Gm-Message-State: AOAM533fPcAvPno2CtrdTMIUnscmR1+6ifbhY6dTg64UqNiWxAVKJ9GF
        cngQTE7yXWWxVuDvnYTQu0A=
X-Google-Smtp-Source: ABdhPJzxmdjZMG1uXRTdbVYc2ix1xVBtbHwKdF0wsUtgCEEUIQ/w0V/+RqBgHCBFMsRdiQj82dHVfA==
X-Received: by 2002:a1c:7204:: with SMTP id n4mr6269097wmc.7.1625336459682;
        Sat, 03 Jul 2021 11:20:59 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id s1sm16275955wmj.8.2021.07.03.11.20.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Jul 2021 11:20:59 -0700 (PDT)
Subject: Re: [PATCH 1/1] man2/fallocate.2: tfix documentation of shared blocks
To:     "Darrick J. Wong" <djwong@kernel.org>,
        Dan Robertson <dan@dlrobertson.com>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com
References: <20210621004453.7437-1-dan@dlrobertson.com>
 <20210621004453.7437-2-dan@dlrobertson.com> <20210621042550.GG158232@locust>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <1e8f118d-c403-ec94-b788-2c5660f73a67@gmail.com>
Date:   Sat, 3 Jul 2021 20:20:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210621042550.GG158232@locust>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Darrick,

On 6/21/21 6:25 AM, Darrick J. Wong wrote:
> On Sun, Jun 20, 2021 at 08:44:53PM -0400, Dan Robertson wrote:
>> Fix a typo in the documentation of using fallocate to allocate shared
>> blocks. The flag FALLOC_FL_UNSHARE should instead be documented as
>> FALLOC_FL_UNSHARE_RANGE.
>>
>> Fixes: 07c7a6a35497 ("man2/fallocate.2: Document behavior with shared blocks")
>> Signed-off-by: Dan Robertson <dan@dlrobertson.com>
> 
> Definitely an artifact of unshare being added and removed repeatedly
> during the development of XFS reflink.  Thanks for fixing this...
> 
> Reviewed-by: Darrick J. Wong <djwong@kernel.org>

Thanks for the review!  "Reviewed-by" added.

Cheers,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
