Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D5756D8689
	for <lists+linux-man@lfdr.de>; Wed,  5 Apr 2023 21:07:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232356AbjDETHb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 5 Apr 2023 15:07:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33822 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230114AbjDETHa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 5 Apr 2023 15:07:30 -0400
Received: from eggs.gnu.org (eggs.gnu.org [IPv6:2001:470:142:3::10])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25DE86EA7
        for <linux-man@vger.kernel.org>; Wed,  5 Apr 2023 12:07:24 -0700 (PDT)
Received: from fencepost.gnu.org ([2001:470:142:3::e])
        by eggs.gnu.org with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.90_1)
        (envelope-from <eliz@gnu.org>)
        id 1pk8TZ-0006nX-Gl; Wed, 05 Apr 2023 15:07:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=gnu.org;
        s=fencepost-gnu-org; h=MIME-version:References:Subject:In-Reply-To:To:From:
        Date; bh=uLiAoTu6gGAvbUjQaS+s37Tg88yBTe3SUZjTOTKCxjc=; b=XmVE65eWqWjpBPmUt2j5
        ftzkCkLtt9RkTM/pOrtefJnWIh7SqBC9HEulDLYSZ+6VNGfyfw0D25q4x6NNTaKhW5DGu66oafKaA
        Ppin6FeiCFaDhqqBQZVfeCskqYFb+XbKPwF6JG4oGpOyiu1z+5J84zANE+ckyCThn1UvrbJsiHijR
        bOVH3IGvWDtJAsptpB4iEuhjTc6nlLYyGtrbDIlE7jxsOsBDktExzMq5p9+jRhcVdibHIgdY3l7Sl
        HsF6tpfbGdwERWF3qpKqEfGY4c3ETKHoQo7zJlJ1g+kUgnV9FIVnJGEwitHnJbpd8LTADZDOaqjPH
        0g3BgAKfW5yohg==;
Received: from [87.69.77.57] (helo=home-c4e4a596f7)
        by fencepost.gnu.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.90_1)
        (envelope-from <eliz@gnu.org>)
        id 1pk8TY-0001ZJ-Km; Wed, 05 Apr 2023 15:07:20 -0400
Date:   Wed, 05 Apr 2023 22:07:47 +0300
Message-Id: <83zg7mqha4.fsf@gnu.org>
From:   Eli Zaretskii <eliz@gnu.org>
To:     Dirk Gouders <dirk@gouders.net>
Cc:     arsen@aarsen.me, alx.manpages@gmail.com, linux-man@vger.kernel.org,
        help-texinfo@gnu.org
In-Reply-To: <ghpm8iyzqj.fsf@gouders.net> (message from Dirk Gouders on Wed,
        05 Apr 2023 20:01:56 +0200)
Subject: Re: Playground pager lsp(1)
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com>
 <ghedoy8x5y.fsf@gouders.net> <87y1n6o1b3.fsf@aarsen.me> <ghpm8iyzqj.fsf@gouders.net>
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

> From: Dirk Gouders <dirk@gouders.net>
> Cc: Alejandro Colomar <alx.manpages@gmail.com>, linux-man@vger.kernel.org,
>  help-texinfo@gnu.org
> Date: Wed, 05 Apr 2023 20:01:56 +0200
> 
> Arsen Arsenović <arsen@aarsen.me> writes:
> 
> >>>>        •   In windowing environments lsp does complete resizes when windows
> >>>>            get resized. This means it also reloads the manual page to fit the
> >>>>            new window size.
> >>>
> >>> Good.  This I miss it in less(1) often.  Not sure if they had any strong
> >>> reason to not support that.
> >>
> >> Unfortunately, info(1) also doesn't do full resizes (on my system).
> >
> > Do you mean the info pages' column limit or that the viewer itself
> > doesn't resize to fit the frame?  The latter would be a bug.
> 
> Yes, I meant the column limit.  Sorry for not having expressed this very
> clear.

Info files are formatted already, you cannot ask the reader to
reformat them for a different line length.

With man pages this is only possible if you never keep the formatted
pages and reuse them once they were produced.
