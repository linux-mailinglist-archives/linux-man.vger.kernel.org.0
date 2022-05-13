Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BBB6E526AB5
	for <lists+linux-man@lfdr.de>; Fri, 13 May 2022 21:45:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1383928AbiEMTpf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 13 May 2022 15:45:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1383906AbiEMTpc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 13 May 2022 15:45:32 -0400
Received: from brightrain.aerifal.cx (brightrain.aerifal.cx [216.12.86.13])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C71ED73558
        for <linux-man@vger.kernel.org>; Fri, 13 May 2022 12:45:30 -0700 (PDT)
Date:   Fri, 13 May 2022 15:45:27 -0400
From:   Rich Felker <dalias@libc.org>
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Subject: Re: Erroneous text about POSIX in tmpfile(3) man page
Message-ID: <20220513194527.GM7074@brightrain.aerifal.cx>
References: <20220513172929.GA15832@brightrain.aerifal.cx>
 <20220513192945.2ly2kttdhyztmzgy@jwilk.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220513192945.2ly2kttdhyztmzgy@jwilk.net>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, May 13, 2022 at 09:29:45PM +0200, Jakub Wilk wrote:
> * Rich Felker <dalias@libc.org>, 2022-05-13, 13:29:
> >tmpfile.3 contains the following text:
> >
> >NOTES
> >      POSIX.1-2001 specifies: an error message may be written to stdout if
> >      the stream cannot be opened.
> >
> >I can find no such text in POSIX.1-2001 (looking at https://pubs.opengroup.org/onlinepubs/007904975/functions/tmpfile.html)
> >and such an allowance would contradict ISO C which makes no such
> >allowance for it to write to stdout. I'm not sure where this came
> >from but it should probably be removed, or changed to indicate
> >whichever historical implementation wrongly did this if there was
> >one.
> 
> I suppose it's a typo: it should say "stderr", not "stdout".

Indeed. I missed it searching because it doesn't say "stderr" but
spells it out.

This text also clashes with ISO C and should be removed from POSIX;
I'll file an issue about that separately.

Rich
