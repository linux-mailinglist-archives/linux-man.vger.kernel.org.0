Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CA4AD5AF07A
	for <lists+linux-man@lfdr.de>; Tue,  6 Sep 2022 18:35:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234983AbiIFQeu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Sep 2022 12:34:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235000AbiIFQeS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Sep 2022 12:34:18 -0400
Received: from smtp-out2.suse.de (smtp-out2.suse.de [IPv6:2001:67c:2178:6::1d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DDB91D0EC
        for <linux-man@vger.kernel.org>; Tue,  6 Sep 2022 09:09:42 -0700 (PDT)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by smtp-out2.suse.de (Postfix) with ESMTPS id 739621F9A8;
        Tue,  6 Sep 2022 16:09:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
        t=1662480580;
        h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
         cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=HX57j0hkU4Et6Se+yt87iNi755l5cJhLxzGdaLL1uE0=;
        b=dxIUEHoaYQrUVAQLiKqIh1OOWYx5rCOJRZzVwrmeZIp7JErjnSGncRuSTdQNBQDyZLnaMm
        FQvFq/RqvKGPxtyKWz0uQCyVpEgGO5RCIi0yODX8M4HDB/cXjyswd3c3kLhgcxi6XfjuXR
        N80DMDkBaR5pjaQZ8parZDhrIUvFhZ4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
        s=susede2_ed25519; t=1662480580;
        h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
         cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=HX57j0hkU4Et6Se+yt87iNi755l5cJhLxzGdaLL1uE0=;
        b=FmBzLxIleZO/iuOAh23DNWQ7j/z707e0cLze7a0NfB28rnR0xUWHUqB9fjldhU5rjA3YHx
        gsCHXNPxlm6YcIAA==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 4789C13A19;
        Tue,  6 Sep 2022 16:09:40 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
        by imap2.suse-dmz.suse.de with ESMTPSA
        id JESFD8RwF2PiLwAAMHmgww
        (envelope-from <pvorel@suse.cz>); Tue, 06 Sep 2022 16:09:40 +0000
Date:   Tue, 6 Sep 2022 18:09:38 +0200
From:   Petr Vorel <pvorel@suse.cz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: Revert 70ac1c478 ("src.mk, All pages: Move man* to man/")
Message-ID: <YxdwwgtQjSOqMkbG@pevik>
Reply-To: Petr Vorel <pvorel@suse.cz>
References: <YxcV4h+Xn7cd6+q2@pevik>
 <f8f6d1ba-5820-d238-4627-446d715fcf6f@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f8f6d1ba-5820-d238-4627-446d715fcf6f@gmail.com>
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_SOFTFAIL,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro,

thanks a lot for your feedback.

> Hi Petr,

> On 9/6/22 11:41, Petr Vorel wrote:
> > Hi Alejandro,

> > yesterday you merged this commit (without sending it to ML):
> > 70ac1c478 ("src.mk, All pages: Move man* to man/")


> It's good to know that someone realized immediately after my patch.  I
> wanted to know how much it would really hurt others' habits, and a
> discussion about it would probably have been too artificial.  That's why I
> did it without prior discussion.

> > Although I agree that number of man* is quite high and single man directory
> > looks nicer, from practical reasons I'd prefer to revert this commit.
> > Because saving one extra cd is IMHO more important.

> I rarely cd.  I edit pages from the root of the repo with (in my example,
> I'll pretend to edit membarrier(2)):
I also rarely cd. Both cd and editing from the git root directory use using tab
autocompletion as you note below.

> (previous to subsections):
> vi m[TAB]2[TAB]memb[TAB]

> (after subsections were introduced, but before this change):
> vi m[TAB]2/memb[TAB]

> (after this patch):
> vi m[TAB]m[TAB]2/memb[TAB]


> I agree it's two more keystrokes, and it took me so long to decide to change
> it because two keystrokes all the time are not the most friendly thing in
> the world, but I think I could live with them.

> Do you still think I should revert it?
I'd wait for more feedback, maybe others will like it.
Sure, I can live with it if I'm alone who even noticed :).

> I guess I'll receive a lot more emails like that in the following days, so
> I'll wait a little bit more before considering reverting it, but yeah, I may
> do it; I'm still unsure about what to do.
No matter how you finally decide, the most important lesson is that tree wide
changes, although they look trivial are safer to post to ML to get feedback
before (and obviously anything which looks controversial).

Kind regards,
Petr

> Kind regards,

> Alex
