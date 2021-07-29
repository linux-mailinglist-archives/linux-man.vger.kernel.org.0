Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6CB183DA0FF
	for <lists+linux-man@lfdr.de>; Thu, 29 Jul 2021 12:22:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235598AbhG2KWR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Jul 2021 06:22:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57718 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235155AbhG2KWQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Jul 2021 06:22:16 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08D4AC061757
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 03:22:13 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id r2so6291401wrl.1
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 03:22:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Cu8/2+9mIyvtBGJX3Qb2Tpc/fBjGiTV761M/2jGftpc=;
        b=DWsmBHygA6YKHV6Oh0IW6SgpCDinKDdKFUzgQ7XW0LANYI+3LQv6yBYS5DgyGDekeO
         vApZIrAxvBavL1QLOBGI1SxBn00SgkyqtEfk2QHIxeG7jdqF5m2yzru6cJ80gC+X6hQG
         MevR+WoXTl8rNWE1h9uqrO8WhoukMokTaarWASHUtvhqJSSZF+dDDAhRKaRkXYQg40jp
         T5QkVGmwSO1jPpJeBpTvfHieBVnoZmrUIxeoP64JJO9z4kOh58wiFuGn4j5u4KWctU+O
         uxt8xsRHZvQC2/kRI2tciJyPC6VEDURAch1mjGKa/6xFdgiRzSW6jr5nYbrMuIzZzc8o
         cVvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Cu8/2+9mIyvtBGJX3Qb2Tpc/fBjGiTV761M/2jGftpc=;
        b=ul5Mh6MUi5tpfjECfvnEDFAkEcKeEIwntoYIrg0EvVTL5+E6l28rYUlO9tzH8uYbYP
         ESEpzUHOlUZUzjrMIDnPStDKVuuf7J6JgEoXhQOKGejtMuttyq1jEC211QJkD/hwezUH
         wc/heUxrzY6nkvHYeUEfzx5Yw8LyJW451tAvHmbniZwtfDQOJCIUKvRHgDeOG+Z55cTj
         sRAYwYy82i1CCAV6ixeJUBikIAqijtJJh1LSVP70xGZdma4Q0FvWdkisHBpEZub2dQFW
         uVhSbKvIE7Ej8oeymtGgIjueFIPMTCDY4OVtGM74QjNua1PGvYqmO7KimUiFpWsOIV9P
         Rnxg==
X-Gm-Message-State: AOAM532rO2d/m3+HK0NlL3OspH59n/F9LHTb+2oN5qLipfwM+4JdU8GI
        lGkrOUmgyE5aONqlBTtYBwA=
X-Google-Smtp-Source: ABdhPJwt5wBS5nYiOQvdnLWdZRNgmPl60YFutG5/VK5iov7RQvyp1EZvuwF+SBdf2afjXIsUygwsJA==
X-Received: by 2002:a05:6000:232:: with SMTP id l18mr4091437wrz.24.1627554130440;
        Thu, 29 Jul 2021 03:22:10 -0700 (PDT)
Received: from [10.8.0.150] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id t1sm2814470wrm.42.2021.07.29.03.22.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jul 2021 03:22:10 -0700 (PDT)
Sender: Alejandro Colomar <alx.mailinglists@gmail.com>
Subject: Re: [PATCH v1] futex.2: Document FUTEX_LOCK_PI2
To:     Thomas Gleixner <tglx@linutronix.de>,
        Kurt Kanzenbach <kurt@linutronix.de>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
        Sebastian Andrzej Siewior <bigeasy@linutronix.de>
References: <20210625101051.1206558-1-kurt@linutronix.de>
 <8735rxjzxm.ffs@tglx>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <0b8992e1-37ae-0b02-a9a6-df635d6fe9b9@gmail.com>
Date:   Thu, 29 Jul 2021 12:22:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <8735rxjzxm.ffs@tglx>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Kurt, Thomas,

On 7/29/21 10:18 AM, Thomas Gleixner wrote:
> On Fri, Jun 25 2021 at 12:10, Kurt Kanzenbach wrote:
>> FUTEX_LOCK_PI2 is a new futex operation which was recently introduced into the
>> Linux kernel. It works exactly like FUTEX_LOCK_PI. However, it has support for
>> selectable clocks for timeouts. By default CLOCK_MONOTONIC is used. If
>> FUTEX_CLOCK_REALTIME is specified then the timeout is measured against
>> CLOCK_REALTIME.
>>
>> This new operation addresses an inconsistency in the futex interface:
>> FUTEX_LOCK_PI only works with timeouts based on CLOCK_REALTIME in contrast to
>> all the other PI operations.
>>
>> Document the FUTEX_LOCK_PI2 command.
>>
>> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>

Sorry, I merged it and forgot to reply.  Patch applied (And a minor 
inconsistency fixed: s/5.14.0/5.14/ ; All references to kernel 5 
versions have 2 fields in the manual pages).  And some other minor fixes 
too.

> 
> Reviewed-by: Thomas Gleixner <tglx@linutronix.de>
> 

Thanks for the review.  I'll add that line.

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
