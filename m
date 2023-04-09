Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC75E6DC02D
	for <lists+linux-man@lfdr.de>; Sun,  9 Apr 2023 15:48:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229643AbjDINr7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 Apr 2023 09:47:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48712 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229611AbjDINr6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 Apr 2023 09:47:58 -0400
Received: from relay05.pair.com (relay05.pair.com [216.92.24.67])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A6553A9A
        for <linux-man@vger.kernel.org>; Sun,  9 Apr 2023 06:47:56 -0700 (PDT)
Received: from orac.inputplus.co.uk (unknown [87.112.67.239])
        by relay05.pair.com (Postfix) with ESMTP id 96ECE1A26BF;
        Sun,  9 Apr 2023 09:47:55 -0400 (EDT)
Received: from orac.inputplus.co.uk (orac.inputplus.co.uk [IPv6:::1])
        by orac.inputplus.co.uk (Postfix) with ESMTP id 8B7A91FB21;
        Sun,  9 Apr 2023 14:47:54 +0100 (BST)
From:   Ralph Corderoy <ralph@inputplus.co.uk>
To:     Alejandro Colomar <alx.manpages@gmail.com>
cc:     Colin Watson <cjwatson@debian.org>, groff@gnu.org,
        linux-man@vger.kernel.org
mail-followup-to: groff@gnu.org, linux-man@vger.kernel.org
Subject: Re: Compressed man pages
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
In-reply-to: <bddac44c-4495-4323-4051-e8ec083b62af@gmail.com>
References: <ghbkkgo8x8.fsf@gouders.net> <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com> <834jpuuc1a.fsf@gnu.org> <6ea6d1fe-375f-487a-b524-adc86880d3de@gmail.com> <83sfddqvk3.fsf@gnu.org> <390c8bba-6089-b006-eaf1-9fcfda2c6c4b@gmail.com> <837cumonv9.fsf@gnu.org> <78ca213f-8723-dccb-e131-081400c28e5d@gmail.com> <87a5zhwntt.fsf@ada> <c6e9eb6a-a2ba-1de1-211f-bc6ccc3f7a9a@gmail.com> <ZDKvl/7YgzpZ8Bix@riva.ucam.org> <bddac44c-4495-4323-4051-e8ec083b62af@gmail.com>
Date:   Sun, 09 Apr 2023 14:47:54 +0100
Message-Id: <20230409134754.8B7A91FB21@orac.inputplus.co.uk>
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro,

> Sure; do you have a mailing list, or should I send them to you and
> CC linux-man@?  I have at least one bug report for you.

Start from https://man-db.gitlab.io/man-db/,
which is the home page according to Arch Linux's package,
and you'll end up in all the typical places:
mailing list, issue tracker, etc.

-- 
Cheers, Ralph.
