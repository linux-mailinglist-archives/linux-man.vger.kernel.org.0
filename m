Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4F46325E8DB
	for <lists+linux-man@lfdr.de>; Sat,  5 Sep 2020 17:44:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726590AbgIEPoH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 5 Sep 2020 11:44:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37964 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726568AbgIEPoF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 5 Sep 2020 11:44:05 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0935C061244
        for <linux-man@vger.kernel.org>; Sat,  5 Sep 2020 08:44:04 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id c19so9409664wmd.1
        for <linux-man@vger.kernel.org>; Sat, 05 Sep 2020 08:44:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=X6DrovQs8bx3ggaNxEE5tAjFzjJuv45GKfQMkbWe3SM=;
        b=Zu3apOuhfS3vMHe+Kj6LdnUAShSpl9KqJLRUOuRLkHhtwl8GDEJHOEZe17p9IH+p/q
         PZRocqhVdF4n0h3MkbhddJJWjD7UTCRniym4PBztpOdtOVmfUDPumj6y5d+gWudRaH8h
         gaIOasAqGfwsYolnkPAcjzDymC+ikUnS7yLZMGz+fq9vPMlsSeeIDGvpMGTL8ZLu0NjZ
         eoiiAERWAEoWlCJwm9AFb4ipVu4chcwIVruae5TlvOaxWiJO/KgqQCPHTLHTJlH+mAzb
         o1l962e4Yz4/e7tiBe3i4rS6wI6XY4SvwcAo5kIwvvsN1CWe6f+shF5JwJiLiCiC1Ea8
         OJFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=X6DrovQs8bx3ggaNxEE5tAjFzjJuv45GKfQMkbWe3SM=;
        b=KnXBFRXD/u0xeyb0/5+NYqUH6+dRH8o6bvBGax1UeCghKxZnJ6hlW3vocEJBQJL9Hf
         UGbY3AdQS0huCuUPhnsh8QhtOMGa7V+imfYy2pY4oLSiyHNzm2UAbVlmGshduN8hgpwG
         2ZMw07CdVkEFQpexwXMzHApKM5zCQHxLgJ09AL2uGqx6I2j1OgjXePvssJi4QA8CjIg+
         vyxWZu79TWe+qyw6N698WWGhXzV8NbOAIJq9tyWXQNe81i6FkuLrOC0wz6mjEiTRldZa
         QIIH2x4IrQobX45PW5ptYaDMI2bqzx8GPWqSwy+igyRRFOzBeZpgGxhDunGdTEYsu/P2
         zOQg==
X-Gm-Message-State: AOAM5338fFBXBVI0kaR/Rocb4840RXmralXwVFaioHZKp2EfALnIdg7H
        QBAjm47+glApTjWddGsd8qjrT5GBex8=
X-Google-Smtp-Source: ABdhPJwawNqwyXRxspYkBAVSSKUh2ol6KohunD6vFRBY/wMIZ0MViTbZfhlJk0MaFDL34EAQHHDQmw==
X-Received: by 2002:a7b:c24b:: with SMTP id b11mr13200942wmj.134.1599320642947;
        Sat, 05 Sep 2020 08:44:02 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id o4sm14388258wru.55.2020.09.05.08.44.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Sep 2020 08:44:02 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] fanotify.3: Pass array to read(2) directly instead of a
 pointer to it
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200905112844.228160-1-colomar.6.4.3@gmail.com>
 <5cfd695c-dfaf-a58f-f4d4-174617cd2f23@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e877e940-d542-206f-d5ee-9a1a0b697fe8@gmail.com>
Date:   Sat, 5 Sep 2020 17:44:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <5cfd695c-dfaf-a58f-f4d4-174617cd2f23@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/5/20 1:42 PM, Alejandro Colomar wrote:
> Hi Michael,
> 
> I had a typo in the subject.  It's fanotify.7; please fix it when
> applying the patch.

Patch applied. and title line fixed.

Thanks, Alex.

Cheers,

Michael

> On 9/5/20 1:28 PM, Alejandro Colomar wrote:
>> It doesn't make any sense to pass a pointer to the array to read(2).
>>
>> It might make sense to pass a pointer to the first element of the array,
>> but that is already implicitly done when passing the array, which decays
>> to that pointer, so it's simpler to pass the array.
>>
>> And anyway, the cast was unneeded, as any pointer is implicitly casted
>> to `void *`.
>>
>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>> ---
>>  man7/fanotify.7 | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/man7/fanotify.7 b/man7/fanotify.7
>> index c18ab68ed..c3d40b56d 100644
>> --- a/man7/fanotify.7
>> +++ b/man7/fanotify.7
>> @@ -818,7 +818,7 @@ handle_events(int fd)
>>  
>>          /* Read some events */
>>  
>> -        len = read(fd, (void *) &buf, sizeof(buf));
>> +        len = read(fd, buf, sizeof(buf));
>>          if (len == \-1 && errno != EAGAIN) {
>>              perror("read");
>>              exit(EXIT_FAILURE);
>> @@ -1111,7 +1111,7 @@ main(int argc, char **argv)
>>  
>>      /* Read events from the event queue into a buffer */
>>  
>> -    len = read(fd, (void *) &events_buf, sizeof(events_buf));
>> +    len = read(fd, events_buf, sizeof(events_buf));
>>      if (len == \-1 && errno != EAGAIN) {
>>          perror("read");
>>          exit(EXIT_FAILURE);
>>


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
