Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7568413CAE
	for <lists+linux-man@lfdr.de>; Sun,  5 May 2019 03:41:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726965AbfEEBlC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 4 May 2019 21:41:02 -0400
Received: from mail-vs1-f66.google.com ([209.85.217.66]:42075 "EHLO
        mail-vs1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726768AbfEEBlC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 4 May 2019 21:41:02 -0400
Received: by mail-vs1-f66.google.com with SMTP id b74so6010362vsd.9
        for <linux-man@vger.kernel.org>; Sat, 04 May 2019 18:41:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=rsmqrzsSGVFYe44vmfdWfIcdSXs77bYJZaRELpnbROo=;
        b=Cx8dg4MVBbbKsz+d3uK/mrEqJZ/5RwBvsZM+TEUFjoSmrcjRrRh65Ke2cQ3Zv6RyYI
         O0mRLEeRQ0lltprxXF6H5DfFwdFrh43KeAPKC17dMV7HZoKPXzDg0leMwlLE7feMwSNW
         Dj/PXh/t0/5NcVMdHFZugXe6z3A5cMZt79Fp4/duKdx2uJoR0Aja9zID0JP3zQiiC/dL
         41PTdPf5i2Mc8jh9yLafNSX2eLN9mq+c9bY7UyT5Zy5eBzJP6/H5TdCPMIRhjMDX+WUe
         TY/iONXWF2j1BtCdSWmOwXqdYGD80eENpddrNjDkNGG47/1PTUIgs812gJnCGwdqYeb0
         AzLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=rsmqrzsSGVFYe44vmfdWfIcdSXs77bYJZaRELpnbROo=;
        b=bSOCS3lqSavyCD5FkWN+9//PnYHMNrsM3GeCreIg35VEAKETm0htXAB39rtthXCrJL
         mihlgKvySTehcsP2OFt8ssKTYqVpETPPgIR3VhxuQ/wB1jenuh8KxQzoKxu/9GemOEOZ
         yp31tVqjO53Zc4Sl7Pym3myb05c1MJfxIgY7j4of4q4gGuczswxiT1ZUlOCMqkinOhGs
         j2PzJxlIfBu0YPFNFS9zY6xlX838Pp477wBfBaO7QI9RsTw7EPoIs+2Ofue4E0R+BXg/
         Gpolcqz9nSJCx0Uh8k5vZiAkfXBEdyKbIpDHJVppDDkpfSoRC87vdobVJ8NT052Rf+l6
         ImHw==
X-Gm-Message-State: APjAAAUOpNFPLUKu29ouxRGlQLsagzXMAkuPJJUu945RvoZRKxNJk40F
        nKnPw2udfrAyLOWOpr/Zs3nX3xGm
X-Google-Smtp-Source: APXvYqyDXgJzeAIPh0QSGrrHM+eMknJQCI+CuDZWeq0BFCx50TPfmCsrz26YYzpQbT8fGrabxFwRyA==
X-Received: by 2002:a67:dd95:: with SMTP id i21mr4331371vsk.48.1557020461016;
        Sat, 04 May 2019 18:41:01 -0700 (PDT)
Received: from [192.168.0.8] (dynamic-190-25-35-141.dynamic.etb.net.co. [190.25.35.141])
        by smtp.gmail.com with ESMTPSA id a9sm2655102vka.21.2019.05.04.18.40.58
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 May 2019 18:40:59 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] posix_memalign.3: some functions set errno.
To:     enh <enh@google.com>
References: <CAJgzZorQJZKq7r3qfr-XC6aTQ5d394s8TE1hMMd=PG3Ze+ikGw@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b5916253-a85f-57c2-c824-f56016f7bbbe@gmail.com>
Date:   Sat, 4 May 2019 20:40:57 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAJgzZorQJZKq7r3qfr-XC6aTQ5d394s8TE1hMMd=PG3Ze+ikGw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Elliot

On 4/19/19 3:25 PM, enh wrote:
> True of bionic, glibc, and musl. (I didn't check elsewhere.)

Thanks. Patch applied.

Cheers,

Michael

> ---
>   man3/posix_memalign.3 | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/man3/posix_memalign.3 b/man3/posix_memalign.3
> index b4e355662..84b24303e 100644
> --- a/man3/posix_memalign.3
> +++ b/man3/posix_memalign.3
> @@ -144,7 +144,9 @@ For all of these functions, the memory is not zeroed.
>   .BR valloc (),
>   and
>   .BR pvalloc ()
> -return a pointer to the allocated memory, or NULL if the request fails.
> +return a pointer to the allocated memory on success.
> +On error, NULL is returned, and \fIerrno\fP is set
> +to indicate the cause of the error.
>   .PP
>   .BR posix_memalign ()
>   returns zero on success, or one of the error values listed in the
> 
