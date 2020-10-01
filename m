Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 63FE727FA52
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 09:33:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725918AbgJAHdO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 03:33:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725878AbgJAHdO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 03:33:14 -0400
Received: from mail-oo1-xc2c.google.com (mail-oo1-xc2c.google.com [IPv6:2607:f8b0:4864:20::c2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E3FAC0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 00:33:14 -0700 (PDT)
Received: by mail-oo1-xc2c.google.com with SMTP id w25so1207385oos.10
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 00:33:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=g3JKvFyZNhHQM+wQdGRtmfLYIXp8UOKQ75AeamGrNYQ=;
        b=bIZt0PiRF+0JGCIqTqrwZ6PTqXpombk8iukwnvX1n1YIdl9+al1qp7PDjsgzIbPQUu
         5tbWUhrWCcJ2PuvllRHe+dSvZfhI4cxS/SnuE2rki2FJ00Yl15PmpxbgATZhhQHyOZwa
         HhTTErOA+yVJXFgJhdCtd4AXAdIjhIf/GcGSqkUpWaa/vcYajqScU1M55tP0oOTI5Oqf
         mxfxVjLirCUkcAblGYGaKtHa/7rFYr0LlxwmObCqW7aTdIKPbc//3wE7A8T24Hel8igj
         enQ//KoIro2pRBhkMzDtbWY2+qIkDWd/AVUUJFw+MdBfHjxqBQAjl6Shx8tuBxOshNwG
         UZkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=g3JKvFyZNhHQM+wQdGRtmfLYIXp8UOKQ75AeamGrNYQ=;
        b=cXAIHnnU1y1zFOiw294dM4D+VfV3XrMR1YqroxaAD3cks4ft+BsFin5mpSQtEEgWbh
         VV16Z1Hxi80I/J3b9bCWNQd1J4g8rzTsp1iFOyIjYq6wp2vMO1cR7UQeGB/MG8eKx+zg
         /tg8+Ss8ZnLjP7eMXlWF1RBCVq8/Pnn7kQlBUnLU+2Fy8s4N4S+iwp5SIZOYlyJ0gT70
         E3gyDs8QXO8twLDMIVcatWFKwOYmBJKvD/tfqOrf2uTIxRUeqQZWrZWnEmkQWpBTCQK/
         fG2TmtGuvUCk5J2A9yb2+H3T1P8CYVgkXFAKUK9F5e5pCfXqb9gxTJyGudJH2WZ+Edfv
         sAUg==
X-Gm-Message-State: AOAM531yr00FJz9tGQLL9+B2kobzY89d+8+bLZOGORxBCtCFtC7D+4Ov
        WtwrqZP2+jfYYd5uuJVuBE70a/2ZU16litGYYJgNx8JwQ5M=
X-Google-Smtp-Source: ABdhPJwjCyNWhiKSUHp1Pv6yn5tqxYx4yltStu8dmZJZrQbEWzK+NkkTiWLxKd+G2/5Voe2nRRO5UjYbaMnpUSV5EF8=
X-Received: by 2002:a4a:751a:: with SMTP id j26mr4727249ooc.14.1601537593395;
 Thu, 01 Oct 2020 00:33:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200920214012.454410-1-colomar.6.4.3@gmail.com>
 <61f4e2a4-d468-ceba-2ccf-ce0c061aa20b@gmail.com> <f70c7f62-9d61-71aa-67cf-43501a29bccc@gmail.com>
 <CAKgNAki7=AJ7p2AwPkf9+4AkYKdOL6b4D0NyVdwZzu-qHFvGiA@mail.gmail.com>
 <20200921141552.tpuhdxo24lc6e7dh@localhost.localdomain> <35b5a9ff-4133-8301-bb75-4b13f7861c9a@gmail.com>
 <20200930120242.vylnz5khajri5sz4@localhost.localdomain> <20200930125417.ovlnfxhk5zgtuj46@localhost.localdomain>
In-Reply-To: <20200930125417.ovlnfxhk5zgtuj46@localhost.localdomain>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Thu, 1 Oct 2020 09:33:02 +0200
Message-ID: <CAKgNAkgOYEV0HR-Y=a-FpeW4_Qoe6WAoZ6SAEbN=Yuz_g3z5Zw@mail.gmail.com>
Subject: Re: man-pages.7: Simplify indentation of structure definitions, shell
 session logs, and so on
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

Sorry -- I think I'm still not getting it.

On Wed, 30 Sep 2020 at 14:54, G. Branden Robinson
<g.branden.robinson@gmail.com> wrote:
>
> At 2020-09-30T22:02:43+1000, G. Branden Robinson wrote:
> > [...] you can call .RE [...] as ".RE 2" to say "go back two
> > indentation levels"
>
> Nope, that's wrong.  Forget I said that; I think I might now see
> something I can further improve in the documentation.
>
> You can see I'm still bedeviled by relative insets.  :-|
>
> I tend to never use the argument to .RE; I just call .RE multiple times
> to balance out my .RS calls, just like parentheses.  When I do that, I
> don't get surprised.
>
> > without having to track or remember any indentation measurements.
>
> This part remains true.  :)

Currently, I use the idiom

.PP
.in +4n
.EX
<code>
.EE
.in
.PP

or, if we're in indented paragraph territory:

.IP
.in +4n
.EX
<code>
.EE
.in
.IP

This is of course hacky, and of course in order to get it right, I
need to know where to use .IP vs .PP.

I'd happily replace this with the use of ".RS 4/.EX/.EE/.RE", but
what, if anything do I surround it with? And can I do it in a way that
I don't need to care whether I'm currently in an indented zone of
text?

I mean, if I use:

.RS
.RS 4
.PP
.EX
int
main(void)
{
    printf("Hello world\n");
}
.EE
.PP
.RE
.RE

That produces the desired results (4-space indent) if I am currently
in an indented zone (.TP or .IP). (But it starts to get even more
horribly verbose, in terms of markup, than what I currently use.)

But if I use that same form in an unindented zone, then <code> is
massively (12 spaces) indented. Instead, seem to need to say just:

.RS +4
.PP
.EX
int
main(void)
{
    printf("Hello world\n");
}
.EE
.PP
.RE

What I'd *ideally* like is a solution for indented code blocks that
(in order or priority):

1) is not more verbose than the current solution
2) uses more idiomatic mark-up than the current solution
3) uses exactly the same form, regardless of whether I'm currently in
an indented region of text.

So far, I don't see such a solution.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
