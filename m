Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A8CD5B9C48
	for <lists+linux-man@lfdr.de>; Thu, 15 Sep 2022 15:48:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229538AbiIONsk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 15 Sep 2022 09:48:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229813AbiIONsj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 15 Sep 2022 09:48:39 -0400
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 196EB1023
        for <linux-man@vger.kernel.org>; Thu, 15 Sep 2022 06:48:38 -0700 (PDT)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by smtp-out2.suse.de (Postfix) with ESMTPS id C0AD21F8D4;
        Thu, 15 Sep 2022 13:48:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
        t=1663249716;
        h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
         cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=Px/K2IjbOlRtA/X0P/hmttvtW2ddEQodwWmVR4wf17o=;
        b=ibYw1w6m4QWFUrtQSJO7iADn3iSzh09Uyfl9MOL6SJQ53oCMpY5rtlIzQOLMgUYF9bzjqD
        71gtSus9gMIYm4FoJ3JLp+9VFo7y52CL7IH0abqWPFW7Cpqhr3oG/2c6BxbgaCVH9OS5jQ
        WjNX1w/1u+KH+NAP3v7TbLhtVM5T/bM=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
        s=susede2_ed25519; t=1663249716;
        h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
         cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=Px/K2IjbOlRtA/X0P/hmttvtW2ddEQodwWmVR4wf17o=;
        b=qtH5RH3Iypm7jEYVYEjkmbZaGq33XfQEdcNl1YQA7DmQH7ThgGZsswuwLmwGqpFnnoZ8XN
        zzjd9xw9UBY7k4Cg==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 9434213A49;
        Thu, 15 Sep 2022 13:48:36 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
        by imap2.suse-dmz.suse.de with ESMTPSA
        id ZS8RIzQtI2OPZwAAMHmgww
        (envelope-from <pvorel@suse.cz>); Thu, 15 Sep 2022 13:48:36 +0000
Date:   Thu, 15 Sep 2022 15:48:35 +0200
From:   Petr Vorel <pvorel@suse.cz>
To:     Alex Colomar <alx.manpages@gmail.com>
Cc:     Stefan Puiu <stefan.puiu@gmail.com>, Jakub Wilk <jwilk@jwilk.net>,
        lnx-man <linux-man@vger.kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: Revert 70ac1c478 ("src.mk, All pages: Move man* to man/")
Message-ID: <YyMtM12CIHtuKRfl@pevik>
Reply-To: Petr Vorel <pvorel@suse.cz>
References: <YxcV4h+Xn7cd6+q2@pevik>
 <20220907205304.nlqce37l26gezjqi@jwilk.net>
 <7b9c2ab4-6cdc-b4fd-1001-8721083695fa@gmail.com>
 <CACKs7VADwh0Qs8Zo7=biVzpOhSgMt5xD1BSBXdg82sPAcdjYOg@mail.gmail.com>
 <Yxr9WN7f3FEqKVRg@pevik>
 <a8f7856e-d442-29de-e95b-99a0e932646e@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a8f7856e-d442-29de-e95b-99a0e932646e@gmail.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

> Hi all,

> On 9/9/22 10:46, Petr Vorel wrote:
> > > On Thu, Sep 8, 2022 at 1:28 AM Alejandro Colomar <alx.manpages@gmail.com> wrote:
> > > > On 9/7/22 22:53, Jakub Wilk wrote:
> > > > > * Petr Vorel <pvorel@suse.cz>, 2022-09-06 11:41:
> > > > > > Although I agree that number of man* is quite high and single man
> > > > > > directory looks nicer, from practical reasons I'd prefer to revert
> > > > > > this commit.

> > > > > I don't like the new layout either.

> > > > Thank you both for sharing your opinion.  I'll revert it, then.  Let me
> > > > a few weeks before doing that, since I'm in the middle of some other big
> > > > changes (about lint-c), so to not have to stash and fix conflicts at
> > > > that scale.  If in the meantime someone finds the new layout nice,
> > > > please speak up :)

> > > I think one other aspect to consider is that it makes history
> > > searching harder. If you type 'git log <file>', by default you only
> > > get the history to the last move. You need 'git log --follow' to see
> > > the whole history. Then if you want to do a 'git blame' on an old
> > > version of the file, pre-move, I think you need to find the old path
> > > and use that. If the maintainer's opinion of where a file should be
> > > changes often, that makes it more fun :).

> > Yes, I have experience from other projects that moving around does not help.
> > But here simple revert is working well:
> > $ git revert 70ac1c4785fc1e158ab2349a962dba2526bf4fbc
> > git is smart: new changes in unshare.2 (8f4ed6463) and fanotify_mark.2
> > (c06943bee) didn't cause a conflict. But still, if you decide on revert, I'd do
> > it early (don't put new commits before it)

> > $ git log man2/_exit.2 # shows previous history


> Reverted (before any other patches).

Thanks!

Kind regards,
Petr

> Cheers,

> Alex
