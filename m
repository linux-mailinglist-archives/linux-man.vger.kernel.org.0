Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BD98F7E4C02
	for <lists+linux-man@lfdr.de>; Tue,  7 Nov 2023 23:46:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235215AbjKGWqL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Nov 2023 17:46:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235187AbjKGWqK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Nov 2023 17:46:10 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6AFC125
        for <linux-man@vger.kernel.org>; Tue,  7 Nov 2023 14:46:08 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 56444C433C7;
        Tue,  7 Nov 2023 22:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
        s=korg; t=1699397168;
        bh=2NGPQQhgkLrX9qPfJAN70/I065Q3QHr2GGwFabvFn7o=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=ZnUUng9VVQ1aW0NwWmITmzb3EvLZI4222oishr6RXfcPkKb9tao52/GOZF8oaImrv
         fp1MjEzly+WVzPrSqb1Q5ap/mLUrMirV+n0fyQICRRrEWmL9Mm2ShlZSJprCp/KY4o
         dxLMZLmVKQQmsjRimY5an+eNWWS83jY7+JYlkXvw=
Date:   Tue, 7 Nov 2023 17:46:07 -0500
From:   Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: Re: PSA: migrating linux-man to new vger infrastructure
Message-ID: <adxtastgkpofjnmrc2be5kpu3tvsj7pbhdn2vorubmda4jmdlm@np6nat6ff4xq>
References: <20231106-rampant-shaggy-mongoose-39eefb@nitro>
 <ZUkbwnCT8jgozq4f@debian>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <ZUkbwnCT8jgozq4f@debian>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Nov 06, 2023 at 06:00:44PM +0100, Alejandro Colomar wrote:
> > The migration will be performed live and should not require any downtime.
> > There will be no changes to how anyone interacts with the list after
> > migration is completed, so no action is required on anyone's part.
> 
> Same mail (vger) and same archive (lore), I understand, right?

Correct, there's no change. Eventually, majordomo will be replaced with using
+subscribe and +unsubscribe addresses instead, but not for a few months still.

-K
