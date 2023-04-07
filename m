Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 82F616DB035
	for <lists+linux-man@lfdr.de>; Fri,  7 Apr 2023 18:08:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229704AbjDGQIp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Apr 2023 12:08:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45870 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230303AbjDGQIo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Apr 2023 12:08:44 -0400
Received: from stravinsky.debian.org (stravinsky.debian.org [IPv6:2001:41b8:202:deb::311:108])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7266230FB
        for <linux-man@vger.kernel.org>; Fri,  7 Apr 2023 09:08:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
        s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Transfer-Encoding:
        Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
        Reply-To:Content-ID:Content-Description;
        bh=lzZinMxP0taHN64r+JzXshH+ECEsPuHpnL1ML2QTf7Q=; b=W2YEt2RrdrGENV9n+Kumy5H2Vf
        eltcq8PF/xC2+GTO9WZz3qONHXd/bPJF9MjYdWju16EGO69iWcxkPEjLJWxmsXBnLDqYOW4OdJ7zE
        w4XKVtOo7yYr0AoVRBQtxC/lppzSvaoHTo0pt+6EfqY71wZNbOh3QvYJQYS7vtTP/sjUdHGczIwGw
        CUSVpHhoI9zL0slziz3/AfxQ9N8HlU50NfYBvUt3ueHk/ZLHcBbL2iH+MXtvXepvo3UY7siQnAjK7
        eCj7kHpJ2HY0bY3D+IbH6uO7ojJYA/6kdkxmSoBGwrf8pAzVUkkFIQ60QhBr5LaJONJYcwfPuZI5Y
        m07Yoh8g==;
Received: from authenticated user
        by stravinsky.debian.org with esmtpsa (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (Exim 4.94.2)
        (envelope-from <cjwatson@debian.org>)
        id 1pkodD-00CslO-BM; Fri, 07 Apr 2023 16:08:07 +0000
Received: from ns1.rosewood.vpn.ucam.org ([172.20.153.2] helo=riva.ucam.org)
        by riva.rosewood.vpn.ucam.org with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <cjwatson@debian.org>)
        id 1pkodB-00B79q-Fa; Fri, 07 Apr 2023 17:08:05 +0100
Date:   Fri, 7 Apr 2023 17:08:04 +0100
From:   Colin Watson <cjwatson@debian.org>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Eli Zaretskii <eliz@gnu.org>, alx.manpages@gmail.com,
        dirk@gouders.net, linux-man@vger.kernel.org, help-texinfo@gnu.org,
        groff@gnu.org
Subject: Re: man page rendering speed (was: Playground pager lsp(1))
Message-ID: <ZDA/5MFwtljBigBl@riva.ucam.org>
Mail-Followup-To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Eli Zaretskii <eliz@gnu.org>, alx.manpages@gmail.com,
        dirk@gouders.net, linux-man@vger.kernel.org, help-texinfo@gnu.org,
        groff@gnu.org
References: <ghileoo9dk.fsf@gouders.net>
 <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com>
 <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com>
 <20230407021822.3grfnenicwjhdive@illithid>
 <83fs9cp5b9.fsf@gnu.org>
 <20230407144319.iju3v3os2a7kngp2@illithid>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230407144319.iju3v3os2a7kngp2@illithid>
X-Debian-User: cjwatson
X-Spam-Status: No, score=-2.5 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_NONE,UNPARSEABLE_RELAY autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, Apr 07, 2023 at 09:43:19AM -0500, G. Branden Robinson wrote:
> At 2023-04-07T09:36:10+0300, Eli Zaretskii wrote:
> > > From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
> [re-running *roff when a viewing a man page and resizing the terminal]
> > > Seems like it shouldn't be impossible to me, but what I imagine
> > > would require a little reëngineering of man(1), perhaps to spawn a
> > > little custom program to manage zcat/nroff pipeline it constructs.
> > > This little program's sole job could be to be aware of this pipeline
> > > and listen for SIGWINCH; if it happens, kill the rest of the
> > > pipeline and reëxecute it.

I didn't see the rest of the thread, but one significant complexity here
would be interacting with the pager to arrange for the viewing position
to be returned to where it was pre-SIGWINCH; bear in mind that the pager
is user-configurable (less(1) is common but not universal) and isn't
directly part of man(1).

> > This should be possible, but it flies in the face of the feature
> > whereby formatted man pages are kept for future perusal, which is
> > therefore faster:
> 
> You're referring to cat pages.  As far as I know, these are on their way
> out if not already gone.  Colin Watson, who has maintained the man-db
> implementation of man(1)[1] for something like 20 years, can speak more
> authoritatively to this, but as I understand it, the advent of resizable
> xterm windows started to kill the utility of cat pages decades ago and
> the increasing importance of desktop environments accelerated their
> demise.

Another major change in that period was the general though gradual move
to UTF-8, making it somewhat unclear for some time which encoding should
be preferred when rendering cat pages.  (Since 2010, man-db always saves
cat pages in UTF-8 and converts to the proper encoding at display time,
but it took a while to settle on this approach and in the meantime there
were perhaps four or five years when cat pages were commonly unavailable
in practice.  Even then, very few people cared enough to complain.)

Furthermore, the traditional approach to saving system-wide cat pages
involved having man(1) be set-id.  From a modern standpoint, this was
obviously problematic, and it caused both security vulnerabilities and
more ordinary bugs.  There are ways in which this might have been
rearranged to be less of a serious problem, but if you can avoid
bothering with set-id at all then that's clearly safer.

My general approach to cat pages for at least the last ten years has
been to put as little effort into them as possible.  This has so far
included not outright removing support for them (since dealing with the
resulting support load, even if small, would itself be effort), but if
an improvement to man(1) has some kind of degradation of cat pages as a
side-effect then I usually won't hesitate to make it anyway.

> ...which brings me to the other factor, of which I'm more confident: man
> page rendering times are much lower than they were in Unix's early days.

Indeed, and it's been the case for at least a decade that rendering
times have been short enough that they can largely be considered
negligible.  (For most of that time my own equipment has not been
particularly on the bleeding edge of performance.)

> The bottom line is that, even on BSD systems (where mdoc(7) is preferred
> to man(7)), a user can expect a man page to render from *roff source in
> less than, say, half a second in the worst case, and the median
> GNU/Linux user can expect to start reading a man page "instantaneously":

The other thing to note explicitly here is that what normally matters
most is the time to _start_ reading, not the time to render the whole
page.  My usual example for where this makes a difference is zshall(1),
which is a concatenation of several other pages and comes to about 30000
lines of 80-column rendered output; on my system this takes about 0.6
seconds to render in its entirety, but typing "man zshall" nevertheless
shows the first page subjectively instantaneously.

-- 
Colin Watson (he/him)                              [cjwatson@debian.org]
