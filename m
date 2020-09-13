Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D3CEA267F69
	for <lists+linux-man@lfdr.de>; Sun, 13 Sep 2020 14:01:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725927AbgIMMBi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Sep 2020 08:01:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48572 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725919AbgIMMBf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Sep 2020 08:01:35 -0400
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com [IPv6:2607:f8b0:4864:20::244])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FB2EC061573
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 05:01:34 -0700 (PDT)
Received: by mail-oi1-x244.google.com with SMTP id x19so14680876oix.3
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 05:01:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=utHCOXfrhj+BXoyB424A4SeoQ1/bS2cZrjipmFAvHO8=;
        b=MvCkGhOvVBiNgRlgZpquBl/0br9lVSGbEM3dTHCqF0fL72LRzUt3xwuT9H/Yj4PvlX
         hhjJc+eHIOGZIt4CtSHfGuLlZpYooXIgUcerOCWOjM586ungYlsHLOM0cxYhdjYsvKwZ
         GulW75bGTJj6GTMmxdMH11J1Tgkqme+bwcESVOWZqEW36VkBQuo6nF4JXKGIZ4RDogfF
         YkzuAKSSJhnllG+cKitbySx4LFvUF6OSbLHF0WZmzZovriAwACFTx64z6eZtTCSgtp6u
         br0UWMdDQjVJqh+RUaPopmiLhEog/UsPn03oF6Q17H3QGxbFx6nBYX2ph/XGW59FY8Vl
         h8MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=utHCOXfrhj+BXoyB424A4SeoQ1/bS2cZrjipmFAvHO8=;
        b=UKn5XkQ1bFVqxAwD3DCl+w/O9eKgJx/nz3o1hX1rI4BeWcsHY6kbCboXqCdzekQ6KF
         wKZgkdBEcuSlA3dAr8ZakVoJLIkPp3a7Iz9xxZUuSkgphjrZKKhiZzOetl8Ln7wh1vZM
         VbvT+57oCQ+bJT7BNbegLwN5pS8GVcc3KO7TO/zK8Gb7giuDr6gtIl2X2EYzAXKRm087
         v5WQt0BfJeY5aHny5DaKrRRRD4zW+H0GkEITIXQQfYjbexbDyhLBZa8KA9kkOqCXw2/o
         noY/Smu1MJyIJQx2Z3vMmb3xyQU39YjeyeYpawHaN791/E+o+jIPY7/XSUwL6+7Mn/IY
         UM+A==
X-Gm-Message-State: AOAM532FDprQY489MUSeemXlNSmxBOVX9hBBa6D2N1wh57wYCV1XoVB/
        tdkgiyGA3KE2z35XN5PUaiqqQ7Ru7nPaFFXAYKTQXr82iqA=
X-Google-Smtp-Source: ABdhPJx6CoouNonUDPg6otsZ9o0nEl4QPv7aKk/TEs+4BoVWOXICIMV9rmzMkSgtmKeHsZNa64e0JkUGE0Sn6aVPehM=
X-Received: by 2002:aca:5903:: with SMTP id n3mr6165532oib.159.1599998493941;
 Sun, 13 Sep 2020 05:01:33 -0700 (PDT)
MIME-Version: 1.0
References: <fb6463f6-49d7-e473-d5e1-1cdf8375e498@gmail.com>
 <6c5b89f8-4281-4434-cbee-28f88d07920c@gmail.com> <4ea99048-4bfd-9cba-44cd-9c37fdad8fce@gmail.com>
In-Reply-To: <4ea99048-4bfd-9cba-44cd-9c37fdad8fce@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sun, 13 Sep 2020 14:01:22 +0200
Message-ID: <CAKgNAkjys+LYn1qaSXhM2gJfkv_UOnpeNPyh3QCqNLcMNBKB+g@mail.gmail.com>
Subject: Re: [IDEA] New pages for types: structs and typedfefs
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Florian Weimer <fweimer@redhat.com>,
        libbsd@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Sat, 12 Sep 2020 at 10:59, Alejandro Colomar <colomar.6.4.3@gmail.com> wrote:
