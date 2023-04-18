Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 06F036E55D4
	for <lists+linux-man@lfdr.de>; Tue, 18 Apr 2023 02:27:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229842AbjDRA1a (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 Apr 2023 20:27:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229521AbjDRA1a (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 17 Apr 2023 20:27:30 -0400
Received: from pulsar.hadrons.org (2.152.192.238.dyn.user.ono.com [2.152.192.238])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62B482108
        for <linux-man@vger.kernel.org>; Mon, 17 Apr 2023 17:27:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hadrons.org
        ; s=201908; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
        Subject:Cc:To:From:Date:From:Reply-To:Subject:Content-Transfer-Encoding:
        Content-ID:Content-Description:X-Debbugs-Cc;
        bh=SEvjQqusn69i1wCYi1NWawrT8irSR0D3ClC+GYVcM7o=; b=BshjPtLWBrgzy5yuk0l4BMIf59
        gXgkpOzSTHd5QBGQpknSwkUDFDlBonz2xQnn10Mkf1gHL/iwOBcFSGDxMrABzh5lJHPNbiKwYmyks
        ZYi+dJsl2EZJ1MHc3ScA3E8B/XcORwXadD6zXOheRgbGPSmiEAO3Ayh1egBRSQKBA6vufrl5YY8wu
        L3EYeOPeuxGiktKEYr7pQGZk7f8H/HS8u6UowHo8zbgtlkgkmzGCD9HAAwNXHcA1kOq5SaJMwXxxi
        vV/SSqho3VDvjAVSd2dqWwbUJ0DUmbdywEnTY5oLhvSf2/UeiWBFtDiRuvnvHGPaoQ9r9WYEJhou6
        XlNRRY6Q==;
Received: from guillem by pulsar.hadrons.org with local (Exim 4.96)
        (envelope-from <guillem@hadrons.org>)
        id 1poZBr-0005C0-1A;
        Tue, 18 Apr 2023 02:27:23 +0200
Date:   Tue, 18 Apr 2023 02:27:23 +0200
From:   Guillem Jover <guillem@hadrons.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>
Subject: Re: [PATCH] man*/: ffix
Message-ID: <ZD3j61Fk5RUQkvkL@thunder.hadrons.org>
Mail-Followup-To: Guillem Jover <guillem@hadrons.org>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>
References: <20230416231916.281037-1-guillem@hadrons.org>
 <20230416235126.vdbiab5p5jwty4ol@illithid>
 <245b3f67-3686-a784-c0ae-d3e5db117a21@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <245b3f67-3686-a784-c0ae-d3e5db117a21@gmail.com>
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_SORBS_DUL,RDNS_DYNAMIC,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi!

On Mon, 2023-04-17 at 20:14:42 +0200, Alejandro Colomar wrote:
> On 4/17/23 01:51, G. Branden Robinson wrote:
> > At 2023-04-17T01:19:16+0200, Guillem Jover wrote:
> >> Escape dashes on dates, UUIDs, URLs, file and package names.
> > [...]
> > 
> > I'm a +1 on all of this except the dates (explanation below).
> > 
> >> diff --git a/man4/rtc.4 b/man4/rtc.4
> >> index 55dc1ff6b..b16be16c1 100644
> >> --- a/man4/rtc.4
> >> +++ b/man4/rtc.4
> >> @@ -43,7 +43,7 @@ and
> >>  .BR time (2),
> >>  as well as setting timestamps on files, and so on.
> >>  The system clock reports seconds and microseconds since a start point,
> >> -defined to be the POSIX Epoch: 1970-01-01 00:00:00 +0000 (UTC).
> >> +defined to be the POSIX Epoch: 1970\-01\-01 00:00:00 +0000 (UTC).
> >>  (One common implementation counts timer interrupts, once
> >>  per "jiffy", at a frequency of 100, 250, or 1000 Hz.)
> >>  That is, it is supposed to report wall clock time, which RTCs also do.
> > 
> >> diff --git a/man5/proc.5 b/man5/proc.5
> >> index dc5397a22..9c0b3e2ab 100644
> >> --- a/man5/proc.5
> >> +++ b/man5/proc.5
> >> @@ -4383,7 +4383,7 @@ Unnumbered interrupts are not shown, only summed into the total.
> >>  The number of context switches that the system underwent.
> >>  .TP
> >>  \fIbtime 769041601\fP
> >> -boot time, in seconds since the Epoch, 1970-01-01 00:00:00 +0000 (UTC).
> >> +boot time, in seconds since the Epoch, 1970\-01\-01 00:00:00 +0000 (UTC).
> >>  .TP
> >>  \fIprocesses 86031\fP
> >>  Number of forks since boot.
> > 
> > These are parts of prose sentences and are themselves prose.  In the
> > groff man pages we neither model, nor recommend, the use of hyphen-minus
> > signs (escaped hyphens) in date strings, as one might commonly encounter
> > in `TH` calls to assign a revision date to a man page, for example.

AFAIR at the time I escaped these because they looked parseable dates,
pretty close to ISO 8601. And there is at least escaped versions of
the epoch in getspnam.3. But rechecking now it seems there are many
other instances of the same string, so these were perhaps newer than
my initial change, or I missed them at the time.

> > Similarly, we would not escape the hyphen in the sentence: "While I was
> > in Quebec, I met Yves St-Denis.".[1]

Sure, but I don't find these comparable. :)

> What do standards say about formatting dates?  Do they specify the
> character?  I read some RFCs, but didn't see it specified, other than
> calling it literally '"-"'.  No name of the character, or ASCII code.
> 
> However, date(1) only accepts hyphen-minus, so it would be nice to use a
> compatible format, even if standards didn't mandate it.
> 
> I'll hold the patch, to allow for some discussion, but I want to apply it.

In any case, while it's true that there are easier ways to get the epoch,
these still look like things that could end up being parsed? So my
instinct would be to escape them, but I don't think I care much either
way, so I'm happy to revert that patch and resend (or feel free to do
that yourself), or update all the other instances which I missed and
resend.

Thanks,
Guillem
