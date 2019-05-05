Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 41E2E13CD0
	for <lists+linux-man@lfdr.de>; Sun,  5 May 2019 04:38:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727129AbfEECid (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 4 May 2019 22:38:33 -0400
Received: from mail-ua1-f65.google.com ([209.85.222.65]:40232 "EHLO
        mail-ua1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726390AbfEECid (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 4 May 2019 22:38:33 -0400
Received: by mail-ua1-f65.google.com with SMTP id u34so3458627uau.7
        for <linux-man@vger.kernel.org>; Sat, 04 May 2019 19:38:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=EohbeHU+M1ia9YP0ylTuPbYAps9wvqSn6WH08fSFC38=;
        b=XhxRYdSgd8fFRfQvSvvQopRl68Bbr/K6SzOt/vTuwpz+qqLS/MbQpZOPfcPZjGHpn9
         I+qVf8OcJ1n3JQ8gsp3MRwlGkxOhJVfcVyrsplGeJgipR4+jg6tQ4qUpxaxHHuCFaL1T
         3xBLTlB+StKP09XjwmKwjcM4VKXPZPgfkZtG57KGxAN/QBkWSCQKo3Z8z2LIkwqR0nRz
         iMjcqztEv8bOX1/PSrnR2BfN9CpIvEZvvGqUGjpbx5Gj4QEprvIweuxtc0A6ZtuTvz8Q
         prRUohTQeeMubQuGttJiV0wxdqW2aTmoh70ViWVxtb/fo3kqlDyXF9x1t3vFJctWPat5
         EqZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=EohbeHU+M1ia9YP0ylTuPbYAps9wvqSn6WH08fSFC38=;
        b=JlI74uY7xTn0fBuxnsavhxPcV/PQk+JaGRW8SixkgcrEWK4FgtUTbpfRAryD+mdpLc
         4W7nAMjG+el+6RYQ7735YxOF3ARVqUJoIxY4nkw4lS50Y1Gb9g+E1AFvJLNv+2G5hKWM
         bqHBSQ/3bPKzbL1G0lcznIbvQOldCBGDbPMY7UfNNFbFJ/DTIfqTLH3nnT8sqNP9URPC
         Z7qIy/F8wnImV74/QcFfubL9rGAXrmUg4BWI25brSLie4tuX/Y0hcalWjq2qM9Wm+D8o
         R3V4fSsiOe+uQ1q2l+K6TzA2F5u8lMf2oeurD8xnf8XEuamuUcL2uG9lJVhFNZBrWuDG
         uODw==
X-Gm-Message-State: APjAAAURvMABmbFO4aJs5KYVpqwwb7Tj21dwFYYSjfBtvRKxkucYF+ZX
        I6SDSN+O7d4LHaGZG3dtTh1QMZg2
X-Google-Smtp-Source: APXvYqwOBs7NATJ1pF+dEFALguU0oTMh1v8S5oHY+y+q8QzouqbSKayAg1aO6Ct9simD4g7qq8XW+Q==
X-Received: by 2002:ab0:748e:: with SMTP id n14mr9446250uap.53.1557023911661;
        Sat, 04 May 2019 19:38:31 -0700 (PDT)
Received: from [192.168.0.8] (dynamic-190-25-35-141.dynamic.etb.net.co. [190.25.35.141])
        by smtp.gmail.com with ESMTPSA id m39sm1888427uae.14.2019.05.04.19.38.25
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sat, 04 May 2019 19:38:31 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Nicolai Dagestad <nicolai@dagestad.fr>,
        linux-man@vger.kernel.org
Subject: Re: [patch] shmget.2: Document SHM_R and SHM_W
To:     wharms@bfs.de
References: <f4ce75c3-3a15-e70f-3306-f2e6b397f6ee@dagestad.fr>
 <b7a69c03-0650-2c07-2ae8-51777b150485@gmail.com> <5CC2F071.6040303@bfs.de>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8c57d5f4-de9d-f91b-d449-fa7eb65965ef@gmail.com>
Date:   Sat, 4 May 2019 21:38:11 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <5CC2F071.6040303@bfs.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Walter,

On 4/26/19 6:50 AM, walter harms wrote:
> Hi all,
> 
> The use of SHM_R SHM_W seems to be common.

I don't think that's true. (But yes, the falgs have been around
for a long time.)

> I found it in this man page date 1995
> https://www.freebsd.org/cgi/man.cgi?query=shmget&sektion=2&apropos=0&manpath=FreeBSD+4.2-RELEASE
> and in linux/shm.h
> /* permission flag for shmget */
> #define SHM_R           0400    /* or S_IRUGO from <linux/stat.h> */
> #define SHM_W           0200    /* or S_IWUGO from <linux/stat.h> */

Yes, but you won't find those flags documented in recent FreeBSD manual 
pages, for example.

Thanks,

Michael
