Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DAE3D655B73
	for <lists+linux-man@lfdr.de>; Sat, 24 Dec 2022 23:46:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230186AbiLXWqe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 24 Dec 2022 17:46:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230152AbiLXWqd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 24 Dec 2022 17:46:33 -0500
Received: from smarthost01a.ixn.mail.zen.net.uk (smarthost01a.ixn.mail.zen.net.uk [212.23.1.20])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 530E81033
        for <linux-man@vger.kernel.org>; Sat, 24 Dec 2022 14:46:31 -0800 (PST)
Received: from [82.71.22.80] (helo=pip.localnet)
        by smarthost01a.ixn.mail.zen.net.uk with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.90_1)
        (envelope-from <deri@chuzzlewit.myzen.co.uk>)
        id 1p9DHg-0003cI-MG; Sat, 24 Dec 2022 22:46:28 +0000
From:   Deri <deri@chuzzlewit.myzen.co.uk>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Subject: Re: man-pages book: Using stdin/stdout more?
Date:   Sat, 24 Dec 2022 22:46:28 +0000
Message-ID: <2140212.Mh6RI2rZIc@pip>
In-Reply-To: <43941d08-2277-28ec-8536-19a2b6e35469@gmail.com>
References: <bc608529-e8bf-ba91-8206-986d880a595f@gmail.com> <43941d08-2277-28ec-8536-19a2b6e35469@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Originating-smarthost01a-IP: [82.71.22.80]
Feedback-ID: 82.71.22.80
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Saturday, 24 December 2022 10:37:50 GMT Alejandro Colomar wrote:
> > Hi Deri!
> > 
> > I uploaded the script to the repo. 
> > 
> > Would it be possible to use a pipe instead of the T file?
> 
> Or even better, because having the intermediate file is interesting for
> debugging.  How about breaking the process into 2 scripts, both of which
> write to stdout?

Hi Alex,

The T file is essential (as well as useful), but you are correct the program 
can easily be split into two. The lines between 61 and 66 could easily be 
included in a makefile and their output switched to STDOUT.

The reason the T file is required is because of the double groff call in line 
64. Groff is a single pass system so we need a way to resolve whether a .MR is 
a valid link and should be shown as a hotspot (blue) or points outside the 
book, so can't be a hotspot. So the first call to groff includes -z which 
means that groff will not "produce" any output on STDOUT but because 
PDF.EXPORT is defined a list of defined links is output by .tm statements to 
STDERR which is then switched to STDOUT. This list of defined links is then 
read by the second groff call followed by the T file again, and this time 
groff has the -Z flag so it produces a file in groff_out format. This again 
has to be written to an intermediate file (LinuxManBook.Z) since the call to 
gropdf joins two files, the cover and the book.

I hope this explains the shenanigans. In makefile terms, LinuxManBook.pdf is 
dependent on LMBfront.Z and LinuxManBook.Z. Which in turn are dependent on 
LMBfront.t and the T file (please think of a better name - LinuxManBook.T 
springs to mind! I can use the dasher program for emails, but coding requires 
fingers and keys which is much, much, slower so my code style tends to the 
minimal!

Cheers 

Deri

> 
> Then a wrapper would only have to call the two scripts.  Maybe the second
> can even read from stdin.
> 
> Cheers,
> 
> Alex
> 
> > Would it be possible to generate the PDF on stdout?
> > 
> > That would help hooking the script into the build system.
> 
> --




