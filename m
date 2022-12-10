Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C4FD648D8A
	for <lists+linux-man@lfdr.de>; Sat, 10 Dec 2022 09:01:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229750AbiLJIBo convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Sat, 10 Dec 2022 03:01:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229721AbiLJIBn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 10 Dec 2022 03:01:43 -0500
X-Greylist: delayed 2768 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sat, 10 Dec 2022 00:01:41 PST
Received: from omr05.pc4.atmailcloud.com (omr05.pc4.atmailcloud.com [52.51.233.27])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CA142980A
        for <linux-man@vger.kernel.org>; Sat, 10 Dec 2022 00:01:41 -0800 (PST)
Received: from MRR.i-05b3a10130f6c691b
         by OMR.i-0fc441b4575783f9f with esmtps
        (envelope-from <hbezemer@kliksafe.nl>)
        id 1p3u55-0004R1-66; Sat, 10 Dec 2022 07:15:31 +0000
Received: from CMR-KS.i-003eb41df490dcd9a by MRR.i-05b3a10130f6c691b with esmtps
        (envelope-from <hbezemer@kliksafe.nl>)
        id 1p3u55-0006ci-45; Sat, 10 Dec 2022 07:15:31 +0000
Received: from [213.247.101.105] (helo=misterbzr.localdomain)
         by CMR-KS.i-003eb41df490dcd9a with esmtpsa
        (envelope-from <hbezemer@kliksafe.nl>)
        id 1p3u54-0004F7-1G; Sat, 10 Dec 2022 07:15:30 +0000
Date:   Sat, 10 Dec 2022 08:15:27 +0100
From:   hbezemer@kliksafe.nl
To:     John Gardner <gardnerjohng@gmail.com>
Cc:     Deri <deri@chuzzlewit.myzen.co.uk>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Mike Frysinger <vapier@gentoo.org>, groff@gnu.org,
        linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: Re: words (and commands) that I learnt because of Branden (was:
 preferred /proc/<pid>/xxx style?)
Message-ID: <20221210071527.WKsP8%hbezemer@kliksafe.nl>
In-Reply-To: <CAGcdajfWk+=xR3UfAnNri0F7OL0mFJ4xsp=sQoWLo_-_G5wcBA@mail.gmail.com>
References: <Y5MCsc/H9BV6RcST@vapier>
 <20221209210340.azlp4t6c5myz534b@illithid>
 <b2aba4a6-2a6a-74c6-97e8-3bc11018a623@gmail.com> <1825468.atdPhlSkOF@pip>
 <CAGcdajfWk+=xR3UfAnNri0F7OL0mFJ4xsp=sQoWLo_-_G5wcBA@mail.gmail.com>
User-Agent: s-nail v14.9.24
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT
X-Atmail-Id: hbezemer@kliksafe.nl
X-atmailcloud-spam-score: 0
X-atmailcloud-spam-bar: /
X-atmailcloud-spam-action: no action
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This thread made my morning and I fully agree: Love to read the elaborate delicately humourful e-mails.
In Dutch there's a saying: Schrijvers zijn blijvers, which can be loosy translated as: Who writes, will be remembered. True in this case.

Regards,

Hans
John Gardner <gardnerjohng@gmail.com> wrote:

> >
> >  Your emails are the reason I know and often use dict(1).  Lol.
> 
> 
> Branden's e-mails are the reason I consult the Oxford English dictionary
> far more often than I'm comfortable admitting. Either I'm learning obscure
> words I know I'll never remember when I need them,[1] <#snarky-footnote-1>
> or I'm asking myself *"wait, what does *X* mean, again…?"*, chiefly because
> I don't read enough (non-technical) literature. :-(
> 
> And even when he *isn't* filling my notes file I use to horde definitions
> of fancy-sounding words I probably won't ever use, I'm always admiring how
> he manages to balance cheeky humour with informative, expressive writing
> that brings the Camel Book's writing style to mind (seriously, when
> discussing dry topics like typesetting and Unix orthography, a sense of
> humour makes digestion *so* much easier).
> 
> Also, "*vituperator*" still reigns as my favourite Brandenism[2]
> <#if-you-can-read-this-gmail-forgot-to-sanitise-my-fragment-identifier> to
> date.
> 
> [1] Or awkwardly pigeonhole them into discussions when I do.
> [2] An unintentional extension to a reader's vocabulary, often when you
> least expect it.
> [3] There's no third footnote, I just wanted to point out how infectious
> Branden's writing style is.
> 
> 
> On Sat, 10 Dec 2022 at 09:10, Deri <deri@chuzzlewit.myzen.co.uk> wrote:
> 
> > On Friday, 9 December 2022 21:09:57 GMT Alejandro Colomar wrote:
> > > $ dict deriliction
> > > No definitions found for "deriliction", perhaps you mean:
> > > gcide:  Dereliction
> > > wn:  dereliction
> > > moby-thesaurus:  dereliction
> > >
> > > And yes, dereliction has a definition compatible with your use.
> > >
> > > Cheers,
> > >
> > > Alex
> >
> >
> > If deriliction was a word I think it would be unsavoury. :-)
> >
> > Cheers
> >
> > Deri
> >
> >
> >
> >
