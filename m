Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A3117639844
	for <lists+linux-man@lfdr.de>; Sat, 26 Nov 2022 22:28:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229480AbiKZV2u convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Sat, 26 Nov 2022 16:28:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40890 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229453AbiKZV2u (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 26 Nov 2022 16:28:50 -0500
X-Greylist: delayed 500 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sat, 26 Nov 2022 13:28:48 PST
Received: from sdaoden.eu (sdaoden.eu [217.144.132.164])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A60F6140AE
        for <linux-man@vger.kernel.org>; Sat, 26 Nov 2022 13:28:48 -0800 (PST)
Received: from kent.sdaoden.eu (kent.sdaoden.eu [192.0.2.2])
        by sdaoden.eu (Postfix) with ESMTPS id 4DCDF16059;
        Sat, 26 Nov 2022 22:20:24 +0100 (CET)
Received: by kent.sdaoden.eu (Postfix, from userid 1000)
        id 086B7AE2FD; Sat, 26 Nov 2022 22:20:23 +0100 (CET)
Date:   Sat, 26 Nov 2022 22:20:23 +0100
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From:   Steffen Nurpmeso <steffen@sdaoden.eu>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Paul Eggert <eggert@cs.ucla.edu>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Time zone mailing list <tz@iana.org>,
        linux-man <linux-man@vger.kernel.org>, groff <groff@gnu.org>
Subject: Re: Doubts about a typo fix
Message-ID: <20221126212023.tAYzs%steffen@sdaoden.eu>
In-Reply-To: <20221126035253.pli53qzgfx6tbax5@illithid>
References: <842adff8-8d8c-b189-8e6c-34be111b8b19@gmail.com>
 <20221123214019.6w2cv525fmr3akdr@illithid>
 <b91ea285-22f4-5f13-beb2-b0c74cc4db10@cs.ucla.edu>
 <20221126035253.pli53qzgfx6tbax5@illithid>
Mail-Followup-To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Paul Eggert <eggert@cs.ucla.edu>,
 Alejandro Colomar <alx.manpages@gmail.com>,
 Time zone mailing list <tz@iana.org>,
 linux-man <linux-man@vger.kernel.org>, groff <groff@gnu.org>
User-Agent: s-nail v14.9.24-352-g86dd448049
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT
X-Spam-Status: No, score=2.1 required=5.0 tests=BAYES_50,RCVD_ILLEGAL_IP,
        SPF_HELO_PASS,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: **
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

G. Branden Robinson wrote in
 <20221126035253.pli53qzgfx6tbax5@illithid>:
 |At 2022-11-25T18:18:46-0800, Paul Eggert wrote:
 ...
 |> If we did that, Groff would set a source string like "\*-\*-help" as
 |> "−−help", with two instances of U+2212 MINUS SIGN instead of U+002D
 |> HYPHEN-MINUS. Therefore people couldn't cut and paste code examples
 |> out of HTML or PDF, and into the shell.
 |
 |This hasn't been true for PDFs produced by groff for about 10
 |years.[1][2]  You can copy a U+2212 minus sign and it will paste as a
 |U+002D.

It would be great if groff would release adjustments to grotty so
that one could again use copy+paste also in manuals.  And now
please do not beat me onto that hyphen-minus for options, and that
one should do this or that, but it is for many other characters,
too.  If i look at bash manual for example, hyphen-minus is ok,
but caret is not ^ but U+02C6 MODIFIER LETTER CIRCUMFLEX ACCENT,
and i see U+2018 LEFT SINGLE QUOTATION MARK instead of
single-quotes.  That is cool and maybe milks the shit out of the
typographic capabilities of modern UTF-8 terminal emulators (i
think i quote you here, more or less), but i always have to use
"LC_ALL=C man XY" to enable copy+paste for myself.  But hey, it is
only me, i am not a prof at an University who is prowd of dozens
of Noble price winners and other such prices, many of them still
worth something aka based upon scientific grounds.

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
