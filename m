Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3C9096BA750
	for <lists+linux-man@lfdr.de>; Wed, 15 Mar 2023 06:45:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230169AbjCOFps (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Mar 2023 01:45:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43594 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229487AbjCOFpr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Mar 2023 01:45:47 -0400
X-Greylist: delayed 4176 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 14 Mar 2023 22:45:42 PDT
Received: from pulsar.hadrons.org (2.152.192.238.dyn.user.ono.com [2.152.192.238])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7694B9010
        for <linux-man@vger.kernel.org>; Tue, 14 Mar 2023 22:45:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hadrons.org
        ; s=201908; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version
        :References:Message-ID:Subject:Cc:To:From:Date:From:Reply-To:Subject:
        Content-ID:Content-Description:X-Debbugs-Cc;
        bh=qvqjHImbCPg9IFWhzBt9PXDCy9lxUD0+fzbVtbRgGfA=; b=B+a7gto2JE+L5TZJ6hYOoIjnSx
        zB/Q4ukMHUJNkYsd2pkOQfn6bNJT0dc8/yAw1YkZFZc+daX46we1y62J4Gowt0SMdIcALFtVvZsYZ
        FZ2QL4Lvc/Wqwwtt6zuPVxKvk2ziHkynqvd2JXoFWQwPO1ALnCIkb77FidxNGpPdgpDna873safQR
        jn6J5V7xigCWBjJF1EoBgKd72NEsl10yRlkG2igLIN0HWLwpZtadnUqGsptjnd64VrWDfux/HrVGB
        2450Y4AapzmloPdRL2/bXsFx6z3R7pSYHAJ5c6pfyS0DM5Ew8CPBJ9yVXmQlwlXPYlQbk9z1sO75n
        EoPq6uPw==;
Received: from guillem by pulsar.hadrons.org with local (Exim 4.96)
        (envelope-from <guillem@hadrons.org>)
        id 1pcIro-00019y-2s;
        Wed, 15 Mar 2023 05:36:00 +0100
Date:   Wed, 15 Mar 2023 05:36:00 +0100
From:   Guillem Jover <guillem@hadrons.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Oskari Pirhonen <xxc3ncoredxx@gmail.com>,
        linux-man@vger.kernel.org, Brian Inglis <Brian.Inglis@shaw.ca>,
        Matt Jolly <Matt.Jolly@footclan.ninja>
Subject: Re: Revert "Many Pages: Remove references to C89"
Message-ID: <ZBFLMHHTxwhzXYWf@thunder.hadrons.org>
Mail-Followup-To: Guillem Jover <guillem@hadrons.org>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Oskari Pirhonen <xxc3ncoredxx@gmail.com>, linux-man@vger.kernel.org,
        Brian Inglis <Brian.Inglis@shaw.ca>,
        Matt Jolly <Matt.Jolly@footclan.ninja>
References: <20230310015150.3545768-1-Matt.Jolly@footclan.ninja>
 <8899aff7-4193-dd54-4488-234b1a6cee83@gmail.com>
 <ZAq5gg+aQB5TrDQ3@dj3ntoo>
 <f5aac742-4417-fced-343d-002117d629f1@gmail.com>
 <ZA5/n8Ix+eCYnNgM@dj3ntoo>
 <591290fb-e78d-ad3a-8b25-4a860d26f775@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <591290fb-e78d-ad3a-8b25-4a860d26f775@gmail.com>
X-Spam-Status: No, score=0.8 required=5.0 tests=BAYES_20,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,PDS_RDNS_DYNAMIC_FP,
        RCVD_IN_SORBS_DUL,RDNS_DYNAMIC,SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi!

I had in mind starting a similar thread like this some days ago, but
did not find the time, so thanks for doing that!

On Mon, 2023-03-13 at 13:00:52 +0100, Alejandro Colomar wrote:
> On 3/13/23 02:42, Oskari Pirhonen wrote:
> > "Usefulness" seems to be a hard sell for you, but perhaps you would
> > reconsider it based on the historical relevance of C89? It was, after
> > all, the first proper standard of the C language. If you don't want to
> > promote C89 by having it mentioned alongside the others, perhaps you'd
> > be open to the idea of adding a historical note?

> I've been considering something like that for a long time.  The
> STANDARDS section (previously known as CONFORMING TO), is a mix of a
> proper standards section, and what a HISTORY section should contain.
> 
> It would be interesting to do a split, and inaugurate a HISTORY section.
> For that section, I would keep any references to C89, since as you say
> it's historically very relevant.  Thus, I will revert the patch, and later apply some patches that move the info without discarding it.

As long as the information is preserved, because as has been mentioned
in the thread it is helpful when dealing with codebases that restrict
to C89 for whatever reason, this seems good. :) And also to canvas for
how long an interface has been around.

> > Saying that C89 is
> > obsolete in the note would be acceptable IMO, but not having any mention
> > of C89 at all makes the manpages feel incomplete. Others have shared
> > this sentiment when chatting with them online.

For me what seemed rather confusing was that mentions of C89 were
removed but there are references to stuff like «4.xBSD», so I guess
that's why it felt incomplete to me too. (Not suggesting to remove
those either! But I guess this might have planted the idea now. :)

In any case, thanks for the revert!

Regards,
Guillem
