Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3815D6395FE
	for <lists+linux-man@lfdr.de>; Sat, 26 Nov 2022 13:49:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229546AbiKZMt5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 26 Nov 2022 07:49:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229450AbiKZMt4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 26 Nov 2022 07:49:56 -0500
X-Greylist: delayed 955 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sat, 26 Nov 2022 04:49:54 PST
Received: from queue02a.mail.zen.net.uk (queue02a.mail.zen.net.uk [212.23.3.234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7AC00193E4
        for <linux-man@vger.kernel.org>; Sat, 26 Nov 2022 04:49:54 -0800 (PST)
Received: from [212.23.1.21] (helo=smarthost01b.ixn.mail.zen.net.uk)
        by queue02a.mail.zen.net.uk with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.90_1)
        (envelope-from <deri@chuzzlewit.myzen.co.uk>)
        id 1oyuNZ-0000JF-Q9
        for linux-man@vger.kernel.org; Sat, 26 Nov 2022 12:33:57 +0000
Received: from [82.71.22.80] (helo=pip.localnet)
        by smarthost01b.ixn.mail.zen.net.uk with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.90_1)
        (envelope-from <deri@chuzzlewit.myzen.co.uk>)
        id 1oyuN3-00065Y-Hw; Sat, 26 Nov 2022 12:33:25 +0000
From:   Deri <deri@chuzzlewit.myzen.co.uk>
To:     Paul Eggert <eggert@cs.ucla.edu>, groff@gnu.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Time zone mailing list <tz@iana.org>,
        linux-man <linux-man@vger.kernel.org>, groff <groff@gnu.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: Doubts about a typo fix
Date:   Sat, 26 Nov 2022 12:33:24 +0000
Message-ID: <3226872.5fSG56mABF@pip>
In-Reply-To: <20221126035253.pli53qzgfx6tbax5@illithid>
References: <842adff8-8d8c-b189-8e6c-34be111b8b19@gmail.com> <b91ea285-22f4-5f13-beb2-b0c74cc4db10@cs.ucla.edu> <20221126035253.pli53qzgfx6tbax5@illithid>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Originating-smarthost01b-IP: [82.71.22.80]
Feedback-ID: 82.71.22.80
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Saturday, 26 November 2022 03:52:53 GMT G. Branden Robinson wrote:
> Some distributors do violence to the man.local file.  But I am not a PDF
> expert; for this I'll have to turn as I often do to Deri James, who also
> wrote the gropdf output driver.  Deri, what's a good way to root-cause
> the issue Paul describes?


Whenever there is a query about the "look" of a pdf it is important to rule 
out any vagaries in the particular fonts used by the pdf viewer used, so 
please repeat your tests adding "-P-e" to the command.

As regards the cut and paste of MINUS SIGN as a hyphen, this can be turned off 
by including -P-u as well. Note this will also affect the treatment of 
ligatures (ff/fi/ffi) in that cut and paste will not return them to their 
individual characters. It also affects string searching within the pdf, the 
troff input "\-b" would not be found by entering -b in the pdf viewer's search 
widget. Tested on Branden's minus-and-hyphen.man, with -P-u it finds -baz, 
without it finds both -bar and -baz.

Cheers 

Deri



