Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A045828BFF8
	for <lists+linux-man@lfdr.de>; Mon, 12 Oct 2020 20:47:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728724AbgJLSru (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 12 Oct 2020 14:47:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726267AbgJLSru (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 12 Oct 2020 14:47:50 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 713BCC0613D0
        for <linux-man@vger.kernel.org>; Mon, 12 Oct 2020 11:47:50 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id s9so8278487wro.8
        for <linux-man@vger.kernel.org>; Mon, 12 Oct 2020 11:47:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=uIkc77kFXLdTYhNQ7TRYHEDCbzyZzV5AlgloUroJepo=;
        b=GqsDKAy3wJ282VluH3Jo9TiYInmeTDsZLM9OeN1oGK490hiWvAh3pAEi7ooZFtzgPH
         F23sAd0VzvNe8xp2weV52E9c3kobCDTNbQNgt1gyiLPaqcGNVIu5VuKbg1HGE49emZvi
         xV5C4HeyV0E1mpa13OXy8WnRoc0QF2gYwFTKQ6JEfaWyrAvuaSJIHPAh3egxJ2cSrW6g
         cCKRKAsQEfJPTTcUZ86uad7vPBbDi0jjPu7727xFk6zo7gNY0CCEa/bN8n9YqIKtPsGL
         ztkEvKNEWcmFckP0ym99maSHaKZbv099mG0C/gu/o2Ayp7nBOdilwEbJdrrApOFkOK3n
         4bRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=uIkc77kFXLdTYhNQ7TRYHEDCbzyZzV5AlgloUroJepo=;
        b=oTem+b4Leopdywti2NnIu1h5o7BdPuCFKmGr28tKLBBO9F3H1I2ApnjCqVkO03CYgq
         r9JOVC9g7KJnOpP8MWB2jNDAIUrirE6JoMntPGR1vAzXnbEcFJ1jugGlP10KuB7aUkNu
         T2M4z5i1M/E9tJiUzYGEbQSZPYjnoN/iEXfkGrvwOwcYs8xbqDslqW/tpsosmy2W4xVk
         jiHXPONUD8e+yiULQBVSDSYj3+7vjiij0SUplw1GncMUSyACY5xAwPugsn6uMDFbwWGy
         tPAQ4GPnW9E4ItYOq+fFvil9z1j5Gyg97ZON/qYcGOYmd8zMXYAZAg1IU+GFZ40edhOy
         tUqg==
X-Gm-Message-State: AOAM533AzEAAH4yYc8NYR1LG8qw50ViukUtJ3Ry3iKj74rxbXs9IMv3E
        qMQ/oTlRMYNI3+LK/A4xzqk=
X-Google-Smtp-Source: ABdhPJxuSeZs+YGG856yPg4v6/EkXbGYB9pTCq8b37DbhhvkljZ0uCe8vmdWM1NwHdrMZ9+rrgpq7w==
X-Received: by 2002:adf:ed52:: with SMTP id u18mr32832242wro.357.1602528469042;
        Mon, 12 Oct 2020 11:47:49 -0700 (PDT)
Received: from [192.168.1.10] (static-176-175-73-29.ftth.abo.bbox.fr. [176.175.73.29])
        by smtp.gmail.com with ESMTPSA id t6sm29090551wre.30.2020.10.12.11.47.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 11:47:48 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>
Subject: Re: [PATCH] queue.3: Replace incomplete example by a complete example
To:     Zack Weinberg <zackw@panix.com>,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201010190226.19236-1-colomar.6.4.3@gmail.com>
 <CAKCAbMi5W41NviKbYS+V5U5sWk7FEpSj3EAUCJCr-UTr2JCkBw@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <bacde8dd-7de7-b21e-184a-ee6b2646dd5f@gmail.com>
Date:   Mon, 12 Oct 2020 20:47:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <CAKCAbMi5W41NviKbYS+V5U5sWk7FEpSj3EAUCJCr-UTr2JCkBw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Zack,

On 10/12/20 2:53 PM, Zack Weinberg wrote:
> On Sat, Oct 10, 2020 at 3:04 PM Alejandro Colomar via Libc-alpha
> <libc-alpha@sourceware.org> wrote:
>>
>> I think this page needs a big overhaul.
>>
>> First of all, it's a very big page,
>> where it's a bit difficult to go to the subsection you want.
>> Then, the examples are incomplete.
>> And also, the language of the page is weird.
> 
> <sys/queue.h> was, IIUC, originally an implementation detail of the
> original BSD kernel, not intended for use elsewhere. Elsewhere started
> using it anyway, and that's why glibc has it; there was, at one time,
> enough user space software that assumed its existence to make a
> compatibility implementation worthwhile. But I don't think its use
> should be encouraged in new software, and in fact I'm not sure it
> should be documented at all.

Thanks for the input.

From my perspective, not documenting something is a poor 
way of discouraging the use of that something. Instead,
some people just use it badly. I've no problem with
adding a note discouraging the use of the APIs, if that's
the rough consensus, though.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
