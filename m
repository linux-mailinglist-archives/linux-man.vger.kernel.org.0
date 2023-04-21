Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6EFCC6EAA01
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 14:09:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229938AbjDUMJY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Apr 2023 08:09:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229843AbjDUMJX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Apr 2023 08:09:23 -0400
Received: from relay05.pair.com (relay05.pair.com [216.92.24.67])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06F90127
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 05:09:22 -0700 (PDT)
Received: from orac.inputplus.co.uk (34.101.125.91.dyn.plus.net [91.125.101.34])
        by relay05.pair.com (Postfix) with ESMTP id 4F1DD1A2722;
        Fri, 21 Apr 2023 08:09:22 -0400 (EDT)
Received: from orac.inputplus.co.uk (orac.inputplus.co.uk [IPv6:::1])
        by orac.inputplus.co.uk (Postfix) with ESMTP id 8B984201A5;
        Fri, 21 Apr 2023 13:09:21 +0100 (BST)
From:   Ralph Corderoy <ralph@inputplus.co.uk>
To:     linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: [PATCH v8 3/5] regex.3: Finalise move of reg*.3type
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
In-reply-to: <8b0c58b6-222a-a02a-61d1-25acc30ee5a2@gmail.com>
References: <567b10b2-0a3f-4bbf-642d-d6d7bc4f1580@gmail.com> <cover.1682045033.git.nabijaczleweli@nabijaczleweli.xyz> <edefa8a5e1e377089f734f0b39400a1bbb111d9c.1682045033.git.nabijaczleweli@nabijaczleweli.xyz> <773958d0-339b-6d0f-9ce7-5ce363636635@gmail.com> <1d2d0aa8-cb28-2d7f-c48b-7a02f907cb5b@gmail.com> <20230421115735.770B9201A5@orac.inputplus.co.uk> <8b0c58b6-222a-a02a-61d1-25acc30ee5a2@gmail.com>
Date:   Fri, 21 Apr 2023 13:09:21 +0100
Message-Id: <20230421120921.8B984201A5@orac.inputplus.co.uk>
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro,

> when it has structure types with multi-line comments, you see what
> happens in the first PDFs I sent (mis-aligned comments).

Fix the formatting commands in the troff source so the comments are
aligned.  The man page is troff source for producing beautifully typeset
pages.

-- 
Cheers, Ralph.
