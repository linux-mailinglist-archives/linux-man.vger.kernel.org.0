Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8051D70ADA9
	for <lists+linux-man@lfdr.de>; Sun, 21 May 2023 13:46:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229822AbjEULqM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 21 May 2023 07:46:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232030AbjEUKxj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 21 May 2023 06:53:39 -0400
X-Greylist: delayed 603 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 21 May 2023 03:53:02 PDT
Received: from mail-out.m-online.net (mail-out.m-online.net [IPv6:2001:a60:0:28:0:1:25:1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9861A185
        for <linux-man@vger.kernel.org>; Sun, 21 May 2023 03:53:02 -0700 (PDT)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4QPHGm2LxGz1sGX0;
        Sun, 21 May 2023 12:42:56 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4QPHGm1Vpwz1qqlS;
        Sun, 21 May 2023 12:42:56 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id c4Z3odHaev_s; Sun, 21 May 2023 12:42:55 +0200 (CEST)
X-Auth-Info: S34AkCL88Zs7bnY1sH6jMvPffdT7h54KQ6/CvubnCIUr1D1v/vxyU2va/VFuQxU3
Received: from tiger.home (aftr-62-216-205-204.dynamic.mnet-online.de [62.216.205.204])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Sun, 21 May 2023 12:42:55 +0200 (CEST)
Received: by tiger.home (Postfix, from userid 1000)
        id 02B7F1A47B8; Sun, 21 May 2023 12:42:54 +0200 (CEST)
From:   Andreas Schwab <schwab@linux-m68k.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Xavier Leroy <Xavier.Leroy@inria.fr>,
        GNU Libc Maintainers <debian-glibc@lists.debian.org>,
        lnx-man <linux-man@vger.kernel.org>,
        glibc <libc-alpha@sourceware.org>,
        Carlos O'Donell <carlos@redhat.com>
Subject: Re: Manual pages from glibc-doc
In-Reply-To: <93aba0c9-ad1d-d488-1471-be30b7a8bb0c@gmail.com> (Alejandro
        Colomar's message of "Sun, 21 May 2023 12:24:49 +0200")
References: <703ec07e-dd2b-bbc6-f1bc-f495e53b764f@gmail.com>
        <CAH=h3gFakgz3xcH63h-5nO0L9LuSy2Xr5b2riwpJ1o4L3DzuRg@mail.gmail.com>
        <93aba0c9-ad1d-d488-1471-be30b7a8bb0c@gmail.com>
X-Yow:  Now that we're in LOVE, you can BUY this GOLDFISH for a 48% DISCOUNT.
Date:   Sun, 21 May 2023 12:42:54 +0200
Message-ID: <87v8gmotht.fsf@linux-m68k.org>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mai 21 2023, Alejandro Colomar wrote:

> It seems that the pages were removed from glibc upstream in 2005 [1],

That was the time when the whole linuxthreads directory was removed.

-- 
Andreas Schwab, schwab@linux-m68k.org
GPG Key fingerprint = 7578 EB47 D4E5 4D69 2510  2552 DF73 E780 A9DA AEC1
"And now for something completely different."
