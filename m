Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9B3312E777F
	for <lists+linux-man@lfdr.de>; Wed, 30 Dec 2020 10:40:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726491AbgL3Jjk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Dec 2020 04:39:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726214AbgL3Jjk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Dec 2020 04:39:40 -0500
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com [IPv6:2607:f8b0:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E034C061799
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 01:39:00 -0800 (PST)
Received: by mail-ot1-x32c.google.com with SMTP id n42so14931110ota.12
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 01:39:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=HemLgkhqvhQ4sPfitVTBVT3TVAIWSRN0bvh1ElMzhAw=;
        b=mibaMDhqaw1N8xdoP+CI2GIAP1lFJMJ1z/tB/Ol08fHDhIWFdRe8edRDlO/5CbR0eG
         SU3qZ7pdgcRkgJ7gTE1TkxsYPF8ev+CCY6U4nR1CNokXq3lEOuADQKDKFWWboS+PvKyp
         ht0U+rzKo0VPVM3vEiM0FRfgmYtWE5KFo5X/Ef7MhBsIExSPqZ85wbJoMIBG45RvmKvt
         8cXEMB/Z2XQTZgYoH3w9twhrn59djoeoLEkd8HhC/qaSdHW5bgllLjXZGC3opYU+cgn6
         j2VwHRNMpYa1DXtD3HagHuONqtmY8tFWqjxcohnjc7/f51lRA7dmyw1OHb2dVnmGamTR
         w+4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=HemLgkhqvhQ4sPfitVTBVT3TVAIWSRN0bvh1ElMzhAw=;
        b=fsdEd5OUh3s5fKdtvxG2owuAy43bve0AtXblFbtzqG//fFVFtzzjK36h3xdP7VlwVL
         jJPPlD7wOySHp3FeE982QnEdQnmd2R39L5LhYIbdoFLD7R8KXo9iNpZeqQ3E2Tc+O+ia
         J9uUDNt5aY1AzWlA3ShW6C7WiTfKH8cSrmxhObp/gTsK58GQb/kyFZUlqQBkWR62z28q
         u4R8QPERHiepQa/S6doegbP2J7SAQuvcbJOavDHlk6g1nywy0H53X1oI1DnpKIFqV3Qa
         +dGJ7u0y3EdKueoBxIOsVdTmORRkZWQbGz5MrJjzdy4C0l9vJ1BMgjE5ETT/0K9ZuZwX
         f0lg==
X-Gm-Message-State: AOAM530QYXF6laHVRrKeExGOeEsqFxvwiRIhF3sgAwhtBaRSBFPb/qyb
        njcEkj1GjzDa3RFS+F97G6FPgC8o4VLb9Cgbcbw=
X-Google-Smtp-Source: ABdhPJwd5TbZ9BBZSBI/HSjad9sBNnwwq2m5a49L9z7IfbIBdzGLK/96e0cvmVvwRWZejLZstHhv92iZxYiGY3u+s3I=
X-Received: by 2002:a9d:7490:: with SMTP id t16mr38570392otk.323.1609321139580;
 Wed, 30 Dec 2020 01:38:59 -0800 (PST)
MIME-Version: 1.0
References: <20201229143859.17473-1-alx.manpages@gmail.com>
 <20201229143859.17473-3-alx.manpages@gmail.com> <CAKgNAkgiZiycjW3r=-LTzV0g1CyboYokqcgQbe9hYRT6MWjUTg@mail.gmail.com>
 <842d4263-0fd5-ea70-bac0-1f4abd405c20@gmail.com>
In-Reply-To: <842d4263-0fd5-ea70-bac0-1f4abd405c20@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Wed, 30 Dec 2020 10:38:48 +0100
Message-ID: <CAKgNAkgfoTbzRP4T5c4AwPN8KVH5cAGakZDeyHO4g9EMX+CKow@mail.gmail.com>
Subject: Re: [PATCH 2/2] Various pages: Normalize NOTES about non-existing
 glibc wrappers
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Ganimedes Colomar <gacoan.linux@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Tue, 29 Dec 2020 at 21:53, Alejandro Colomar (man-pages)
<alx.manpages@gmail.com> wrote:
>
> Hi Michael,
>
> Please, see a comment below.
>
> Thanks,
>
> Alex
>
> On 12/29/20 9:32 PM, Michael Kerrisk (man-pages) wrote:
> > Hi Alex, Ganimedes,
> >
> > Again, in the subject line, s/
> >
> > non-existing/nonexistent/
> >
> > [...]
> >
> >> --- a/man2/getdents.2
> >> +++ b/man2/getdents.2
> >> @@ -211,13 +211,13 @@ SVr4.
> >>  Library support for
> >>  .BR getdents64 ()
> >>  was added in glibc 2.30;
> >> -there is no glibc wrapper for
> >> -.BR getdents ().
> >> -Calling
> >> +Glibc does not provide a wrapper for
> >> +.BR getdents ();
> >> +call
> >
> > s/call/calling/
>
> See below
>
> >
> >>  .BR getdents ()
> >>  (or
> >>  .BR getdents64 ()
> >> -on earlier glibc versions) requires the use of
> >> +on earlier glibc versions) using
>
> The new version is 'Call XXX using syscall(2).'.

I need more context here please. What do you mean with "The new version"?

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
