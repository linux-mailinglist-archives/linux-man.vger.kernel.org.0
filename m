Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B17BE21E04A
	for <lists+linux-man@lfdr.de>; Mon, 13 Jul 2020 20:58:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726338AbgGMS6u (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 13 Jul 2020 14:58:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726321AbgGMS6u (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 13 Jul 2020 14:58:50 -0400
Received: from inpost.hi.is (inpost.hi.is [IPv6:2a00:c88:4000:1650::165:62])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6849C061755
        for <linux-man@vger.kernel.org>; Mon, 13 Jul 2020 11:58:49 -0700 (PDT)
Received: from hekla.rhi.hi.is (hekla.rhi.hi.is [IPv6:2a00:c88:4000:1650::165:2])
        by inpost.hi.is (8.14.7/8.14.7) with ESMTP id 06DIwhUA001848
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Mon, 13 Jul 2020 18:58:43 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 inpost.hi.is 06DIwhUA001848
Received: from hekla.rhi.hi.is (localhost [127.0.0.1])
        by hekla.rhi.hi.is (8.14.4/8.14.4) with ESMTP id 06DIwh7b031867;
        Mon, 13 Jul 2020 18:58:43 GMT
Received: (from bjarniig@localhost)
        by hekla.rhi.hi.is (8.14.4/8.14.4/Submit) id 06DIwhDp031866;
        Mon, 13 Jul 2020 18:58:43 GMT
Date:   Mon, 13 Jul 2020 18:58:43 +0000
From:   Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH] man3/*: ffix, change '-' to '\-' for options
Message-ID: <20200713185843.GA31638@rhi.hi.is>
References: <20200701225059.GA26940@rhi.hi.is>
 <47d84128-6235-c1c0-b54e-cf1e87836297@gmail.com>
 <20200704000211.GA1330@rhi.hi.is>
 <3defbf91-5022-b042-ee2b-779fa5931343@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3defbf91-5022-b042-ee2b-779fa5931343@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Jul 06, 2020 at 10:45:00AM +0200, Michael Kerrisk (man-pages) wrote:
> On 7/4/20 2:02 AM, Bjarni Ingi Gislason wrote:
> > On Thu, Jul 02, 2020 at 12:27:25PM +0200, Michael Kerrisk (man-pages) wrote:
> >> Hello Bjarni,
> >>
> >> On 7/2/20 12:50 AM, Bjarni Ingi Gislason wrote:
> >>>   Change '-' to '\-' for the prefix of names to indicate an option.
> >>>
> >>> Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
> >>
> >> Patch applied, but:
> >>
> >>> ---
> >>>  man3/dlopen.3             | 2 +-
> >>>  man3/fts.3                | 2 +-
> >>>  man3/getsubopt.3          | 2 +-
> >>>  man3/insque.3             | 2 +-
> >>>  man3/mq_getattr.3         | 2 +-
> >>>  man3/posix_spawn.3        | 8 ++++----
> >>>  man3/pthread_setname_np.3 | 2 +-
> >>>  man3/sincos.3             | 2 +-
> >>>  man3/strfromd.3           | 6 +++---
> >>
> >> The above piece was broken, so I applied manually. Was your patch 
> >> against master?
> >>
> >   I always use my own copy of the repository where I apply my new
> > patches to.
> 
> Please don't. When I've rejected particular changes (as below),
> for reasons that I already explained (several times), then basing
> your patches on private repo that still has those changes will
> just cause breakage and wasted time for me. Please base patches
> off a pristine master.
> 
  I do not support bad, wrong decisions.

  I do not support misuse.

  Your "trouble" is a direct consequence of your decisions.

  I have already answered your "explanations".

####

  "Since breaking out of bad habits, rather than acquiring new
ones, is the toughest part of learning we must expect from that
system permanent mental damage for most students exposed to
it."

Page xxxvii in:

On the Cruelty of Really Teaching Computing Science

Edsger W. Dykstra (Dijkstra)

SIGCSE Bulletin 1989, 21(1), pages xxv-xxxix.
Also "www.cs.utexas.edu/users/EWD/"

###

  "The problems of the real world are primarily those you are
left with when you refuse to apply their effective solutions."

Page xxxviii in:

On the Cruelty of Really Teaching Computing Science

Edsger W. Dykstra (Dijkstra)

SIGCSE Bulletin 1989, 21(1), pages xxv-xxxix.
Also "www.cs.utexas.edu/users/EWD/"

###

	It is necessary to consider all consequences of
	the proposed action in all states of nature.

There are lots of consequences of any given action.  Many of the
problems of society today are at least partly due to the failure
to realize that the "obvious" action taken had so many bad side
effects.

Herman Rubin in the Usenet forum "misc.education.science".

-- 
Bjarni I. Gislason
