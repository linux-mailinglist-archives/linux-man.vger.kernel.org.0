Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E86556A3456
	for <lists+linux-man@lfdr.de>; Sun, 26 Feb 2023 23:04:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229539AbjBZWED (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 26 Feb 2023 17:04:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229478AbjBZWEC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 26 Feb 2023 17:04:02 -0500
Received: from vmicros1.altlinux.org (vmicros1.altlinux.org [194.107.17.57])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id F1D01FF3E
        for <linux-man@vger.kernel.org>; Sun, 26 Feb 2023 14:04:00 -0800 (PST)
Received: from mua.local.altlinux.org (mua.local.altlinux.org [192.168.1.14])
        by vmicros1.altlinux.org (Postfix) with ESMTP id 993AB72C90B;
        Mon, 27 Feb 2023 01:03:59 +0300 (MSK)
Received: by mua.local.altlinux.org (Postfix, from userid 508)
        id 8977D7CFE20; Mon, 27 Feb 2023 00:03:59 +0200 (IST)
Date:   Mon, 27 Feb 2023 00:03:59 +0200
From:   "Dmitry V . Levin" <ldv@strace.io>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Fotios Valasiadis <fvalasiad@gmail.com>, linux-man@vger.kernel.org,
        lineprinter0@gmail.com
Subject: Re: [PATCH] ptrace.2: Add details about usage of
 PTRACE_GET_SYSCALL_INFO
Message-ID: <20230226220359.GA3440@altlinux.org>
References: <20230225105601.6079-1-fvalasiad@gmail.com>
 <63d2e471-b167-77a6-b713-5f76ff63fb96@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <63d2e471-b167-77a6-b713-5f76ff63fb96@gmail.com>
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,
        HEADER_FROM_DIFFERENT_DOMAINS,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sun, Feb 26, 2023 at 10:58:02PM +0100, Alejandro Colomar wrote:
[...]
> > +.B PTRACE_GET_SYSCALL_INFO
> > +is limited to type
> > +.B PTRACE_SYSCALL_INFO_NONE
> > +unless
> > +.B PTRACE_O_TRACESYSGOOD
> > +option is set before the corresponding ptrace stop has occurred.
> 
> You should say
> .BR ptrace ()
> right?
> Or is unformatted ptrace common in this page?

Or just say "syscall stop".


-- 
ldv
