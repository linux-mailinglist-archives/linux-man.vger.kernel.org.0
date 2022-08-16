Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 308CD59527D
	for <lists+linux-man@lfdr.de>; Tue, 16 Aug 2022 08:26:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230013AbiHPG0Y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 16 Aug 2022 02:26:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230016AbiHPG0G (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 16 Aug 2022 02:26:06 -0400
Received: from scc-mailout-kit-01.scc.kit.edu (scc-mailout-kit-01.scc.kit.edu [IPv6:2a00:1398:9:f712::810d:e751])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0C5834F3F7
        for <linux-man@vger.kernel.org>; Mon, 15 Aug 2022 17:33:31 -0700 (PDT)
Received: from hekate.asta.kit.edu ([2a00:1398:5:f401::77])
        by scc-mailout-kit-01.scc.kit.edu with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (envelope-from <schwarze@usta.de>)
        id 1oNkWP-003tbG-5l; Tue, 16 Aug 2022 02:33:29 +0200
Received: from login-1.asta.kit.edu ([2a00:1398:5:f400::72])
        by hekate.asta.kit.edu with esmtp (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1oNkWN-007NF5-Uw; Tue, 16 Aug 2022 02:33:27 +0200
Received: from schwarze by login-1.asta.kit.edu with local (Exim 4.92)
        (envelope-from <schwarze@usta.de>)
        id 1oNkWN-0006SW-U3; Tue, 16 Aug 2022 02:33:27 +0200
Date:   Tue, 16 Aug 2022 02:33:27 +0200
From:   Ingo Schwarze <schwarze@usta.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     g.branden.robinson@gmail.com, groff@gnu.org,
        linux-man@vger.kernel.org
Subject: Re: TAB character in groff output
Message-ID: <Yvrl18W4TY/xWbgo@asta-kit.de>
References: <b1a0b24e-0747-9131-90f5-ef61bf4e7d7d@gmail.com>
 <YukqNRfW8D09nt+y@asta-kit.de>
 <e6d2d527-37be-7fab-2872-392906ceb49b@gmail.com>
 <YvT3TxPFGThtbNYW@asta-kit.de>
 <a30777ee-4495-c663-fd8f-47469d64d1af@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a30777ee-4495-c663-fd8f-47469d64d1af@gmail.com>
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro,

Alejandro Colomar wrote on Tue, Aug 16, 2022 at 12:01:40AM +0200:

> Ingo, is mandoc(1) planning to support .MR?

Yes, almost certainly.

I'm not enthusiastic about it, but given that groff is going ahead
with it, it is clearly better to support it than to not support it.

The most likely timing for adding support is shortly after the next
groff release.  Before the groff release, it isn't urgent at all
for obvious reasons.

Right now, i'm slowly working through inconsistencies that popped up
in the mandoc test suite after regenerating the expected output with
-current groff.  Getting that sorted out before the groff release would
be ideal because some of these issues might be regressions in groff
(like the groff_mdoc(7) prologue regressions i reported earlier).
What makes this work a bit tedious is that apparently, not all changes
that popped up are groff regressions.  For example, for the second
change is i looked into, it appears behaviour is mostly consistent
between GNU, Heirloom, and Plan 9 roff and it is mandoc that is off,
so there is no need to report that here and i'm instead fixing mandoc
(it is related to literal tab characters in filled text).

Eleven new differences are left right now and i suspect these
are likely due to at least four and probably not more than eight
different changes; the exact number of issues is not clear yet.
Most are differences in vertical spacing, but in different contexts, so
there is likely more than one vertical spacing issue.  One difference
concerns paragraph breaking, one concerns horizontal spacing, and
two concern the scope of font markup.

Yours,
  Ingo
