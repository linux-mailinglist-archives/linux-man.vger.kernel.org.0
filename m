Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2B683595C49
	for <lists+linux-man@lfdr.de>; Tue, 16 Aug 2022 14:52:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229645AbiHPMwN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 16 Aug 2022 08:52:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229595AbiHPMwM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 16 Aug 2022 08:52:12 -0400
Received: from scc-mailout-kit-02.scc.kit.edu (scc-mailout-kit-02.scc.kit.edu [IPv6:2a00:1398:9:f712::810d:e752])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FF1658B50
        for <linux-man@vger.kernel.org>; Tue, 16 Aug 2022 05:52:08 -0700 (PDT)
Received: from hekate.asta.kit.edu ([2a00:1398:5:f401::77])
        by scc-mailout-kit-02.scc.kit.edu with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (envelope-from <schwarze@usta.de>)
        id 1oNw3C-001Lhg-9w; Tue, 16 Aug 2022 14:52:06 +0200
Received: from login-1.asta.kit.edu ([2a00:1398:5:f400::72])
        by hekate.asta.kit.edu with esmtp (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1oNw39-007PTR-Kr; Tue, 16 Aug 2022 14:52:03 +0200
Received: from schwarze by login-1.asta.kit.edu with local (Exim 4.92)
        (envelope-from <schwarze@usta.de>)
        id 1oNw39-0002zY-K1; Tue, 16 Aug 2022 14:52:03 +0200
Date:   Tue, 16 Aug 2022 14:52:03 +0200
From:   Ingo Schwarze <schwarze@usta.de>
To:     Sam Varshavchik <mrsam@courier-mta.com>
Cc:     DJ Chase <u9000@posteo.mx>, g.branden.robinson@gmail.com,
        Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: Standardize roff
Message-ID: <YvuS8w3yYOuj9tWF@asta-kit.de>
References: <YvT6s2Sv+M2bEldp@asta-kit.de>
 <20220811201714.a2o432xhkyyyj6qi@illithid>
 <YvZj6emfWNfwRjwe@asta-kit.de>
 <20220812221035.xd4udngmz5erht5p@illithid>
 <CM52T3SFTBDU.21XFDQOUZP886@grinningface>
 <Yvj/CAUSL1jVbAot@asta-kit.de>
 <cone.1660522834.354716.280603.1004@monster.email-scan.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cone.1660522834.354716.280603.1004@monster.email-scan.com>
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi San,

Sam Varshavchik wrote on Sun, Aug 14, 2022 at 08:20:34PM -0400:
> Ingo Schwarze writes:
>> DJ Chase wrote on Sat, Aug 13, 2022 at 05:27:34PM +0000:

>>> Have we ever considered a de jure *roff standard?

>> No, i think that would be pure madness given the amount of working
>> time available in any of the roff projects.

> I tinkered with something like this some years ago, but I took a slightly  
> different approach.
> 
> I converted man pages

What kind of manual pages?

> from 'roff source to Docbook XML using a … pretty large Perl script.

That sounds very foolish on several levels.

First, and most obviously, you seem to be duplicating esr@'s work
on doclifter:

  http://www.catb.org/~esr/doclifter/
  https://gitlab.com/esr/doclifter/-/blob/master/doclifter

Second, quick and dirty Perl-style parsing is usually not good
enough to parse roff code, and a huge script is not particularly
good for readability and maintainability.

Yes, i know the same resevations would apply to esr@'s work,
which is a giant Python 3 script.  But at least there is some
evidence that his work was able to find significant numbers of
real issues in real manual pages.

> Once a year, or so, when I have nothing better to do I pull the current
> man  page tarball and reconvert it. I usually need to tinker the Perl
> script, here and there, each time.
> 
> The Docbook folks provide a stylesheet that converts Docbook XML
> back to 'roff.

Yikes.  That thing is by far the worst man(7) code generator existing
on this planet.  If at all possible, you should avoid that toolchain
like the plague.

It is so bad that for years, bogus reports caused by that totally
broken toolchain have caused the majority of invalid mandoc bug
reports.

> The end result you get is standardized 'roff, whatever that means.

Absolutely not.  The result is utter crap.  It is rarely even
syntactically valid, let alone reasonable style.

> But, yes, the effort require to clean up and standardize the formatting
> of man pages would be mammoth. There's more inconsistency across the
> various man pages, from various sources, than consistency.

That isn't completely untrue, but all the same, mandoc copes well
enough with more than 95% of valid real-world manual pages, and groff
with 100%.  In a nutshell, the only stuff that breaks with groff
is manual pages that are completely invalid, usually coming from
the official DocBook XML toolchain, and in rarer cases coming from
other broken man(7) generators.

All this is barely related to the question of standardizing roff(7),
though.  Roff is much more than manual pages.

Yours,
  Ingo
