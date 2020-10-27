Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EB0E429BD6A
	for <lists+linux-man@lfdr.de>; Tue, 27 Oct 2020 17:49:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1802394AbgJ0Qg3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Oct 2020 12:36:29 -0400
Received: from mail-wm1-f41.google.com ([209.85.128.41]:37582 "EHLO
        mail-wm1-f41.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1802386AbgJ0PsE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Oct 2020 11:48:04 -0400
Received: by mail-wm1-f41.google.com with SMTP id c16so1939730wmd.2
        for <linux-man@vger.kernel.org>; Tue, 27 Oct 2020 08:48:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=RXv9UrkcLrAZvbf8fKz2jrl+pQNp9AWmIINbdB7vua0=;
        b=bv8rtIHJqFg27XTCszDhMgbyGKSHUAT8912y/ppK99tcmi1tk6OOxslE9CHDiiDaRA
         UivdR+ffUw8cKTi5FBtXLwXSIjDkeKlPfMF/wnJOAbBRgNp7gmk4AJAE0KthI5JcVFdK
         DQz+EyJelA05OqWMftC3/dHvR+QiW3bbl45cWoiBbr+tqHk7fK3yHwPO/d33oZi/+nEt
         QAZb1+PwMJ6WojdViSp2zJIktf3Jc1AqrZaa9zISLrH8O/3S0haO7bqud7zldtujkBmS
         o9citALPPC7tSkxJIn9ZjIMQDZqTAQQ/ipZ7M0OXpGXwUegrFww7R7ESnN3YzGsJW9nB
         t+xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=RXv9UrkcLrAZvbf8fKz2jrl+pQNp9AWmIINbdB7vua0=;
        b=fMQeJ58E5ze5hXYSuZK6bL2TxiSrzwmVVhbEVV09kF/wdU26HVf3luT2/bJcSKTXBa
         GFsYVZLKC4ymYXHZFJYQ0GXjOT+/RWsolGX16ad4KzLFre8KZ/rBOKqM5gYKzrbljgcA
         6Fp6MFsaQfVeMFAHCYrMmpRleb7ESXIpm3heGR9AR0n/Gfy5MtzeVuQXfQXqMZoeIZzO
         3Fpzsvt53kA4bHzJK6yibDk8kcLUrLoLE28n1X91ep5nnuu/w0vkzG5W3i1aD1/KRs3v
         /0pzQkBV3em6LRJ6+X9NQaQEbu1WxaL6Mh6nVuAFhp0zE0ujgs34VS3PXC0yPmoEGoF6
         zjEw==
X-Gm-Message-State: AOAM5300PKMkYMsjwdY8Q3+nKgd1mEp/EGnnfUA1S2OTTc1sqLf54JZZ
        D/sWGdA3J9SgNAffUSdfHICrsobx/EI=
X-Google-Smtp-Source: ABdhPJzAs0XIaKFVj0M3CdGdbx6YFdcGakoMm/PKSw3xwoNerlpxudPI7CsfluR38McW49aoU8s9nA==
X-Received: by 2002:a05:600c:24d:: with SMTP id 13mr3175310wmj.99.1603813680571;
        Tue, 27 Oct 2020 08:48:00 -0700 (PDT)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id 4sm2479478wrp.58.2020.10.27.08.47.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 08:47:59 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: argz_create
To:     Jonny Grant <jg@jguk.org>
References: <c1b5cd3d-8be5-3845-1458-10d96ef29e11@jguk.org>
 <e795c4f3-e273-684a-012e-2b03d1f74285@gmail.com>
 <CAKgNAkjFxBQJU81YR-aBV0F6b+aZpzJmYm5ofba5dxuhYTOZpw@mail.gmail.com>
 <b9a3c017-9c36-70c7-3449-e8eccb074532@jguk.org>
 <0b3cc00f-e0e3-deed-f3b8-5446bcaa7742@jguk.org>
 <ede6e5d0-53af-aacb-3bdf-95ad1ffad097@gmail.com>
 <eefb1d45-ab48-e32d-596b-43d748f192da@jguk.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <099d5476-da34-c62c-1626-d36e54f659c0@gmail.com>
Date:   Tue, 27 Oct 2020 16:47:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <eefb1d45-ab48-e32d-596b-43d748f192da@jguk.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jonny,


> However "nonempty" is not an English, or American English expression
> we would ever use. Even "non-empty" isn't English, we'd say "not
> empty", although in this sentence there is no need to have this at
> all....
> Maybe in another 50 years "nonempty" will be a word,
> but for now it isn't, so the hyphen is needed. Same as "non-NULL"

But "nonempty" has been a word for a long, long time.
As in "nonempty set", a term you'd use in maths any day.

"non-empty" (with a hyphen) occurs dozens of times in the 
POSIX standard, just to take an example close to home.

Now, one may argue the point about the hyphen, but
re "non" vs "non-" see, for example,
https://www.chicagomanualofstyle.org/qanda/data/faq/topics/HyphensEnDashesEmDashes/faq0079.html

Opinions obviously differ, but the tendency in English
is that thyphens are going away in these cases. I think CMoS
has got it right.

Things like "non-NULL" are exceptional, and it's because
"NULL" is a keyword in C.

Now, as to whether that word "nonempty" is even needed
in that sentence, I am not sure. Presumably the point isto
contrast with the "(NULL,0)" tuple mentioned in the
preceding sentence. In that sense, it's possibly a helpful
word, though I'm not sure it's necessary.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
