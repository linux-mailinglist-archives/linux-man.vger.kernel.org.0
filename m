Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 253A36DEDDD
	for <lists+linux-man@lfdr.de>; Wed, 12 Apr 2023 10:35:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230358AbjDLIfZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 12 Apr 2023 04:35:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230164AbjDLIe5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 12 Apr 2023 04:34:57 -0400
Received: from relay05.pair.com (relay05.pair.com [216.92.24.67])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E41187D92
        for <linux-man@vger.kernel.org>; Wed, 12 Apr 2023 01:33:35 -0700 (PDT)
Received: from orac.inputplus.co.uk (unknown [87.112.94.193])
        by relay05.pair.com (Postfix) with ESMTP id 31D4C1A24BF;
        Wed, 12 Apr 2023 04:32:27 -0400 (EDT)
Received: from orac.inputplus.co.uk (orac.inputplus.co.uk [IPv6:::1])
        by orac.inputplus.co.uk (Postfix) with ESMTP id 768D722138;
        Wed, 12 Apr 2023 09:32:26 +0100 (BST)
From:   Ralph Corderoy <ralph@inputplus.co.uk>
To:     Sam James <sam@gentoo.org>
cc:     groff@gnu.org, linux-man <linux-man@vger.kernel.org>
Subject: Re: Compressed man pages
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
In-reply-to: <875ya1ecq1.fsf@gentoo.org>
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net> <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <834jpuuc1a.fsf@gnu.org> <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com> <83sfddqvk3.fsf@gnu.org> <390c8bba-6089-b006-eaf1-9fcfda2c6c4b@gmail.com> <837cumonv9.fsf@gnu.org> <78ca213f-8723-dccb-e131-081400c28e5d@gmail.com> <87a5zhwntt.fsf@ada> <c6e9eb6a-a2ba-1de1-211f-bc6ccc3f7a9a@gmail.com> <875ya1ecq1.fsf@gentoo.org>
Date:   Wed, 12 Apr 2023 09:32:26 +0100
Message-Id: <20230412083226.768D722138@orac.inputplus.co.uk>
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Sam,

> I started looking into changing to xz (or just.. not bz2, anyway)

If you're putting effort into researching another compressor then
consider lzip(1).  https://www.nongnu.org/lzip/lzip.html

Its author compares it against xz in particular.
https://www.nongnu.org/lzip/xz_inadequate.html

-- 
Cheers, Ralph.
