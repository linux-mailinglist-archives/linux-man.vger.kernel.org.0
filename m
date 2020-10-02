Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7AF682813D7
	for <lists+linux-man@lfdr.de>; Fri,  2 Oct 2020 15:15:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387836AbgJBNPz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Oct 2020 09:15:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387767AbgJBNPz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Oct 2020 09:15:55 -0400
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com [IPv6:2607:f8b0:4864:20::d44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 649C0C0613D0;
        Fri,  2 Oct 2020 06:15:55 -0700 (PDT)
Received: by mail-io1-xd44.google.com with SMTP id y74so1450014iof.12;
        Fri, 02 Oct 2020 06:15:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=NV9+yrJq+JbCr6cFYFd6SzA3+a52bQ0Cmy5QJDHiFvU=;
        b=itIlg738Y5xIaieU692HUBFF9lhBPxXt9di1Vf2sK41x0wWb6U6QH5BYo0bwkYsx/A
         KANxg7AHYiX2jPcZ0PSh9uL19ETw6UQXs0c7U7PmLlYeRVesZ3mk9d26yLeIss/HZYpB
         VqiG2B9ITR4OiWuuIFdPKgdL4ojk6E2gAho7G+FA7hpigx+RbPJVg8XWBsCRe38tdh7K
         tlYK09GWkGYcERNxC91x0xYlAwp7tYt4GwNZCgHTSF4P+VgeIRKXzbKjpxYpFnQ1U2HP
         V4kZvNFQ1ZxmuJ2F69nkqaUF4DaF+7ThmkziWkgveEJqNPJayAKDrZeZWK79ngwyX0vI
         9BKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=NV9+yrJq+JbCr6cFYFd6SzA3+a52bQ0Cmy5QJDHiFvU=;
        b=b1o7Wp+TQHmrNBk5sNvoHRMzvDwmjnBH5/0Ou9eoxtPtW45JfPUFT89hhkNl63Ms7r
         ThE9fAtV3nJsJCPOlz/54p55zoRHaiuqoZJgqOLlV7ICJZVkA9rN8DUeJTi5h/CRUgwv
         lHO+L+V6V0c9t30+rWqrqTFLgcD2yCUXxU3q0gslmtTi6XEUsgZ9BwwAFZo2G8u/aqF5
         2nBhBIKyXYBDcRYlq0080fz10oTuAHfmMYKrmgO1hBF17zZ+vs5Tg5nhblXuX0jTgrPz
         N0DEJzJseJn/Yu52voQSHSej4FBnavoGer0nkZy53YrYtBlLJRyB6I1dn9i9Ousx7Rsp
         rqZQ==
X-Gm-Message-State: AOAM530OPqryXm9pjKOxsqSz/D1I0pl7ET64P9PJvvmLAEf785fLwneW
        3Qp0AxJXKYGF2jk2O4l8gZPlvxZA6aIKgBks20ogrJrL
X-Google-Smtp-Source: ABdhPJwnNOqEg0c0RLPVInz9CgNB2jGjdrykkIa9igU9sNmuqp7vWpk5J62LSsNldqh8FpRt80vyDEDHZzM8eWUauIY=
X-Received: by 2002:a02:e47:: with SMTP id 68mr2161854jae.78.1601644554674;
 Fri, 02 Oct 2020 06:15:54 -0700 (PDT)
MIME-Version: 1.0
References: <20201002121645.23646-1-colomar.6.4.3@gmail.com> <20201002121645.23646-2-colomar.6.4.3@gmail.com>
In-Reply-To: <20201002121645.23646-2-colomar.6.4.3@gmail.com>
From:   Jonathan Wakely <jwakely.gcc@gmail.com>
Date:   Fri, 2 Oct 2020 14:15:43 +0100
Message-ID: <CAH6eHdQD+4g4ne9akZ5TDbhfq9TR0JSSBQ5H+W+Fab=5dy7O+g@mail.gmail.com>
Subject: Re: [PATCH 1/2] system_data_types.7: Add 'void *'
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        gcc-patches <gcc-patches@gcc.gnu.org>,
        GNU C Library <libc-alpha@sourceware.org>,
        linux-kernel@vger.kernel.org, eggert@cs.ucla.edu,
        David.Laight@aculab.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, 2 Oct 2020 at 13:17, Alejandro Colomar <colomar.6.4.3@gmail.com> wrote:
>
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>
> system_data_types.7: void *: Add info about generic function parameters and return value
>
> Reported-by: Paul Eggert <eggert@cs.ucla.edu>
> Reported-by: David Laight <David.Laight@ACULAB.COM>
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>
> system_data_types.7: void *: Add info about pointer artihmetic
>
> Reported-by: Paul Eggert <eggert@cs.ucla.edu>
> Reported-by: David Laight <David.Laight@ACULAB.COM>
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>
> system_data_types.7: void *: Add Versions notes
>
> Compatibility between function pointers and void * hasn't always been so.
> Document when that was added to POSIX.
>
> Reported-by: Michael Kerrisk <mtk.manpages@gmail.com>
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> ---
>  man7/system_data_types.7 | 80 +++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 78 insertions(+), 2 deletions(-)
>
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index c82d3b388..277e05b12 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -679,7 +679,6 @@ See also the
>  .I uintptr_t
>  and
>  .I void *
> -.\" TODO: Document void *
>  types in this page.
>  .RE
>  .\"------------------------------------- lconv ------------------------/
> @@ -1780,7 +1779,6 @@ See also the
>  .I intptr_t
>  and
>  .I void *
> -.\" TODO: Document void *
>  types in this page.
>  .RE
>  .\"------------------------------------- va_list ----------------------/
> @@ -1814,6 +1812,84 @@ See also:
>  .BR va_copy (3),
>  .BR va_end (3)
>  .RE
> +.\"------------------------------------- void * -----------------------/
> +.TP
> +.I void *
> +.RS
> +According to the C language standard,
> +a pointer to any object type may be converted to a pointer to
> +.I void
> +and back.
> +POSIX further requires that any pointer,
> +including pointers to functions,
> +may be converted to a pointer to
> +.I void
> +and back.
> +.PP
> +Conversions from and to any other pointer type are done implicitly,
> +not requiring casts at all.
> +Note that this feature prevents any kind of type checking:
> +the programmer should be careful not to cast a
> +.I void *
> +value to a type incompatible to that of the underlying data,
> +because that would result in undefined behavior.
> +.PP
> +This type is useful in function parameters and return value
> +to allow passing values of any type.
> +The function will usually use some mechanism to know
> +of which type the underlying data passed to the function really is.

This sentence seems clunky.

How about "The function will typically use some mechanism to know the
real type of the data being passed via a pointer to void."

An example of "some mechanism" might be useful, though I don't have
one to offer.

> +.PP
> +A value of this type can't be dereferenced,
> +as it would give a value of type
> +.I void
> +which is not possible.
> +Likewise, pointer arithmetic is not possible with this type.
> +However, in GNU C, poitner arithmetic is allowed

Typo: pointer


> +as an extension to the standard;
> +this is done by treating the size of a
> +.I void
> +or of a function as 1.
> +A consequence of this is that
> +.I sizeof
> +is also allowed on
> +.I void
> +and on function types, and returns 1.
> +.PP
> +The conversion specifier for
> +.I void *
> +for the
> +.BR printf (3)
> +and the
> +.BR scanf (3)
> +families of functions is
> +.BR p ;
> +resulting commonly in
> +.B %p
> +for printing
> +.I void *
> +values.

What does "resulting commonly in %p for printing void * values" mean?

Is this just explaining that the format specifier p is commonly used
as "%p" (but sometimes as e.g. "%20p") ?
I'm not sure the "resulting commonly ..." part adds anything of value,
rather than just being confusing.

> +.PP
> +Versions:
> +The POSIX requirement about compatibility between
> +.I void *
> +and function pointers was added in
> +POSIX.1-2008 Technical Corrigendum 1 (2013).
> +.PP
> +Conforming to:
> +C99 and later; POSIX.1-2001 and later.
> +.PP
> +See also:
> +.BR malloc (3),
> +.BR memcmp (3),
> +.BR memcpy (3),
> +.BR memset (3)
> +.PP
> +See also the
> +.I intptr_t
> +and
> +.I uintptr_t
> +types in this page.
> +.RE
>  .\"--------------------------------------------------------------------/
>  .SH NOTES
>  The structures described in this manual page shall contain,
> --
> 2.28.0
>
