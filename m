Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C02483D584
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2019 20:31:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729111AbfFKSbc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 Jun 2019 14:31:32 -0400
Received: from mail-oi1-f195.google.com ([209.85.167.195]:40225 "EHLO
        mail-oi1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729074AbfFKSbc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 Jun 2019 14:31:32 -0400
Received: by mail-oi1-f195.google.com with SMTP id w196so9724484oie.7
        for <linux-man@vger.kernel.org>; Tue, 11 Jun 2019 11:31:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Rzesu6ZxSih0LDt3bkqizr6kvpbkY9R5G6rKV8rRuj8=;
        b=CK7Tml/akp0dvjAjwHN2guw1v791mCnX40yB5xmKnGSp3UvCFd5cZATce04XrqaIuq
         NNba2LhczlMdrzklc9WqHm5uxXUCMm+BO/xHPPln/Hm1p9t+NFkgwBP45Whe3jiwr9AL
         OxbfGrrQi9MTERZA3wc9qRwnr5Y7d+XYchh63fKSnwUnd642SsOBcXQrCBdlmdg8ScJE
         Y3/8PtrtuY2ia4bnvl5kqHZIyKRexEmADgSJ79Ri2PlTX48j7u4Y3yG8zUJuWXHF8Htz
         EGmTdGuEkVZg9QQXm3uQEAyVLzvQTPjRdE0INzpnBG1FDYnODLCjlXUaZQYOhV7/UYT7
         WJOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Rzesu6ZxSih0LDt3bkqizr6kvpbkY9R5G6rKV8rRuj8=;
        b=Uk3rZdD9am5sP3+GZYR4x942hfmrtQ1468Anu0Vaehp9wvLQR/VzgSXTzuohGwNPsd
         Bc9s34v+WYs2a0HTuUGCYR9KBe/57fsSa9cPk4HI9wQkdkn9uwDsaHuN/UNj75/ZdWpC
         1m+9RYbToXe13/ZydaCrGGcNRpP4RzL79HDxH6rvzuiF0xlngZ/AbwzXzCbQ1PZc1R7b
         ATHI/6Gzqwm3GE2kwBS2KttlpJm/YCYEiIk9O0wo48NpSJt0r9X7nrjvLGwW3Nt+Ljta
         w9tQowNHRbaAk/irg8PONDH3CzlGi27hUmXJQEnP/INQoVSDAvCJJAzcsPIniHYFiPyA
         YWBA==
X-Gm-Message-State: APjAAAWFpAskAhjssKqPpNScgmTNcYqw5B3tCwE0H+m4SUy7Xh9xb8Qw
        U3RsK4fe+n3mAENSao9oitUQbGrFjvge9wYy+vc=
X-Google-Smtp-Source: APXvYqyNS2JZnQRAbx33TJwpq/0KILKq9sN04aLJPXm/wyHEVEO8Pe/jR3Qtn2RMelZblsvJZuFtcBYQgTNlSCmey3M=
X-Received: by 2002:aca:d511:: with SMTP id m17mr16588280oig.54.1560277891351;
 Tue, 11 Jun 2019 11:31:31 -0700 (PDT)
MIME-Version: 1.0
References: <CALR7VXvSumMi2cWYcEiNxkyWCKt8NqLicCR44im6Tu_cgh13hA@mail.gmail.com>
In-Reply-To: <CALR7VXvSumMi2cWYcEiNxkyWCKt8NqLicCR44im6Tu_cgh13hA@mail.gmail.com>
From:   Matthew Kenigsberg <matthewkenigsberg@gmail.com>
Date:   Tue, 11 Jun 2019 11:31:16 -0700
Message-ID: <CALR7VXvrMeeHJp+k-U0nr0jjmsv7nC35Fe33-u0gcYpQp3GFHQ@mail.gmail.com>
Subject: Re: [patch] exec.3: explain function groupings
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,
Pinging to check if you ever saw this.
Thanks!
Matthew

On Wed, Mar 27, 2019 at 1:21 AM Matthew Kenigsberg
<matthewkenigsberg@gmail.com> wrote:
>
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
>
> Thanks!
> Matthew
>
> diff --git a/man3/exec.3 b/man3/exec.3
> index 499a05358..a0d582bed 100644
> --- a/man3/exec.3
> +++ b/man3/exec.3
> @@ -80,14 +80,12 @@ for further details about the replacement of the
> current process image.)
>  The initial argument for these functions is the name of a file that is
>  to be executed.
>  .PP
> +The functions can be grouped based on the letters following exec.
> +.SS l - execl(), execlp(), execle()
> +.PP
>  The
>  .I "const char\ *arg"
> -and subsequent ellipses in the
> -.BR execl (),
> -.BR execlp (),
> -and
> -.BR execle ()
> -functions can be thought of as
> +and subsequent ellipses can be thought of as
>  .IR arg0 ,
>  .IR arg1 ,
>  \&...,
> @@ -101,44 +99,35 @@ The list of arguments
>  be terminated by a null pointer,
>  and, since these are variadic functions, this pointer must be cast
>  .IR "(char\ *) NULL" .
> +.SS v - execv(), execvp(), execvpe()
>  .PP
>  The
> -.BR execv (),
> -.BR execvp (),
> -and
> -.BR execvpe ()
> -functions provide an array of pointers to null-terminated strings that
> +.I "char\ *const argv[]"
> +argument is an array of pointers to null-terminated strings that
>  represent the argument list available to the new program.
>  The first argument, by convention, should point to the filename
>  associated with the file being executed.
>  The array of pointers
>  .I must
>  be terminated by a null pointer.
> +.SS e - execle(), execvpe()
>  .PP
> -The
> -.BR execle ()
> -and
> -.BR execvpe ()
> -functions allow the caller to specify the environment of the
> -executed program via the argument
> +The environment of the caller is specified via the argument
>  .IR envp .
>  The
>  .I envp
>  argument is an array of pointers to null-terminated strings and
>  .I must
>  be terminated by a null pointer.
> -The other functions take the environment for the new process
> +All other
> +.BR exec ()
> +functions take the environment for the new process
>  image from the external variable
>  .I environ
>  in the calling process.
> -.SS Special semantics for execlp(), execvp(), and execvpe()
> +.SS p - execlp(), execvp(), execvpe()
>  .PP
> -The
> -.BR execlp (),
> -.BR execvp (),
> -and
> -.BR execvpe ()
> -functions duplicate the actions of the shell in
> +These functions duplicate the actions of the shell in
>  searching for an executable file
>  if the specified filename does not contain a slash (/) character.
>  The file is sought in the colon-separated list of directory pathnames
