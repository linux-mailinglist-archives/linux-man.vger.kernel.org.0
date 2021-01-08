Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 264A42EF0E1
	for <lists+linux-man@lfdr.de>; Fri,  8 Jan 2021 11:52:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726901AbhAHKvI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 8 Jan 2021 05:51:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726752AbhAHKvI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 8 Jan 2021 05:51:08 -0500
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B70EC0612F6
        for <linux-man@vger.kernel.org>; Fri,  8 Jan 2021 02:50:27 -0800 (PST)
Received: by mail-ej1-x636.google.com with SMTP id jx16so13877719ejb.10
        for <linux-man@vger.kernel.org>; Fri, 08 Jan 2021 02:50:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=N6FWdIies7VZl3S275Ad0fpVmIMhcXuerYcJaPozFm0=;
        b=Hi6CcI1RUm8hz7HG0ol3POrMoy1TQsw16Rrnyvk9gA5rLkjfTflS2LYG7hf3+gJt5N
         /lR8LcLbvKwPbXur1TzCnfWcvhL0uQuoCirayYqW62XQlRJfhrvsn8GAQVv31ciW6+u5
         u+tX2+TU38UyWWVcfgj+GBqMIV09M2QeUtd+CsqejGvHRoubiYmRe0fNliUt1lTREBbL
         6AMxoGyj/5XTPMbVuzNEmQMcwmVd9OKEtgVNhez2PTPI3NR2O6ACJy9is+OYQH4Rx1Ho
         N5tmS53qmHCQb3+2XOhzmFLJ49m1igtkVb87yLfARcTk1QLEwbtgeMKET+IIhbugYJJm
         f1lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=N6FWdIies7VZl3S275Ad0fpVmIMhcXuerYcJaPozFm0=;
        b=Hkga5ohgvaqA385IZ9oRYBKkOuw1HHjgpop3Jt4hLKqwNw24SnOZbbldzJQxIHD05z
         9YbnGibimlTDyAv40IqvkzlDuTIUNN9XTq7ggCjDgt+bgNK560ym7T/51IgfC/2IOJlD
         ITlwU18kczZ5AE/8eEgzk9HJSBsBDdIPWyrKmW36VjzRj0092tidPFLxiT0GDwM+U7Xh
         NSP6KAp0XmtmrNL0z2HbDuVr39+F6zLBbrOhCfbuaeQpszYf3yMcNb9Yq0vMMnXphYhj
         w5IIgn1Wr7ztzm7AXxkXDCYgaWHCOtJtdk8YCeoqUqpZJrFKGtkbCDdLQP20FO62dPTi
         HPEw==
X-Gm-Message-State: AOAM533X+q0hg3yB8NZHrjp68WEkZ9GJoGeEPm2m7kirgmIIs0iQqgA3
        yrZJGwCxAfMm9Kvy1TdEkHnk0bDvgCI=
X-Google-Smtp-Source: ABdhPJyJBl4WNr6YsXE4FNm92265By6Rar7DoRChqK7iiAXvBnUMZ3CQbObOzUm/uwJJfyusGwjbow==
X-Received: by 2002:a17:906:7f0b:: with SMTP id d11mr2284551ejr.7.1610103025866;
        Fri, 08 Jan 2021 02:50:25 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id qn4sm3372675ejb.50.2021.01.08.02.50.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Jan 2021 02:50:25 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: Further inconsistencies in FTM
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <87f6ca4b-7f4c-20ed-cb94-3f4f88fc5077@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b65f22fe-d30d-c4d3-77e5-29ca7f67d88f@gmail.com>
Date:   Fri, 8 Jan 2021 11:50:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <87f6ca4b-7f4c-20ed-cb94-3f4f88fc5077@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 1/7/21 6:04 PM, Alejandro Colomar (man-pages) wrote:
> Hi Michael,
> 
> [[
> SYNOPSIS
>        #include <stdlib.h>
> 
>        int clearenv(void);
> 
>    Feature   Test   Macro   Requirements  for  glibc  (see  fea‐
>    ture_test_macros(7)):
> 
>        clearenv():
>            /* Glibc since 2.19: */ _DEFAULT_SOURCE
>                || /* Glibc <= 2.19: */ _SVID_SOURCE || _BSD_SOURCE
> 
> ]]
> 
> [[
> SYNOPSIS
>        #include <time.h>
> 
>        int dysize(int year);
> 
>    Feature   Test   Macro   Requirements  for  glibc  (see  fea‐
>    ture_test_macros(7)):
> 
>        dysize():
>            Since glibc 2.19:
>                _DEFAULT_SOURCE
>            Glibc 2.19 and earlier:
>                _BSD_SOURCE || _SVID_SOURCE
> 
> ]]
> 
> Which one do you prefer?

Probably the latter, since it is a little easier to read.

The former form has crept in as a result of my attempts
to keep the FTM info somewhat compact. See, for example:

       chroot():
           Since glibc 2.2.2:
               _XOPEN_SOURCE && ! (_POSIX_C_SOURCE >= 200112L)
                   || /* Since glibc 2.20: */ _DEFAULT_SOURCE
                   || /* Glibc <= 2.19: */ _BSD_SOURCE
           Before glibc 2.2.2:
               none


       waitid():
           Since glibc 2.26:
               _XOPEN_SOURCE >= 500 || _POSIX_C_SOURCE >= 200809L
           Glibc 2.25 and earlier:
               _XOPEN_SOURCE
                   || /* Since glibc 2.12: */ _POSIX_C_SOURCE >= 200809L
                   || /* Glibc <= 2.19: */ _BSD_SOURCE

The latter could be rewritten (I hope I got the expansion right) 
as:
       waitid():
           Since glibc 2.26:
               _XOPEN_SOURCE >= 500 || _POSIX_C_SOURCE >= 200809L
           Glibc 2.20 to 2.25
               _XOPEN_SOURCE ||  _POSIX_C_SOURCE >= 200809L
           Glibc 2.12 to 2.19
               _XOPEN_SOURCE ||  _POSIX_C_SOURCE >= 200809L
                   || _BSD_SOURCE
           Glibc 2.11 and earlier:
               _XOPEN_SOURCE || _BSD_SOURCE

 
That's more verbose, but perhaps also easier to read, now that
I look at it.

I'm not sure whether you are thinking of doing some global edit,
but if you are, perhaps we need to discuss this more.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
