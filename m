Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6B58877A271
	for <lists+linux-man@lfdr.de>; Sat, 12 Aug 2023 22:24:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229749AbjHLUYr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Aug 2023 16:24:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229558AbjHLUYq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Aug 2023 16:24:46 -0400
Received: from queue02a.mail.zen.net.uk (queue02a.mail.zen.net.uk [212.23.3.234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C710ED
        for <linux-man@vger.kernel.org>; Sat, 12 Aug 2023 13:24:48 -0700 (PDT)
Received: from [212.23.1.21] (helo=smarthost01b.ixn.mail.zen.net.uk)
        by queue02a.mail.zen.net.uk with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.90_1)
        (envelope-from <deri@chuzzlewit.myzen.co.uk>)
        id 1qUupQ-0003A7-5X
        for linux-man@vger.kernel.org; Sat, 12 Aug 2023 20:03:16 +0000
Received: from [82.71.22.80] (helo=pip.localnet)
        by smarthost01b.ixn.mail.zen.net.uk with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.90_1)
        (envelope-from <deri@chuzzlewit.myzen.co.uk>)
        id 1qUuoR-0007U5-ME; Sat, 12 Aug 2023 20:02:15 +0000
From:   Deri <deri@chuzzlewit.myzen.co.uk>
To:     linux-man@vger.kernel.org, Brian.Inglis@shaw.ca
Cc:     Alejandro Colomar <alx@kernel.org>
Subject: Re: No 6.05/.01 pdf book available
Date:   Sat, 12 Aug 2023 21:02:15 +0100
Message-ID: <3258129.44csPzL39Z@pip>
In-Reply-To: <7f020624-ebc9-5eb8-b87f-8f954a8084a0@Shaw.ca>
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca> <21975186.EfDdHjke4D@pip> <7f020624-ebc9-5eb8-b87f-8f954a8084a0@Shaw.ca>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Originating-smarthost01b-IP: [82.71.22.80]
Feedback-ID: 82.71.22.80
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
        SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Saturday, 12 August 2023 18:02:24 BST Brian Inglis wrote:
> On 2023-08-07 17:14, Deri wrote:
> > On Monday, 7 August 2023 09:45:22 BST Alejandro Colomar wrote:
> >> Nevertheless, now I remember Deri told me he hardcoded a lot of stuff
> >> for 1.22.4 which should be removed after the release of 1.23.0, so it
> >> seems that the time has come to chop a lot of stuff from there.
> >> 
> >> Deri, would you mind simplifying the scripts assuming a Build-dep of
> >> groff(>=1.23.0)?
> > 
> > Hi Alex, Brian,
> > 
> > I have done some work on building the pdf. One improvement is any warnings
> > output by groff, i.e. use of the deprecated .PDF macro, now identify the
> > particular man page and line number accurately.
> > 
> > I have attached two new replacement LinuxManBook directories. The first,
> > 1.23.0, will run on a stock groff 1.23.0 system. The second, 1.23.0+, runs
> > with the latest gropdf which has a number of advantages for this project -
> > you will find the resulting pdf to be more than 5mb smaller, and the page
> > numbers in the overview pane match up with the page number at the bottom
> > of each page.
> > 
> > The file NewGropdf.pdf contains description of some of the features in the
> > new gropdf.
> > 
> > Both of these should continue to work if the groff version changes, thanks
> > to Brian's helpful suggestion to include /usr/share/groff/current in the
> > font path, but I have achieved this by specifying it in an -F flag rather
> > than patching gropdf.
> 
> Nice work Deri!
> 
> The official 6.05.01 book hyphenates words across page breaks more than
> standard 1.23.0 and new 1.23.0+ gropdf books.

Hi Brian,

I'd like to investigate this to understand why this is happening, please can 
you give me example page numbers which illustrate this.

> File sizes are official 6.05.01 ~13.3MB, 200k more than standard 1.23.0
> ~13MB, which is >~5MB more than new 1.23.0+ gropdf <~8MB.
> 
> I now see page footers on all pages!
> 
> I noticed that new 1.23.0+ seems to set some lines, especially tables, a
> little tighter (perhaps because of space handling), but *only* the first
> page "intro(1)" has half the normal spacing from the page header to the
> first heading!

Yes, I can see the difference in intro(1) and I can see a bug in the version 
of an.tmac I provided which may affect hyphenation. Also a page number example 
of the tighter table would be helpful.

> [I also noticed that *poppler* `pdf2text -layout` (used to diff the content
> amd layout) prints the .SH NAME and options dashes as en-dash from the
> official 6.05.01 book, but prints minus from standard 1.23.0 and new
> 1.23.0+ gropdf.]

This is intentional (and probably desirable). The pdf has a mapping so that 
the groff character \- is displayed as HYPHEN (U+0201) but when text is copy/
pasted from the pdf it is converted to HYPHEN-MINUS (U+002D) which is the 
character you get when you hit hyphen on the keyboard. This means that if you 
are copy/pasteing from examples in the man page which includes hyphens then 
your shell will interpret it correctly.

> I notice a number of widows and orphans, but that may be the man macros or
> groff commands not checking for sufficient space left on the page before
> rendering text: allowing 4em before heading spacing, 3em before para
> spacing would probably help, at the cost of larger bottom margins; and
> groff footers need to allow extra space to prevent widows by allowing them
> to intrude.

This probably needs a bit of tender curation! Bear in mind that the 
BuildLinuxMan.pl script uses the flags "-dpaper=a4 -P-pa4" so if the man page 
author has designed for a different page size the widows/orphans may well be 
different.

Thanks for your help.

Cheers

Deri



