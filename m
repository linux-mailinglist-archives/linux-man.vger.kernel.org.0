Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5EF0D6DAF8E
	for <lists+linux-man@lfdr.de>; Fri,  7 Apr 2023 17:16:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240809AbjDGPQn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Apr 2023 11:16:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240909AbjDGPQ3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Apr 2023 11:16:29 -0400
X-Greylist: delayed 419 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 07 Apr 2023 08:15:59 PDT
Received: from mcvoy.com (mcvoy.com [192.169.23.250])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5FB22B450
        for <linux-man@vger.kernel.org>; Fri,  7 Apr 2023 08:15:59 -0700 (PDT)
Received: by mcvoy.com (Postfix, from userid 3546)
        id E7E1835E921; Fri,  7 Apr 2023 08:08:28 -0700 (PDT)
Date:   Fri, 7 Apr 2023 08:08:28 -0700
From:   Larry McVoy <lm@mcvoy.com>
To:     Eli Zaretskii <eliz@gnu.org>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        alx.manpages@gmail.com, dirk@gouders.net, cjwatson@debian.org,
        linux-man@vger.kernel.org, help-texinfo@gnu.org, groff@gnu.org
Subject: Re: man page rendering speed (was: Playground pager lsp(1))
Message-ID: <20230407150828.GC6199@mcvoy.com>
References: <ghileoo9dk.fsf@gouders.net>
 <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com>
 <834jpuuc1a.fsf@gnu.org>
 <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com>
 <20230407021822.3grfnenicwjhdive@illithid>
 <83fs9cp5b9.fsf@gnu.org>
 <20230407144319.iju3v3os2a7kngp2@illithid>
 <83fs9bohog.fsf@gnu.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <83fs9bohog.fsf@gnu.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Spam-Status: No, score=0.0 required=5.0 tests=SPF_HELO_NONE,SPF_NONE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, Apr 07, 2023 at 06:06:39PM +0300, Eli Zaretskii wrote:
> > Date: Fri, 7 Apr 2023 09:43:19 -0500
> > From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
> > Cc: alx.manpages@gmail.com, dirk@gouders.net, cjwatson@debian.org,
> > 	linux-man@vger.kernel.org, help-texinfo@gnu.org, groff@gnu.org
> > 
> > ...which brings me to the other factor, of which I'm more confident: man
> > page rendering times are much lower than they were in Unix's early days.
> > 
> > On my system, all groff man pages but one render in between a tenth and
> > a fortieth of a second.  The really huge pages like groff(7),
> > groff_char(7), and groff_diff(7) are toward the upper end of this range,
> > because they are long, at ~20-25 U.S. letter pages when formatted for
> > PostScript or PDF, or have many large tables so the tbl(1) preprocessor
> > produces a lot of output.
> > 
> > The outlier is groff_mdoc(7) at just over one-third of a second.
> 
> Some people consider 0.1 sec, let alone 0.3 sec, to be long enough to
> be annoying.

True but try and balance that with what they are trying to do, clean 
things up.  I'm retired so my opinion doesn't count but I think they
are on the right path.
