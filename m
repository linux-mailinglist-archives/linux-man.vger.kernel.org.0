Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5ECE15822E0
	for <lists+linux-man@lfdr.de>; Wed, 27 Jul 2022 11:14:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231294AbiG0JOf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 27 Jul 2022 05:14:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232090AbiG0JOR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 27 Jul 2022 05:14:17 -0400
Received: from scc-mailout-kit-01.scc.kit.edu (scc-mailout-kit-01.scc.kit.edu [IPv6:2a00:1398:9:f712::810d:e751])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4C03958C
        for <linux-man@vger.kernel.org>; Wed, 27 Jul 2022 02:14:14 -0700 (PDT)
Received: from hekate.asta.kit.edu ([2a00:1398:5:f401::77])
        by scc-mailout-kit-01.scc.kit.edu with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (envelope-from <schwarze@usta.de>)
        id 1oGd7M-000gtg-Ig; Wed, 27 Jul 2022 11:14:13 +0200
Received: from login-1.asta.kit.edu ([2a00:1398:5:f400::72])
        by hekate.asta.kit.edu with esmtp (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1oGd7M-006rl4-GJ; Wed, 27 Jul 2022 11:14:12 +0200
Received: from schwarze by login-1.asta.kit.edu with local (Exim 4.92)
        (envelope-from <schwarze@usta.de>)
        id 1oGd7M-0000bJ-FV; Wed, 27 Jul 2022 11:14:12 +0200
Date:   Wed, 27 Jul 2022 11:14:12 +0200
From:   Ingo Schwarze <schwarze@usta.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH] man-pages.7: Document CAVEATS section
Message-ID: <YuEB5INpOo+/UqmG@asta-kit.de>
References: <20220726120817.100462-1-alx.manpages@gmail.com>
 <Yt/yMJuhXd+jH3sp@asta-kit.de>
 <7effe1a8-c1b4-5542-932a-7edf436036ce@gmail.com>
 <YuAKPTxrbJ2XuqJN@asta-kit.de>
 <f2c85cee-9ef0-eaad-d1b4-21352a324c9b@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f2c85cee-9ef0-eaad-d1b4-21352a324c9b@gmail.com>
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro,

Alejandro Colomar wrote on Tue, Jul 26, 2022 at 09:02:40PM +0200:

> Thanks for the investigation.  Committed, with a similar commit message 
> (changing references to man(7) by "manual pages", since I consider 
> mdoc(7) pages as relevant in this regard).

Your commit cb828372 looks good, thanks!

The following is certainly not a big deal, just mentioning it because
chances are this may not have been the last time i contributed
something to your project.

In commit histories, release notes and the like, i prefer being
credited as Ingo Schwarze <schwarze@openbsd.org> rathen than
<schwarze@usta.de>.  The reason is that in a hundred years from
now, i expect people will still know what openbsd.org is, but it
seems rather unlikely they would still know what usta.de was.

You may wonder why i rarely use @openbsd.org in my From: headers.
The reason is that i want to avoid the wrong impression that all my
mails were official statements of the OpenBSD project.  While many
opinions i voice might also be shared by some other OpenBSD developers,
some clearly are not.  And disclaimers in a signature are annoying.
There is less risk that people think i'm speaking for the UStA of
the University of Karlsruhe.  :-)

Probably i should try to remember saying "if you credit me,
please use this address: ..." when a commit is obviously imminent.
I often forget because the vast majority of messages that credit me
are inside OpenBSD, and there it goes without saying.

Yours,
  Ingo
