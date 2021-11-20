Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C7791457EA9
	for <lists+linux-man@lfdr.de>; Sat, 20 Nov 2021 14:32:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230245AbhKTNft (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Nov 2021 08:35:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229539AbhKTNfs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Nov 2021 08:35:48 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80C86C061574
        for <linux-man@vger.kernel.org>; Sat, 20 Nov 2021 05:32:45 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id g191-20020a1c9dc8000000b0032fbf912885so9664769wme.4
        for <linux-man@vger.kernel.org>; Sat, 20 Nov 2021 05:32:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=/2kylWcJ8fzRx3+apy97BTKQaamE5JPIH/02Aw0Fj0c=;
        b=EPOBW2cPyajPACHRurfC5ZKL7Qv4Z/C6ER5w4V5hytLLokeBiijENNgbM7woLtCcOv
         bZr60TwPy5mhyFwBzApaDPS24SWFYFknnSrPZKB5jK0rzkeYdnDEyZVTQdA01RoFCGSJ
         LHnrgORxfqHqeM9CPYtGGM84YbPvADd3KQOyn9qWZbumXanY/ySeSVmb5BSnoWXyx3qS
         3Sf4B9JvzPwJYiUrYm9TX422UBGHVBX5GB3vqdUci5ZfRTFwpAQESkQ98XiESnkzx8UJ
         hda8FHiaoVZlkWn1JdSgahtFQZX3vkqJgOV0iupIWKDpiqpncG+P9VaQmhGP8D/V+oSE
         cKkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=/2kylWcJ8fzRx3+apy97BTKQaamE5JPIH/02Aw0Fj0c=;
        b=LLthsbCW1w83qAOYNKN/Z4MSuwobAFLjOeXHhgHjAxUCVdqpYlEbOMk2L4DN1DZgHW
         OR1AtcaXBUN9/JcdzLFOnEIlHIaT2M0F/10em9AtG7+z0PTSDIoK6DMsTDIzzlk+6zYa
         sNyl5KHXbXvbrmgbO5t5vcXnAgqVbYPUunKwNB2n4ZfdsgH6FU/SPGeKMJZOjZXuOT4b
         MGR3lRUaaktlrkQbkuWdl9g82Gkb1Uz15NbYC3P9dj02sQKINgzjIXQe1DTHlT+L7nY0
         WkNsbbtLf3ivwaHXYu+o3n3iH6HxiSpTbO4xEF/bO4IiQG5Of03qrz5sRlGhtEkb9zx8
         smgA==
X-Gm-Message-State: AOAM530bjr6RzdVS6mb0iNXlBAlud/MQ3dEAMSPXwKwdsU13Z4wQzpUj
        cMb/h0IP3LjbSJ3IH/s0aO0=
X-Google-Smtp-Source: ABdhPJzECxQTkYBzDfVoV4GThOKQdDkTi1fndCX068JqwY5JWp95R6lbjRNhJOT/sUESYnYBqLh1Ng==
X-Received: by 2002:a05:600c:190b:: with SMTP id j11mr9941834wmq.112.1637415164031;
        Sat, 20 Nov 2021 05:32:44 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id u15sm3484460wmq.13.2021.11.20.05.32.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 20 Nov 2021 05:32:43 -0800 (PST)
Message-ID: <3be6b8e7-cb69-a99b-6383-4fabdbdd46f9@gmail.com>
Date:   Sat, 20 Nov 2021 14:32:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: [PATCH 0/1] fanotify: Document FAN_REPORT_PIDFD Feature
Content-Language: en-US
To:     Amir Goldstein <amir73il@gmail.com>,
        Matthew Bobrowski <repnop@google.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>, Jan Kara <jack@suse.cz>,
        Gabriel Krisman Bertazi <krisman@collabora.com>
References: <cover.1635135968.git.repnop@google.com>
 <CAOQ4uxhUpnDVT6T-aGz2B_XUpRojJhVZG8Fw6XNegsWzXt+pDw@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <CAOQ4uxhUpnDVT6T-aGz2B_XUpRojJhVZG8Fw6XNegsWzXt+pDw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Amir,

On 11/20/21 11:36, Amir Goldstein wrote:
> Alejandro,
> 
> Is there any changes of getting those long due 5.13 fanotify update
> patches merged?

I thought I was waiting for an v2,
since there was a bit of discussion in the patch thread,
and some comments hinted that there would be a v2.

See 
<https://lore.kernel.org/linux-man/12909faf-1d45-1eee-aa6c-c7704518dc59@gmail.com/>

Am I correct?


Thanks,
Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
