Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 002522688BA
	for <lists+linux-man@lfdr.de>; Mon, 14 Sep 2020 11:48:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726334AbgINJsG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Sep 2020 05:48:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50620 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726309AbgINJsF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Sep 2020 05:48:05 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF904C06174A
        for <linux-man@vger.kernel.org>; Mon, 14 Sep 2020 02:48:04 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id k18so10530796wmj.5
        for <linux-man@vger.kernel.org>; Mon, 14 Sep 2020 02:48:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=G1xKsjXsb8G48gO+/rJcWWH47JQVfIvHBaSmisZ56LU=;
        b=GSAyO4CrUgu68tOjTwatfbSGRQeTZ5c2fKHcNP7VSw8HFyOnhkB1h/r6PX7uKIeUXV
         HGPjQZmVhc5ye8Y6EqwMaJznDcNphB109DK5eZglk2sjf8oIzeF9c7SQ6sriMDfp5M1w
         yooJJNuWctsrWqjrBfoddHqswYh84QHu0QnoJkOc+q0+vfOH4pwzkspzVBEks5HYDBWL
         sLKEj1o894dBMUuN2AcwlotSd/T5gXSevLUzd4JrN7mwW48y4iLu3OsuHZcuHjRmYrCp
         NVdSKp4U6c1tb9YRB6/8iAThjbXFgzgxOwAgkvGOioltd0aHKEikSVemMnAh9Wwcu72e
         OJXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=G1xKsjXsb8G48gO+/rJcWWH47JQVfIvHBaSmisZ56LU=;
        b=HTSjGx8OkawCCZ+5SRSrQh34KRKnh/5HqZbqA7xXPJUfGb9oEELkHNIRYPl1xlXPTw
         EXN4emzXEAu1WGuNgtYIVVV+YnJtMCnvXAAl2g/zHxZh74Dzs+k4nbupzNZcFI08vSF0
         jzFSuvmwe6PNB+gZV5eV5fgNLZmlUAMr3HYyz+AI6FXF2SwNO+9PjKjdESquKuh1gcsb
         krDrWw90fSqFj/Rh4K2VZrgRkP82eSDUcNlU6wlIuzRaZJHcx8EPAoPOLYWnytSAxHUL
         nOm+cAlWYCrrIrzYL7R5SgN57QRB08MMHp6AGaNwrCbEmCqW73SVUwe2hM9EOcqJKAAR
         REzA==
X-Gm-Message-State: AOAM5339clWJzNmPdP4GBh+ajQ+Wgulcy9o/CAxWM/WoHrGQvb4Wq7qf
        88bzaU4pDNXjiv74IOHKxsq9FmhGpkw=
X-Google-Smtp-Source: ABdhPJy02wL/GxIo1gNQBolT+PdJ5BLbtusw3T9VOFQErgfdKImw2i7P6unmoHBzzmAD9gFWNjZObA==
X-Received: by 2002:a7b:c085:: with SMTP id r5mr14959057wmh.52.1600076883318;
        Mon, 14 Sep 2020 02:48:03 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id f14sm2364321wme.22.2020.09.14.02.48.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 02:48:02 -0700 (PDT)
Subject: Re: [PATCH v2 08/12] clock_getres.2: Cast 'time_t' very small,values
 to 'int' for printf() and fix the length modifiers
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <20200911231411.28406-1-colomar.6.4.3@gmail.com>
 <20200911231411.28406-9-colomar.6.4.3@gmail.com>
 <20200912055538.sihehmrxj6xwlwxx@jwilk.net>
 <39788961-f3d2-af73-f6fe-9bdd79c1ca14@gmail.com>
 <9d6f2b87-c3b8-60fc-6363-e976b7acbe8b@gmail.com>
 <20200914091150.66x6za5cn5s7xc4p@jwilk.net>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <4cf2d555-0bb5-6725-b4f2-9d79b47807c6@gmail.com>
Date:   Mon, 14 Sep 2020 11:48:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200914091150.66x6za5cn5s7xc4p@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jakub,

On 9/14/20 11:11 AM, Jakub Wilk wrote:
> * Alejandro Colomar <colomar.6.4.3@gmail.com>, 2020-09-12, 12:06:
>> Jakub, I added a line acknowledging your review.
> [...]
>> Reviewed-by: Jakub Wilk <jwilk@jwilk.net>
> 
> I don't know about linux-man policies, but for the kernel development,
> Reviewed-by is not just an acknowledgment. It's a strong statement that
> is supposed to be added by the reviewer, not by the patch author:
> https://www.kernel.org/doc/html/v5.8/process/submitting-patches.html#using-reported-by-tested-by-reviewed-by-suggested-by-and-fixes
> 
> 


Sorry, I didn't know.

Thanks,

Alex
