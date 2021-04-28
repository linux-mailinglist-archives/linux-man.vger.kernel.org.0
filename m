Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 95D2A36E032
	for <lists+linux-man@lfdr.de>; Wed, 28 Apr 2021 22:20:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241853AbhD1UV3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Apr 2021 16:21:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240761AbhD1UV1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Apr 2021 16:21:27 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65E97C061573
        for <linux-man@vger.kernel.org>; Wed, 28 Apr 2021 13:20:40 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id i21-20020a05600c3555b029012eae2af5d4so9991081wmq.4
        for <linux-man@vger.kernel.org>; Wed, 28 Apr 2021 13:20:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=8SighOM1IJCIPj0hJdUQHRjqbev/6WMCLBHsnUeqaMo=;
        b=FAMwmTPmAa3YOmdcTEZ+IEf+cd0XpeoPGe+KwVeGA4hPt1kkaaHdd68+2uvBV1d/a5
         CK+jJBJ89uaUwmpl4at+gR0jMm8pJ3uOJRCNUKrI97gh+VtWGRQoBXaH25pjjYtwdcvA
         pImVitDWHbe8BNTEpbfd2Y+fgsnQy5OYURpkmca8r4GUYDuwUPILwq6f1gCryqP9BKM0
         J1a9P/Sl1S21xuQlopJ3wCKKRQ1veuDmN9Te4Ag4zt4dAeJQd7UeMet/FZWHxhJFJIgO
         G2/iG6qt6z2qB86w8S1MqHmW+8hK2ZrmCDK9UBk9MZWL9SwVvoJUvNFh30PIK/yCQo1M
         Jf6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=8SighOM1IJCIPj0hJdUQHRjqbev/6WMCLBHsnUeqaMo=;
        b=sIvO9YCmslvo2o7RjEGQGEXJjrh0W/MsGDK3I5biC2TceSVJEpyV+OcaE4OnPGQWXA
         DyV6yRqOTfp+SvtuDseoOcDOfcPgUFyMs0YqTf18uZWz0OGHxzKFG0c1If8+xG52wAiW
         xHAvcIAwRo3AqCz6r/d4JSJm5n70YUCxBNeLBR4ejHGLGW40rmu5m2hLvqlv2bkMxFAs
         vSM0MwAllA9c2Gg3uhB34QB85Qh6wo42cbYUOBP5KVPKCYXlx0woEHScii7muhrhdK2a
         4/pIcu+6jZyIBqriN4bGsqO7xn6fiHtQ8lOC2WVFHzPDLQqy7C97r/hNMqxL3I56sqGO
         BQWw==
X-Gm-Message-State: AOAM530UDX9Gga5dTRvRaEmcf/jBgkEPoaxtfNZUc+iWMJhtGBx8l8Ph
        k2NPwxaTAcIlfuPqvkNBZFg3xsUVIRI=
X-Google-Smtp-Source: ABdhPJyFxsOPygeDivevMakf6JBc5aJn9YvqLFNBxeFON+a/8qhXkrNVXmMSZ6E9RoxqXo/vEgeSDQ==
X-Received: by 2002:a1c:9a95:: with SMTP id c143mr33209076wme.143.1619641239184;
        Wed, 28 Apr 2021 13:20:39 -0700 (PDT)
Received: from [10.8.0.106] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id u17sm7084492wmq.30.2021.04.28.13.20.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Apr 2021 13:20:38 -0700 (PDT)
Sender: Alejandro Colomar <alx.mailinglists@gmail.com>
Subject: Re: timespec_get() part of C11
To:     Walter Harms <wharms@bfs.de>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
References: <f79cbb6ecda24a1e90fb3c242d97c218@bfs.de>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <4e07ad86-e943-e2b7-9487-11b63d8b9fa3@gmail.com>
Date:   Wed, 28 Apr 2021 22:20:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <f79cbb6ecda24a1e90fb3c242d97c218@bfs.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Walter,

Thanks for the page!  Please see some comments below (I'll tell you more 
in the next iteration).

Cheers,

Alex

P.S.: How's it going with the other page you were working on? :)

