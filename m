Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EC700639924
	for <lists+linux-man@lfdr.de>; Sun, 27 Nov 2022 02:58:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229453AbiK0B63 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 26 Nov 2022 20:58:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229459AbiK0B62 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 26 Nov 2022 20:58:28 -0500
X-Greylist: delayed 48284 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sat, 26 Nov 2022 17:58:22 PST
Received: from smarthost01b.sbp.mail.zen.net.uk (smarthost01b.sbp.mail.zen.net.uk [212.23.1.3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4625D65B2
        for <linux-man@vger.kernel.org>; Sat, 26 Nov 2022 17:58:22 -0800 (PST)
Received: from [82.71.22.80] (helo=pip.localnet)
        by smarthost01b.sbp.mail.zen.net.uk with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.90_1)
        (envelope-from <deri@chuzzlewit.myzen.co.uk>)
        id 1oz6vy-0000dt-7n; Sun, 27 Nov 2022 01:58:18 +0000
From:   Deri <deri@chuzzlewit.myzen.co.uk>
To:     Paul Eggert <eggert@cs.ucla.edu>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>, groff <groff@gnu.org>
Subject: Re: Doubts about a typo fix
Date:   Sun, 27 Nov 2022 01:58:17 +0000
Message-ID: <111395619.nniJfEyVGO@pip>
In-Reply-To: <20221126215604.p3un3a4hxf32h24p@illithid>
References: <842adff8-8d8c-b189-8e6c-34be111b8b19@gmail.com> <f406b9fd-8c2b-3ea2-d956-086442abfc00@cs.ucla.edu> <20221126215604.p3un3a4hxf32h24p@illithid>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Originating-smarthost01b-IP: [82.71.22.80]
Feedback-ID: 82.71.22.80
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Saturday, 26 November 2022 21:56:04 GMT G. Branden Robinson wrote:
> Deri, can you help me come up with a list of things that will break when
> running ps2pdf over a PostScript document?  PDFs produced that way will
> have no CMap.  What will happen to PS documents that use the SS or ZDR
> fonts?  Will anything to do with paper format or orientation be
> affected?

I think Peter has a section in the using mom for pdfs documentation.

Cheers

Deri



