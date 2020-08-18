Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2AE08248B34
	for <lists+linux-man@lfdr.de>; Tue, 18 Aug 2020 18:11:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726793AbgHRQK7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 18 Aug 2020 12:10:59 -0400
Received: from foss.arm.com ([217.140.110.172]:44606 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726779AbgHRQK7 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 18 Aug 2020 12:10:59 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ED4AD1FB;
        Tue, 18 Aug 2020 09:10:57 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9CFFD3F66B;
        Tue, 18 Aug 2020 09:10:56 -0700 (PDT)
Date:   Tue, 18 Aug 2020 17:10:54 +0100
From:   Dave Martin <Dave.Martin@arm.com>
To:     "Joshua M. Clulow" <josh@sysmgr.org>, mtk.manpages@gmail.com,
        Larry Dwyer <larryd.kbd@gmail.com>,
        Florian Weimer <fweimer@redhat.com>,
        linux-man <linux-man@vger.kernel.org>,
        Andrew Josey <ajosey@opengroup.org>,
        libc-alpha <libc-alpha@sourceware.org>,
        Elliot Hughes <enh@google.com>,
        Joseph Myers <joseph@codesourcery.com>,
        austin-group-l@opengroup.org
Subject: Re: Pseudoterminal terminology in POSIX
Message-ID: <20200818161053.GC6642@arm.com>
References: <CAEwA5nKtyJTnQEXZZaiHywTpfDCprmupnCiq9kf5oupV7iG8RA@mail.gmail.com>
 <20200812131900.JbiVo%steffen@sdaoden.eu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200812131900.JbiVo%steffen@sdaoden.eu>
User-Agent: Mutt/1.5.23 (2014-03-12)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Aug 12, 2020 at 03:19:00PM +0200, Steffen Nurpmeso wrote:
> Joshua M. Clulow via austin-group-l at The Open Group wrote in
>  <CAEwA5nKtyJTnQEXZZaiHywTpfDCprmupnCiq9kf5oupV7iG8RA@mail.gmail.com>:
>  |On Tue, 11 Aug 2020 at 01:33, Michael Kerrisk man-pages via
>  |austin-group-l at The Open Group <austin-group-l@opengroup.org> wrote:
>  |> On 8/9/20 1:18 AM, Larry Dwyer via Libc-alpha wrote:
>  |>> How about the "control" side and the "terminal" side (of the paired
>  |>> device files)?
>  |>
>  |> Thanks for the suggestion. As far as I'm concerned, that would
>  |> also be an option worth considering.
>  |
>  |I work on the illumos project and a few of us have been having a
>  |(not yet public) discussion about this lately as well.  I think the
>  |best one we could think of was:
>  |
>  |    the "control" side for the result of posix_openpt()
>  |
>  |    the "subordinate" side for the result of ptsname() and open(),
> 
> You know, (In)Subordination has a very military touch, with
> exclamation mark many may have heard it.  Also in traditional
> (white western world) education as such.  Like in first the
> pizzle, then the bull pizzle, maybe.  So to say.  In my ears this
> sounds more aggressive and weird than slave, in a technical
> combination of master/slave, ever could.
> Also isn't it a bit submissive here; it is under control, but
> other than that.
> 
>  |    "/dev/pts" still makes sense, etc
>  |
>  |    we would rename our "/dev/ptmx" device file the "manager
>  |    driver" rather than the "master"
>  |
>  |We would strongly consider using the same shift as other projects,
>  |but I think only if they actually make sense; e.g., the "terminal"
>  |and "pseudoterminal" end doesn't really stand out as completely
>  |clear.
> 
> Manager sounds strange here, i always liked manager/worker
> terminologie for threads, and used them like that (and am the
> opinion that .. but that is something different and has sailed),
> but for a pseudo terminal?  I think that if the standard wants to
> be future proof manager should be avoided.  These guys induce
> strange, ruthless and devastating decisions which destroy life on
> earth (as we used to know it), so i for one do not want to be
> harassed by such a term.

Was this discussion concluded yet?

Question: was there ever an intention that a pty master-slave pair
should resemble two real terminals connected to each other?  (e.g., two
serial ports on the same machine, cabled together).


POSIX seems pretty vague as to whether the pty master counts as a
terminal or not.  In Linux, it has many but not all of the properties
of a terminal.  It's not at all clear whether this is intentional, and
I don't know whether other implementations behave similarly.

The main distinctions I'm aware of are that the pty master cannot become
the controlling terminal of any process, and that both master and slave
have rather weird dialin/hangup semantics which appear rather ad-hoc and
don't map nicely onto the behaviour of physical terminal lines.

The master also has a few extra ioctls at its disposal for managing the
pair.

Other stuff does work identically on the pty master and slave though,
such as setting termios modes.  I have a vague memory of successfully
setting ECHO on both ends...


IMHO, the real problem here is that pty devices are underspecified,
and counterintuitive in some areas.  Changing the nomenclature won't fix
that.

Plus, renaming things won't kill off the old terminology, and with both
naming schemes in circulation, people are likely to be even more
confused than they were to start with, no?

Cheers
---Dave