>
> Hi Michael,
>
> On 2020-09-12 08:33, Michael Kerrisk (man-pages) wrote:
>  > Your not the first to suggest this. Most recently, if I recall
>  > correctly, Florian also suggested it.
>  >
>  > The idea seems reasonable, but I wonder about the best way of doing it.
>
> libbsd already provides a few pages on types.  Maybe we could have a
> look at them.  At least I've seen 'man timespec' (which redirects to
> timeval.3bsd):
>
> https://gitlab.freedesktop.org/libbsd/libbsd/-/blob/master/man/timeval.3bsd
>
>  >
>  > I propose the desired information for each type would be
>  >
>  > * Type name
>  > * Short explanation of the type (often this mcould be just a
>  >    few words, I think)
>  > * Whether the type is specified in POSIX; POSIX requirements on
>  >    the type.
>  > * Header file that defines the type (in some cases, there
>  >    may be more than one. This info can be discovered in the
>  >    POSIX spec. (Alex, do you have a PDF of the POSIX spec?)
>  > * Cross references to manual pages of relevant APIs that use the type.
>
> I think that would be reasonable.
>
> No, I don't have a PDF.  I usually search here:
>
> https://pubs.opengroup.org/onlinepubs/9699919799/

You can get a PDF by registering as a member of The Open Group. I
think the necessary info is here:
https://www.opengroup.org/austin/lists.html
(I find having everything in a single PDF is useful for searching.)

>  > There are some weird corner cases. For example, clock_t:
>  >
>  > * times(2): clock_t == clock ticks (sysconf(_SC_CLK_TCK))
>  > * clock(3): clock_t measures in CLOCKS_PER_SEC
>
> That would just be 1 or 2 more lines in the explanation, I guess.

Yes, I guess.

> That's also similar to the typical (mis?)use of size_t as a ptrdiff_t.
>
>  > Then, do we do one page per type? At first glance, that seems
>  > unwieldy to me. (I could be wrong.) And it seems to me that
>  > there might be benefits in having all of the information in
>  > one place rather than spread across multiple pages. (For example
>  > cantralizing the info would make it easier for the reader to
>  > get an overview.)
>
> I agree in that everything should be centralized, at least in the
> beginning.  That would make it much easier to maintain and find the
> information.  If the future requires the information to be spread
> across many pages, let the future solve that problem :)
>
>  >
>  > Alternatively, we could have one big page that is a list of the
>  > types with the above information. Say "system_data_types(7)".
>  > That page might be an alphabetically ordered hanging list of
>  > entries that look like this:
>  >
>  >      timer_t     <time.h> or <sys/types.h>
>  >          POSIX timer ID.
>  >
>  >          Conforming to: POSIX.1-2008.
>  >
>  >          See: timer_create(2), timer_delete(2), timer_getoverrun(2),
>  >          timer_settime(2)
>
> I'd say here is missing the POSIX requirements on the type.

As far as I can tell, in the case of timer_t, I think there are no
requirements in POSIX.

> Is it a 32-bit or 64-bit or may vary? Is it signed or unsigned?

POSIX doesn't specify, I think.

One other thing the page should show of course is definition of the
structure types.

>  > Then of course, we'd need to have links to that page, so that
>  > people could just type 'man timer_t'. What section should the links
>  > be in? The reasonable candidates would be section 3 or 7. I'm not
>  > yet sure which is better. But the point is that we'd have files
>  > such as timer_t.3 (or timer_t.7) that are link pages containing the
>  > line:
>  >
>  >      .so man7/system_data_types.7
>
> Sure.  And for the structs, I'd allow:
>
> 'man struct timespec'   (For simplicity)
> 'man struct-timespec'   (Similar to the git man pages)
> 'man timespec'          (For compatibility with libbsd)

Mainly, I'm interested in the last case. That's the one I think that
people would most likely use. In a follow-up mail, you expressed
concern with conflicts with libbsd pages. I'm not too worried about
that. There are already *many* conflicts between libbsd and man-pages.

>  > For the moment at least, I'd favor the "one big page plus
>  > links" approach.
>
> Yes.

Would you like to take a shot at this? I'd suggest just a simple page
covering just two or three types to start with. Maybe time_t and
timer_t, or otherwise some types that seem good choices to you?

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
