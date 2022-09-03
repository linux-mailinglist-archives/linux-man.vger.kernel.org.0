Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0FA4D5ABF20
	for <lists+linux-man@lfdr.de>; Sat,  3 Sep 2022 15:29:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230301AbiICN3Y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Sep 2022 09:29:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229928AbiICN3X (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Sep 2022 09:29:23 -0400
Received: from scc-mailout-kit-02.scc.kit.edu (scc-mailout-kit-02.scc.kit.edu [IPv6:2a00:1398:9:f712::810d:e752])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D007333A2F
        for <linux-man@vger.kernel.org>; Sat,  3 Sep 2022 06:29:18 -0700 (PDT)
Received: from hekate.asta.kit.edu ([2a00:1398:5:f401::77])
        by scc-mailout-kit-02.scc.kit.edu with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (envelope-from <schwarze@usta.de>)
        id 1oUTD2-007E4k-HU; Sat, 03 Sep 2022 15:29:16 +0200
Received: from login-1.asta.kit.edu ([2a00:1398:5:f400::72])
        by hekate.asta.kit.edu with esmtp (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1oUTD1-007rTi-Cg; Sat, 03 Sep 2022 15:29:15 +0200
Received: from schwarze by login-1.asta.kit.edu with local (Exim 4.92)
        (envelope-from <schwarze@usta.de>)
        id 1oUTD1-0001KK-BO; Sat, 03 Sep 2022 15:29:15 +0200
Date:   Sat, 3 Sep 2022 15:29:15 +0200
From:   Ingo Schwarze <schwarze@usta.de>
To:     alx.manpages@gmail.com
Cc:     Martin Uecker <uecker@tugraz.at>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
        gcc@gcc.gnu.org
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
Message-ID: <YxNWqyQnLJDUBZjM@asta-kit.de>
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <Ywn7jMtB5ppSW0PB@asta-kit.de>
 <89d79095-d1cd-ab2b-00e4-caa31126751e@gmail.com>
 <YwoXTGD8ljB8Gg6s@asta-kit.de>
 <e29de088-ae10-bbc8-0bfd-90bbb63aaf06@gmail.com>
 <5ba53bad-019e-8a94-d61e-85b2f13223a9@gmail.com>
 <CACqA6+mfaj6Viw+LVOG=nE350gQhCwVKXRzycVru5Oi4EJzgTg@mail.gmail.com>
 <491a930d-47eb-7c86-c0c4-25eef4ac0be0@gmail.com>
 <2abccaa2-d472-4c5b-aea6-7a2dddd665da@gmail.com>
 <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

the only point i strongly care about is this one:

Manual pages should not use
 * non-standard syntax
 * non-portable syntax
 * ambiguous syntax (i.e. syntax that might have different meanings
   with different compilers or in different contexts)
 * syntax that might be invalid or dangerous with some widely
   used compiler collections like GCC or LLVM

Regarding the discussions about standardization and extensions,
all proposals i have seen look seriously ugly and awkward to me,
and i'm not yet convinced such ugliness is sufficiently offset by
the relatively minor benefit that is apparent to me right now.

Yours,
  Ingo

-- 
Ingo Schwarze             <schwarze@usta.de>
http://www.openbsd.org/   <schwarze@openbsd.org>
http://mandoc.bsd.lv/     <schwarze@mandoc.bsd.lv>
