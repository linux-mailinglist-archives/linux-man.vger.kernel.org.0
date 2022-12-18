Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4E15364FDD9
	for <lists+linux-man@lfdr.de>; Sun, 18 Dec 2022 06:49:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230080AbiLRFts (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 18 Dec 2022 00:49:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229716AbiLRFtr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 18 Dec 2022 00:49:47 -0500
Received: from relay05.pair.com (relay05.pair.com [216.92.24.67])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B12D7BC97
        for <linux-man@vger.kernel.org>; Sat, 17 Dec 2022 21:49:46 -0800 (PST)
Received: from orac.inputplus.co.uk (unknown [87.112.30.183])
        by relay05.pair.com (Postfix) with ESMTP id 7AD371A19C5;
        Sun, 18 Dec 2022 00:49:45 -0500 (EST)
Received: from orac.inputplus.co.uk (orac.inputplus.co.uk [IPv6:::1])
        by orac.inputplus.co.uk (Postfix) with ESMTP id CB0F32083C;
        Sun, 18 Dec 2022 05:49:44 +0000 (GMT)
From:   Ralph Corderoy <ralph@inputplus.co.uk>
To:     groff@gnu.org, linux-man@vger.kernel.org
Subject: Re: [BUG] gropdf, tbl: Completely broken table
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
In-reply-to: <20221217160830.rcvgr65axz4hpcge@illithid>
References: <20220906191320.447t5awx3rcb5d5b@illithid> <1719285.QkHrqEjB74@pip> <01989003-349f-fb6b-f460-89106b82bc34@gmail.com> <2176657.1BCLMh4Saa@pip> <af2dad8a-ef40-3e30-671e-0b0f5f125c75@gmail.com> <85c6b38a-be05-806f-528b-fe1c559dc1b7@gmail.com> <20221217160830.rcvgr65axz4hpcge@illithid>
Date:   Sun, 18 Dec 2022 05:49:44 +0000
Message-Id: <20221218054944.CB0F32083C@orac.inputplus.co.uk>
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

> The suffixes(7) page, which I've managed to never see in 25 years as a
> GNU/Linux user!

Me neither.

        .text        │ text file
        .txt         │ equivalent to .text

I don't recall seeing .text used as it's the default on Unix.
.txt is an import from foreign lands.

    BUGS
	This list is not exhaustive.

Just delete the page and anything that refers to it.  Bug fixed.
Either the user has the Internet, which is exhaustive, or they're savvy
enough to use a system without the Internet and don't need suffixes(7).

-- 
Cheers, Ralph.
