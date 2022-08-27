Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B9D8E5A3730
	for <lists+linux-man@lfdr.de>; Sat, 27 Aug 2022 13:10:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233440AbiH0LKO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 27 Aug 2022 07:10:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237686AbiH0LKL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 27 Aug 2022 07:10:11 -0400
Received: from scc-mailout-kit-02.scc.kit.edu (scc-mailout-kit-02.scc.kit.edu [IPv6:2a00:1398:9:f712::810d:e752])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCDFFDFD7
        for <linux-man@vger.kernel.org>; Sat, 27 Aug 2022 04:10:07 -0700 (PDT)
Received: from hekate.asta.kit.edu ([2a00:1398:5:f401::77])
        by scc-mailout-kit-02.scc.kit.edu with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (envelope-from <schwarze@usta.de>)
        id 1oRthV-0047rM-Bz; Sat, 27 Aug 2022 13:10:05 +0200
Received: from login-1.asta.kit.edu ([2a00:1398:5:f400::72])
        by hekate.asta.kit.edu with esmtp (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1oRthU-007gxm-Vw; Sat, 27 Aug 2022 13:10:04 +0200
Received: from schwarze by login-1.asta.kit.edu with local (Exim 4.92)
        (envelope-from <schwarze@usta.de>)
        id 1oRthU-0006Oe-VD; Sat, 27 Aug 2022 13:10:04 +0200
Date:   Sat, 27 Aug 2022 13:10:04 +0200
From:   Ingo Schwarze <schwarze@usta.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, JeanHeyd Meneide <wg14@soasis.org>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
Message-ID: <Ywn7jMtB5ppSW0PB@asta-kit.de>
References: <20220826210710.35237-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220826210710.35237-1-alx.manpages@gmail.com>
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro,

> -.BI "char *getcwd(char *" buf ", size_t " size );
> +.BI "char *getcwd(char " buf [ size "], size_t " size );

I dislike this.

Manual pages should show function prototypes as they really are in
the header file, or if the header file contains useless fluff like
"restrict", a shortened form showing the essence that actually matters
for using the API.  They should certainly not show something imaginary
that does not match reality, and even less so using invalid syntax.

Yours,
  Ingo
