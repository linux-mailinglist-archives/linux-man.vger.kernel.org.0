Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AA0744593CB
	for <lists+linux-man@lfdr.de>; Mon, 22 Nov 2021 18:14:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240378AbhKVRRw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 22 Nov 2021 12:17:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240440AbhKVRRs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 22 Nov 2021 12:17:48 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E500C061574
        for <linux-man@vger.kernel.org>; Mon, 22 Nov 2021 09:14:41 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id c71-20020a1c9a4a000000b0032cdcc8cbafso417913wme.3
        for <linux-man@vger.kernel.org>; Mon, 22 Nov 2021 09:14:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language
         :from:to:cc:references:in-reply-to:content-transfer-encoding;
        bh=4Wr8ejRnV9A9sfkKfJ8TyiZX5wTrXUgoP4Ihxz7esMY=;
        b=Y8DB528csD64OT6W7Xjr+i49VqXWaRRLLXkMfxI5DKmzJgBWJc2OJ5D7SzCZjQ0ETS
         Jbd/ZOyuf+cLpzzE7wmOV8n0Ip4mCgKhL5LJuoN4iR9JkScSiw+C8vtgu7ZpAnVQfX8I
         Yll/WmHD1/tupQPhLndZistv0fwODUcmSJkPJPhci0CiYRaje8OoWtoOr8GqodICDe/H
         +UqI9HCqL5eD/y+M9moe00Ciuxc9KdHpsJD4gRsIae2dQshDPhMcHrbxysWEht3xBCY/
         yM9YxPGy0dZdfroQKpdjzSZk9yii6YIj3homO+iuq0+YccYMFZhrOeKG+WO0zePGFRgG
         b1fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:cc:references:in-reply-to
         :content-transfer-encoding;
        bh=4Wr8ejRnV9A9sfkKfJ8TyiZX5wTrXUgoP4Ihxz7esMY=;
        b=5p9M+z1Q1UXgN/jjsyMLYqfGK9KgYUEXAxlJ+uZtEWt3uYm0DMqjyAvc1S1pag86ux
         ZR4nvY+iCSrG9abVKC+Mk3+IEvtWmylSTyRN0vYpSUyVy5kkJ8i9rFxdunoZc0FOoFo/
         wWsncIi7/un97GMk3Oz0+HeWLRmVe7JrqYMjcbUHA0OCzNl3ts5aaLbRj3XIy8yarXop
         UInCNKqrMPHsa+CUnS1R0fKt8KCvDrs2cxcPX3UdiMaVZNRSC4Yf7Ukm+0cu0oT6HHmm
         tblMieEYxoYV1wwWQrvO9+cyjujz8GuOOj9kzfPe9V5/8iEBHJkrjfZQulQLpqicX4m8
         zP3Q==
X-Gm-Message-State: AOAM532/kYAzhcdRuHXc09mHCqMeaoegAFrrHQKCj5++RkSzHw1iVBYW
        Tem4qzmnw2HZF9kNH9f6aCI=
X-Google-Smtp-Source: ABdhPJzsBBOh/5ojEgRd8HoTYex+qslyHi5IQYBYfrsPAE1FBM7+gCuL2EKgdcuY4L2P+E4+3/a04w==
X-Received: by 2002:a05:600c:24d:: with SMTP id 13mr30672868wmj.156.1637601280022;
        Mon, 22 Nov 2021 09:14:40 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id t11sm9441852wrz.97.2021.11.22.09.14.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Nov 2021 09:14:39 -0800 (PST)
Message-ID: <4751a894-0114-f34d-f5fb-69f398a17373@gmail.com>
Date:   Mon, 22 Nov 2021 18:14:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: [patch] futex.2, mount_setattr.2, proc.5, netlink.7, tcp.7: tfix
Content-Language: en-US
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     Samanta Navarro <ferivoz@riseup.net>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <20211113115808.zzvid3gla4r33kc4@localhost>
 <20211113124154.lazhqkb6qms7mpbo@localhost.localdomain>
 <5f765ff0-59a2-7a54-873c-4632eed575d9@gmail.com>
In-Reply-To: <5f765ff0-59a2-7a54-873c-4632eed575d9@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Samanta,

On 11/22/21 18:12, Alejandro Colomar (man-pages) wrote:
> Hi Branden and Samanta,
> 
> On 11/13/21 13:41, G. Branden Robinson wrote:
>> Hi Samanta,
>>
>> At 2021-11-13T11:58:08+0000, Samanta Navarro wrote:
>>> Typos found with codespell.
>> [...]
>>> diff --git a/man2/mount_setattr.2 b/man2/mount_setattr.2
>>> index 77233f5..ca56256 100644
>>> --- a/man2/mount_setattr.2
>>> +++ b/man2/mount_setattr.2
>>> @@ -986,7 +986,7 @@ main(int argc, char *argv[])
>>>   .\"     because. Because making assumptions about the current 
>>> working directory
>>>   .\"     of the calling process is just too easy to get wrong; 
>>> especially when
>>>   .\"     pivot_root() or chroot() are in play.
>>> -.\"     My absolut preference (joke intended) is to open a 
>>> well-known starting
>>> +.\"     My absolute preference (joke intended) is to open a 
>>> well-known starting
>>>   .\"     point with an absolute path to get a dirfd and then scope 
>>> all future
>>>   .\"     operations beneath that dirfd. This already works with 
>>> old-style
>>>   .\"     openat() and _very_ cautious programming but openat2() and its
>>
>> I always thought the foregoing was a double entendre expressing the
>> author's taste for vodka...
> 
> Yes.  There have been other attempts to patch this[1], but I'll defend 
> the author's joke, even if I don't share his preferences for liquid 
> ingestion. :)
> 
> [1]: 
> https://lore.kernel.org/linux-man/20210910200429.4816-3-jwilk@jwilk.net/

However, I like the rest of the patch.  I you don't mind, could you 
please resend it without fixing the joke?

Thanks,
Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
