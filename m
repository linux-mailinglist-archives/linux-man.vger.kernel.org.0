Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 46FEA659B92
	for <lists+linux-man@lfdr.de>; Fri, 30 Dec 2022 20:11:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229827AbiL3TLR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Dec 2022 14:11:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229519AbiL3TLQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Dec 2022 14:11:16 -0500
Received: from mail-il1-f173.google.com (mail-il1-f173.google.com [209.85.166.173])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 208F560D5
        for <linux-man@vger.kernel.org>; Fri, 30 Dec 2022 11:11:15 -0800 (PST)
Received: by mail-il1-f173.google.com with SMTP id p15so762706ilg.9
        for <linux-man@vger.kernel.org>; Fri, 30 Dec 2022 11:11:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tsNaHohBU8u9AmgI7ZbO1AM9yf5CYGZo8G1t7cf77zU=;
        b=XtHFIev7SNB9P+ayNaTZZVMlaiVQTxjsNNvT+047VIPSdH8rzjD0X9IQ0J3m36xti9
         ZW70VppOCPdy+M29iadVIz6bBYI5xMnvhAXP9EY4EzfhqkCanxETQWKVIJNBLvfI/Q8g
         BCZESGcs25oPpTU8bOldtCAyCASKpbDY8dD3i/DOSSBjgtkRnVPwp2ikgYHBL8m5Wrbn
         RlIV82+OVo6n/jDhU/xO45/WGCsccLHCRFXVtt2OmO6EQnC19z8+ju7w7BrEjeR5ZS5b
         tpVxh06OLShKGfXhkMirnVwsOGQRzTqAq12OYsl3IVPB32Y9EytQkDk+0ehCmkHnPGOz
         8jwg==
X-Gm-Message-State: AFqh2kqltbxuUYPRaikAkpymUFrytFGYsrT1zTlul0EdlybxpaPHOBYf
        yvEONCSwaS7yI/fyZSCOw/RHtUjvwQPBiKpv+wS96MYxT7yeZA==
X-Google-Smtp-Source: AMrXdXtD9ePAd5Xu6QyvOp7C+FAusQdLjWMUSsMjlIoJFiCo+WQNPtNs3oOrakHWDTEKtI1cylrLvY8f4/ADdyrDYNk=
X-Received: by 2002:a92:d20b:0:b0:302:a011:ae1 with SMTP id
 y11-20020a92d20b000000b00302a0110ae1mr3006512ily.170.1672427474394; Fri, 30
 Dec 2022 11:11:14 -0800 (PST)
MIME-Version: 1.0
References: <105835f5-359c-2646-f609-e73459ee2d3b@jguk.org>
 <92e5ad68-d013-43f5-cc3e-459daea93a83@gmail.com> <CAPBLoAeLFYtzVP7ZqkThdT4Pan9aoW=YPqHDM9Wbh6Fn+tki7w@mail.gmail.com>
 <8bd20ea2-2031-173a-5b09-f6a74473ef8f@gmail.com> <20221228000010.iyrekqdj6fi5sf7d@illithid>
 <8d7b59a0-c068-93ec-7c8b-4a12d9f412e9@gmail.com> <CAPBLoAcatosY7Rqpd1Vj96j3dwnR2D4giMSzZ6e16LjF7PQ0Wg@mail.gmail.com>
 <2fc0ab18-7052-abf2-6487-f9c86d19138c@codesourcery.com>
In-Reply-To: <2fc0ab18-7052-abf2-6487-f9c86d19138c@codesourcery.com>
From:   =?UTF-8?Q?Cristian_Rodr=C3=ADguez?= <crrodriguez@opensuse.org>
Date:   Fri, 30 Dec 2022 16:11:02 -0300
Message-ID: <CAPBLoAcGH1jdcLj8piriw9d5WCiknHAf=6gBFQjJs71cYZtLxA@mail.gmail.com>
Subject: Re: [PATCH] Add example to rand.3
To:     Joseph Myers <joseph@codesourcery.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Jonny Grant <jg@jguk.org>, Florian Weimer <fweimer@redhat.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, Dec 30, 2022 at 3:15 PM Joseph Myers <joseph@codesourcery.com> wrote:

> I expect to implement these functions in due course for glibc (not GCC,
> since these are library functions, with the usual requirements for
> definitions with external linkage, though most would also have inline
> header implementations based on existing longstanding built-in functions).

Unless I am seriously missing something, the compiler is required to
provide an implementation
of them as it is a freestanding header..right ?
