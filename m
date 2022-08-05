Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 420E858AFFC
	for <lists+linux-man@lfdr.de>; Fri,  5 Aug 2022 20:45:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237177AbiHESp1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 5 Aug 2022 14:45:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236261AbiHESp1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 5 Aug 2022 14:45:27 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D21D9FE0
        for <linux-man@vger.kernel.org>; Fri,  5 Aug 2022 11:45:26 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 02D7DB829EB
        for <linux-man@vger.kernel.org>; Fri,  5 Aug 2022 18:45:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50013C433D7;
        Fri,  5 Aug 2022 18:45:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1659725123;
        bh=d/7FZonhGFA6arEc41xWYavXQh+w397hqI2wu+vtknw=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=d538z4gXfqDwynuiqbSINof3Y2zsXaVPMax13Jb6SscHaeg+rGvSmpPiWVWBMqjbn
         eblV2TigDdZf2MwmNHr0GNj2iB9jXV+lG9Jx5Gbmjx9fK367P2BwfBA0s+r2OYTKor
         bpvfXq/JvBbC8Ilv0+ZAtG8xGYhz4lx/YvyckHZszaM+C+SF8z7JIE8CbBlV+8l03o
         6bm1+dygHgCGlMlwK2Uk44vZOAp/IkcIruUwbry4oyEiF/J/F6AehYN1ib/H065ljU
         +E0FojUVkHY7e8dwKb2Vgo6HtM6JP55dvliiXpwo/izxx7qbZgFug0I6WZ8z6uTYgB
         9tpy8PW8MGgjQ==
Date:   Fri, 5 Aug 2022 18:45:21 +0000
From:   Eric Biggers <ebiggers@kernel.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     GUO Zihua <guozihua@huawei.com>, mtk.manpages@gmail.com,
        Jason@zx2c4.com, petr.vorel@gmail.com, fweimer@redhat.com,
        linux-man@vger.kernel.org
Subject: Re: [patch v3] random.4: Update description about O_NONBLOCK flag
Message-ID: <Yu1lQQWRZlPQ2r2V@gmail.com>
References: <20220803074555.64090-1-guozihua@huawei.com>
 <73ed2877-3135-8463-4c9e-1dcc9f099d7f@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <73ed2877-3135-8463-4c9e-1dcc9f099d7f@gmail.com>
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, Aug 05, 2022 at 08:36:02PM +0200, Alejandro Colomar wrote:
> > +In eariler versions, if

Typo: eariler => earlier

- Eric
