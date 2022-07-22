Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 879F757D7D9
	for <lists+linux-man@lfdr.de>; Fri, 22 Jul 2022 02:45:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233727AbiGVAph (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 21 Jul 2022 20:45:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229671AbiGVApg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 21 Jul 2022 20:45:36 -0400
X-Greylist: delayed 1349 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Thu, 21 Jul 2022 17:45:34 PDT
Received: from stravinsky.debian.org (stravinsky.debian.org [IPv6:2001:41b8:202:deb::311:108])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CEC8020BC2
        for <linux-man@vger.kernel.org>; Thu, 21 Jul 2022 17:45:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
        s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
        References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description;
        bh=u8zlBoit/oqMOa6XPHAEzFRK6oPSabMDwmDHz6cSnl0=; b=JZKPtOx5SJm629AreyRVaAKIpm
        qdhiFCvMZL3pldXbmaJd2titUU9QN8HV2Rb8Tea6voOUVjVAyHk2wsAjMn51ZWFG7gokXN5veReVV
        RSxGozOYqVZBwN/E6HSAyI9dDeOQ6XlFhcWPBEt3XqDhMmoiL7IsaxYvqXmPHF3nNgvjwHvuEqiD8
        cGno+aUDinM7iSWtqSzDcb16zL7+EE7xbm2QMgZ3J5xM5J5PZMrfsjqLPmTmdFSFH0YFzGQqUoGD0
        /rUl6Ft5156lmH6b1haFsFxdBVbJcBvPhv9T7pmhWfTsW+N7aEVnZj8fHZnJkxOsJ5GuAJF+WngmK
        P/ITP+jA==;
Received: from authenticated user
        by stravinsky.debian.org with esmtpsa (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (Exim 4.94.2)
        (envelope-from <cjwatson@debian.org>)
        id 1oEgRY-00BvRQ-9d; Fri, 22 Jul 2022 00:23:00 +0000
Received: from ns1.rosewood.vpn.ucam.org ([172.20.153.2] helo=riva.ucam.org)
        by riva.rosewood.vpn.ucam.org with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <cjwatson@debian.org>)
        id 1oEgRW-003GQu-8G; Fri, 22 Jul 2022 01:22:58 +0100
Date:   Fri, 22 Jul 2022 01:22:57 +0100
From:   Colin Watson <cjwatson@debian.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Ingo Schwarze <schwarze@usta.de>,
        linux-man <linux-man@vger.kernel.org>, groff <groff@gnu.org>
Subject: Re: All caps .TH page title
Message-ID: <Ytnt4dPmkrPmL1Sh@riva.ucam.org>
Mail-Followup-To: Alejandro Colomar <alx.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Ingo Schwarze <schwarze@usta.de>,
        linux-man <linux-man@vger.kernel.org>, groff <groff@gnu.org>
References: <66c19a09-ef0f-0d85-0380-37a67ac483dd@gmail.com>
 <20220721183620.hdvgwwef66hmrgln@illithid>
 <1e1f9197-a013-0d6b-6bfa-853fe28102cf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1e1f9197-a013-0d6b-6bfa-853fe28102cf@gmail.com>
X-Debian-User: cjwatson
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,
        SPF_NONE,UNPARSEABLE_RELAY autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, Jul 22, 2022 at 01:16:49AM +0200, Alejandro Colomar wrote:
> On 7/21/22 20:36, G. Branden Robinson wrote:
> > At 2022-07-21T16:29:21+0200, Alejandro Colomar wrote:
> > > Also, does it have any functional implications?  I'm especially
> > > interested in knowing if that may affect in any way the ability of
> > > man(1) to find a page when invoked as `man TIMESPEC` for example.
> > 
> > My understanding is that mandb(8) indexes based solely on the second
> > argument to the `TH` macro call and (what it interprets as) the contents
> > of the "Name" (or "NAME") section of the page.  It parses *roff itself
> > as best it can to determine this.  So the fact that the _first_ argument
> > to `TH` might be in full caps doesn't deter it.  (It might in fact have
> > made mandb(8) authors' job easier if an "honest lettercase" practice had
> > arisen back in the day--but it didn't).
> 
> Okay.
> 
> > Since he's a mandb(8) author/maintainer, I would again defer to Colin
> > Watson's knowledge and expertise in this area.
> 
> Added to CC, in case he wants to intervene.

The above is not quite correct.  man-db doesn't index on the .TH section
at all, and I don't believe I've encountered the practice of doing so in
other indexers (I could be wrong, but I think that's something I would
have remembered if I'd noticed it).  Rather, it parses the "NAME" (or
"Name", or a number of localized variants) section of pages using the
man macro set for "foo \- description" lines and uses the left-hand side
of those for page names, or equivalently looks for .Nm requests in pages
using the mdoc macro set.

With the exception of handling localized variants of that section name,
which is a pretty ugly pile of special cases, I believe this to be
fairly traditional behaviour.  I can't say I would have done it that way
if I'd been designing the system from scratch since it really involves
far too much half-arsed parsing, but it seemed to be the usual thing to
do when I came on the scene.

Changing the arguments to .TH won't bother man-db at all.

> > > I'm not saying necessarily that I'd like to keep that behavior.  I
> > > wouldn't mind breaking it, if it means that users will be able to
> > > differentiate upper- and lowercase pages.  We're not in Windows (nor
> > > MacOS), anyway.

man-db's man(1) performs case-insensitive lookups by default, which I've
found to be more useful behaviour.  Case-sensitive lookup can be
requested using the -I/--match-case option.

As far as I know this was an innovation when I introduced it in 2002, so
I don't know how widespread this behaviour is among man(1)
implementations.  You probably can't rely on it.

But in any case, as above, changing the arguments to .TH doesn't affect
this.  I haven't noticed it being widespread practice to spuriously
capitalize the name part of lines in the "NAME" section.

Cheers,

-- 
Colin Watson (he/him)                              [cjwatson@debian.org]
