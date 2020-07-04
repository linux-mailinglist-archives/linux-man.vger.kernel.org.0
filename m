Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AF6AE214228
	for <lists+linux-man@lfdr.de>; Sat,  4 Jul 2020 02:02:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726455AbgGDACS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 3 Jul 2020 20:02:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726188AbgGDACS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 3 Jul 2020 20:02:18 -0400
Received: from inpost.hi.is (inpost.hi.is [IPv6:2a00:c88:4000:1650::165:62])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2165FC061794
        for <linux-man@vger.kernel.org>; Fri,  3 Jul 2020 17:02:17 -0700 (PDT)
Received: from hekla.rhi.hi.is (hekla.rhi.hi.is [IPv6:2a00:c88:4000:1650::165:2])
        by inpost.hi.is (8.14.7/8.14.7) with ESMTP id 06402C8i001810
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Sat, 4 Jul 2020 00:02:12 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 inpost.hi.is 06402C8i001810
Received: from hekla.rhi.hi.is (localhost [127.0.0.1])
        by hekla.rhi.hi.is (8.14.4/8.14.4) with ESMTP id 06402CSO001814;
        Sat, 4 Jul 2020 00:02:12 GMT
Received: (from bjarniig@localhost)
        by hekla.rhi.hi.is (8.14.4/8.14.4/Submit) id 06402Bc4001813;
        Sat, 4 Jul 2020 00:02:11 GMT
Date:   Sat, 4 Jul 2020 00:02:11 +0000
From:   Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH] man3/*: ffix, change '-' to '\-' for options
Message-ID: <20200704000211.GA1330@rhi.hi.is>
References: <20200701225059.GA26940@rhi.hi.is>
 <47d84128-6235-c1c0-b54e-cf1e87836297@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <47d84128-6235-c1c0-b54e-cf1e87836297@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Jul 02, 2020 at 12:27:25PM +0200, Michael Kerrisk (man-pages) wrote:
> Hello Bjarni,
> 
> On 7/2/20 12:50 AM, Bjarni Ingi Gislason wrote:
> >   Change '-' to '\-' for the prefix of names to indicate an option.
> > 
> > Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
> 
> Patch applied, but:
> 
> > ---
> >  man3/dlopen.3             | 2 +-
> >  man3/fts.3                | 2 +-
> >  man3/getsubopt.3          | 2 +-
> >  man3/insque.3             | 2 +-
> >  man3/mq_getattr.3         | 2 +-
> >  man3/posix_spawn.3        | 8 ++++----
> >  man3/pthread_setname_np.3 | 2 +-
> >  man3/sincos.3             | 2 +-
> >  man3/strfromd.3           | 6 +++---
> 
> The above piece was broken, so I applied manually. Was your patch 
> against master?
> 
  I always use my own copy of the repository where I apply my new
patches to.

  The difference is the non-applied patches to master, that change a
two-fonts macro to a single-font macro for a single argument.

  In this case in the man3/strfromd.3, ".B f" (master has ".BR f").

  So my "git pull" sometimes causes a merge conflict, which is easy for
me to correct.

-- 
Bjarni I. Gislason
