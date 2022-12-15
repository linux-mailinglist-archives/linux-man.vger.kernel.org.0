Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AB12264E21F
	for <lists+linux-man@lfdr.de>; Thu, 15 Dec 2022 21:08:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231216AbiLOUIc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 15 Dec 2022 15:08:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230508AbiLOUIa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 15 Dec 2022 15:08:30 -0500
Received: from fester.cwi.nl (fester.cwi.nl [192.16.191.27])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2089C1F2D7
        for <linux-man@vger.kernel.org>; Thu, 15 Dec 2022 12:08:28 -0800 (PST)
Received: from localhost (86-83-142-118.fixed.kpn.net [86.83.142.118])
        (authenticated bits=0)
        by fester.cwi.nl (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTPSA id 2BFK8JbQ031950
        (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
        Thu, 15 Dec 2022 21:08:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=cwi.nl; s=default;
        t=1671134900; bh=BOMNqrZ3Q7sw1m2qsCoZVX+62eO/DTrCt0k59repJ4Y=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=uMWhpy74NUmUyeDad3ybAVtZY6AWRnI0W8slp4MenF6RIC8ZR7dCJa9f3dcticacM
         mpzxxTAEUN5kfEdD0yABULn2fuzlm7xo3WaGTtbY5oQvmDVoMDW3/cF78xz/P5fu6D
         TJ52SI3Tj8kAOq3p1kNwioEaVIHWIVEG7bSl6ucE=
Date:   Thu, 15 Dec 2022 21:08:19 +0100
From:   "Andries E. Brouwer" <aeb@cwi.nl>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        "Andries E. Brouwer" <aeb@cwi.nl>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        groff <groff@gnu.org>
Subject: Re: Linux man-pages prehistory
Message-ID: <20221215200819.GA178852@if>
References: <4885c5bc-f7c6-aa32-6d54-5d4529aef811@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4885c5bc-f7c6-aa32-6d54-5d4529aef811@gmail.com>
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
        DKIM_SIGNED,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Dec 15, 2022 at 04:24:31PM +0100, Alejandro Colomar wrote:
> Hi all!
> 
> I'm pleased to announce that there's a new branch in the git repository,
> named 'prehistory', which covers exactly that.

Good! I have one question: did you preserve the time stamps?

> P.S.:  Andries, do you know anything about 1.1?  There's the announce in
> your ftp server, but the tarball is missing.

If man-pages-1.1.tar.gz is missing that means I didnt have it.
In fact I see time stamps in 1993 for those early files,
but 2004 for man-pages-1.1-announced, so I guess I searched
for man-pages-1.1 at that time and found only the announcement.

Andries
