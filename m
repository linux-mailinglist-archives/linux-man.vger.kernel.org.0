Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 24B59298377
	for <lists+linux-man@lfdr.de>; Sun, 25 Oct 2020 21:18:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1418674AbgJYUS1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Oct 2020 16:18:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1418673AbgJYUS0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Oct 2020 16:18:26 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7AA88C061755
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 13:18:26 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id k21so4376272wmi.1
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 13:18:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=dj2Z9cUXUmsw9ex+9QFxoQTpKptayN0uLOAHMPLhgR0=;
        b=Hu2dz6vYn+Dykp7s6wDE1Xzjvh7mk7oZ2u/SuNchxbvrdZa2UE4d/hPb3Cr1G/shJ9
         fvFHkILDBnVPT43pk9kAL1ZJyuYVCr9P81i7X5YwgYZAlnqUEQGHKLuyoYpKDjt3KwMg
         J0Ft4XS8lU7C00KuHGT/42glMtPGcuSvKH9vz7eSGrTomY2SjrUFzSXFj3c1sRHQak7N
         isepBJ/3AH14Y/Ue/AX7+XNWYcDj80CN9KiIc79nikHuu4DJmyM7DCkt5G2L5vKj3ZBB
         OMh8vVOsiiPq+uBMC6qLeJBguA7U5Xz3zpEhZsq9gWV4EPAffokGzkdbxvUEFIWIunGg
         kq5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=dj2Z9cUXUmsw9ex+9QFxoQTpKptayN0uLOAHMPLhgR0=;
        b=DgjijbqtzItLFyOl5x6FeBJCNnOQmjzx5+8Hbdz5b4nJmTZBA24UHHMclkFtvxwny6
         hhasBLe7JHjWuHNfvqXvjQ3VZ6xpb5KQbE5mcgf9MAuThbfFZNftt095wOKXLAvT/+mV
         R7mcOFmufJpaGYeSNovHKVHXHsUr0FXD1a5kEQ8kEBaG7VWL9Zejxnw6znxG3r99U+mg
         HWmPEu6bZIO57fQCtGTM0WRWjFIUsTO8xamcd3+1Yr0zew5iKqJgdswy+ee7E83a8OFg
         efyX2LNBnmGQRp1jWS3DuR0ank68ChWr7ZodaYqbMuqlI15D2kRkta6bAD2icmGiScGN
         ecxg==
X-Gm-Message-State: AOAM533iRk9OW8DS7B3cWAbFSRSx12JEgHae59nDbc+uVvo7MhlIopxN
        CNzgLd+aILyT+e1dVX/D1BzmhV/l9O0=
X-Google-Smtp-Source: ABdhPJxKT1TWVq77OZ1ewFiCSChmNdOgMFwA8my5umujKJdeEhf8ZEx/+ZQSPgR31N3eUy+oYkKLYQ==
X-Received: by 2002:a1c:3c4:: with SMTP id 187mr7819236wmd.14.1603657097658;
        Sun, 25 Oct 2020 13:18:17 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id j13sm18731773wru.86.2020.10.25.13.18.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Oct 2020 13:18:16 -0700 (PDT)
Subject: Re: [PATCH] circleq.3, list.3, slist.3, stailq.3, tailq.3: Use the
 'struct' keyword when appropriate
To:     mtk.manpages@gmail.com
Cc:     linux-man <linux-man@vger.kernel.org>
References: <20201025104623.54594-1-colomar.6.4.3@gmail.com>
 <CAKgNAkj_TGUN6_UNpYjrfZ=EppM4X+Oxbm7zjc7jgtgrFVuKLQ@mail.gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <03cde187-eb5d-f485-07ba-9874f5762c79@gmail.com>
Date:   Sun, 25 Oct 2020 21:18:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAKgNAkj_TGUN6_UNpYjrfZ=EppM4X+Oxbm7zjc7jgtgrFVuKLQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 2020-10-25 12:41, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On Sun, 25 Oct 2020 at 11:46, Alejandro Colomar <colomar.6.4.3@gmail.com> wrote:
>>
>> This helps differentiate 'TYPE' in some arguments
>> from 'struct TYPE *var' in others,
>> and is technically more correct.
>>
>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> 
> Thanks. Patch applied. Everything is not pushed.
> 
>> ---
>>
>> Hi Michael,
>>
>> This should be the last patch for queue.3 and its forks.
> 
> Thanks for all the work!!
> 
> Could you please check my commit 9484d926f to make sure it's the right
> correction.


Yes, it's correct.  Thanks for all the fixes.

Thanks,

Alex

> 
> Thanks,
> 
> Michael
> 
> 
> 
> --
> Michael Kerrisk
> Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
> Linux/UNIX System Programming Training: http://man7.org/training/
> 
