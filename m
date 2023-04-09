Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F0E106DBFD5
	for <lists+linux-man@lfdr.de>; Sun,  9 Apr 2023 14:29:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229580AbjDIM3Y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 Apr 2023 08:29:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229579AbjDIM3X (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 Apr 2023 08:29:23 -0400
Received: from stravinsky.debian.org (stravinsky.debian.org [IPv6:2001:41b8:202:deb::311:108])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9257B3C0D
        for <linux-man@vger.kernel.org>; Sun,  9 Apr 2023 05:29:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
        s=smtpauto.stravinsky; h=X-Debian-User:In-Reply-To:Content-Type:MIME-Version:
        References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
        Content-Transfer-Encoding:Content-ID:Content-Description;
        bh=CqPQe4R6vkGpbwAQjoWh8bRp0wGvVAk7NHzz9kNdOo4=; b=I8PCLeas2Rk/Y+9+8FUcK1uyQn
        FsQns1zLKFeJFh00g8OVqDYJsHuBtGwI4+UbWZzv/05ae0QQznofUKAqKZM9CQk8fOoge+99BcUd0
        qXlP7n3d+nkJa84tKJIXNN52c8sqIhCS4TQkx/X6MKFnQmOWULso3VAOSZIP2sAcU5z/9kBqae/fU
        ksnWy1AmMbZE/A2RFxy7ARSsPjCYg+hYW4HvyxV1BuQf3MYS9JSak1Up3W+XgBP8QSp+T6fSAlFXt
        lF6nXdvRfHIuc7VMTEpp7sPNmAbtP8vW14P374qhZrqsyOkxKFZnF9aqnYfWy6xPMUzg2f97MgYQj
        QwTdUG6w==;
Received: from authenticated user
        by stravinsky.debian.org with esmtpsa (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (Exim 4.94.2)
        (envelope-from <cjwatson@debian.org>)
        id 1plUAU-00EVUs-Ml; Sun, 09 Apr 2023 12:29:14 +0000
Received: from ns1.rosewood.vpn.ucam.org ([172.20.153.2] helo=riva.ucam.org)
        by riva.rosewood.vpn.ucam.org with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <cjwatson@debian.org>)
        id 1plUAS-00GHU7-7m; Sun, 09 Apr 2023 13:29:12 +0100
Date:   Sun, 9 Apr 2023 13:29:11 +0100
From:   Colin Watson <cjwatson@debian.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Alexis <flexibeast@gmail.com>, groff@gnu.org,
        linux-man <linux-man@vger.kernel.org>,
        Ingo Schwarze <schwarze@usta.de>,
        Dirk Gouders <dirk@gouders.net>, Sam James <sam@gentoo.org>,
        Ralph Corderoy <ralph@inputplus.co.uk>
Subject: Re: Compressed man pages (was: Accessibility of man pages (was:
 Playground pager lsp(1)))
Message-ID: <ZDKvl/7YgzpZ8Bix@riva.ucam.org>
Mail-Followup-To: Alejandro Colomar <alx.manpages@gmail.com>,
        Alexis <flexibeast@gmail.com>, groff@gnu.org,
        linux-man <linux-man@vger.kernel.org>,
        Ingo Schwarze <schwarze@usta.de>, Dirk Gouders <dirk@gouders.net>,
        Sam James <sam@gentoo.org>, Ralph Corderoy <ralph@inputplus.co.uk>
References: <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com>
 <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com>
 <83sfddqvk3.fsf@gnu.org>
 <390c8bba-6089-b006-eaf1-9fcfda2c6c4b@gmail.com>
 <837cumonv9.fsf@gnu.org>
 <78ca213f-8723-dccb-e131-081400c28e5d@gmail.com>
 <87a5zhwntt.fsf@ada>
 <c6e9eb6a-a2ba-1de1-211f-bc6ccc3f7a9a@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c6e9eb6a-a2ba-1de1-211f-bc6ccc3f7a9a@gmail.com>
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

On Sun, Apr 09, 2023 at 02:05:08PM +0200, Alejandro Colomar wrote:
> Important note: Sam, are you sure you want your pages compressed
> with bz2?  Have you seen the 10 seconds it takes man-db's man(1) to
> find a word in the pages?  I suggest that at least you try to
> reproduce these tests in your machine, and see if it's just me or
> man-db's man(1) is pretty bad at non-gz pages.

man-db is significantly slower with bzip2 than gzip these days, because
much of the performance work I did in 2.10.0 only applies to gzip:
there's in-process support for decompressing gzip, but we use
subprocesses for bzip2.  IMO the relatively small difference in
compressed size doesn't justify the effort of building in-process
support for multiple compression algorithms.  I recommend that
distributions just use gzip; but if distributions _really_ want to use
something else for whatever reason, then perhaps they should contribute
code to man-db to ensure similar performance to gzip.  I'm happy to give
pointers if there's a sufficiently compelling reason to make it worth
the effort.

> -  man-db's man(1) is slower with plain man(7) source than with .gz
>    pages for some misterious reason.

Maybe CPU is sufficiently cheaper than I/O that the fact of reading less
data from disk dominates.


(Can I request that any concrete actions that need to be taken based on
this thread be split out to separate bug reports or something, please?
This thread is long and I don't really want to have lots of meandering
discourse in my inbox going back over the tired old man vs. info debate
or whatever, but if there are actual things I need to fix in man-db then
I'd rather not miss them.)

-- 
Colin Watson (he/him)                              [cjwatson@debian.org]
