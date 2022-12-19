Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5C1CB650C42
	for <lists+linux-man@lfdr.de>; Mon, 19 Dec 2022 13:58:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231480AbiLSM62 convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Mon, 19 Dec 2022 07:58:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58534 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231292AbiLSM60 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 19 Dec 2022 07:58:26 -0500
Received: from smarthost01a.sbp.mail.zen.net.uk (smarthost01a.sbp.mail.zen.net.uk [212.23.1.1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00B1DF59C
        for <linux-man@vger.kernel.org>; Mon, 19 Dec 2022 04:58:23 -0800 (PST)
Received: from [82.71.22.80] (helo=pip.localnet)
        by smarthost01a.sbp.mail.zen.net.uk with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.90_1)
        (envelope-from <deri@chuzzlewit.myzen.co.uk>)
        id 1p7Fin-0002i1-G0; Mon, 19 Dec 2022 12:58:21 +0000
From:   Deri <deri@chuzzlewit.myzen.co.uk>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     groff <groff@gnu.org>, linux-man <linux-man@vger.kernel.org>
Subject: Re: groff 1.23.0.rc2 status report (was: [BUG] gropdf, tbl: Completely broken table)
Date:   Mon, 19 Dec 2022 12:58:21 +0000
Message-ID: <3244180.VqM8IeB0Os@pip>
In-Reply-To: <20221219053245.j5omcuyxd7rnj4qt@illithid>
References: <20220906191320.447t5awx3rcb5d5b@illithid> <5439523a-4fd1-e0c7-9116-6fd8c2a65c67@gmail.com> <20221219053245.j5omcuyxd7rnj4qt@illithid>
MIME-Version: 1.0
Content-Transfer-Encoding: 8BIT
Content-Type: text/plain; charset="UTF-8"
X-Originating-smarthost01a-IP: [82.71.22.80]
Feedback-ID: 82.71.22.80
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Monday, 19 December 2022 05:32:45 GMT G. Branden Robinson wrote:
> Number three:
> 
> bug #62933: [man] produce hyperlinks in PDF output
> https://savannah.gnu.org/bugs/index.php?62933
> 
> We've got man page cross-reference hyperlinks but, weirdly, not regular
> URL support in groff_man(7).  To my dismay this doesn't appear to be
> trivial.  Whoever came up with the "pdfhref" macro had Unix
> command-line-itis, and constructed an interface that looked like that
> instead of something you might use in a *roff document. 

Hi Branden,

To be fair, he had little choice since the api was designed by adobe:-

https://opensource.adobe.com/dc-acrobat-sdk-docs/acrobatsdk/pdfs/
acrobatsdk_pdfmark.pdf

> The problem is
> that it expects the URL and, particularly, the link text to be macro
> arguments.  This is a violent impedance mismatch with the way groff
> man(7)'s email and web macros were set up to work; they format the link
> text in a diversion.  Diversions and strings are not the same thing.
> (Try putting diversion contents into a device control command and you
> will rapidly be deafened by the screams of a thousand damned "can't
> output node in transparent throughput" souls.)  

The .URL, .MTO and .FTO macros in www.tmac should be easy to convert to using 
.pdfhref, the difficult one is the .UR/.UE pair from an.tmac you are talking 
about.

In order to solve this to get all man pages as fully linked pdfs - I cheated! 
I used a sort of pre-gropdf which changed the mail and email links to pdfhref 
calls. So I don't think I can help much with this. However, this is the code I 
use to "clean" a string, may be helpful:-

.         ds pdf:cleaned \\$*
.         ev pdfcln
.         tr \[em]-
.         nf
.         box pdf:clean
.         nop \\$*
.         fl
.         box
.         chop pdf:clean
.         asciify pdf:clean
.         length pdf:clean:len \\*[pdf:clean]
.         ds pdf:cleaned \\*[pdf:clean]
.         rm pdf:clean
.         ev
.         tr \[em]\[em]

There may be much better ways of doing it!

> So to solve this I have
> to learn crazy stuff about PDFmark hotspots and how their boundaries are
> computed, and then the thought of what happens when the link text
> crosses a trap boundary (like a page break) causes the blood to drain
> from my face.  

Don't worry, the gropdf man page says:-

If you are using page traps to produce headings, footings, etc., you need to 
use these in case a ‘hotspot’ crosses a page boundary, otherwise any text 
output by the heading or footing macro will be marked as part of the ‘hot 
spot’. To stop this happening just place ‘.pdfmarksuspend’ and 
‘.pdfmarkrestart’ at the start and end of the page trap macro, respectively. 
(These are just convenience macros which emit the \X code. These macros must 
only be used within page traps.)

If you look at om.tmac you will see these used in the FOOTER macro. I'm not 
sure how -mpdfmark handles it since these are gropdf extensions.

Cheers

Deri

> At some point I may have to tell Regis I need to phone a
> friend,[3] and I'll crawl to Deri the PDF wizard to knock some clues
> into my head.
> 
> Then, though the bug doesn't say this, I have to do it all over again
> for mdoc(7), because that doesn't have support for this, either.  On the
> bright side, I have a much better grasp of mdoc(7)'s internals than I
> used to, and pretty much everything to do with page location traps is
> the same now anyway, thanks to my incessant meddling^W^W^Wthe problems I
> had to solve to get batch-rendering working.
> 




