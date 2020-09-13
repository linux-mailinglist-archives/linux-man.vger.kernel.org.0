Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 666B2267E85
	for <lists+linux-man@lfdr.de>; Sun, 13 Sep 2020 10:12:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725919AbgIMIMn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Sep 2020 04:12:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725918AbgIMIMm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Sep 2020 04:12:42 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68E4DC061573
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 01:12:41 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id c18so15365256wrm.9
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 01:12:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=36IrZlBPki18l7x1To7iGJwR8RN0/OmJc7xfBd/idXQ=;
        b=UvQR2q4tUShJyH+vvxlj0nIi8THUxIPUNmH8ZMVBAJ0tDb+DCro4ZjqyAyCYjTN0gJ
         3rJqkkwbzvEib4f62dwwbrz+sI9ot2gBkKYE2X+P1lE7Ee27DFk+kBAV9A2QyVW56Jxv
         YtzF6tpB+DhGAe1LWJhT0aXswwAJJai2s9Bx6SiJz0YzNcqAaPgFe+OFIwHxBVztFBcJ
         9HdST7oJuEQ8OT1qfuli+S6OYTealhDkV87V47gdiwwut+Ejpyc60kqud2+jbSh+bnnP
         ylc/1CqxfW7GAyhH4qCGoq3ku3WrzmWUO832dO66/KM0IExErVh8T4vnZgv/hio3JEHa
         O63g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=36IrZlBPki18l7x1To7iGJwR8RN0/OmJc7xfBd/idXQ=;
        b=D02po8ae620sR6nxKtq8D9tjp482tsnC8rEy6tWxG+j284FCXI4EklyIH0J92Jh5yM
         AU8WB5qYIy7uxt3PNKG+N4EFuVikRsE6d8l4oFWrglHCxhI14xLZu9Dt/nv0apZGxYbY
         mHotUGSqJvBKk/F9JUg9GuoSXHQFVGE3QwI3oR4y3DlvkLwnHOGARcJIPV++Af8p/WeW
         JBrbhbxBvVD3iTowxX5ehfd/gWFMMvuZVlp5bjt6luvp3T6dUaitwbsb7DjZQA4qzMyc
         r3T0Vh2ZmhUnVSq7kIzm83giaSd7eAOv4/6zH3ZPZc+uM6mcYy3XQgHNxFnDkNqekqcF
         qk3w==
X-Gm-Message-State: AOAM530WjYQin7GyubtzclKnEcP3b5xNXql20UehpO8rx7PCYfwfdbBo
        iHZGOV1779zkLWGXSFZFAZIfhUdGI54puA==
X-Google-Smtp-Source: ABdhPJza09ENFJcO7rJHqUjN3SYel2ZuXnq8bShtQhHxjAnDL4k2MiSRvJZqNofQ6E35cjKZqgxRmg==
X-Received: by 2002:adf:9bcf:: with SMTP id e15mr5784586wrc.93.1599984760145;
        Sun, 13 Sep 2020 01:12:40 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id v17sm14113002wrr.60.2020.09.13.01.12.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Sep 2020 01:12:39 -0700 (PDT)
Subject: Re: [PATCH 03/12] pthread_getcpuclockid.3: Cast 'time_t' to
 'intmax_t' for printf()
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <20200911231411.28406-1-colomar.6.4.3@gmail.com>
 <20200911231411.28406-4-colomar.6.4.3@gmail.com>
 <af4a408c-7e6e-4074-2c61-461e7f167a55@gmail.com>
 <58caefae-2952-692e-67d2-17857d84bbdf@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <fa91c169-864f-32b2-780e-b1d30765208d@gmail.com>
Date:   Sun, 13 Sep 2020 10:12:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <58caefae-2952-692e-67d2-17857d84bbdf@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 9/13/20 8:05 AM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
>
> On 9/13/20 7:58 AM, Michael Kerrisk (man-pages) wrote:
>> Hi Alex,
>>
>> On 9/12/20 1:14 AM, Alejandro Colomar wrote:
>>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>>> ---
>>>  man3/pthread_getcpuclockid.3 | 3 ++-
>>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> Casting to long is the historical practive here, and should be
sufficient,
>> don't you think?
>
> Oh -- I see Jakub made a similar comment for patch 08.
>
> Do you want to redraft this patch too?
>
> Thanks,
>
> Michael
>

The thing in patch 08 is that the numbers were modulo very small
numbers, and therefore very small numbers:

> -    printf("%2ldh %2ldm %2lds", (ts.tv_sec % SECS_IN_DAY) / 3600,
> -            (ts.tv_sec % 3600) / 60, ts.tv_sec % 60);
> +    printf("%2dh %2dm %2ds",
> +            (int) (ts.tv_sec % SECS_IN_DAY) / 3600,
> +            (int) (ts.tv_sec % 3600) / 60,
> +            (int) ts.tv_sec % 60);

In this case it doesn't apply.

Cheers,

Alex
