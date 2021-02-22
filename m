Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2A1E932209D
	for <lists+linux-man@lfdr.de>; Mon, 22 Feb 2021 21:07:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233395AbhBVUGF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 22 Feb 2021 15:06:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230099AbhBVUGB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 22 Feb 2021 15:06:01 -0500
Received: from mail-io1-xd2e.google.com (mail-io1-xd2e.google.com [IPv6:2607:f8b0:4864:20::d2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06C3BC06174A
        for <linux-man@vger.kernel.org>; Mon, 22 Feb 2021 12:05:21 -0800 (PST)
Received: by mail-io1-xd2e.google.com with SMTP id f20so14613958ioo.10
        for <linux-man@vger.kernel.org>; Mon, 22 Feb 2021 12:05:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kernel-dk.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=m2NmaBXNLaZ7ex0MQETJN4rvqOPmFU4iJPR4O6mx6Kg=;
        b=0azSo8T/cxGumzsc1LrnzItywsIkAPf6iiq2JuF0R451Ycosa+9paBBLSZpbrXXYlx
         5aIA3cmLlDRsSROQEvU0KQOEm0wswqX2QyjLtpWfO/KUxmECP+5GG4jGjr+Jek+lSf+E
         JgkzvDOVFZ50jiLr4uzNmEwx1n3491bq3pumXefaqzedh2uSljg04wqrgCbsjVveOHYm
         CuXdkhoTn6zXiMG6nCjLqUDxVJra+f3f6imikG3EW06netg45Y842IfWGi3kZcWL1UNj
         q6RrePBZDUKzBfS/yP9sUyPz94kqllSasvAPwFFLxrKwr6A9gH9/JhOLnEjbfXwpdrEY
         WJOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=m2NmaBXNLaZ7ex0MQETJN4rvqOPmFU4iJPR4O6mx6Kg=;
        b=V7Hmpr1e3V+s40kJMQDNzIhYUDonxwTp4yQewvH9bRNV7TYtbFgzcZ3cevUqBG6ste
         /iSdCQ6TANyAI3b8KcEkItc24M+gtnINxDeBhXWtD8uD64mNtLQLcO05ArEKcgJxSRjR
         HU+wDkliRugA2vG7yneERYNH0h+zN3ZTQ4ZpfRARD3jooDg9ydbRnUIdonRYZfD7jxgQ
         571agwd0vfmNoBzv46c3aMSebwCzOAr1j6x4XmSgs5iTbq7GqPGPBDirMi+Lf1U0nK6/
         l27ZDPBjRrySou7Fe29u/vTZ+WXJhqOieQ1BqaZ/846yLgUZ1woCIurVXf2yEQelGvtI
         i6iA==
X-Gm-Message-State: AOAM530fA8BMcYAYMcX3YJoybr53NVytlk+c1z3QpYfVsnooNsh0fUwi
        Too3MoOyChuQh9FCoyLIYd7/kXDjowf4jnpo
X-Google-Smtp-Source: ABdhPJwMqLRvKGMKLXdN8x2h+F2G7vPTyRuSKYkA+zHi+6cSCbwqiMkU1ZiFTnzjkCos+n7XeUjWcQ==
X-Received: by 2002:a5e:870f:: with SMTP id y15mr9446095ioj.68.1614024320219;
        Mon, 22 Feb 2021 12:05:20 -0800 (PST)
Received: from [192.168.1.30] ([65.144.74.34])
        by smtp.gmail.com with ESMTPSA id s9sm12337236ilt.77.2021.02.22.12.05.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Feb 2021 12:05:19 -0800 (PST)
Subject: Re: [PATCH v3] man2/openat2.2: add RESOLVE_CACHED
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
References: <51d86aa7-8a19-5457-6932-0bd3c746c4a6@kernel.dk>
 <38c96b3d-84b2-bebd-4163-27fd2b3295c1@gmail.com>
From:   Jens Axboe <axboe@kernel.dk>
Message-ID: <b0277762-1eda-7b13-1a40-2abb68ba1142@kernel.dk>
Date:   Mon, 22 Feb 2021 13:05:19 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <38c96b3d-84b2-bebd-4163-27fd2b3295c1@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2/22/21 1:01 PM, Michael Kerrisk (man-pages) wrote:
> Hi Jens,
> 
> On 2/21/21 2:12 PM, Jens Axboe wrote:
>> RESOLVE_CACHED allows an application to attempt a cache-only open
>> of a file. If this isn't possible, the request will fail with
>> -1/EAGAIN and the caller should retry without RESOLVE_CACHED set.
>> This will generally happen from a different context, where a slower
>> open operation can be performed.
>>
>> Signed-off-by: Jens Axboe <axboe@kernel.dk>
> 
> Is it correct that this feature is now merged?

Yes, it's in Linus's tree:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/fs/open.c?id=99668f618062816ca7ba639b007eb145b9d3d41e


-- 
Jens Axboe

