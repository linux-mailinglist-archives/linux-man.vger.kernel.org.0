Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3039928B1AE
	for <lists+linux-man@lfdr.de>; Mon, 12 Oct 2020 11:37:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729484AbgJLJhM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 12 Oct 2020 05:37:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726104AbgJLJhK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 12 Oct 2020 05:37:10 -0400
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com [IPv6:2607:f8b0:4864:20::241])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2566C0613CE
        for <linux-man@vger.kernel.org>; Mon, 12 Oct 2020 02:37:09 -0700 (PDT)
Received: by mail-oi1-x241.google.com with SMTP id j7so537725oie.12
        for <linux-man@vger.kernel.org>; Mon, 12 Oct 2020 02:37:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to;
        bh=htJXvzGPFKtBPnZtmv2uJV+FncnxJKyqy5SKVNOPK8s=;
        b=pBTtjC8Val0SNHxdb+zwX1f/Oc6YN8sfNkNIB+oI8GAgaFkJI8OycIYx1G0UpFMIE5
         aIcC2gWl+SI9b+//UcXrg+mB8aGagetftJYPDhLqtvbjZLnexNWoBFtTa/WWTyUaC/Ra
         OxwQK0+MPIwpcagQWbtG/qd7+MlvnT9x8guG50J+1vFJ+9efqqLD8LXqfXCn5+dLMtZg
         /OF5QpPr2DwOhUe9umoVNB41wYQcU5LlooJH7AzutkUMgyV8hdlPIuzvErORzhYtYkg1
         16GP7UWm71SzlDNhO1Ubajfb2gX+X7go4HRbVlLUeWXKR0sIUf15JFlziA7aEf5hQ1lE
         AmzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to;
        bh=htJXvzGPFKtBPnZtmv2uJV+FncnxJKyqy5SKVNOPK8s=;
        b=LYBdNM897OID7kpuqBuQ9bk6vhC/xpwZbSkduXqntxnwYG34JU9GfJx3fKHCyTffrU
         u8XcF/hH3cR5VyoVLRjrCHfyh9nXoNPUxYJQ7hu2qCt15qoHzeM3lYrX4mCNED16W6mN
         CW0sLhzEhYTyjbtHHOuBiuXvXHz3rsic+U4oXceOlTyG2eOegyr5hgNsb4hAJBc5lvsL
         HusZewsbAy9mN/4muy/edq8uNrmQgVlNUZaxRERqW8IXfJI9bFTMcTwqj94ph/s+S1lM
         MdtdUadiHZmEQ/JUYNItZyemoHin+daO2dP11ojsOTLrFXwlkRfTAUIdJRWRyl96jUIX
         phcw==
X-Gm-Message-State: AOAM532ZQnzwGceJ3jNn+UL/V6c6DaUT0XuH3QgSu7UXQEOUjdDHymbj
        243BOw99WIk9aXFUs90Lfdiz3R7H9aH+iDr1920NVBUTi7o=
X-Google-Smtp-Source: ABdhPJx4LTQDVAeaqVJ9Y9FO/btojLCeqKvFMOkhsg1bxCe1+fJXi3152TAIh9QtgVvFfsd7RlqFiYiW4tBhtEMPvA4=
X-Received: by 2002:aca:5903:: with SMTP id n3mr10549746oib.159.1602495429238;
 Mon, 12 Oct 2020 02:37:09 -0700 (PDT)
MIME-Version: 1.0
References: <41affebd-3354-9420-0048-bffd14535e95@gmail.com>
 <20201001154946.104626-2-colomar.6.4.3@gmail.com> <d460f3a6-c12b-637d-b474-3596611d10d3@gmail.com>
 <41ab7ed9-3ce0-f8ad-38f4-c4bbeca138f8@gmail.com> <20201008135210.GA2956488@cventin.lip.ens-lyon.fr>
