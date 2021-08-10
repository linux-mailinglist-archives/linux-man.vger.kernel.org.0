Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7C2493E85B7
	for <lists+linux-man@lfdr.de>; Tue, 10 Aug 2021 23:54:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231372AbhHJVyX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 10 Aug 2021 17:54:23 -0400
Received: from out2-smtp.messagingengine.com ([66.111.4.26]:38277 "EHLO
        out2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234156AbhHJVyC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 10 Aug 2021 17:54:02 -0400
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
        by mailout.nyi.internal (Postfix) with ESMTP id 0662D5C00EA;
        Tue, 10 Aug 2021 17:53:29 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Tue, 10 Aug 2021 17:53:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tycho.pizza; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm3; bh=kPLQ6hl5Lf7mNICSMa202SNNrlo
        WXjZjBEpDhuGhFD4=; b=6UR5BQqHZIqByFBieC7IBsaw1OPSSTiCqirkrmPBfvT
        m1ot4x3KAbLtoTmoQ+gTLq+3esWa1LAR6U5pTwBh/hbNIwAanCwdLnF1jA8TupC3
        BKB+WB/lP9yZAfMO5NHVR39t6ngPPgzn5o+Hu4ytA6GGVWeUveIwCrrCHUzH8Z27
        t85+jaL218e4UGGFCs/v+0mT5bz5WA1vQ8gGQ43mkuND91OhyrHdCjU9aanp0JjK
        WisjLxQzQoeldIBwqoR/QdGI9evmyGN1ak9jPNXfRcQvOFjBFgMbDAYv5pgKHhkw
        Gh7YTm8mI18999kLV5ULD+lTeDUpZ1BAc7qvuMBVOHw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=kPLQ6h
        l5Lf7mNICSMa202SNNrloWXjZjBEpDhuGhFD4=; b=rT8BVV5SgW5W1z4GYYIGoa
        PvQCNazs+JaQWUvq+AkTx38ajlaOV2ZYsAvZ5KLPIRI7Uu0DxiRN33yD/Nt64tb2
        dS+L/akdAvgQcLqs2KCKBcYxrtGTNnWNK+e2jPvZS5mis1BJGCcm4KI690z7r4Ll
        fN958+jGgHndlo8nqUb13skoHMbXPmYtRsVq/AWxZMx87DzbGA4G6sRwitu3pKVg
        aBtkwjjToX/CDkPoz59a0EdPcsj4V6sVzQbR4xxEiZJw8Tge0ohX8wZh5tRZ79C9
        7topDYvdah39Z/7xM4yjzeoHA3Qg0OpY9MCONP8NjLkH5YEKP24XSp3UlRUq4dcg
        ==
X-ME-Sender: <xms:WPUSYdjTAvi3-jtUi6ig-jhkH18VmLJ4ypkR4pESHdUdXWF3mMVNPA>
    <xme:WPUSYSBfngYlFum795VxStkw0TzcPMoXPSTpIPhvPulKEfqDjKman9-v7R3FYTbPd
    bSjsZXsPhpUdkl9kQA>
X-ME-Received: <xmr:WPUSYdGYxYMMg-A_HP3_-uxKYnfCCg54x7XTHSZqaYgcv7_jfAy1_PYs>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrkedtgddtudcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepvfihtghhohcu
    tehnuggvrhhsvghnuceothihtghhohesthihtghhohdrphhiiiiirgeqnecuggftrfgrth
    htvghrnhepgeekfeejgeektdejgfefudelkeeuteejgefhhfeugffffeelheegieefvdfg
    tefhnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepth
    ihtghhohesthihtghhohdrphhiiiiirg
X-ME-Proxy: <xmx:WPUSYSRD_QX2_SrtJNoEg6Nyz5tXEWexSt6aC4TsiHbYYRAzqw7xpg>
    <xmx:WPUSYayym3Bb-dUGSjYHP5Mvjx2QRshzDkv8IvluoxaPOunbQQcCyg>
    <xmx:WPUSYY43SDTh-rWlwUdrgqmm9tINiX4kBd3G42QaKTyT34PJ51V7Aw>
    <xmx:WfUSYQaf5MMQlh71Tv22BXzMZhuMo_0Uwmq-2dpGeAoM-AbeL1XRAA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 10 Aug 2021 17:53:28 -0400 (EDT)
Date:   Tue, 10 Aug 2021 15:53:26 -0600
From:   Tycho Andersen <tycho@tycho.pizza>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH] fsync: note syncfs in in SEE ALSO
Message-ID: <YRL1VsIILyydhL9v@cisco>
References: <20210728181603.2694191-1-tycho@tycho.pizza>
 <daad13cb-384f-13b3-9fc2-fc4ee10afd33@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <daad13cb-384f-13b3-9fc2-fc4ee10afd33@gmail.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Aug 10, 2021 at 11:34:27PM +0200, Michael Kerrisk (man-pages) wrote:
> Hi Tycho,
> 
> On 7/28/21 8:16 PM, Tycho Andersen wrote:
> > I didn't know about this syscall until just now somehow, but it seems
> > reasonable to mention it in the fsync.
> > 
> > Signed-off-by: Tycho Andersen <tycho@tycho.pizza>
> > ---
> >  man2/fsync.2 | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/man2/fsync.2 b/man2/fsync.2
> > index 0f070ed2c..32238dc07 100644
> > --- a/man2/fsync.2
> > +++ b/man2/fsync.2
> > @@ -200,6 +200,7 @@ to guarantee safe operation.
> >  .BR pwritev (2),
> >  .BR sync (2),
> >  .BR sync_file_range (2),
> > +.BR syncfs (2),
> >  .BR fflush (3),
> >  .BR fileno (3),
> >  .BR hdparm (8),
> > 
> > base-commit: fbe71b1b79e72be3b9afc44b5d479e7fd84b598a
> 
> I'm hesitant about this. syncfs(2) is documented in the sync(2)
> page, which is already in SEE ALSO. Knowing that, do you still
> think this patch has benefit?

Yes, it's one less indirection. I've opened the sync man page many
times and somehow never noticed it there :). Feel free to drop the
patch, though. I don't feel particularly strongly about it.

Tycho
