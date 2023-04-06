Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 959956D9147
	for <lists+linux-man@lfdr.de>; Thu,  6 Apr 2023 10:13:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235958AbjDFINq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 6 Apr 2023 04:13:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236038AbjDFINk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 6 Apr 2023 04:13:40 -0400
Received: from eggs.gnu.org (eggs.gnu.org [IPv6:2001:470:142:3::10])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F4D2659A
        for <linux-man@vger.kernel.org>; Thu,  6 Apr 2023 01:13:34 -0700 (PDT)
Received: from fencepost.gnu.org ([2001:470:142:3::e])
        by eggs.gnu.org with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.90_1)
        (envelope-from <eliz@gnu.org>)
        id 1pkKkP-0000MC-3C; Thu, 06 Apr 2023 04:13:33 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=gnu.org;
        s=fencepost-gnu-org; h=MIME-version:References:Subject:In-Reply-To:To:From:
        Date; bh=mJ1RmMGdN7o9kQm7vdgPqVjI+C3kJWxB5e8TJlTi7MU=; b=KXmXgWXruay+KEcztm7j
        mu8Z3zQPO3zExNkIbpfEUM8ytopTG4hZT8i3oowoMMVCLJXvzGSMvrovDM6D/uSzJZu4Ls4r9Zfby
        9FOAucBIP6dqFgZiN+LpKGETfnIagPfYPrKOgK4DrzCAj0Axc+PxQ5g4eRv9bcabs8opAoXx47nx3
        G+38kb3ozXqvdw0AAYm+I357n7RcUGZ5WUYL8Ah25Y/0sYmmYhC5/kkvEdpFOSth3ww4YaqKRcT/3
        QiwJ5rSajF4H0OuX6mx1BLdOWii3/SV22aELU577IwPcaIoWHgI7SgkoWyk2gf+O3hKuLH5okNeDN
        AKcaw9v3MFPbkA==;
Received: from [87.69.77.57] (helo=home-c4e4a596f7)
        by fencepost.gnu.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.90_1)
        (envelope-from <eliz@gnu.org>)
        id 1pkKkO-000422-5D; Thu, 06 Apr 2023 04:13:32 -0400
Date:   Thu, 06 Apr 2023 11:14:01 +0300
Message-Id: <83r0sxqvg6.fsf@gnu.org>
From:   Eli Zaretskii <eliz@gnu.org>
To:     Arsen =?utf-8?Q?Arsenovi=C4=87?= <arsen@aarsen.me>
Cc:     GavinSmith0123@gmail.com, dirk@gouders.net, alx.manpages@gmail.com,
        linux-man@vger.kernel.org, help-texinfo@gnu.org
In-Reply-To: <865yaa81ru.fsf@aarsen.me> (message from Arsen =?utf-8?Q?Arse?=
 =?utf-8?Q?novi=C4=87?= on Wed,
        05 Apr 2023 22:38:12 +0200)
Subject: Re: A less presumptive .info? (was: Re: Playground pager lsp(1))
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com>
 <ghedoy8x5y.fsf@gouders.net> <87y1n6o1b3.fsf@aarsen.me>
 <ghpm8iyzqj.fsf@gouders.net> <83zg7mqha4.fsf@gnu.org> <865yaa81ru.fsf@aarsen.me>
MIME-version: 1.0
Content-type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_PASS,
        SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

> From: Arsen Arsenović <arsen@aarsen.me>
> Cc: Dirk Gouders <dirk@gouders.net>, alx.manpages@gmail.com,
>  linux-man@vger.kernel.org, help-texinfo@gnu.org
> Date: Wed, 05 Apr 2023 22:38:12 +0200
> 
> I've been casually wondering if creating a new format that can host more
> formatting options and uses more precise syntax than 'plaintext with
> some binary tags' would be a decent thing to work on.
> 
> My thoughts were brief and undeveloped as this was thought of on the
> commute, but something that retains the binary offsets for indices and
> tags, but stores formatted data (perhaps as s-exprs, those would be easy
> to parse).  It is always easier to remove information than to
> reintroduce it.
> 
> Such a structure should resemble the input language, but with far less
> complexity (e.g. something at the level of abstraction that HTML5 sits
> at, so, macros would be expanded, and we'd be dealing with lists of
> paragraphs and formatted blocks, etc.).
> 
> This would allow for the reflowing that was talked about in this thread,
> and provide more readable output in graphical contexts, as it wouldn't
> be data generated with the assumption of a monospace font (rather, the
> format could store whether your context wants monospace or proportional
> fonts at a given point), or data generated for a given screen size, or
> with a given indentation size, or with the assumption of a lack of
> features like italics, etc.
> 
> For instance, info2html used by the KDE info viewer currently produces
> quite terrible results, because it fails to implement the heuristics the
> Info viewers have properly.  This problem would be hard to have with a
> better "at-rest" format for Info pages.
> 
> The alternative is, of course, bringing HTML up to par feature-wise
> (wrt. indices etc), but that'd be on the other end of the extreme, where
> instead of being too easy to parse and lacking important information,
> it'd be oververbose with and difficult to parse (not that such a thing
> should not be done too, so that folks using ordinary browsers can enjoy
> documentation, and so that projects can provide more accessible
> documentation by the merit of more people having HTML than Info
> viewers).
> 
> WDYT folks?

Gavin will tell, but AFAIU our plan is to develop js as the means
towards the goals you mentioned.  That will allow using HTML browsers
to read Texinfo documentation without losing the functionalities of
the Info readers we value.  HTML rendering reflows as integral part of
its workings, so that problem is not an issue if this plan succeeds.
