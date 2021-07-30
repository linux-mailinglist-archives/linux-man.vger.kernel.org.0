Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 32EE53DB02C
	for <lists+linux-man@lfdr.de>; Fri, 30 Jul 2021 02:15:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235245AbhG3APT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Jul 2021 20:15:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235124AbhG3APT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Jul 2021 20:15:19 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 718B0C061765
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 17:15:14 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id yk17so5891044ejb.11
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 17:15:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tt8VM+sET0pioYa+5Srm94cbOzGS3YpdU+yEsnErBVU=;
        b=bnH8qHifkctvMibJFrTGXXJKIKIHkC7GYIrbm3DbtWRPI1m9t3iB8IKZPjfX8reWEs
         NfsjR0sBmaK7QrZaUfv9Eus0HU6PpZdUGcQuPnU8ylZCvJ13FjUR1Meqq2aXgkZ+kK6c
         CJ9xTLJkVxDbUavF776wZFld2+HFhRPPnOfAINl+jTmGuQVtgjtjlSpw2Jp1HKQdGPtA
         6lIN4XAlp7LySNr0hejxNJB3O+ynrZ5f5s56aFilWsuek81yGuIMFuwqxNXZOqaoWzZN
         qFfK5v1DrLXmbYPCUi7wNUJGU9h+LmAhg4bw8ZDPUFymfrbTl5H5Ah+5uJzObrM+7mlw
         9YnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tt8VM+sET0pioYa+5Srm94cbOzGS3YpdU+yEsnErBVU=;
        b=S9OTc6kSEfeisMCtMF6x2dp5dOSyWaA4XF8lcZMfFUUY7wbkV5C3eNz62tONQqNPNF
         zZYps/ctxqNZehHHcgdG5N2ndhdCqpB18jGFuvwLxHAEhbYGhR/kgYCzwqnlDqAfpa+X
         x16aKLVIQooSxCg6EcII3aNc0IXVkp6Fe/PjvtwLUzMTMfHszfLAXsYKR6je1LfjwXk8
         WmmYeSy0yCIs5g/nCwi2TV2CFOOFEzoUhF1EQikoPXVACUWpGfYR6WNY34bzGfAh00FR
         A61od78Jbk7CPCNOY8rlAYQwCO0JyMml48/KljolPwW9FD71zt8ovMOVRGkONxf9Ac1R
         tzwg==
X-Gm-Message-State: AOAM533r+K0hInD/BwIgD2kEi7NiUzL/aAg19bPoodsL1QQ+68ZE53Dy
        m4eKs36k+RDUM/dbOjiDBCypeibzEUzMYWKZoTdYujWb
X-Google-Smtp-Source: ABdhPJwU18ZjzAQFC2E7aV6TXwT/4E8kARkWG1OJQA5HgcjSSBqt2dNJtLrSS4JX0u9tVlfjPljUddaOdu3s+CooMg0=
X-Received: by 2002:a17:906:a2c4:: with SMTP id by4mr7068455ejb.521.1627604112907;
 Thu, 29 Jul 2021 17:15:12 -0700 (PDT)
MIME-Version: 1.0
References: <20210729154401.GA22699@asgard.redhat.com> <20210729223535.qvyomfqvvahzmu5w@localhost.localdomain>
In-Reply-To: <20210729223535.qvyomfqvvahzmu5w@localhost.localdomain>
From:   Eugene Syromyatnikov <evgsyr@gmail.com>
Date:   Fri, 30 Jul 2021 02:14:56 +0200
Message-ID: <CACGkJdu1K2-dER+WKwjBt9Yweteb=GnpvpeXq7OFij4YWhd09w@mail.gmail.com>
Subject: Re: [PATCH v3] getrlimit.2: old_getrlimit/ugetrlimit and
 RLIM_INFINITY discrepancies
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Alejandro Colomar <alx.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, Jul 30, 2021 at 12:35 AM G. Branden Robinson
<g.branden.robinson@gmail.com> wrote:
>
> Hi, Eugene!
>
> I thought I'd offer some style suggestions since Alex hasn't yet.

Thanks, it seems like my sense of English grammar was absent on the
day the patch was conceived more than usual.

