Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0A90F6DBA6F
	for <lists+linux-man@lfdr.de>; Sat,  8 Apr 2023 13:34:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230177AbjDHLe1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Apr 2023 07:34:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229614AbjDHLeZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Apr 2023 07:34:25 -0400
X-Greylist: delayed 569 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sat, 08 Apr 2023 04:34:24 PDT
Received: from relay05.pair.com (relay05.pair.com [216.92.24.67])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 681E5C650
        for <linux-man@vger.kernel.org>; Sat,  8 Apr 2023 04:34:24 -0700 (PDT)
Received: from orac.inputplus.co.uk (unknown [87.112.67.239])
        by relay05.pair.com (Postfix) with ESMTP id 53D261A17CD;
        Sat,  8 Apr 2023 07:24:54 -0400 (EDT)
Received: from orac.inputplus.co.uk (orac.inputplus.co.uk [IPv6:::1])
        by orac.inputplus.co.uk (Postfix) with ESMTP id 778732083C;
        Sat,  8 Apr 2023 12:24:53 +0100 (BST)
From:   Ralph Corderoy <ralph@inputplus.co.uk>
To:     linux-man@vger.kernel.org, groff@gnu.org
cc:     Eli Zaretskii <eliz@gnu.org>, alx.manpages@gmail.com,
        dirk@gouders.net, Colin Watson <cjwatson@debian.org>
Subject: Re: man page rendering speed (was: Playground pager lsp(1))
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
In-reply-to: <20230407144319.iju3v3os2a7kngp2@illithid>
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net> <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <834jpuuc1a.fsf@gnu.org> <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com> <20230407021822.3grfnenicwjhdive@illithid> <83fs9cp5b9.fsf@gnu.org> <20230407144319.iju3v3os2a7kngp2@illithid>
Date:   Sat, 08 Apr 2023 12:24:53 +0100
Message-Id: <20230408112453.778732083C@orac.inputplus.co.uk>
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

> You're referring to cat pages.  As far as I know, these are on their
> way out if not already gone.

catman must die.  It was never a good solution to the problem.  As well
as ignoring different TERMs, it also didn't handle a user's variations
to a terminal's definition.  I'm glad to see Colin is open to the idea,
though accept it's initial and on-going work for him.

> On my system, all groff man pages but one render in between a tenth and
> a fortieth of a second.

Colin made the point I was going to make: how long must my eyeballs wait
to be pleasured?

    $ strace -ttt -fe read,write -o /tmp/st man ffmpeg-all
    $ cat /tmp/st
 →  19788 1680952657.119429 read(3, "\177ELF\2\1\1\0\0\0\0\0\0\0\0\0\3\0>\0\1\0\0\0  \0\0\0\0\0\0"..., 832) = 832
    ...
    19801 1680952658.350823 write(1, "FFMPEG-ALL(1)                   "..., 1023 <unfinished ...>
    19801 1680952658.352054 <... write resumed>) = 1023
    19801 1680952658.353074 write(1, "ified by a plain output url.\33[m\n"..., 1023 <unfinished ...>
    19801 1680952658.353357 <... write resumed>) = 1023
    19801 1680952658.354272 write(1, "e command line multiple times. E"..., 1023) = 1023
    19801 1680952658.357171 write(1, "aw input files.\33[m\n\33[m\n\33[1mDETAI"..., 1009) = 1009
    19801 1680952658.357478 read(0, "--- | encoded data | <----+\n    "..., 4096) = 4096
    19801 1680952658.358752 write(1, "               | output | <-----"..., 1023) = 1023
    19801 1680952658.359556 write(1, "peg\33[0m can process raw audio an"..., 574) = 574
 →  19801 1680952658.359735 read(3,  <unfinished ...>
    ...
    19801 1680952662.323859 <... read resumed>"q", 1) = 1
    ...
    $

    1680952658.359735 - 1680952657.119429 = 1.240306

strace adds a bit of overhead.

    $ PAGER=true time -p man ffmpeg-all
    real 0.99
    user 1.07
    sys 0.15
    $

Hard to find a slower CPU.

    $ grep name /proc/cpuinfo | uniq -c
          4 model name      : Intel(R) Atom(TM) CPU D525   @ 1.80GHz

-- 
Cheers, Ralph.
