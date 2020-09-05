Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2F76325E8A7
	for <lists+linux-man@lfdr.de>; Sat,  5 Sep 2020 17:24:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726320AbgIEPYb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 5 Sep 2020 11:24:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726266AbgIEPY3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 5 Sep 2020 11:24:29 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82EB0C061244
        for <linux-man@vger.kernel.org>; Sat,  5 Sep 2020 08:24:28 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id z4so10331511wrr.4
        for <linux-man@vger.kernel.org>; Sat, 05 Sep 2020 08:24:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=+wZ9UnSUNCf0UijyLuB00G7MEe6Cjh9RsytJzfDULXs=;
        b=f+RP1WwIS4eULyHgR1BBoReavJFbXkBqnJpxxCaxLvyVDedAr7nscrxM87YDEWA8+Q
         CxepjGU6cWwzB/t8v5qgbysKQexRsySJjXMQWQwypmO+Otz+laTDXMoFylPrICKthldT
         N6qVTnL3MxfGg/7UZ8yYzwcgfhvzK/SQWtTYNdLMPylLiF23TncWRQaK6JrUI4b3mKal
         6UOqzNHBFSJAVSHDyFX4UNP8AVpAh9jKCf0UMXHXKcuCRv7q8P9YRAjoIvnb9My/QhiK
         2+A2FV0PzE9TtDK41mlkz4oayM5Fhg51u8aGmjXrDXFSYl36qExsrQtUUySzjHzG8g5n
         p33A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=+wZ9UnSUNCf0UijyLuB00G7MEe6Cjh9RsytJzfDULXs=;
        b=Omu2T77WpQXKvSMJffont9U6+ZKwY5311I/RUMxTOHC3a8k3ZWq7rEF9bt9r8cwgpo
         qd7BWOGB7dYptTUzL9tGH+efI/yc0VoiJPrKVSuG7JWJ4im3xZiIlxgDDAvb8AuMZAPT
         FZ//pVB323vR8Q0ipTFZkW8S8QDJfbeMvTc8FCihb8O7OzUT/YS76bsEOKhMjp4bCf85
         3/HCKAYdv4cVE986Ys5LIQTSICKHOq1t34/KVXyCarn1HFZpiqhir1ozH8tfyaXNd0AA
         /npR+75hYijWQ4MPEdyWPjIV4Iket5pVtufQkm9nAJ9KBzOkLX9YVX4pNaIGTN4UjIBF
         Grzg==
X-Gm-Message-State: AOAM533BLhwgkdKsmiQGt86LMNQHqyTDwEfsZ2+KhFvhsbqaXGHe8ouB
        Ch1wVXihD19ToSM2pUgIWn4=
X-Google-Smtp-Source: ABdhPJyQS5jOJChfLgtkY2f4EDkSXzc3N70A5TZYCXXvdcJ9O3wt62o6QG0eEAXrqkL+QetyYzv1yA==
X-Received: by 2002:adf:f3c6:: with SMTP id g6mr13910800wrp.340.1599319463608;
        Sat, 05 Sep 2020 08:24:23 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id a11sm13864463wmm.18.2020.09.05.08.24.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Sep 2020 08:24:23 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>,
        Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH (2) 34/34] unix.7: Use sizeof consistently
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
 <87d5b09a-a3c8-622c-d731-5d42644a5f24@gmail.com>
 <61d2f2f9-08d0-9f1a-9642-ae56b3f4b61d@gmail.com>
 <4bb9e639-83ee-ede0-f6ad-dfc16787d358@gmail.com>
 <3c25bbda-bc90-1364-77cd-2c637f09d611@gmail.com>
 <af5bf8ce-8bb8-3819-a8e4-1454be92097f@gmail.com>
 <4f0ff40c-2a63-736d-698f-0efc436c3678@gmail.com>
 <5343bbd1-b03f-29bf-2def-c27ba3a3616e@gmail.com>
 <4eba3ee9-bb6a-810f-55ae-7f0d76d446a7@gmail.com>
 <82aa16c3-60fe-68b3-103f-6d438563f3c2@gmail.com>
 <6e6d6796-32e0-9cc1-1e6c-4abb0b702499@gmail.com>
 <718db444-6679-224e-c649-6dd219b9db3c@gmail.com>
 <36a9ef8e-6fd9-e074-2a19-d8529f425501@gmail.com>
 <70efd632-15b4-0d18-8c05-7a4ea7fe2353@gmail.com>
 <fa6e973f-0a09-a9d2-a6c6-e6359d84df9e@gmail.com>
 <eb934301-27b4-245e-da89-28bde26c2bf1@gmail.com>
 <3777a325-ef49-27df-d21b-375900e34fed@gmail.com>
 <CAKgNAkiEsM-itdZ-cJAribFuAGoaLT4Nd4HDSSNOYm2MpOCCrg@mail.gmail.com>
 <302224e0-5d23-1bb3-e1a7-4d74d602099c@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <be82d618-8c1e-b2a1-80a6-7acf359defbd@gmail.com>
Date:   Sat, 5 Sep 2020 17:24:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <302224e0-5d23-1bb3-e1a7-4d74d602099c@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 9/5/20 4:52 PM, Alejandro Colomar wrote:
> Hello Michael,
> 
> On 9/5/20 4:38 PM, Michael Kerrisk (man-pages) wrote:
>> See commit 48d05103071830b6708a3ecabeddcdef5f3daa44.
> 
> It looks good.  Maybe I'd keep the cosmetic blank line after the
> declaration+alloc in insque.3...

I kinda prefer not to have it.

>> Thanks for your input Alex, it's been really helpful!
> 
> Thank you very much!  I'm really happy to read that!
> I learnt a lot these days.

I learned a few things too :-).

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