> At 2021-07-29T17:44:01+0200, Eugene Syromyatnikov wrote:
> > +The corresponding infinity value constant is provided in
> > +.I <linux/resource.h>
> > +as
> > +.BR RLIM64_INFINITY.
> > +.PP
> > +Original Linux implementation used signed types for limits; that was changed
>
> Grammatically, you need an article at the beginning of this sentence.
> More broadly, however, what constitutes "*the* original Linux
> implementation" may not be well-defined and is not as relevant to the
> discussion as Linux kernels that were widely deployed.  The earliest
> conveivable Linux attested, what Torvalds produced on his 80386 in 1991
> ("Freax") is less important than Linux 2.4.
>
> So I would recast and use semantic newlines [see man-pages(7)]:
>
>         Linux 2.4 and earlier used signed types for limits;
>         that was changed
>
> Alex will surely direct you to the semantic newline advice in
> man-pages(7).
>
>    Use semantic newlines
>        In the source of a manual page, new sentences should be started
>        on new lines, and long sentences should  split  into  lines  at
>        clause  breaks  (commas,  semicolons, colons, and so on).  This
>        convention, sometimes known as "semantic  newlines",  makes  it
>        easier to see the effect of patches, which often operate at the
>        level of individual sentences or sentence clauses.
>
> I won't point out every instance where a semantic newline is preferred.
>
> > +(along with the value of the
> > +.B RLIM_INFINITY
> > +constant)
>
> I see there is some precedent in the Linux man-pages to call a
> preprocessor symbol that is replaced with a C language literal a
> "constant".  I would not employ this usage myself, since C has the
> "const" type qualifier that suggests, and is is widely interpreted, as
> "constant".  I think it would be helpful if we referred to as "constant"
> only C objects bearing such a declaration.  Does anyone think this would
> be a worthwhile shift in usage?  (The most important virtue that
> constants in the sense I'm using them have over preprocessor symbols is
> that the former survive the translation process into executable format,
> and (if not optimized out) will appear in a symbol table, which means a
> debugger can know about them.)

I'd stick with the current "constant" usage for brevity: system
headers do not tend to employ const symbols, especially
kernel-provided ones, for reasons, so "constant" meaning is more or
less clear in the section 2 with that regard, albeit not totally
technically sound with respect to the C language.

> > +.\" http://repo.or.cz/davej-history.git/blobdiff/129f8758d8c41e0378ace0b6e2f56bbb8a1ec694..15305d2e69c3a838bacd78962c07077d2821f255:/include/linux/resource.h
> > +during 2.4 development cycle, as it wasn't compatible
>
> s/during/& the/
>
> > +with Single UNIX Specification.
>
> s/with/& the/
>
> > +However, in order to preserve backward compatibility, the routine
>
> s/routine/function/ ?

I followed syscalls(2) naming convention here.

>
> > +.IR sys_old_getrlimit
> > +has been implemented under
>
> s/has been/was/
> s/under/using the/
>
> > +.B __NR_getrlimit
> > +syscall slot, with infinity checks being performed against hard-coded 0x7fffffff
>
> s/hard-coded/a literal/
>
> > +value, and the routine
>
> s/the routine//
> (it will be clear from context that this is another function)
>
> > +.I sys_getrlimit
> > +has been exposed under a new name,
>
> s/has been/was/
> s/exposed/made available/
>
> > +.BR ugetrlimit ().
> > +Note that most newer architectures don't have the latter, with
>
> s/Note that most/Most/
>
> I call this a "Kemper notectomy", after my colleague in groff
> development, Dave Kemper, who has pointed out that we tend to massively
> overuse the phrase "note that" in software documentation.  We write for
> impatient readers.  Everything we say in a manual should be worthy of
> note; if it is not, it should be deleted or moved to a place in the text
> reserved for supplemental commentary (a footnote; a (sub)section entitled
> "Background", "History", or "Notes"; or similar).

This is literally the "Notes" section, though.

> > +.BR getrlimit ()
> > +providing proper implementation.
>
> What's "proper" about it?  That it's unsigned, or that it's conforming?
> Say so.  Again, an article is needed.
>
> s/proper/a conforming/
>
> > +Also worth noting that several architectures decided not to change
>
> I'd condense this.
>
> s/Also worth noting that/However,
> /
>
> > +.B RLIM_INFINITY
> > +value: 32-bit mips and sparc (but not 64-bit variants, that switched
>
> s/mips/MIPS/
>
> The Linux man-pages are mostly consistent about this casing[1], and it
> is normative[2].
>
> s/sparc/SPARC/
>
> The Linux man-pages are mostly consistent about this casing[3], and it
> is normative[4].
>
> > +to the new value of (~0UL)) retained the old 0x7fffffff value,
> > +and alpha retained 0x7ffffffffffffffful.
>
> s/alpha/Alpha/
>
> You can probably guess what I'm going to say.  ;-)
>
> > +.\" ...along with a request to call when one runs into it:
> > +.\" https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/alpha/include/uapi/asm/resource.h#n15
> >  .SH BUGS
> >  In older Linux kernels, the
> >  .B SIGXCPU
>
> Thank you for your patience with my comments.  I hope they've been
> helpful.

They indeed are.

> Regards,
> Branden
>
> [1] vdso(7) may be an exception.
> [2] https://booksite.elsevier.com/9780124077263/downloads/historial%20perspectives/section_4.16.pdf
> [3] clone(2), syscall(2), and exec(3) may be exceptions.
> [4] https://sparc.org/timeline/



-- 
Eugene Syromyatnikov
mailto:evgsyr@gmail.com
xmpp:esyr@jabber.{ru|org}
