Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 77AD325E683
	for <lists+linux-man@lfdr.de>; Sat,  5 Sep 2020 10:27:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726403AbgIEI1z (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 5 Sep 2020 04:27:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726372AbgIEI1z (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 5 Sep 2020 04:27:55 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7EB1EC061244
        for <linux-man@vger.kernel.org>; Sat,  5 Sep 2020 01:27:54 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id e17so8851526wme.0
        for <linux-man@vger.kernel.org>; Sat, 05 Sep 2020 01:27:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=vczM3ERb4aPO6QtDeh4kMNI5dv4lMdbH3IKvOzhBsJ8=;
        b=me0ZYJ/jOJ98Tx/NtGwYrCmTbwzGZ/opeDvlICGrypx7i5q1T18qRcnIv45frPLCrQ
         cnP/XPkR0zRi05FjSQZAtm+U2W/zI2IogcHpRCi4yWCChRmvtWrbNCz3feApif+88P/E
         dn/8M4lQtw+LTZ7EdD+fBzU4cy43erdgGxqzRD0CPaqGmh+ZGubACId/OL+vvXnv+kbV
         1nDc8TRZeLAzxn/AonDnyumQfXHVopDhJli99z9Q2D4GSO0Q46HXkYVZmLEkgskE8zuJ
         J9av0oYXg0Yoc1iblTMIf2IOqXU1MHr4ZFe9tOCEKlL03NTV39Lpv+vHQmsgPk4g/jAp
         Vh6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=vczM3ERb4aPO6QtDeh4kMNI5dv4lMdbH3IKvOzhBsJ8=;
        b=Dg2gBs0NaSeGts5XsZEYPPAWT7lNFjMJJ5nwjxWDoz9YhkazUzEr6YEM28XUAAdqXE
         UR8mpoeLVgSULm4qCIbIL3cELytPbyX/sa+yJ4+Jz00kHbsECKakvz2JPTWvl8HDPM67
         usu2O2y51XhhE4N3jtsYoqv8uYSH6UW0TvU5ECJF2PT50mCPDOx+1SN+py8I5hMHjpJd
         +Z/Y993vR7mv6bCWH0b4OOLcBwPPm2bVnl3vykyDDUqzjR/uVWZ317xdYSVuBP0GVztK
         8v9aWe9+AD+gCGLLvFc+WKj+trLmkUcsmWJOKOSkySKy0k9wTBw+RvkG3rxGWuc7e8OT
         93WA==
X-Gm-Message-State: AOAM533isk23ZQVE4KPRDYWFPRNXZUd/IZq5Use5AruaQIWTmM2uOZjd
        C05MQRxbTcMe2UY35UNudEo=
X-Google-Smtp-Source: ABdhPJzpReGBaJk6n3KI5HxWicqwU9FP5McnB+0w5ramB2tQA8MWjN6Kc1qV8Dvvwf/kJ6RWC2ciVw==
X-Received: by 2002:a7b:c5c1:: with SMTP id n1mr10731328wmk.125.1599294473210;
        Sat, 05 Sep 2020 01:27:53 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id h5sm16679905wrt.31.2020.09.05.01.27.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Sep 2020 01:27:52 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH (2) 34/34] unix.7: Use sizeof consistently
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
 <aec8bb20-6693-f876-0e2e-5574bd3b7af6@gmail.com>
 <8458b842-7d4b-f19b-c596-7f529dd48ba6@gmail.com>
 <497bc4f4-31f5-91a5-8bc4-469e22b26502@gmail.com>
 <8160510c-4d9e-7f30-e810-648b0b58a986@gmail.com>
 <d7db8e23-8e86-10ee-f221-30d7e3bd657e@gmail.com>
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
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <eb934301-27b4-245e-da89-28bde26c2bf1@gmail.com>
Date:   Sat, 5 Sep 2020 10:27:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <fa6e973f-0a09-a9d2-a6c6-e6359d84df9e@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 9/4/20 5:12 PM, Alejandro Colomar wrote:
> Hi Michael,
> 
> Sorry for the deep threading, I noticed it late and I tried to fix it in
> the last messages.  Also there's some email where I forgot to remove
> "Re:" from the subject.

Yes, the threading made things a little tricky, especially when it
came to trying to review what I'd done. Did you not send with 
"git send-email"? Usually that threads things nicely (all patches 
after the first as replies to the first patch).

> Well, that's all!  I can see 2 or 3 patches where I have doubts, but I
> think most of them are straightforward.

So, I've still not processed patches 21, 22, and 29. And in review,
I see that I am wondering about whether I should maintain 1, 5, 17,
18, and 19. These all involve the use of malloc() or similar.

The existing pattern was something like:

    struct mytype *x;   // Or some simple type such as 'int'
    ...
    x = malloc(n * sizeof(struct mytpe));

and your patches change it to:

    struct mytype *x;
    ...
    x = malloc(n * sizeof(*x));

I'm not sure that always helps readability.

Part of the problem is the use of C90 in the code.

Do you both agree with me that both of the following c99
forms are better than the original:

    struct mytype *x = malloc(n * sizeof(struct mytpe));
    struct mytype *x = malloc(n * sizeof(*x));

?

I *think* I mildly prefer the first form, but I'm open to
arguments that the latter form is preferable. Of course, the
fact that there might be more than one point where an 'alloc'
is done and assigned to 'x' may influence the argument. Thus


    struct mytype *x = malloc(n * sizeof(struct mytpe));
    ...
    x = malloc(p * sizeof(struct mytype));

vs

    struct mytype *x = malloc(n * sizeof(*x));
    ...
    x = malloc(p * sizeof(*x));

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
