Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8B6F464FC6C
	for <lists+linux-man@lfdr.de>; Sat, 17 Dec 2022 22:26:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230042AbiLQV0l (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 17 Dec 2022 16:26:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229675AbiLQV0k (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 17 Dec 2022 16:26:40 -0500
Received: from smarthost01a.sbp.mail.zen.net.uk (smarthost01a.sbp.mail.zen.net.uk [212.23.1.1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69D708FED
        for <linux-man@vger.kernel.org>; Sat, 17 Dec 2022 13:26:37 -0800 (PST)
Received: from [82.71.22.80] (helo=pip.localnet)
        by smarthost01a.sbp.mail.zen.net.uk with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.90_1)
        (envelope-from <deri@chuzzlewit.myzen.co.uk>)
        id 1p6ehW-00013G-Bw; Sat, 17 Dec 2022 21:26:34 +0000
From:   Deri <deri@chuzzlewit.myzen.co.uk>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     groff <groff@gnu.org>, linux-man <linux-man@vger.kernel.org>
Subject: Re: [BUG] gropdf, tbl: Completely broken table (was: Ping^1: Chapters of the manual (was: Bug#1018737: ...))
Date:   Sat, 17 Dec 2022 21:26:33 +0000
Message-ID: <1889004.IobQ9Gjlxr@pip>
In-Reply-To: <20221217160830.rcvgr65axz4hpcge@illithid>
References: <20220906191320.447t5awx3rcb5d5b@illithid> <85c6b38a-be05-806f-528b-fe1c559dc1b7@gmail.com> <20221217160830.rcvgr65axz4hpcge@illithid>
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

On Saturday, 17 December 2022 16:08:30 GMT G. Branden Robinson wrote:
> Hi Alex,
> 
> At 2022-12-17T14:19:55+0100, Alejandro Colomar wrote:
> > Another bug report (but not about the script; this seems to be about
> > tbl(1) interaction with gropdf(1), I guess):
> > 
> > <http://chuzzlewit.co.uk/LinuxManBook.pdf#pdf%3Abm11813>
> 
> The suffixes(7) page, which I've managed to never see in 25 years as a
> GNU/Linux user!  Ah, well.
> 
> Dude, I'm friggin' _trying_ to get groff ready for 1.23.0.rc2 and you
> nerd-snipe me with this huge list of things that hasn't been updated in
> twenty years and has all kinds of fiddly little things wrong with it--
> this of course constitutes an OCD emergency for me!

Hi Alex,

This is a bug in my perl script which assembles the Linux Manpage Book, 
nothing to do with groff, tbl or gropdf, just a bad habit I have of scrubbing 
leading spaces before parsing a line, normally fine, but disastrous when the 
space is intended to protect a full stop being the first character.

For this reason, if you find issues with the book it probably is not relevent 
to the groff list, since it is more likely to be an issue with code which is 
just a few hours old. Any faults, or changes you would like, please send to 
me, since it is not relevent to the groff list.

Cheers 

Deri



