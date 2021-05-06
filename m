Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 37D44375361
	for <lists+linux-man@lfdr.de>; Thu,  6 May 2021 14:00:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232375AbhEFMBq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 6 May 2021 08:01:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232210AbhEFMBo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 6 May 2021 08:01:44 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 187B6C061574
        for <linux-man@vger.kernel.org>; Thu,  6 May 2021 05:00:45 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id l13so5303338wru.11
        for <linux-man@vger.kernel.org>; Thu, 06 May 2021 05:00:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=/p35UwasX/tnL9bI7J18KvE6CL8LlLNJP9Q7sxKIuOk=;
        b=lf/T1E3JpMYCvbbxJJMjjgTgM/XyWNMe9IaNMlXm+M1t7hjieYkTvmEogRKgycVNZ8
         ZaMjR1PNLdUkLpkg65a2wbBizooQMeHr2CExfdzoJE8mI95QLYGDYbyF6G+nwBdJ97qb
         ecg3SpCeDMlFUbd3cwaZjsv2pNX6hImqqfo5k8ZAcq7d4s8u8VgoG1/ybWFh9O0Npwtj
         OCC+yCyy4auxv7SAmT+C5GzGWJyVoVzelBxCjs4E9/liLkZ3XoAnpPIVNB6SElLUgLDV
         ZzpEuhJcdc/o9vaQgKw/2YK/TDm2JnJ3EclHYC5gX/gOlzaTUc+Vh0hIy1FnZIMYSetw
         PpYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=/p35UwasX/tnL9bI7J18KvE6CL8LlLNJP9Q7sxKIuOk=;
        b=b519sWEdtW56sm4KrDvOkv5RavfpCvkHOSvKbP6d6/C6+bst02IroaZZelIzaIN+Kf
         JFzlrbzbW2TZ41kFowGIfqyslvj0w2MZwo9dFrRjNhomEEg0XFjCie3O49jAFc8gKhPL
         UdLWZZ5GIrIOS9GTl7FAeuhkLHagpa960rfnjJb7QhrROSEaN3/Mre1tKEzpVRrMDFMO
         IgVnY5QRpad5F3+x7npym0ll2MV207OgmZubmP+8qKxZHOFUO9AsJxz6HurYziigczTs
         epMnHRZUT0+JwpiAQkJOiPQVW2W2jEoW31MqVi6KW3CjSmMrEvy4uktIvB8HIcoewQsu
         Uo0w==
X-Gm-Message-State: AOAM532B0uBuPS299L1ZC06XSTutiGQNSL+RH00vy11eXGN/eue08R73
        S8Yy29sKdTQ3X082Zsiv72vk6iQweLR1Kg==
X-Google-Smtp-Source: ABdhPJyXq9OH1d4oa/BQjeI0rXLruv0+GSBVT/4N/ekqqrJuTtdJf1jq3hmJFr69bV8cIErYXV8X4Q==
X-Received: by 2002:adf:f70e:: with SMTP id r14mr4747753wrp.311.1620302443914;
        Thu, 06 May 2021 05:00:43 -0700 (PDT)
Received: from [192.168.0.237] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id r17sm9865525wmh.25.2021.05.06.05.00.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 May 2021 05:00:43 -0700 (PDT)
Subject: Re: [patch] fanotify.7: ffix
To:     Akihiro Motoki <amotoki@gmail.com>, linux-man@vger.kernel.org
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
References: <CALhU9tkuovaHEhB6u6iL=V7+B51FYWEuBgRuekSojiibXnUzOw@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <cf2e3ee0-1ecc-8eb2-cd1e-df2568aefe8e@gmail.com>
Date:   Thu, 6 May 2021 14:00:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <CALhU9tkuovaHEhB6u6iL=V7+B51FYWEuBgRuekSojiibXnUzOw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Akihiro,

Patch applied.  BTW, I had to apply the patches manually (`git am` 
complained).

Thanks,

Alex

On 5/6/21 1:46 PM, Akihiro Motoki wrote:
> diff --git a/man7/fanotify.7 b/man7/fanotify.7
> index ebe5c1d7f..6a7e70d75 100644
> --- a/man7/fanotify.7
> +++ b/man7/fanotify.7
> @@ -147,7 +147,7 @@ influences what data structures are returned to
> the event listener for each
>   event.
>   Events reported to a group initialized with one of these flags will
>   use file handles to identify filesystem objects instead of file descriptors.
> -.TP
> +.PP
>   After a successful
>   .BR read (2),
>   the read buffer contains one or more of the following structures:
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
