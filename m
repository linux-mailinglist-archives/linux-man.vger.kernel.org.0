Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 216BA43155
	for <lists+linux-man@lfdr.de>; Wed, 12 Jun 2019 23:10:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728470AbfFLVKg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 12 Jun 2019 17:10:36 -0400
Received: from mail-ed1-f66.google.com ([209.85.208.66]:35034 "EHLO
        mail-ed1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726599AbfFLVKg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 12 Jun 2019 17:10:36 -0400
Received: by mail-ed1-f66.google.com with SMTP id p26so23756509edr.2
        for <linux-man@vger.kernel.org>; Wed, 12 Jun 2019 14:10:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=DTHP8nS3aB169DuGiQdfiWxLwZEb1XcLF8LEqEl74Jk=;
        b=HOx4Z5DOGl5KaZh6Un0/ZzpUZadzYrSDgZy16bYIolu9PT5Tq+AvmnGM1XaRPpjVZA
         t0oLel0i+LSoIw0n+XUhtf75ipXK4SQURTzkveqtLrwatFWGseaTVvT6mqVOKJ3T536O
         3p9YxJTx3DYKGwACJwM1LklastviLISM8ab3H8twmIh26ejqDMnpyCTE6/XN/g2qFz0Q
         +PlvIpQ5MkXqwpx9l2m1GiPX7fAZPxhcLzfh09GqKQh81KHOFlAnCrzUANuR+TSEx0m2
         +W+lbsGpNEavw67/OuFJ/v6X8dOS30rupEBfhx2JejsDQdCf/nsz4GhMjAU/JPAx5hUu
         47xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=DTHP8nS3aB169DuGiQdfiWxLwZEb1XcLF8LEqEl74Jk=;
        b=jSXZnR6JZjOTQVPAL6SRpVgR9Fz5yyIBqbUTSJTbd200G04t9/asVbc4QIY3rWckSJ
         /lHekf2nFCQk4BvqRay/8w5b6NcRgynsBmvIDxnNCRJ2TMcums238pkqPlGQ333L7Gk9
         BaNf6/gMm4LzPkcMDaRJfRdmXV8ijBT86zlRL0vqxGVqeQP4zxoM9oeRL68sFsoqjR0Q
         RXOuJ6IM69F2fTlq2LsUM5HuR7sStoE2aC+RRlUCHTBHlzoe6vFhVyNoBGHXNqvxPEdK
         usF1MmOfIoEh1+9WUJfnSUUoOp1LJEtqmnEvuzoX1KWGoAmDQYq/Mls0u88ubN8K+4H6
         3iFw==
X-Gm-Message-State: APjAAAWXZK/FefVk9ZLTNoE0DipIrdyS564hqH07lq0zZedYB4YuzcPN
        ZmvHg4qHjcR7aMVY13hebNSKz/0FxPE=
X-Google-Smtp-Source: APXvYqwqTAUfUGPz+0l5klrzF7p1WlRB/iPjeadWsYTDiKuPUDuy27/kHvmb8kMjNm8BRTHh8GNOMA==
X-Received: by 2002:a50:9431:: with SMTP id p46mr71571117eda.38.1560373834088;
        Wed, 12 Jun 2019 14:10:34 -0700 (PDT)
Received: from [192.168.8.116] ([194.230.158.146])
        by smtp.gmail.com with ESMTPSA id s11sm160975ejo.51.2019.06.12.14.10.32
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Jun 2019 14:10:32 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [patch] exec.3: explain function groupings
To:     Matthew Kenigsberg <matthewkenigsberg@gmail.com>
References: <CALR7VXvSumMi2cWYcEiNxkyWCKt8NqLicCR44im6Tu_cgh13hA@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <9f05903e-a7f4-81d7-d482-e61421b6b812@gmail.com>
Date:   Wed, 12 Jun 2019 23:10:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CALR7VXvSumMi2cWYcEiNxkyWCKt8NqLicCR44im6Tu_cgh13hA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Matthew,

On 3/27/19 9:21 AM, Matthew Kenigsberg wrote:
> Hi,
> 
> I've found the exec man page quite difficult to read when trying to
> find the behavior for a specific function. Since the names of the
> functions are inline and the order of the descriptions isn't clear,
> it's hard to find which paragraphs apply to each function. I thought
> it would be much easier to read if the grouping based on letters is
> stated.
> 
> I wrote a patch against version 5.00.

Thanks, but our patch doesn't apply. At the least, it looks like
your mailer wrapped some lines. But even after I fixed the obvious
line wrap issue, the patch still didn't apply (and I tried
reverting to 5.00 to be sure). Could you take another look please.

Thanks,

Michael

> Thanks!
> Matthew
> 
> diff --git a/man3/exec.3 b/man3/exec.3
> index 499a05358..a0d582bed 100644
> --- a/man3/exec.3
> +++ b/man3/exec.3
> @@ -80,14 +80,12 @@ for further details about the replacement of the
> current process image.)
>   The initial argument for these functions is the name of a file that is
>   to be executed.
>   .PP
> +The functions can be grouped based on the letters following exec.
> +.SS l - execl(), execlp(), execle()
> +.PP
>   The
>   .I "const char\ *arg"
> -and subsequent ellipses in the
> -.BR execl (),
> -.BR execlp (),
> -and
> -.BR execle ()
> -functions can be thought of as
> +and subsequent ellipses can be thought of as
>   .IR arg0 ,
>   .IR arg1 ,
>   \&...,
> @@ -101,44 +99,35 @@ The list of arguments
>   be terminated by a null pointer,
>   and, since these are variadic functions, this pointer must be cast
>   .IR "(char\ *) NULL" .
> +.SS v - execv(), execvp(), execvpe()
>   .PP
>   The
> -.BR execv (),
> -.BR execvp (),
> -and
> -.BR execvpe ()
> -functions provide an array of pointers to null-terminated strings that
> +.I "char\ *const argv[]"
> +argument is an array of pointers to null-terminated strings that
>   represent the argument list available to the new program.
>   The first argument, by convention, should point to the filename
>   associated with the file being executed.
>   The array of pointers
>   .I must
>   be terminated by a null pointer.
> +.SS e - execle(), execvpe()
>   .PP
> -The
> -.BR execle ()
> -and
> -.BR execvpe ()
> -functions allow the caller to specify the environment of the
> -executed program via the argument
> +The environment of the caller is specified via the argument
>   .IR envp .
>   The
>   .I envp
>   argument is an array of pointers to null-terminated strings and
>   .I must
>   be terminated by a null pointer.
> -The other functions take the environment for the new process
> +All other
> +.BR exec ()
> +functions take the environment for the new process
>   image from the external variable
>   .I environ
>   in the calling process.
> -.SS Special semantics for execlp(), execvp(), and execvpe()
> +.SS p - execlp(), execvp(), execvpe()
>   .PP
> -The
> -.BR execlp (),
> -.BR execvp (),
> -and
> -.BR execvpe ()
> -functions duplicate the actions of the shell in
> +These functions duplicate the actions of the shell in
>   searching for an executable file
>   if the specified filename does not contain a slash (/) character.
>   The file is sought in the colon-separated list of directory pathnames
> 
