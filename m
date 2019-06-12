Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AD840448C5
	for <lists+linux-man@lfdr.de>; Thu, 13 Jun 2019 19:12:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729298AbfFMRLJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 13 Jun 2019 13:11:09 -0400
Received: from mail-ed1-f67.google.com ([209.85.208.67]:34817 "EHLO
        mail-ed1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729014AbfFLWUZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 12 Jun 2019 18:20:25 -0400
Received: by mail-ed1-f67.google.com with SMTP id p26so24017447edr.2
        for <linux-man@vger.kernel.org>; Wed, 12 Jun 2019 15:20:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=eiKqE8gnvE1kBCOOy76l4x+PoK+BWfW5Q8dsMRvGR38=;
        b=SQB7RZWlpPDn7lmx9wwv/wmOfBOk4ce9lqXE/J9AM5B7Tx5LeNuc/ka365/dkQD3RZ
         y4+I+78F+l7y2yTuV63raVmilEszGMeyo2lzeM6Vnrj2TR3uV8dECW1t4d/XOhEnXvW8
         uibBdNk5uPSLacgE0uMOW396fbCAre2PbUkdmbztECEUNoZ/z7h8AiZlJBj8tqxvvZpR
         Ch5OqoUlvWxffKPvCO8AyAIAJGFdEGr4e7dH/yGTK8obOsxBpjL+1mtQdGatHuWdGs13
         eQsRnH/tZalA1j0MYQPQFqsevZJQotKH9QPTxWHHt5nQ3wrnN8CJ/++E/D3qKQlOICmM
         6pfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=eiKqE8gnvE1kBCOOy76l4x+PoK+BWfW5Q8dsMRvGR38=;
        b=GNX9Y2tEi6EcXEsAG6lUuPP/RAmdvF1uMatkojBaviDLefhsoQfz5/JHgnmN73Fpe7
         tmva8kbpAS+Sy+qvek5MMrBufVKjOsGVPZXxK2UZo4UkWVgIOsMr7xD3h31cdaDju0mq
         j1ChVYe/alwayDZHOSuvAxV+szp8XZP/cLNqozFrPgYUIYLoqOgFqqRmfyueMtvf5fW1
         cKVgCmze7PdX4WJOUfDi+J6BaSHwtxNv3fjZhmkcJfLTIkhdfcjOsiNVCVwPr7J1OTA4
         0tfXOAC+vUX0NGVakF/wtDsnkveKrK6d4g5VOhyELNj//IUquUMT+h86DCIhxO74l90H
         QVrQ==
X-Gm-Message-State: APjAAAUnclQYiylHdF/qGiFnoAMExKSOhlAyr2+0OFnXML0Fz3DLS6eG
        /A41B5TG8O8gly9iC5XnJxumfHxe1uteeUW8kuM=
X-Google-Smtp-Source: APXvYqyAdMWDsQHdk4XmHoZzoewIGBIWrziNU4I5+ZJdTyJ1EgOHXIgmit5stY8up90in/3i1ZB8l72mb3dMZ9YDLNU=
X-Received: by 2002:a50:b13b:: with SMTP id k56mr48921081edd.192.1560378023638;
 Wed, 12 Jun 2019 15:20:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190507211735.31785-1-kerolasa@iki.fi>
In-Reply-To: <20190507211735.31785-1-kerolasa@iki.fi>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Thu, 13 Jun 2019 00:20:11 +0200
Message-ID: <CAKgNAkjArBeBeYU4A7OPFi5jx7aVfAbxN7kb7E-vcDpkMsYrnA@mail.gmail.com>
Subject: Re: [patch] on_exit.3: Add example code
To:     Sami Kerola <kerolasa@iki.fi>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Sami,

On Tue, 7 May 2019 at 23:17, Sami Kerola <kerolasa@iki.fi> wrote:
>
> Example tries to clarify one should not refer to variables that are not in
> on_exit() scope.  Such variables include heap in main().  In short only

I must confess I never thought about this one at length. Why are heap
variable not in scope for fcuntions registered with
on_exit()/atexit()?

Thanks,

Michael

> variables allocated from stack make is sense when calling on_exit().
> Possible referal to global variables would technically work, but at the same
> go makes function argument pointless and in such case one ought to prefer
> atexit() instead.
>
> Signed-off-by: Sami Kerola <kerolasa@iki.fi>
> ---
>  man3/on_exit.3 | 40 ++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 40 insertions(+)
>
> diff --git a/man3/on_exit.3 b/man3/on_exit.3
> index d2c2c3b17..c074cda76 100644
> --- a/man3/on_exit.3
> +++ b/man3/on_exit.3
> @@ -100,6 +100,46 @@ It no longer occurs in Solaris (SunOS 5).
>  Portable application should avoid this function, and use the standard
>  .BR atexit (3)
>  instead.
> +.SH EXAMPLE
> +Following program uses
> +.BR on_exit (3)
> +to display data, that is allocated until processing is done.
> +Notice that variables main() in heap are not in on_exit() scope.
> +.PP
> +.EX
> +#include <stdio.h>
> +#include <stdlib.h>
> +#include <string.h>
> +#include <unistd.h>
> +
> +struct data {
> +    int argc;
> +    char *argv;
> +};
> +
> +static void run_on_exit(int exit_val, void *arg)
> +{
> +    struct data *d = (struct data *)arg;
> +
> +    printf("argc: %d argv: %s\n", d->argc, d->argv);
> +    free(d->argv);
> +    free(d);
> +    _exit(exit_val);
> +}
> +
> +int main(int argc, char **argv)
> +{
> +    struct data *d;
> +
> +    if (1 < argc) {
> +        d = malloc(sizeof(*d));
> +        d->argc = argc;
> +        d->argv = strdup(argv[1]);
> +        on_exit(run_on_exit, d);
> +    }
> +    return 0;
> +}
> +.EE
>  .SH SEE ALSO
>  .BR _exit (2),
>  .BR atexit (3),
> --
> 2.21.0
>


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
