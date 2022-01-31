Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4C67F4A52FE
	for <lists+linux-man@lfdr.de>; Tue,  1 Feb 2022 00:13:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237624AbiAaXNO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 Jan 2022 18:13:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237496AbiAaXNM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 Jan 2022 18:13:12 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20B68C061714
        for <linux-man@vger.kernel.org>; Mon, 31 Jan 2022 15:13:12 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id v13so28341495wrv.10
        for <linux-man@vger.kernel.org>; Mon, 31 Jan 2022 15:13:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:cc:from:in-reply-to:content-transfer-encoding;
        bh=7zMPPSvBwmFSgznudCtJo+OB0bbVASOoq8HmVTnAP/s=;
        b=P6kZra2VNN+635YERsc+1MZX8KacltJfHAaE8A4r6frhcZ5Qv6C5gixhjr8fY70yMp
         mHP/d/9l9Fk0F/P5Ky6aGkerQnsmiWv+rgelzYnibWKwY6hiJrKQ31bt6PdOo4WVajwc
         c4wazrtVMsE6aAqWBjqROIv3oDiPROsuAOP/3nuTlA3xqvxvl1/ylrNv9UT9zkuulXEd
         Obju6I4HY1lUHIQB6nK4d/IiR00cBuLL3P5GzM3fzhnIYOdyUcVPkMRIvOHjErSYN0Ys
         gJjo1ylONdA2Kd6ImAU0ynpw0oOcheuPCiDaMZk6aDgVXtT/8i5bGr15LPsOQ4GIP0Lv
         jmhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:cc:from:in-reply-to
         :content-transfer-encoding;
        bh=7zMPPSvBwmFSgznudCtJo+OB0bbVASOoq8HmVTnAP/s=;
        b=XLxVus+cmNzyyw/l3erW1ZKY9Zlf+qu1t+esAqJzzlQHj0MicYkQqUivemNLxxcMwE
         O03vhspGnjtij7eJwJ3tAcqu1uVZOShgcdBJ99sPSb8J8eNLXV8B+fONLDzLDPSO+OL2
         pSHiobn8+LJwGIwqjlEy7If0TVx+l8gHMj7AgDv0iMI5hyRISZDpSbm6nGYk0poh28S+
         IHGl1G7SJxGtKjp37Tlg2bi7SkKe+ztbaS0xbc+ASv4yByRR+n0HrRAEFGbcZvfQSrpw
         cADNCcII0KPfpWX1ACNkXswBLTFKFngJHFGUvczKguoDMDgT8CwjHMLSOqNoi5r/efsY
         Yg9Q==
X-Gm-Message-State: AOAM5333Y1m/Aqu44uVwwZupWGnxx/jdkFtNo452oVt5ndM2LhDl9Tt5
        tOO73VymhjGCXwYac4sRJamvsfa3VZ0=
X-Google-Smtp-Source: ABdhPJyRaHouL0VG8FkLgGWmYlhdR91j9t0QSFLox/LI9qeG7Oxi/did1MkxHOQRZx7GnUACWserIQ==
X-Received: by 2002:a5d:64a1:: with SMTP id m1mr18886849wrp.474.1643670790671;
        Mon, 31 Jan 2022 15:13:10 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id v5sm504172wmh.19.2022.01.31.15.13.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Jan 2022 15:13:10 -0800 (PST)
Message-ID: <42c02753-86df-b140-08b4-ab3a10ff19b6@gmail.com>
Date:   Tue, 1 Feb 2022 00:13:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.1
Subject: Re: man string vs man string.h
Content-Language: en-US
To:     Lao Shaw <laoshaw21@gmail.com>
References: <CABQ1peNegXXk9Lha0EA=pbgWdgjtKcf+RYj2UkN15qJ6VvqF2Q@mail.gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
From:   Alejandro Colomar <alx.mailinglists@gmail.com>
In-Reply-To: <CABQ1peNegXXk9Lha0EA=pbgWdgjtKcf+RYj2UkN15qJ6VvqF2Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Lao,

On 1/29/22 05:25, Lao Shaw wrote:
> Under linux `man string` is ISO C at /usr/include/string.h, `man
> string.h` is for Posix manpages.
> 
> unlike `man stdio` for ISO C, in particular, `man string` does not
> have APIs like `memcpy, memcmp` etc, which is in /usr/include/string.h
> 
> What am I missing?

Those pages, although similar to the posix header file manual pages, are
not a header file manual page, but a manual page about a group of
functions.  There's 2 groups of functions in string.h(0p): those about
character strings, and those about byte strings (i.e., raw memory,
non-NUL-terminated).  string(3) only documents the former.

I think it would be good to add a man0 section to the Linux man-pages
project (as done in the POSIX man-pages), and I started by writing
sysexits.h(0), but that's likely to take a lot of time to have complete.
There, I'd add a string.h(0), which would probably have two separate
subsections, about memory functions, and about string functions.

Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
