Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F103377C283
	for <lists+linux-man@lfdr.de>; Mon, 14 Aug 2023 23:41:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229959AbjHNVkp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Aug 2023 17:40:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232861AbjHNVkf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Aug 2023 17:40:35 -0400
Received: from smarthost01a.sbp.mail.zen.net.uk (smarthost01a.sbp.mail.zen.net.uk [212.23.1.1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 692D0E77
        for <linux-man@vger.kernel.org>; Mon, 14 Aug 2023 14:40:34 -0700 (PDT)
Received: from [82.71.22.80] (helo=pip.localnet)
        by smarthost01a.sbp.mail.zen.net.uk with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.90_1)
        (envelope-from <deri@chuzzlewit.myzen.co.uk>)
        id 1qVfId-0008O7-PL; Mon, 14 Aug 2023 21:40:31 +0000
From:   Deri <deri@chuzzlewit.myzen.co.uk>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Brian.Inglis@shaw.ca
Subject: Re: No 6.05/.01 pdf book available
Date:   Mon, 14 Aug 2023 22:40:31 +0100
Message-ID: <8264634.T7Z3S40VBb@pip>
In-Reply-To: <04e326c5-1bfa-357f-cce1-d3315615fe86@kernel.org>
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca> <21985157.EfDdHjke4D@pip> <04e326c5-1bfa-357f-cce1-d3315615fe86@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Originating-smarthost01a-IP: [82.71.22.80]
Feedback-ID: 82.71.22.80
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Monday, 14 August 2023 18:37:26 BST Alejandro Colomar wrote:
> Hi Deri, Branden,
> 
[...]
> 
> > Another change which would need to be accepted is
> > to allow a fourth parameter to .MR which is the destination name. Normally
> > the name of the destination is derived from the first two parameters
> > concatenated with "_", but if the name part of the .MR call to the man
> > page includes non- ascii characters (such as ".MR my\-lovely\-page 7 ,")
> > then it needs to provide a "clean" destination name.
> 
> Is this really needed?  Can't gropdf just translate them internally?  Say,
> do unconditionally the equivalent of `| tr - _ |` or something like that.

See other email.

[...]
> 
> Do you have an estimate of how long your branch could take to merge?
> As in, more than a month or less than a month?

I'm really hoping Branden's going to help me with that, I think he intimated 
that he might when he suggested I start a branch for the work. I have one more 
push to the branch to do, but I need to contact Peter since there is a minor 
tweak to om.tmac to make expandos work in mom.

> > Makefile
> > 
> > The simplest option would be to add a new rule to the Makefile which is
> > dependent on all the man pages have been built, and cd's into the scripts/
> > LinuxManBook directory and calls the program with the location where the
> > man pages exist. However, I suspect Alex fancies something more
> > complicated by replacing the perl with a hybrid of shell command and make
> > magic.
> 
> You suspect well.  :)

Just like my wife, she often tells me I'm "No longer required on the 
journey!". :-)

Cheers

Deri

> > I attach a new copy of BuildLinuxMan.pl which is an amalgam of mine and
> > Brian's code. This has the new -paper flag.
> > 
> > Alex's MR branch
> > 
> > The new program now recognises existing .MR's in the document and provides
> > the "clean" destination name, so it should run against the new branch.> 
> >> 	nodemask ... on-
> >> 	...
> >> 	line, ...
> >> 
> >> There appear to be 24 single word instances of online and 12 outdated
> >> hyphenated compound word instances of on-line across all man pages.
> >> 
> >> UI: I also noticed, while looking for tables to compare, that pages are
> >> ordered by filename not like rpmvercmp/ls -v/RPM::VersionSort e.g
> >> ISO_8859-2 is after ISO_8859-16 which may not be as expected.
> >> Used rpmvercmp in last line of perl sub sortman and works as expected.
> > 
> > I have used Sort::Versions (see above), thanks for the suggestion.
> > 
> >> Tech nitpick: .Z is still recognized by GUIs as compress output
> >> (UNIX-compressed file) - is there no other file type suffix used for
> >> 
> >> ditroff intermediate output? Aha - Alex says .set:
> >> 	https://lists.gnu.org/archive/html/groff/2023-04/msg00213.html
> > 
> > Well, that's settled.
> > 
> >> Added variables and changed those also in BLM-letter.pl: copy attached.
> >> 
> >>> Thanks for your help.
> >> 
> >> Happy to help in any way.
> > 
> > Hope you're happy with this version.
> 
> Let's open the improved Christmas present!  :D
> 
> Cheers,
> Alex




