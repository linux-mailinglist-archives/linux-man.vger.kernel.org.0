Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0EB4874C144
	for <lists+linux-man@lfdr.de>; Sun,  9 Jul 2023 08:19:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233221AbjGIGSG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 Jul 2023 02:18:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233226AbjGIGSF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 Jul 2023 02:18:05 -0400
Received: from smtp.gentoo.org (woodpecker.gentoo.org [140.211.166.183])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B91631BE
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 23:18:04 -0700 (PDT)
References: <78b648da-dde7-d331-7384-03214b977e6d@kernel.org>
 <20230709061011.1885809-1-eggert@cs.ucla.edu>
User-agent: mu4e 1.10.4; emacs 29.0.92
From:   Sam James <sam@gentoo.org>
To:     libc-coord@lists.openwall.com
Cc:     Alejandro Colomar <alx@kernel.org>,
        "A . Wilcox" <AWilcox@wilcox-tech.com>,
        Jonathan Wakely <jwakely@redhat.com>,
        Rich Felker <dalias@libc.org>, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, musl@lists.openwall.com,
        Sam James <sam@gentoo.org>, Szabolcs Nagy <nsz@port70.net>,
        Jakub Wilk <jwilk@jwilk.net>, Paul Eggert <eggert@cs.ucla.edu>
Subject: Re: [libc-coord] [PATCH v4] off64_t: prefer off_t for splice, etc.
Date:   Sun, 09 Jul 2023 07:16:17 +0100
In-reply-to: <20230709061011.1885809-1-eggert@cs.ucla.edu>
Message-ID: <87lefpehgo.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


Paul Eggert <eggert@cs.ucla.edu> writes:

> For the few functions that come only in 64-bit off_t flavors,
> document their APIs as using off_t instead of off64_t,
> and say also that code should #define _FILE_OFFSET_BITS 64.
> This documents what user code is (and should be) doing anyway,
> if it needs to work on traditional x86 and ARM Linux.

LGTM and thank you Paul.

I haven't checked for other prototypes/examples which need
changing.
