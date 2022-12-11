Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 61007649503
	for <lists+linux-man@lfdr.de>; Sun, 11 Dec 2022 16:59:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230157AbiLKP7Q (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 11 Dec 2022 10:59:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230080AbiLKP7P (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 11 Dec 2022 10:59:15 -0500
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com [66.111.4.26])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 089F0BE33
        for <linux-man@vger.kernel.org>; Sun, 11 Dec 2022 07:59:13 -0800 (PST)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailout.nyi.internal (Postfix) with ESMTP id A61745C0095;
        Sun, 11 Dec 2022 10:59:11 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Sun, 11 Dec 2022 10:59:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tycho.pizza; h=
        cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
        :message-id:mime-version:references:reply-to:sender:subject
        :subject:to:to; s=fm1; t=1670774351; x=1670860751; bh=VNQLoqCYPR
        /0QPYlTWYfNrE+pNths3iWIFWsOwiXnd8=; b=crlvPKUU+legFdqpK0gsDGh2cc
        rWbuHaKR8J+fx8Ot/g6o6J8LXjgekaQ/gIo4c3xm6/QAAgcBfU+wJi/y3rlsx2LH
        lzNVJzv/KMfRNWRkI3C2gWOIinl5peJ+336LV35lDfqUGzf/ijU5izSepEve/pbG
        baVPZ7Ac7jseQ+vUYM7F4/kxHbi2s6f2Vl6ucCCjRRtL2A99itD+raAOK5C203Dr
        ZtIadtEzmzh9iDy18V22dSY+SBsiFHmO8Unl4aGeIM8gSJccAhdthuYid6tUboJ2
        toOYQNPG5fY5bl6Il0YVUQDVnQ5fKetuhntakisoEyo2s9KBcdd+27FZ3tHg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
        :feedback-id:from:from:in-reply-to:in-reply-to:message-id
        :mime-version:references:reply-to:sender:subject:subject:to:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm2; t=1670774351; x=1670860751; bh=VNQLoqCYPR/0QPYlTWYfNrE+pNth
        s3iWIFWsOwiXnd8=; b=iMvUflfZ2BJVdFsrJZMRjQSs9D3gQI1ZL4QCcJ8l5Oec
        GaINv2kn2lUNK2IoPCCLV0g0qv2J81AzwvI5o/l+HRq80l3lL0uOdT1vngZ+z6sa
        WYm4tOIryi/0wjppRDY3X8Ve0NEoudCzeJOjIMq4eYR7j2cQ7N8ycJ2RFZVQi0RK
        nr4u3zVcg57OIwb4n/2Go2e/hAZoDWVyQTyX2DtERCyZ/r6aoZ9iES282pgxci3M
        ll3vfLPdL5VAKK4O1vruIhUlEyTJpemzZVdJH1hs0f+LjXEA6EA+diVD58g8+Fe4
        xh8C7jOyXQ+c7gTt3KVo8W/tJEjxX3V43qid5Rm72g==
X-ME-Sender: <xms:T_6VYyMmv3JEhBpwtbyGtoSgaCoeDq-E-TQCUH7SBcGBaex80blmaQ>
    <xme:T_6VYw_L4GHwTTFpBmseBSdGLe9ZofYdPlr8P_XEB5lkDxOA1Vkpu8A7PNawYFjy_
    tOS-TQ_rs3EpwKPPg4>
X-ME-Received: <xmr:T_6VY5RHWs7ayEqbupf4XX9B_tn0h0h_glvkVcwvJxd68-WrylNEYGHFtoElLAY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrvdeigdekvdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvfevuffkfhggtggujgesthdtre
    dttddtvdenucfhrhhomhepvfihtghhohcutehnuggvrhhsvghnuceothihtghhohesthih
    tghhohdrphhiiiiirgeqnecuggftrfgrthhtvghrnhepleevudetgefhheekueekhfduff
    ethfehteeftdfhvefgteelvedvudevteeufeehnecuffhomhgrihhnpehkvghrnhgvlhdr
    ohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hthigthhhosehthigthhhordhpihiiiigr
X-ME-Proxy: <xmx:T_6VYyveEpLIfOOvf--TKXjdfEr52z8-95Kppg2409ZakxBufOoNHA>
    <xmx:T_6VY6f-int9eyjfD2sCTkW905rIHQmXTtHLjpDHS4Kv2kz0-8-YSA>
    <xmx:T_6VY20T049CzurKIJWfYVJxL-W01wmF_zFpHMEGbmegMLnzBfUqfg>
    <xmx:T_6VY7qZAoVmU_7HmX2XSdpCg4pHjYRNCEvgDAyP4d8_aiDxN9-YfA>
Feedback-ID: i21f147d5:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 11 Dec 2022 10:59:10 -0500 (EST)
Date:   Sun, 11 Dec 2022 08:59:10 -0700
From:   Tycho Andersen <tycho@tycho.pizza>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Alejandro Colomar <alx@kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH] socket.7: be explicit that connect(2) respects SO_*TIMEO
Message-ID: <Y5X+Tq25nxFVTroL@tycho.pizza>
References: <20221128205837.2408050-1-tycho@tycho.pizza>
 <a796c0f9-a4bf-bc5d-3953-9c725b53d10e@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a796c0f9-a4bf-bc5d-3953-9c725b53d10e@gmail.com>
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, Dec 09, 2022 at 09:37:35PM +0100, Alejandro Colomar wrote:
> Hi Tycho,
> 
> On 11/28/22 21:58, Tycho Andersen wrote:
> 
> So, yes, I like your patch.  So, patch applied.

Thanks!

> > 
> > Test program for grins:
> > 
> > #include <stdio.h>
> > #include <sys/socket.h>
> > #include <netinet/ip.h>
> > #include <arpa/inet.h>
> 
> BTW, I'm curious, how did you get the headers in the commit
> message?  I always have a space before the # to avoid git
> doing harmful stuff.

I have,

[commit]
    cleanup=scissors

in my ~/.gitconfig, which makes it so that the #s are literals.
According to the man page you can also set core.commentChar to
something else if you like that instead.

> P.S.:  I don't know if you could please review some patches
> about which you may be more familiar than I am.  The are
> somewhat related to this.  They are here:
> 
> <https://lore.kernel.org/linux-man/20221122153027.10943-1-henri.van.de.water@xs4all.nl/T/#t>
> <https://lore.kernel.org/linux-man/2d4d8b7b-5890-cd9f-061d-6d259d8ed6ee@xs4all.nl/T/#t>

Sure, I'm traveling now but will take a look this week.

Tycho
