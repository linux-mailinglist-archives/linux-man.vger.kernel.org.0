Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5CE9226F109
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 04:48:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726874AbgIRCsM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 17 Sep 2020 22:48:12 -0400
Received: from 2.152.178.181.dyn.user.ono.com ([2.152.178.181]:59520 "EHLO
        pulsar.hadrons.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726457AbgIRCsJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 17 Sep 2020 22:48:09 -0400
X-Greylist: delayed 1917 seconds by postgrey-1.27 at vger.kernel.org; Thu, 17 Sep 2020 22:48:07 EDT
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hadrons.org
        ; s=201908; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
        Subject:Cc:To:From:Date:From:Reply-To:Subject:Content-Transfer-Encoding:
        Content-ID:Content-Description:X-Debbugs-Cc;
        bh=eUlugoinU08njf111IfQkAsbakl+CMNPJE/J5QwiPn4=; b=buszeXJOPsx1Z9EsXvl1ynRm5h
        JcdSCYyDl5TM3MjzYNPaL5jFxmuWWkgxYxlgrYB75jOZ8mj3QpSDfUfg3kUL0uV4oDKqO4jddsrza
        V+GMqV+Q2x2fOZBUtNa7pbC0lZyOs0GQSSRqDbctGONSzpG1elFi7M4qbHafcY6sjgWtyTEJP91ui
        Uo8lli3xiGsDemWAxyDYd8buT3nctbn2SVPpLlRWRMMQ6+01dTPLzYwS8w0bnPBaDuxl5Pwnhhq7j
        WX+IpNQ1sHgJKmxFs0sW9grZjIjv7U3XG6CEYX2EfphF90mJny/jh4Hci+dncae1PpcvWEDx+eTTP
        Z0Mq6NEw==;
Received: from guillem by pulsar.hadrons.org with local (Exim 4.92)
        (envelope-from <guillem@hadrons.org>)
        id 1kJ65o-0004AZ-2E; Fri, 18 Sep 2020 04:25:44 +0200
Date:   Fri, 18 Sep 2020 04:16:03 +0200
From:   Guillem Jover <guillem@hadrons.org>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        Florian Weimer <fweimer@redhat.com>,
        linux-man <linux-man@vger.kernel.org>,
        libbsd@lists.freedesktop.org
Subject: Re: [IDEA] New pages for types: structs and typedfefs
Message-ID: <20200918021603.GA596604@thunder.hadrons.org>
Mail-Followup-To: Guillem Jover <guillem@hadrons.org>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Alejandro Colomar <colomar.6.4.3@gmail.com>,
        Florian Weimer <fweimer@redhat.com>,
        linux-man <linux-man@vger.kernel.org>, libbsd@lists.freedesktop.org
References: <fb6463f6-49d7-e473-d5e1-1cdf8375e498@gmail.com>
 <6c5b89f8-4281-4434-cbee-28f88d07920c@gmail.com>
 <4ea99048-4bfd-9cba-44cd-9c37fdad8fce@gmail.com>
 <CAKgNAkjys+LYn1qaSXhM2gJfkv_UOnpeNPyh3QCqNLcMNBKB+g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKgNAkjys+LYn1qaSXhM2gJfkv_UOnpeNPyh3QCqNLcMNBKB+g@mail.gmail.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi!

[ I see this has already been merged, just giving some little context,
  from the libbsd side. :) ]

On Sun, 2020-09-13 at 14:01:22 +0200, Michael Kerrisk (man-pages) wrote:
> On Sat, 12 Sep 2020 at 10:59, Alejandro Colomar <colomar.6.4.3@gmail.com> wrote:
> > On 2020-09-12 08:33, Michael Kerrisk (man-pages) wrote:
> >  > Your not the first to suggest this. Most recently, if I recall
> >  > correctly, Florian also suggested it.
> >  >
> >  > The idea seems reasonable, but I wonder about the best way of doing it.

Yes, this sounds great, this is also something I've missed from time
to time. :)

> > libbsd already provides a few pages on types.  Maybe we could have a
> > look at them.  At least I've seen 'man timespec' (which redirects to
> > timeval.3bsd):
> >
> > https://gitlab.freedesktop.org/libbsd/libbsd/-/blob/master/man/timeval.3bsd

Ah, timespec.3bsd is actually (at least) a man-db construct, libbsd
does not install an actual link on disk, I assume the .Nm macros in
the .Sh NAME section are being indexed. I should add such explicit
link for completeness though, thanks!

> >  > Then of course, we'd need to have links to that page, so that
> >  > people could just type 'man timer_t'. What section should the links
> >  > be in? The reasonable candidates would be section 3 or 7. I'm not
> >  > yet sure which is better. But the point is that we'd have files
> >  > such as timer_t.3 (or timer_t.7) that are link pages containing the
> >  > line:
> >  >
> >  >      .so man7/system_data_types.7
> >
> > Sure.  And for the structs, I'd allow:
> >
> > 'man struct timespec'   (For simplicity)
> > 'man struct-timespec'   (Similar to the git man pages)
> > 'man timespec'          (For compatibility with libbsd)
> 
> Mainly, I'm interested in the last case. That's the one I think that
> people would most likely use. In a follow-up mail, you expressed
> concern with conflicts with libbsd pages. I'm not too worried about
> that. There are already *many* conflicts between libbsd and man-pages.

In libbsd I try to have man pages for at least every function and macro,
ideally originating from the related BSD. The timeval.3bsd came mostly
out of a need to document the TIMEVAL_TO_TIMESPEC and TIMESPEC_TO_TIMEVAL
macros, and finding this on NetBSD:

  <http://man.netbsd.org/timeval.3>

and they do seem to have dedicated man pages for some other
structures, which seems rather nice, and indeed worth imitating.

Regarding conflicts, I specifically chose to place all libbsd man
pages in the 3bsd section (both in filename and in the .Dt macro, to
avoid an actual conflict, and to not override the system man pages.
So once a man page appears in say man-pages, then that will take
precedence:

  $ man explicit_bzero # man-pages version recentish addition

vs

  $ man 3bsd explicit_bzero # libbsd version

Thanks,
Guillem
