Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 52A73242A2A
	for <lists+linux-man@lfdr.de>; Wed, 12 Aug 2020 15:19:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727998AbgHLNTF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 12 Aug 2020 09:19:05 -0400
Received: from sdaoden.eu ([217.144.132.164]:50810 "EHLO sdaoden.eu"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726404AbgHLNTE (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 12 Aug 2020 09:19:04 -0400
Received: by sdaoden.eu (Postfix, from userid 1000)
        id 80EED16056; Wed, 12 Aug 2020 15:19:01 +0200 (CEST)
Date:   Wed, 12 Aug 2020 15:19:00 +0200
From:   Steffen Nurpmeso <steffen@sdaoden.eu>
To:     "Joshua M. Clulow" <josh@sysmgr.org>
Cc:     mtk.manpages@gmail.com, Larry Dwyer <larryd.kbd@gmail.com>,
        Florian Weimer <fweimer@redhat.com>,
        linux-man <linux-man@vger.kernel.org>,
        Andrew Josey <ajosey@opengroup.org>,
        libc-alpha <libc-alpha@sourceware.org>,
        Elliot Hughes <enh@google.com>,
        Joseph Myers <joseph@codesourcery.com>,
        austin-group-l@opengroup.org
Subject: Re: Pseudoterminal terminology in POSIX
Message-ID: <20200812131900.JbiVo%steffen@sdaoden.eu>
In-Reply-To: <CAEwA5nKtyJTnQEXZZaiHywTpfDCprmupnCiq9kf5oupV7iG8RA@mail.gmail.com>
References: <CAEwA5nKtyJTnQEXZZaiHywTpfDCprmupnCiq9kf5oupV7iG8RA@mail.gmail.com>
Mail-Followup-To: "Joshua M. Clulow" <josh@sysmgr.org>,
 mtk.manpages@gmail.com, Larry Dwyer <larryd.kbd@gmail.com>,
 Florian Weimer <fweimer@redhat.com>,
 linux-man <linux-man@vger.kernel.org>,
 Andrew Josey <ajosey@opengroup.org>,
 libc-alpha <libc-alpha@sourceware.org>, Elliot Hughes <enh@google.com>,
 Joseph Myers <joseph@codesourcery.com>, austin-group-l@opengroup.org
User-Agent: s-nail v14.9.19-103-ga01f6c13
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Joshua M. Clulow via austin-group-l at The Open Group wrote in
 <CAEwA5nKtyJTnQEXZZaiHywTpfDCprmupnCiq9kf5oupV7iG8RA@mail.gmail.com>:
 |On Tue, 11 Aug 2020 at 01:33, Michael Kerrisk man-pages via
 |austin-group-l at The Open Group <austin-group-l@opengroup.org> wrote:
 |> On 8/9/20 1:18 AM, Larry Dwyer via Libc-alpha wrote:
 |>> How about the "control" side and the "terminal" side (of the paired
 |>> device files)?
 |>
 |> Thanks for the suggestion. As far as I'm concerned, that would
 |> also be an option worth considering.
 |
 |I work on the illumos project and a few of us have been having a
 |(not yet public) discussion about this lately as well.  I think the
 |best one we could think of was:
 |
 |    the "control" side for the result of posix_openpt()
 |
 |    the "subordinate" side for the result of ptsname() and open(),

You know, (In)Subordination has a very military touch, with
exclamation mark many may have heard it.  Also in traditional
(white western world) education as such.  Like in first the
pizzle, then the bull pizzle, maybe.  So to say.  In my ears this
sounds more aggressive and weird than slave, in a technical
combination of master/slave, ever could.
Also isn't it a bit submissive here; it is under control, but
other than that.

 |    "/dev/pts" still makes sense, etc
 |
 |    we would rename our "/dev/ptmx" device file the "manager
 |    driver" rather than the "master"
 |
 |We would strongly consider using the same shift as other projects,
 |but I think only if they actually make sense; e.g., the "terminal"
 |and "pseudoterminal" end doesn't really stand out as completely
 |clear.

Manager sounds strange here, i always liked manager/worker
terminologie for threads, and used them like that (and am the
opinion that .. but that is something different and has sailed),
but for a pseudo terminal?  I think that if the standard wants to
be future proof manager should be avoided.  These guys induce
strange, ruthless and devastating decisions which destroy life on
earth (as we used to know it), so i for one do not want to be
harassed by such a term.

In accordance, maybe,
Ciao from Germany,

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
