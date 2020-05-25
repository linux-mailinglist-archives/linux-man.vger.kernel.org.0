Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CCFD61E096C
	for <lists+linux-man@lfdr.de>; Mon, 25 May 2020 10:58:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388624AbgEYI6l (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 25 May 2020 04:58:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388437AbgEYI6l (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 25 May 2020 04:58:41 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBF2FC061A0E
        for <linux-man@vger.kernel.org>; Mon, 25 May 2020 01:58:40 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id l21so19734761eji.4
        for <linux-man@vger.kernel.org>; Mon, 25 May 2020 01:58:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Iag5sbDDO9QYCvx6BSQ/FHNZ02WpT3tDM0NsDTcNWvw=;
        b=cZr/Gme8MrpErJWzCuwqG62//guFImIl94HsH6GD/cJ0er9IB40LLiTLTzT9kBAzQc
         PkM/upAk8s6n+PdRe3T7Zgie1EBtsSydKbbI2kbbI5fxooVpoLxXR2agojNfTvopJ+vz
         54x+UEYa2cXKEnS+fqJ7q3KAfh4my+8DNl0r8G63N7rzQqwERp4naz8nw6Ns8IFjJouv
         lu4mdra0PiHTVJNPddGw/u24I4CnX5zNEua4K55i09WyA4+RCZtO5fBbu1LyLelxPlhJ
         nKaXKP+Nk8kyMRHVCQP2iNEBusthsVyityQhC4ueoCGBMydTwQAlBBkVi2FMH5PsQ0nY
         aWnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Iag5sbDDO9QYCvx6BSQ/FHNZ02WpT3tDM0NsDTcNWvw=;
        b=dNy2wzS6Y4DDVmFscHyzrLWwWSixSB4zYTNApE8OuRURgDwyQXaMuvwL7H0aBdqUe1
         2uTXbc0YJ03nIBk1SYd+5Xs2rsl3zgxI4Vx3HkfcKXA1f7cmmk1jP6QdVpnjLyekW/mZ
         MXvEEJUCBMQaoyPFDslhly7REVwJeLI1rygx/B6o7QHboZnVuKnhbR2IuDfmVJCyudYa
         RLbP96ddWqrN386aFdWcKDIHuHsQIPlZFbALyCNxTwgTFk1fKWdlJ6hd6BlgxVAE0z2P
         iNag4AQhiqlHoZ3chvthVE4h+3drNy7XorQTJX1RLFFLsR9DE+BPwR82a08yw5asG+9U
         JdoA==
X-Gm-Message-State: AOAM530R45RQbOZzdE2cWx0cYtsIRi8JeF61GUTW7ZgcMH2slO2pWDzf
        IRS19KezABCdiQgQnepBE8hgbT3ENZMPNYrKOvLtZYzq
X-Google-Smtp-Source: ABdhPJx9SuAneNv/5csyg9lnOP0hH1/HBihTE+7lS8h+YmKJFliLiqcGn6ygJbAtrwr2TB5fh5htOXKycFmAzmjJxMc=
X-Received: by 2002:a17:906:5a98:: with SMTP id l24mr17385965ejq.442.1590397119403;
 Mon, 25 May 2020 01:58:39 -0700 (PDT)
MIME-Version: 1.0
References: <501e5e0c-f293-b838-5106-764c6b18e061@gmail.com>
 <875300cf-92ca-c115-c42d-19dda5de5a4a@redhat.com> <b7102d1a-67b9-0f4f-8295-224fd7afba94@gmail.com>
 <6cf523c0-848c-911f-47e5-e663499db744@redhat.com> <7cc4b69e-af8a-d5ad-ac39-9b95deb19a71@gmail.com>
 <7d109eae-7993-d08c-0355-a03ebc56eeb2@redhat.com>
In-Reply-To: <7d109eae-7993-d08c-0355-a03ebc56eeb2@redhat.com>
From:   Michael Kerrisk <mtk.manpages@gmail.com>
Date:   Mon, 25 May 2020 10:58:28 +0200
Message-ID: <CALxWeYro-8KASpy--aMAsMzMK_mPN-ZFjdUgftaXXCTfy6rY5A@mail.gmail.com>
Subject: Re: The GNU C Library Manual - Authoritative or not?
To:     "Carlos O'Donell" <carlos@redhat.com>
Cc:     Martin Sebor <msebor@gmail.com>,
        GNU C Library <libc-alpha@sourceware.org>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[CC += linux-man@]
[Context: https://lwn.net/ml/libc-alpha/875300cf-92ca-c115-c42d-19dda5de5a4a@redhat.com/]

On Fri, May 22, 2020 at 3:07 PM Carlos O'Donell via Libc-alpha
<libc-alpha@sourceware.org> wrote:
>
> On 5/21/20 8:22 PM, Martin Sebor wrote:
> > On 5/21/20 4:11 PM, Carlos O'Donell wrote:
> >> On 5/21/20 1:46 PM, Martin Sebor wrote:

[...]

> > It would be a considerable
> > effort to bring the manual up to par with the Linux man pages.  I see
> > little point in investing it into duplicating what already exists
> > elsewhere and what according to documentation.html many of you are
> > already contributing to.  My suggestion instead is to declare
> > the Linux man pages the reference and treat the manual as a user
> > guide.

So, as an aside, I think the Linux man-pages are rather better than
the glibc manual in many areas, but there some areas where where the
reverse is true. And lately I see patches to the glibc manual from
Florian, and sometimes I realize: "oh that's not covered in Linux
man-pages". So, notwithstanding what the glibc developers may thing
of the idea, from my perspective the notion of declaring man-pages as
the [authoritative] reference would not be without problems.

> I appreciate your suggestion.
>
> I agree it would be a waste of time to duplicate what already exists.
>
> The glibc manual should be a guide and it should contain complete and
> authoritative information about the APIs it implements. This does
> not include version-by-version changes, bugs, raw syscalls, etc.
>
> I think having the linux man pages as a non-authoritative reference
> is very good, and I contribute to the linux man pages.
>
> I think having WG14 work on ISO C is also good, so I contribute where
> I can to SC22 in Canada for that reason.
>
> That makes 4 documents covering the same APIs!
>
> * ISO C (the standard)
> * POSIX (the extended standard)
> * glibc manual (the authoritative manual for glibc's implementation)
> * Linux man pages (detailed syscall and API reference documentation)
>
> FWIW they all serve different purposes.
>
> The linux man pages are *great* they even document version to version
> differences and if you're interested in targeting specific versions of
> glibc you can use them accurately to write code that does exactly
> what you would expect. That's awesome! Our manual does not have that as
> a goal.
>
> >> This is not a duplication of effort IMO. The manual and the linux man
> >> pages solve different needs. The manual is task-oriented, covering
> >> sections of the standard APIs and how they could and should be used
> >> together,

And yes, in places this is where the glbc manual does really excel.

> >> while the the linux man pages are API references only
> >> (in isolation to the larger set of APIs).

Broadly true, although in places, Linux man-pages tries also to draw
bigger pictures (e.g., various overview pages in Section 7).

[...]

> > A report of the warning above is what prompted my question.  I had
> > checked the C and in some cases also POSIX standard as well as
> > the Glibc manual when adding the attribute.  C doesn't have this
> > extension, Glibc doesn't document it, and I missed it in POSIX (or
> > more likely didn't think to look there in this case).  What I was
> > looking for with the question is an acknowledgment of what I had
> > suspected, namely that the Linux pages can be trusted to accurately
> > document this and other Glibc extensions.
>
> The linux man pages can *absolutely* be trusted to document every
> change glibc makes, but that doesn't make them authoritative, it makes
> them detailed. As a developer I love the detail in `man mbstowcs`.

I commented on this already. I wish the above were true, but Linux
man-pages does not manage to track all of the changes.

[...]

> > But from a simple usability point of view, it's unhelpful to tell
> > people to consider the union of the Glibc manual and all external
> > documentation (or some subset of it).  Not just because it's
> > impractical to read everything, but also because not everything
> > is correct or up to date.  How are they/we supposed to resolve conflicts?
>
> We resolve conflicts by writing things in the manual to cover such cases,
> and we do so tactically to resolve problems as they arise.
>
> Over the years the project has had a significant lack of engagement with
> writing good documentation,

Yes, the manual seems to have started very well, but then the wheels
came off for many years. (Surprisingly, during that time I would
occasionally get a piece of very helpful input for man-pages from
Ulrich Drepper!)

> and I can understand that. It's hard to
> write clear and unambiguous English sentences to describe an interface
> and how it dovetails into the rest of the APIs.

Yes, best to leave that task to the Germans. (Sorry; I could not
resist the hat tip to Florian.)

> Such writing is not as
> much fun as writing code.

Yes, I never really understood that one. It's only by explaining (my)
code very clearly at least to myself, but probably to others, that I
can feel like it is/I have written good code. Writing good human
language expression is just as much an interesting challenge as
writing good programming language expression.

> We really need to engage with technical writers
> and involve a broader set of industry skills in our projects.

I want to add a note of caution here. It's great to have technical
writers (and like good developers companies should be paying them),
but they can't do the job on their own. A lot of developer input is
still required.

Thanks,

Michael
