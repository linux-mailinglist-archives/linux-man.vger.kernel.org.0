Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C4B5C27FDB0
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 12:50:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732079AbgJAKup (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 06:50:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731131AbgJAKuo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 06:50:44 -0400
Received: from mail-il1-x141.google.com (mail-il1-x141.google.com [IPv6:2607:f8b0:4864:20::141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71DBAC0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 03:50:44 -0700 (PDT)
Received: by mail-il1-x141.google.com with SMTP id z5so5625263ilq.5
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 03:50:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=iBu/KWoqXbmCxc655SnMVdA6FZ/qYxUjHnvEQ0jVw40=;
        b=fdk0q0OfmBqahzGx59K1OXslJk1uqsZbqfP8l7l2VnIVZArgL5CI6jSD/SqvHcxDCf
         CHQcIsdwD70Md85pPBc0H32FcM5u55Avy5HfjQ997zchyQXnPc1gqgnHIuYM778NvbWK
         24DH+6Zz/WuVXQNfUH+VzQ0iEHM6wdyzY2Q3QcWqyY9ZNCPxtkgHxZxWSwxVdW6c+HC3
         A+ujFPfOxTxqp+Q4mAOcX8qejPRcPKqtvuFxZFu09ADe4NvQC9wE45dJY6SMhOR2vptz
         7sSWgTOMWsUgkSYMdBsuVvuBQdi/iP+EjsYEH+nhhaeSoyFQQPXDH07+dbYp4UXoJbgj
         WTPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=iBu/KWoqXbmCxc655SnMVdA6FZ/qYxUjHnvEQ0jVw40=;
        b=g7MPDym1tV2TO6w9ySETcT78a8HFi0j0PWDJROIGXoeE+hBUK4q2eCzfrI8aiIQkYd
         1oHaG1Syc0pULa1l7ztTKXxOL3SxFTB58bCxiHTRp4YdtEJb32SEwfBZRvVDrct7paBy
         Lnffqt2yTspdHUKEqpMuTvzjv0wcU/iWKoIH7It+LBmgCR3UWcmbxgXkjAhy1INhkD6E
         9erHjZgZS+1SFf8q6grj+2EKFL+kO4UpqGE/GogQ4UZP4GwEvc4GD2WDEUWPkASjfkmm
         1zoZfcRYL3e/98efOS9VwPs7CA+aQu4Ce403l8+uObYGG3Ml5ZDQ7rif2esWifYH6kvL
         4uQw==
X-Gm-Message-State: AOAM530J5DLla/N14i2zWlg6EC9GJCaDjzLvaicE0ub3UZsDuM6cF41O
        r38yXrLn//BnU5c4eoC5w68/8TrovjGrV+I9OVk=
X-Google-Smtp-Source: ABdhPJwQmFiFvWt8chLdKBr4SGwXGEOlK3mfHz+dGC7pZH5/soEcqP0lIFrCUs+J/A1uyYUY1CKHsYyl1jngoCf1Geo=
X-Received: by 2002:a92:d68b:: with SMTP id p11mr1720866iln.59.1601549443782;
 Thu, 01 Oct 2020 03:50:43 -0700 (PDT)
MIME-Version: 1.0
References: <f6179bab-bbad-22f7-0f87-c06988928ec2@gmail.com>
 <CAH6eHdSHEjjjDtBCFO93NXb3bCGtYg6L35injf6pz3bMoL=3Fw@mail.gmail.com> <5ed7272e-1c81-d1f5-6a54-0fee4270199e@gmail.com>
In-Reply-To: <5ed7272e-1c81-d1f5-6a54-0fee4270199e@gmail.com>
From:   Jonathan Wakely <jwakely.gcc@gmail.com>
Date:   Thu, 1 Oct 2020 11:50:32 +0100
Message-ID: <CAH6eHdS6PQfQN1ZLgNOyco3DyEA9xaHGqsFZmRySMFFA5B2rJA@mail.gmail.com>
Subject: Re: [RFC] man7/system_data_types.7: Document [unsigned] __int128
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     "gcc@gcc.gnu.org" <gcc@gcc.gnu.org>,
        linux-man <linux-man@vger.kernel.org>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, 1 Oct 2020 at 11:14, Alejandro Colomar <colomar.6.4.3@gmail.com> wrote:
>
> Hi Jonathan,
>
> On 2020-10-01 11:57, Jonathan Wakely wrote:
>  > On Thu, 1 Oct 2020 at 10:26, Alejandro Colomar via Gcc
> <gcc@gcc.gnu.org> wrote:
>  >>
>  >> Hi,
>  >>
>  >> I'm documenting the system data types in the man-pages,
>  >> and I was writing now about these types.
>  >>
>  >> I'm showing below both the rendered output and the source I have
> right now.
>  >>
>  >> Would you add anything to it?
>  >>
>  >> And I have some questions:
>  >>
>  >> Is 'signed __int128' a valid thing,
>  >> and if so is it completely equivalent to '__int128'?
>  >
>  > Yes.
>  >
>  >> Is the GCC version correct?
>  >>
>  >> There's no implementation where 'long long' is 128 bits yet, right?
>  >
>  > Right.
>  >
>  >> Thanks,
>  >>
>  >> Alex
>  >>
>  >> Rendered output:
>  >> [[
>  >> __int128
>  >>         A signed integer type of a fixed width of exactly 128 bits.
>  >>
>  >>         According to GNU, it is supported only for targets which have an
>  >>         integer mode wide enough to hold 128 bits.
>  >
>  > "According to GNU"? Should that be GCC?
>  >
>  > The GNU project doesn't have anything to say about it.
>  >
>  > Maybe just "When using GCC, it is supported only ..."
>
> Ok,  I thought that GCC is part of the GNU project, but I don't know how
> much...
> I'll use "When using GCC," :)

It is, but the GNU project is a large organisation, and has nothing to
say about non-standard types defined by GCC. Just because GCC is part
of a larger proejct, doesn't mean the entire project defines
something.

>  >
>  >
>  >>
>  >>         Bugs: It is not possible to express an integer constant of  type
>  >>         __int128  in  implementations  where  long long is less than 128
>  >>         bits wide.
>  >>
>  >>         Conforming to: GCC 4.6.0 and later.
>  >
>  > It doesn't conform to anything, shouldn't this say "This type is a GNU
>  > extension." or just "This type is an extension." ?
>
> That's what I had first: "Conforming to: GCC extension"
> Then I thought that I could include the version information,
> so I changed it to that.
>
> Maybe "GCC extension (since GCC 4.6.0)" would be better?

I don't think that information belongs in the Conforming To section at
all. The version that added the type is nothing to do with
conformance, because it's an extension and there is nothing to conform
to.

Look at 'man clock_gettime' for comparison. It has a VERSIONS section
and some individual constants are annotated with "(since Linux
2.6.12)". That seems more appropriate for annotating individual types
within this man page which are not universally available.




>  >
>  >>
>  >>         Notes: This type is available without including any header.
>  >>
>  >>         See also the intmax_t, intN_t and  unsigned  __int128  types  in
>  >>         this page.
>  >
>  > Why would this type refer to intmax_t?
>  >
>
> Because 'intmax_t' has a bug
> (actually I know GCC rejected the bug report,
> but the problem is still there and users should be informed about this)
> which is related to __int128.
>
> Here is the rendered intmax_t:
>
> intmax_t
>        Include: <stdint.h>.  Alternatively, <inttypes.h>.
>
>        A  signed  integer type capable of representing any value of any
>        signed integer type supported by the implementation.   According
>        to  the C language standard, it shall be capable of storing val-
>        ues in the range [INTMAX_MIN, INTMAX_MAX].
>
>        The macro INTMAX_C() expands its argument to an integer constant
>        of type intmax_t.
>
>        The  length  modifier  for  intmax_t  for  the printf(3) and the
>        scanf(3) families of functions is j; resulting commonly  in  %jd
>        or %ji for printing intmax_t values.
>
>        Bugs:  intmax_t  is not large enough to represent values of type
>        __int128 in implementations where __int128 is defined  and  long
>        long is less than 128 bits wide.

OK, makes sense.