In-Reply-To: <20201008135210.GA2956488@cventin.lip.ens-lyon.fr>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 12 Oct 2020 11:36:57 +0200
Message-ID: <CAKgNAkhsfnRk0y9Js=y5XXabVQdA1U7Fc8hFJXPaxjTxJwWBVw@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] system_data_types.7: Add 'void *'
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        gcc@gcc.gnu.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Vincent,

On Thu, 8 Oct 2020 at 15:52, Vincent Lefevre <vincent@vinc17.net> wrote:
>
> On 2020-10-01 18:55:04 +0200, Alejandro Colomar via Gcc wrote:
> > On 2020-10-01 18:38, Michael Kerrisk (man-pages) wrote:
> > > > +According to the C language standard,
> > > > +a pointer to any object type may be converted to a pointer to
> > > > +.I void
> > > > +and back.
> > > > +POSIX further requires that any pointer,
> > > > +including pointers to functions,
> > > > +may be converted to a pointer to
> > > > +.I void
> > > > +and back.
> > > I know you are correct about POSIX, but which part of the
> > > standard did you find this information in? The only
> > > reference that I find in POSIX is the dlsym() spec. Is it
> > > covered also somewhere else in the standrd?
> [...]
> > I've bean searching, and dlsym is the only one:
> [...]
> > The most explicit paragraph in dlsym is the following:
> >
> > [[
> > Note that conversion from a void * pointer to a function pointer as in:
> >
> > fptr = (int (*)(int))dlsym(handle, "my_function");
> >
> > is not defined by the ISO C standard.
> > This standard requires this conversion to work correctly
> > on conforming implementations.
> > ]]
>
> I think that "this conversion" applies only to the dlsym context,
> and the conversion isn't defined in general. Imagine that the
> void * pointer to function pointer conversion requires the compiler
> to generate additional code. The compiler may be able to detect
> that dlsym will not be used in some contexts (e.g. because of
> always false condition) and do not generate such additional code,
> making the conversion to have undefined behavior.

Thanks. It's a good point that you raise.

I agree that the wording in the standard is not too clear. But I
believe the intent really is to allow
[void *] <==> [function pointer] casts.

The most relevant pieces I can find are as follows:

In the current standard, in CHANGE HISTORY for dlsum():

[[
Issue 6
IEEE Std 1003.1-2001/Cor 1-2002, item XSH/TC1/D6/14 is applied,
correcting an example, and
adding text to the RATIONALE describing issues related to conversion
of pointers to functions
and back again.
Issue 7
POSIX.1-2008, Technical Corrigendum 1, XSH/TC1-2008/0074 [74] is applied.
]]

https://www.austingroupbugs.net/view.php?id=74
This is a little thin. The initial report says:
"The intent is simply to permit dlsym to use a void * as its return type."
and no one seems to have questioned that.

And then in https://pubs.opengroup.org/onlinepubs/7899949299/toc.pdf
(TC1 for POSIXX.1-2001)

there is:

[[
Change Number: XSH/TC1/D6/14 [XSH ERN 13]
On Page: 259  Line: 8566,8590  Section: dlsym
In the EXAMPLES section, change from:
fptr = (int (*)(int))dlsym(handle, "my_function");
to:
*(void **)(&fptr) = dlsym(handle, "my_function");
In the RATIONALE section on Page 260, Line 8590, change from:
"None."
to:
"The C Standard does not require that pointers to functions can be
cast back and forth to pointers to data. Indeed, the C Standard
does not require that an object of type void* can hold a pointer
to a function.  Systems supporting the X/Open System Interfaces
Extension, however, do require that an object of type void* can
hold a pointer to a function.  The result of converting a pointer
to a function into a pointer to another data type (except void*)
is still undefined, however.
]]

And one finds the above text in POSIX.1-2001 TC1 spec for dlsym(),
although it was removed in POSIX.1-2008, and now we have just the
smaller text that is present in the dlsym() page. But along the way, I
can find nothing that speaks against the notion that POSIX was aiming
to allow the more general cast of [void *] <==> [function pointer].
Your thoughts?

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
