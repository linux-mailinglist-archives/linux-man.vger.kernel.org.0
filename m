Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8835C6B5CC5
	for <lists+linux-man@lfdr.de>; Sat, 11 Mar 2023 15:21:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230193AbjCKOVJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Mar 2023 09:21:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230199AbjCKOU1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Mar 2023 09:20:27 -0500
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06E11305E1
        for <linux-man@vger.kernel.org>; Sat, 11 Mar 2023 06:18:56 -0800 (PST)
Received: from submission (posteo.de [185.67.36.169]) 
        by mout02.posteo.de (Postfix) with ESMTPS id 8F127240344
        for <linux-man@vger.kernel.org>; Sat, 11 Mar 2023 15:18:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
        t=1678544305; bh=+ZbJvXTLkaL5HZ24miqeiJ/RVViVEX/AOfgL5c9qelY=;
        h=Date:Subject:Cc:From:To:From;
        b=MU4S14DxnaFEaz6vQI/g6LoMWTLOC/Nla26oZr8JyS2pOwB6fgupqtw59AewaOKAr
         oUcxqKzHw1828gXPb0ElsF/Wk3RctGrGotcnaM4zZW5m90zsEamoRl6jS5rwRb71cs
         b3CIsVK4b33vXpVEQLfBmx+9GmweIR3/pAGFO5znubOw5mSdpxIe7TCQujORBpXPOB
         8nRt2cQc+LISmfqkpLmIXqGoMKgAGzBKc2wEorTBYt1N598giMWlja/7o96/P1VZLt
         6V1uXls8E1Uz9Lv9zfj1jUZ0TkkCxmyQd9DPxfvW5YJyX5sOKg2r/XjQAWYjSdz1Kk
         snLITR7ah1cbA==
Received: from customer (localhost [127.0.0.1])
        by submission (posteo.de) with ESMTPSA id 4PYlQ85xJkz6trW;
        Sat, 11 Mar 2023 15:18:24 +0100 (CET)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date:   Sat, 11 Mar 2023 14:17:35 +0000
Message-Id: <CR3MA1O55PTL.Z871EDUY4TFS@morphine>
Subject: Re: [PATCH] CONTRIBUTING: tfix
Cc:     <alx@kernel.org>, <alx.manpages@gmail.com>,
        <linux-man@vger.kernel.org>
From:   "Tom Schwindl" <schwindl@posteo.de>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <20230309073900.11503-1-schwindl@posteo.de>
 <20230309152857.usupq3b4ekjhi7pv@illithid>
In-Reply-To: <20230309152857.usupq3b4ekjhi7pv@illithid>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

On Thu Mar 9, 2023 at 4:28 PM CET, G. Branden Robinson wrote:
> [natural language grammar]
>
> Hi Tom,
>
> At 2023-03-09T07:39:00+0000, Tom Schwindl wrote:
> > as I'm not a native speaker, I wonder if the "be" is correct in this
> > context.  I haven't changed it for now because it's likely that it's
> > just me who thinks that this sounds awkward.
> [...]
> >         Please CC any relevant developers and mailing lists that may
> >         know about or be interested in the discussion.
>
> In this respect, English is subject to mechanical analysis to resolve
> the issue.  You will observe the presence of a coordinating conjunction
> ("and" or "or"; there are others but these are by far the most common).
> You can decide the grammar of the sentence by eliminating one of the
> branches of the conjunction.
>
> ...that (may (know about) or (be interested in) the discussion).
>
> Possibly one of the sources of confusion here is that the conjunction is
> applied after the modal auxiliary verb "may".
>
> While that's not non-standard,[1] it does reveal that a recast to more
> clearly apply the coordinating conjunction after the _sub_ordinating
> conjunction "that", as follows.
>
> ...that (may know about) or (may be interested in) the discussion.
>
> The fact that I need fewer pairs of parentheses to suggest the
> recommended parse might indeed recommend it over the former alternative.
>
> Do not underestimate the power of conjunction elimination; I frequently
> use this tool to decide grammatical questions in my own writing.[2]  I
> cannot think of a time that it has led me to an incorrect construction.
>
> Lest anyone feel badly, I note that native English speakers often screw
> up much simpler applications of coordinating conjunctions than this.
>
> *Jackie and me are going to the beach.
> *This discussion is to be kept between you and I.
>
> Both are wrong, wrong, wrong, but you run into them all the time even in
> attempts at formal writing (particularly the latter--people get anxious,
> it seems, and think that this error somehow puts their text into a
> higher register).
>
> Regards,
> Branden
>
> [1] Example: "The market is full of things that you might need or want."
> [2] which can get highfalutin' and florid, to say nothing of loquacious

Thanks for the thorough explanation! I really appreciate it.

--=20
Best Regards,
Tom Schwindl
