Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 18E952F186F
	for <lists+linux-man@lfdr.de>; Mon, 11 Jan 2021 15:39:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387705AbhAKOiw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 11 Jan 2021 09:38:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727984AbhAKOiw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 11 Jan 2021 09:38:52 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD3D0C061794
        for <linux-man@vger.kernel.org>; Mon, 11 Jan 2021 06:38:11 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id r7so9472wrc.5
        for <linux-man@vger.kernel.org>; Mon, 11 Jan 2021 06:38:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=02jXZIs6TaiK6nOfxofqL+ZT7j7JxqYGeXwBS1ls+No=;
        b=U6VUPZ/FmNFukVBK8dGV34P2qQPCvxqsnW0dKWDKaQjrje/CIPMrM7NnUFgGSvI6a1
         v2z9JgURZ/8NwaoCZTGvWcZ3qnyXfP1DxXzqF62IolDKYIaY4ZPVz+2+2W6mcyCLA4De
         x/6E5PedqTW+2IuLfXpeWZ6qlpC9Xp6I2PTMG7D/Qz3fwkP1YY3JF3V/PmQR65mp1jMl
         2GiQyPmoXrhq/FHkAzyaLM9LdTAXDx3B1QgwMB9MK3jrhCgqgKwBI9HH3V/vWkW3AXeS
         1MTgfOCb8CpvGAU9A51PJinBF8u+yLeljehiBX48sX95Ex5zQ2Qa5oD79+yZdqkGpeWh
         9pog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=02jXZIs6TaiK6nOfxofqL+ZT7j7JxqYGeXwBS1ls+No=;
        b=Y5B6xFMm3WUHGZW5Z4o/Bsl2m/7Kf3seGvPY6fyUW4TUSx2lAPwZNnBoz6BXReMoHS
         6mgwsrZYxiFb4HWNLKLTULMHvFr6bc1yc97rhy8hLn1oUg0rFQOmS+pSJ6y4RnbZcPCz
         gWpPhc1PKRrchlJql8vaQrP90r9eGR/QRa4yX9wi8UDVaJeRQ3KBqGmF+29TMSqtXC+e
         FCt/f444wB9CbmTr2sQLfcFGP8vhJMhN/orn/1qB1qjecTg39BoP36sBw/QANWqIWtrU
         w4pRQe0tVTqyR+CJBtQQCiaEWT6Om4wUfA9bqUNblZnPfSNg4ugnMpU5WYwrt/1DK6bE
         zLiA==
X-Gm-Message-State: AOAM531Zgw4/k/YgejD4/tWjc0PvS7EBzntUPJIJQaThD1G4k9pMDsFu
        Aj9QpEUnIGOtNOfz8Gv6vl8=
X-Google-Smtp-Source: ABdhPJykfyeQnEZnmUDBCgCYH0PMAGxgU0zJJhnySThe9joY20Kx2xnYZbcXbnXNWiq0W2WdwzTADw==
X-Received: by 2002:adf:fb85:: with SMTP id a5mr16517915wrr.331.1610375890670;
        Mon, 11 Jan 2021 06:38:10 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id y6sm22544691wmg.39.2021.01.11.06.38.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jan 2021 06:38:10 -0800 (PST)
Subject: Re: [PATCH, BUG 211039] malloc.3: Document that realloc(p, 0) is
 specific to glibc and nonportable
To:     Johannes Pfister <johannes.pfister@josttech.ch>
Cc:     linux-man@vger.kernel.org, bugzilla-daemon@bugzilla.kernel.org,
        libc-alpha@sourceware.org
References: <20210109211505.76000-1-alx.manpages@gmail.com>
 <CAC0j1hUagqx4VOsvDS8-24jF6OU+Aaks2GXdKxo89en_oNz+=A@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <f9bbf61d-37db-ef11-d293-df3ea56351c5@gmail.com>
Date:   Mon, 11 Jan 2021 15:38:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <CAC0j1hUagqx4VOsvDS8-24jF6OU+Aaks2GXdKxo89en_oNz+=A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/11/21 11:13 AM, Johannes Pfister wrote:
>> A more detailed notice is on realloc(3p).
> 
> Yes. But i think it will lead to bugs when there is a documentation
> that describes the behavior of realloc(), says realloc(ptr,0) will do
> free(ptr), says realloc() is conforming to POSIX.1-2001, POSIX.1-2008,
> C89, C99.
> But does not mention that the realloc(ptr,0) is not specified in this
> standards (except C89).
> 
> And there are some distributions that do not include the realloc(3p)
> man page. On my Debian Buster (10) there is no realloc(3p) man page
> and man realloc goes to the malloc man page of the Linux Programmer's
> Manual.
> But maybe this is a problem of the distributions/Debian?

Hi Johannes,

That was the message for the commit.
See commit: da116d481b79892026029b442fb381713a09f123
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=da116d481b79892026029b442fb381713a09f123>

> 
>> Thanks for the report, Johannes!
>> Please review that your name is correct (I guessed it from the email).
> Yes it is. Should i configure my name somewhere?

No, don't worry.  It was only for the "Reported-by" line in the patch.

Regards,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
