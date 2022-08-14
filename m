Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2FEB9592014
	for <lists+linux-man@lfdr.de>; Sun, 14 Aug 2022 16:16:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231816AbiHNOQA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 14 Aug 2022 10:16:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231268AbiHNOP7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 14 Aug 2022 10:15:59 -0400
Received: from scc-mailout-kit-01.scc.kit.edu (scc-mailout-kit-01.scc.kit.edu [IPv6:2a00:1398:9:f712::810d:e751])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 617B1B87A
        for <linux-man@vger.kernel.org>; Sun, 14 Aug 2022 07:15:57 -0700 (PDT)
Received: from hekate.asta.kit.edu ([2a00:1398:5:f401::77])
        by scc-mailout-kit-01.scc.kit.edu with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (envelope-from <schwarze@usta.de>)
        id 1oNEPD-00HUm4-KJ; Sun, 14 Aug 2022 16:15:55 +0200
Received: from login-1.asta.kit.edu ([2a00:1398:5:f400::72])
        by hekate.asta.kit.edu with esmtp (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1oNEPC-007KjG-Ng; Sun, 14 Aug 2022 16:15:54 +0200
Received: from schwarze by login-1.asta.kit.edu with local (Exim 4.92)
        (envelope-from <schwarze@usta.de>)
        id 1oNEPC-00017g-NA; Sun, 14 Aug 2022 16:15:54 +0200
Date:   Sun, 14 Aug 2022 16:15:54 +0200
From:   Ingo Schwarze <schwarze@usta.de>
To:     g.branden.robinson@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: *roff `\~` support (was: [PATCH 4/6] xattr.7: wfix)
Message-ID: <YvkDmkC/0ZKTgDdU@asta-kit.de>
References: <20220729114506.1669153-4-stepnem@gmail.com>
 <20220729205823.lcy4fbezlw32owgu@illithid>
 <20220730161521+0200.203910-stepnem@gmail.com>
 <c2ef3b9c-97d1-2733-df27-542c9eacad17@gmail.com>
 <8edd0272-0c43-b5e7-9220-20094bb5ae23@gmail.com>
 <YvT6s2Sv+M2bEldp@asta-kit.de>
 <20220811201714.a2o432xhkyyyj6qi@illithid>
 <YvZj6emfWNfwRjwe@asta-kit.de>
 <20220812221035.xd4udngmz5erht5p@illithid>
 <20220813042311.njw23k6g5mkrgknx@illithid>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220813042311.njw23k6g5mkrgknx@illithid>
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

G. Branden Robinson wrote on Fri, Aug 12, 2022 at 11:23:11PM -0500:
> At 2022-08-12T16:30:01+0200, Ingo Schwarze wrote:

>> There are people using Plan 9 for practical work though, they have
>> even occasionally posted on the groff and mandoc lists, so that is a
>> bit more of a problem.

> plan9port's troff is no longer a problem, thanks to Dan Cross acting on
> my pull request at relativistic speed.
> https://github.com/9fans/plan9port/commit/93f814360076ccf28d33c9cb909fca7200ba4a7d

Nice.  :-)

> I also have a PR pending with Illumos.
> https://github.com/illumos/illumos-gate/pull/83

Illumos isn't doing development on GitHub.

Besides, Illumos is less of a problem because they have been using
mandoc as the default manual page formatter since July 2014.

All the same, getting \~ supported in their general-purpose
roff implementation is no doubt nice to have, too.

That reduces my converns mostly to commercial UNIXes and potentially
to a few ad-hoc conversion tools we are not even aware of.
Consequently, the converns aren't 100% resolved yet but getting
closer to becoming theoretical concerns.  If it's only commercial
UNIXes and unknown tools that may break, the improved typesetting
quality may be worth the risk.

Yours,
  Ingo
