Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CDABE58FCC4
	for <lists+linux-man@lfdr.de>; Thu, 11 Aug 2022 14:49:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235454AbiHKMtG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 11 Aug 2022 08:49:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235471AbiHKMs4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 11 Aug 2022 08:48:56 -0400
Received: from scc-mailout-kit-02.scc.kit.edu (scc-mailout-kit-02.scc.kit.edu [IPv6:2a00:1398:9:f712::810d:e752])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0ABA7844DB
        for <linux-man@vger.kernel.org>; Thu, 11 Aug 2022 05:48:54 -0700 (PDT)
Received: from hekate.asta.kit.edu ([2a00:1398:5:f401::77])
        by scc-mailout-kit-02.scc.kit.edu with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (envelope-from <schwarze@usta.de>)
        id 1oM7cK-008hTF-0y; Thu, 11 Aug 2022 14:48:52 +0200
Received: from login-1.asta.kit.edu ([2a00:1398:5:f400::72])
        by hekate.asta.kit.edu with esmtp (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1oM7cJ-007H6U-6l; Thu, 11 Aug 2022 14:48:51 +0200
Received: from schwarze by login-1.asta.kit.edu with local (Exim 4.92)
        (envelope-from <schwarze@usta.de>)
        id 1oM7cJ-0006f6-64; Thu, 11 Aug 2022 14:48:51 +0200
Date:   Thu, 11 Aug 2022 14:48:51 +0200
From:   Ingo Schwarze <schwarze@usta.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     g.branden.robinson@gmail.com, linux-man@vger.kernel.org,
        groff@gnu.org
Subject: Re: [PATCH 4/6] xattr.7: wfix
Message-ID: <YvT6s2Sv+M2bEldp@asta-kit.de>
References: <20220729114506.1669153-4-stepnem@gmail.com>
 <20220729205823.lcy4fbezlw32owgu@illithid>
 <20220730161521+0200.203910-stepnem@gmail.com>
 <c2ef3b9c-97d1-2733-df27-542c9eacad17@gmail.com>
 <8edd0272-0c43-b5e7-9220-20094bb5ae23@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8edd0272-0c43-b5e7-9220-20094bb5ae23@gmail.com>
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro,

Alejandro Colomar wrote on Mon, Aug 01, 2022 at 03:28:03PM +0200:

> I'd like to arrive to some consensus on usage of \~ and '\ '.

In manual pages, always use "\ " and never use "\~", period.
The former is portable and the latter is a GNU extension.

> What do you think?

I think you are massively overthinking this and the whole SI
argument is irrelevent for manual pages.  While the above concern
about robustness is minor, too (both groff and mandoc support \~),
portability is still significantly more important than such minute
typographical details.

Yours,
  Ingo
