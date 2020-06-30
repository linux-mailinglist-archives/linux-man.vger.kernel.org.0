Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8B59120F341
	for <lists+linux-man@lfdr.de>; Tue, 30 Jun 2020 12:59:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732604AbgF3K7y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 30 Jun 2020 06:59:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732592AbgF3K7y (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 30 Jun 2020 06:59:54 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90D68C061755
        for <linux-man@vger.kernel.org>; Tue, 30 Jun 2020 03:59:53 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id 22so18377260wmg.1
        for <linux-man@vger.kernel.org>; Tue, 30 Jun 2020 03:59:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=from:subject:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=O7CYAv3+Ec7eX0lK0Q0K1kEmqfCvxeDYY81SPhLdiRw=;
        b=BU6OXtuFdEXbjGCRtn7nNDKX4V9x38EqrDLRyL2etTwSDbTwqXiv/IHq3YAVqWlcIX
         jL8/dt546FOoHCNTBSohL3/GyIPvJmOtjKUaC79DRis7cz8S6D/xm6y/cTUgHZNsLsv7
         Ixqmc/gwzp/rcauBcfKL8cuaAz+Nz7YMgG+ct8+oFll6w2q8wFfXAxq6yDLgj8g6GnaY
         G9pIUvN6miFR2FYXX5QTw91JxsKlwD/NEX+/p2QHoZguWV9oY6ZduHNUaJ7h+gRyxOt/
         jizhzza1AzQP1Sv5jB1fK2TNubjwC2aig+4x8HZw8Md5iy6ZaC+G3Fm+OR2nc8GNq0D2
         dM8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=O7CYAv3+Ec7eX0lK0Q0K1kEmqfCvxeDYY81SPhLdiRw=;
        b=Y2P0+37nFIIuu+Ajltkez2mseMvIDod/+Jg+YqjoD8+zqMZ1Bwdqs0yLPhlvK7gC+z
         acQ3J18XFlCXoMQa66NiKUNFblYPyRLZOpCJeSYGlbn03NKo23Z1+SD0HhmySZ/iX6Sv
         diq2gHLVe9mmLt7YReMgvDhb706dfk9LvnOV6PnH0rBPFR8Qpb146BLxLZ3fgvBUI63D
         gEFhgeQSCXhQkiFQuOIDYZMim0IbuYMYlLA/IQ7+sSHKSkpDdcv3hSDFFfCOMaOmfvWM
         uy/0OyPfdYs8mA+LV1+HyNDxrPJLes35Itg+OzJntYEPqZKMqdja5HhOiLfj46KasWNM
         twJQ==
X-Gm-Message-State: AOAM531RDhb0c3L2YLeS1Otkj4iMaLWoQjQ2tBi09e3XFVmYdOpwpjce
        qDdXGdRYTtMNYtjv/nx+CfbsV47bC2E=
X-Google-Smtp-Source: ABdhPJz2JdLVzefdHzXyV1JZDNcHNBOs0BvaWyJQjFXDmOkR01WOe2yZVIoS3UniHNee6lJgPHpiqw==
X-Received: by 2002:a1c:7216:: with SMTP id n22mr14224252wmc.189.1593514791933;
        Tue, 30 Jun 2020 03:59:51 -0700 (PDT)
Received: from [192.168.0.12] (cpc87281-slou4-2-0-cust47.17-4.cable.virginm.net. [92.236.12.48])
        by smtp.gmail.com with ESMTPSA id 26sm3099118wmj.25.2020.06.30.03.59.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jun 2020 03:59:50 -0700 (PDT)
From:   Jonny Grant <jg@jguk.org>
Subject: Re: strcpy compared to POSIX strcpy
To:     mtk.manpages@gmail.com
Cc:     linux-man <linux-man@vger.kernel.org>
References: <0608691a-6400-0a44-1031-a693f57dee52@jguk.org>
 <CAKgNAkgH4L-_A0LqqYyk621EmRqDOqAbG80gR-bu4Fk6jcEskA@mail.gmail.com>
Message-ID: <8b1272d9-cb76-e5a2-3731-e98c18344444@jguk.org>
Date:   Tue, 30 Jun 2020 11:59:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CAKgNAkgH4L-_A0LqqYyk621EmRqDOqAbG80gR-bu4Fk6jcEskA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 29/06/2020 21:30, Michael Kerrisk (man-pages) wrote:
> Hi Jonny
> 
> On Mon, 29 Jun 2020 at 15:41, Jonny Grant <jg@jguk.org> wrote:
>>
>> Hi Michael,
>>
>> Returning to an old topic, noticed strcpy man page is different from the POSIX spec with regards to "terminating NUL character" or "null-terminated" shouldn't man pages should follow POSIX style writing "NUL"?
>>
>> https://man7.org/linux/man-pages/man3/strcpy.3.html
>>
>> https://man7.org/linux/man-pages/man3/strcpy.3p.html
>>
>> https://pubs.opengroup.org/onlinepubs/9699919799/functions/strcpy.html
>>
>> Another function even has nul in the name
>> https://man7.org/linux/man-pages/man3/strchrnul.3.html
> 
> It's not so simple. In POSIX/SUS, you will find variously:
> 
> terminating NUL character
> terminating NUL
> terminating null character
> terminating null byte
> 
> There's even one instance of "terminating NULL character" (in
> <net/if.h>; I estimate it's a bug).
> 
> In the C standard (C11), "terminating null character" seems to be used
> exclusively, but as I understand the C standard [char == byte] by
> definition.
> 
> I've tried to consistently use "terminating null byte" across all
> pages in man-pages. See also the discussion in man-pages(7).

Hi Michael,

It is good you have made things consistent. It sounds like you can't make the POSIX man pages the same, as that comes from the POSIX spec right?

BTW,  net/if.h looks okay on my Ubuntu LTS, line 36 does have:
    char *if_name;		/* null terminated name: "eth0", ... */

Cheers, Jonny