On 4/24/21 7:41 PM, Walter Harms wrote:
> .\" Copyright (c) 2021 wharms
> .\" %%%LICENSE_START(VERBATIM)
> .\" Permission is granted to make and distribute verbatim copies of this
> .\" manual provided the copyright notice and this permission notice are
> .\" preserved on all copies.
> .\"
> .\" Permission is granted to copy and distribute modified versions of this
> .\" manual under the conditions for verbatim copying, provided that the
> .\" entire resulting derived work is distributed under the terms of a
> .\" permission notice identical to this one.
> .\"
> .\" Since the Linux kernel and libraries are constantly changing, this
> .\" manual page may be incorrect or out-of-date.  The author(s) assume no
> .\" responsibility for errors or omissions, or for damages resulting from
> .\" the use of the information contained herein.  The author(s) may not
> .\" have taken the same level of care in the production of this manual,
> .\" which is licensed free of charge, as they might when working
> .\" professionally.
> .\"
> .\" Formatted or processed versions of this manual, if unaccompanied by
> .\" the source, must acknowledge the copyright and authors of this work.
> .\" %%%LICENSE_END
> .\"
> .ds N1 The example is simplified code and not production ready.
> .de N2
> .SH COLOPHON
> This page is part of release 4.16 of the Linux

4.16? :)

> .I man-pages
> project.
> A description of the project,
> information about reporting bugs,
> and the latest version of this page,
> can be found at
> \%https://www.kernel.org/doc/man\-pages/.
> ..

You can remove the COLOPHON.   It is automatically created at release time.

> 
> .TH timespec_get  1 "2021-04-20" Linux "User Manuals"

Please, see `man 7 man-pages`, subsection 'Title line'.

> .SH NAME
> timespec_get  \- get time in high resolution

"high resolution" is relative.  It's like when you call Y is the "new 
X"... until it gets old.  I'd prefer expressing something like "get time 
in seconds and nanoseconds", don't you?

> .SH SYNOPSIS
> .B #include <time.h>
> .PP
> .BI "int timespec_get( struct timespec *"ts ", int " base  ");"

Don't add extra spaces inside the parentheses '( xxx', just like you'd 
do in normal english.
If there are no spaces, there's no need for using quotes: '");"' == ');'.
Also, use spaces to separate arguments to '.BI' always.

.BI "int timespec_get(struct timespec *" ts ", int " base );

> .SH DESCRIPTION
> The function
> .B timespec_get()
> will fill

No need to use future here.  'fills' is simpler.

> .I ts
> wth the current time. The argument is a

'The argument': I think I prefer to mention the argument name.

s/The argument /\n.I ts\n/?

> .I struct timespec
> what is specified like:
> .nf

Please, see `man 7 man-pages`, subsection 'Indentation of structure 
definitions, shell session logs, and so on'.

> struct timespec
> {
>     time_t tv_sec;     /* Seconds.  */
>     long tv_nsec;   /* Nanoseconds.  */

Please, align comments.

> };
> .fi
> The elements of the struct hold the seconds and nanoseconds since epoch.
> The system clock will round the nanosecond argument.
> .PP
> The second argument
> .B base
> indicate the time base.  POSIX requieres
> .I TIME_UTC
> only.  All  others are implementation defined.
> .SH RETURN VALUE
> The function will return
> .I base
> or 0 for failure.
> .SH EXAMPLE
> The example program will show the current time
> in YYYY-MM-DD hh:mm:ss and then the nanoseconds .
> .EX
> /* compile with:
>   *  gcc timespec.c -o timespec
>   */
> #include <stdio.h>
> #include <time.h>
>   
> int main(void)
> {
>      struct timespec ts;
>      char buf[30];
>      timespec_get(&ts, TIME_UTC);
>      strftime(buf, sizeof(buf), "%F %T", gmtime(&ts.tv_sec));
>      printf("Current time: %s ", buf);
>      printf("UTC and %ld nsec\\n", ts.tv_nsec);
>      return (0);
> }
> .EE
> \*(N1
> .SH NOTE
> This function is equal to the POSIX function
> .BR "clock_gettime(CLOCK_REALTIME, ts)" .
> .PP
> The ts.tv_sec is equal to the return value of
> .BR time(NULL) .
> .SH "CONFORMING TO"
> The function is a C11 requirement and appears first time in
> .BR "glibc 2.16 " .
> .SH "SEE ALSO"
> .BR clock_gettime(3) ,
> .BR time (2),
> .BR time (7)
> \*(N2
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
