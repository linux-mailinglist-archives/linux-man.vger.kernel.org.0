Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 003B83FBE04
	for <lists+linux-man@lfdr.de>; Mon, 30 Aug 2021 23:17:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236702AbhH3VSY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 30 Aug 2021 17:18:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234509AbhH3VSX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 30 Aug 2021 17:18:23 -0400
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D518C061575
        for <linux-man@vger.kernel.org>; Mon, 30 Aug 2021 14:17:29 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id z24-20020a17090acb1800b0018e87a24300so914208pjt.0
        for <linux-man@vger.kernel.org>; Mon, 30 Aug 2021 14:17:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=v187/QmuCseEnstYQ2OBcJ+HQuRWTl9MaA/iDRT6pbs=;
        b=G3UvEkPoQdf2f3MNqEQENE0J6NUjC8xPnGz0W0k/Pg4uoRSj6fhYRStBptApQ4/gTU
         5SzIot7P0D7bOS9xgZMj/ShKQWisYp9HKV1/j+5oiRXuKlbS5dYyMqAumT7RjBz3YM/B
         Gl680PazB+m5FOEuu5093ICWocy9cwFROy4R4T67qh96hRuMuKbg5rHovO5gmH6ml2NT
         mh5XVWN35XgJCWWYGSaiam7FUJLPBKlY4LJxp75QnIYHkJIL7jgVDBDewo9ZEhG5qyis
         CMLi6GJ7zvYooCX6yhLh2i05cYJpJkYuOCnXXo0c7HnGpUO6PBYPfgmyLrEDJKG5flfp
         hpRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=v187/QmuCseEnstYQ2OBcJ+HQuRWTl9MaA/iDRT6pbs=;
        b=NzZq+nLOYDtdW/vgUHWwXbQuM5n7kODgF7RyMOe1Xfv5lEDd6uc0qYAXgFDe44qKr8
         tJPHdSfRA5Nze8g4TTR9JTdpUx9o1B5OLdu1NyJBPu9KWRLVwZNhx3HNEYmXSxbbVaqQ
         m7QE5BJ3PImrhpIiNsLj7dfuYzNmCynF81cmfH4KRnKf4IftA8T0fr7wFqXnTeREYZRl
         bNciEXy1lMPfO9GHg/fNbZvBsg+ySKRkdFIk5JCQfNYwlxTxrdwWpSz7JKkR+52hcGsI
         8FXbWjkU0nyQ7+3EFMQ4nZwVeJbo2xtCdvu1miKB831QUWgzbMtJpUWMPwhBmgt2wL9Y
         6Okw==
X-Gm-Message-State: AOAM5322hzGXVZaL7rjgQAp5ZMtuI5CU2epPUrRlFVW/p3CGkVPlw25g
        084Z1YaYR9WovMLBt0ttMBA=
X-Google-Smtp-Source: ABdhPJyPOnQOCtcsx2YtKZRi0owlVDTYi/0aBDPQJpNw0DwN/tjF26uqhQEQ5W7VwsUahoC6u+jOKg==
X-Received: by 2002:a17:90b:2250:: with SMTP id hk16mr1179525pjb.55.1630358248884;
        Mon, 30 Aug 2021 14:17:28 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id y26sm15248012pfe.69.2021.08.30.14.17.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Aug 2021 14:17:28 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        =?UTF-8?Q?Marek_Beh=c3=ban?= <kabel@kernel.org>
Subject: Re: [PATCH] ioctl_tty.2: TIOCGSID is equivalent to tcgetsid()
To:     =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <20210830160857.25574-1-pali@kernel.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <671d0530-8eef-a4e1-a7a3-fc2399083d75@gmail.com>
Date:   Mon, 30 Aug 2021 23:17:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210830160857.25574-1-pali@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Pali,

On 8/30/21 6:08 PM, Pali Rohár wrote:
> Signed-off-by: Pali Rohár <pali@kernel.org>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man2/ioctl_tty.2 | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/man2/ioctl_tty.2 b/man2/ioctl_tty.2
> index c7a8aad7b395..6ba18f337e8f 100644
> --- a/man2/ioctl_tty.2
> +++ b/man2/ioctl_tty.2
> @@ -401,6 +401,9 @@ Set the foreground process group ID of this terminal.
>  Argument:
>  .BI "pid_t *" argp
>  .IP
> +When successful, equivalent to
> +.IR "*argp = tcgetsid(fd)" .
> +.IP
>  Get the session ID of the given terminal.
>  This fails with the error
>  .B ENOTTY
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
