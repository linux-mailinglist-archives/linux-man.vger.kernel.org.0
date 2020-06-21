Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 84E06202AEF
	for <lists+linux-man@lfdr.de>; Sun, 21 Jun 2020 16:09:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730096AbgFUOJf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 21 Jun 2020 10:09:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730022AbgFUOJf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 21 Jun 2020 10:09:35 -0400
Received: from inpost.hi.is (inpost.hi.is [IPv6:2a00:c88:4000:1650::165:62])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 366C3C061794
        for <linux-man@vger.kernel.org>; Sun, 21 Jun 2020 07:09:35 -0700 (PDT)
Received: from hekla.rhi.hi.is (hekla.rhi.hi.is [IPv6:2a00:c88:4000:1650::165:2])
        by inpost.hi.is (8.14.7/8.14.7) with ESMTP id 05LE9UHQ006251
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Sun, 21 Jun 2020 14:09:31 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 inpost.hi.is 05LE9UHQ006251
Received: from hekla.rhi.hi.is (localhost [127.0.0.1])
        by hekla.rhi.hi.is (8.14.4/8.14.4) with ESMTP id 05LE9UGm027746;
        Sun, 21 Jun 2020 14:09:30 GMT
Received: (from bjarniig@localhost)
        by hekla.rhi.hi.is (8.14.4/8.14.4/Submit) id 05LE9Uhs027745;
        Sun, 21 Jun 2020 14:09:30 GMT
Date:   Sun, 21 Jun 2020 14:09:30 +0000
From:   Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH] man3/*: srcfx, fix warnings from "mandoc -Tlint"
Message-ID: <20200621140930.GA27576@rhi.hi.is>
References: <20200620204349.GA449@rhi.hi.is>
 <f2a4590c-b383-73cd-a92b-873085397937@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f2a4590c-b383-73cd-a92b-873085397937@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sun, Jun 21, 2020 at 09:21:21AM +0200, Michael Kerrisk (man-pages) wrote:
> Hello Bjarni,
> 
> On 6/20/20 10:43 PM, Bjarni Ingi Gislason wrote:
> >   Remove superfluous paragraph macros.
> > 
> >   Remove request ".br" if it precedes a line, that begins with a space,
> > as such lines automatically cause a break.
> > 
> >   There is no change in the output from "nroff" and "groff".
> 
> Thanks. Patch applied, but I had to do some changes manually,
> since the patch wouldn't apply as a whole. The pieces
> 
> >  man3/gethostbyname.3               | 1 -
> >  man3/getrpcent.3                   | 1 -
> >  man3/getsubopt.3                   | 2 --
> >  man3/ilogb.3                       | 1 -
> >  man3/posix_spawn.3                 | 2 --
> 
> were broken, for reasons that were not immediately obvious to me.
> (There was a similar problem in the man2/* patch).
> 

  The issue, as I see it, is the difference in the use of a one-font
macro versus a two-fonts macro for one argument.

  The patches may contain lines with ".[BI] 1argument" while the file
to be patched contains ".[BI]R 1argument".

  I don't know what "git" reports to you, but I get "merge conflict"
for those files that don't fit.

  It is easy to correct with an editor, as "git" marks the place where
the conflict occurs.

-- 
Bjarni I. Gislason
