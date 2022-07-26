Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 61B1358148D
	for <lists+linux-man@lfdr.de>; Tue, 26 Jul 2022 15:55:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229867AbiGZNzB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 26 Jul 2022 09:55:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229634AbiGZNzA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 26 Jul 2022 09:55:00 -0400
Received: from scc-mailout-kit-02.scc.kit.edu (scc-mailout-kit-02.scc.kit.edu [IPv6:2a00:1398:9:f712::810d:e752])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC32E24BE3
        for <linux-man@vger.kernel.org>; Tue, 26 Jul 2022 06:54:58 -0700 (PDT)
Received: from hekate.asta.kit.edu ([2a00:1398:5:f401::77])
        by scc-mailout-kit-02.scc.kit.edu with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (envelope-from <schwarze@usta.de>)
        id 1oGL1U-00AU3V-EB; Tue, 26 Jul 2022 15:54:57 +0200
Received: from login-1.asta.kit.edu ([2a00:1398:5:f400::72])
        by hekate.asta.kit.edu with esmtp (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1oGL1U-006p6O-9O; Tue, 26 Jul 2022 15:54:56 +0200
Received: from schwarze by login-1.asta.kit.edu with local (Exim 4.92)
        (envelope-from <schwarze@usta.de>)
        id 1oGL1U-0001A5-8n; Tue, 26 Jul 2022 15:54:56 +0200
Date:   Tue, 26 Jul 2022 15:54:56 +0200
From:   Ingo Schwarze <schwarze@usta.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH] man-pages.7: Document CAVEATS section
Message-ID: <Yt/yMJuhXd+jH3sp@asta-kit.de>
References: <20220726120817.100462-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220726120817.100462-1-alx.manpages@gmail.com>
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro,

Alejandro Colomar wrote on Tue, Jul 26, 2022 at 02:08:18PM +0200:

> CAVEATS is an interesting section from OpenBSD.

It is no doubt nice when credit is given to OpenBSD,
but in this case, it happens to be undeserved.  ;-)

I see the following early uses of ".SH CAVEATS":

 * 4.2BSD execve(2), released September 1983, author unknown
 * 4.3BSD-Tahoe patch(1), released June 1988, author: Larry Wall
 * 4.3BSD-Reno amd(8), released June 1990, author: Jan-Simon Pendry
 * 4.4BSD strftime(3), released June 1993, author: Arnold Robbins
 * 4.4BSD gzip(1), released June 1993, author (unsure) Jean-loup Gailly ?
 * 4.4BSD mount_kernfs(8), released June 1993, author: Jan-Simon Pendry

The first instance of ".Sh CAVEATS" i found is:

 * 4.4BSD-Lite1 realpath(3), released April 1994, author Keith Bostic

It doesn't look as if the UC CSRG used CAVEATS in additional files.

Standardization was decided in NetBSD during a discussion
on <tech-userlevel@netbsd.org> leading to this commit:

  /src/share/misc/mdoc.template revision 1.6
  date: 2002-07-10 09:45:18 +0000;  author: yamt;  state: Exp;  lines: +2 -1;
  add CAVEATS section. discussed on tech-userlevel.

The login name "yamt" belongs to YAMAMOTO Takashi.

It was then quickly picked up in OpenBSD by Jason McIntyre.

So the section has a tradition of almost 40 years and has been
standardized in *BSD for about two decades, even though it was
not originally a BSD invention.

Yours,
  Ingo
