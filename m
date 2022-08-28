Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 93E275A3CB1
	for <lists+linux-man@lfdr.de>; Sun, 28 Aug 2022 10:36:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232627AbiH1Igf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 28 Aug 2022 04:36:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233150AbiH1Iga (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 28 Aug 2022 04:36:30 -0400
Received: from relay05.pair.com (relay05.pair.com [216.92.24.67])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 109FF27FF5
        for <linux-man@vger.kernel.org>; Sun, 28 Aug 2022 01:36:28 -0700 (PDT)
Received: from orac.inputplus.co.uk (unknown [87.112.86.208])
        by relay05.pair.com (Postfix) with ESMTP id 0874C1A17E2;
        Sun, 28 Aug 2022 04:36:28 -0400 (EDT)
Received: from orac.inputplus.co.uk (orac.inputplus.co.uk [IPv6:::1])
        by orac.inputplus.co.uk (Postfix) with ESMTP id 430A51FB49;
        Sun, 28 Aug 2022 09:36:27 +0100 (BST)
To:     groff@gnu.org
cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH] lint-man.mk: Use a pipeline instead of the groff(1) wrapper
From:   Ralph Corderoy <ralph@inputplus.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
In-reply-to: <20220827190946.10128-1-alx.manpages@gmail.com>
References: <20220827190946.10128-1-alx.manpages@gmail.com>
Date:   Sun, 28 Aug 2022 09:36:27 +0100
Message-Id: <20220828083627.430A51FB49@orac.inputplus.co.uk>
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro,

> +DEFAULT_EQNFLAGS := -Tutf8
...
> +DEFAULT_TROFFFLAGS   += -Tutf8

I'd have a variable set to ‘utf8’ to ease changing to another output
device.

> -	$(GROFF) $(GROFFFLAGS) $< \
> +	$(TBL) <$< \

You've ditched passing the filename, instead using standard input.
This prevents the filename being passed through the pipeline which will
presumably result in poorer messages.

    $ tbl /etc/passwd | grep '^\.'
    .if !\n(.g .ab GNU tbl requires GNU troff.
    .if !dTS .ds TS
    .if !dTE .ds TE
 →  .lf 1 /etc/passwd
    $

-- 
Cheers, Ralph.
