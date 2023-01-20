Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A9AA8675BF9
	for <lists+linux-man@lfdr.de>; Fri, 20 Jan 2023 18:49:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230034AbjATRtV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 20 Jan 2023 12:49:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229911AbjATRtU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 20 Jan 2023 12:49:20 -0500
Received: from esa3.mentor.iphmx.com (esa3.mentor.iphmx.com [68.232.137.180])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 514866E0D6
        for <linux-man@vger.kernel.org>; Fri, 20 Jan 2023 09:49:10 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.97,232,1669104000"; 
   d="scan'208";a="94066200"
Received: from orw-gwy-01-in.mentorg.com ([192.94.38.165])
  by esa3.mentor.iphmx.com with ESMTP; 20 Jan 2023 09:49:11 -0800
IronPort-SDR: KI6C/wtX5jLLeY5Zt4bhDKKSbouDHA5nihWrCfg8HxRoygzUCMxFzQwfoYUbe89JMiw5P8wC57
 2JL93+122WVW4Af71olf4+lMgxBYcKCQ9JaS8jleJTecplFl/jbiuy6QNisb0TRzCZUEBxVvgW
 YUxoDo7WEz26A4/Y1DmQpus+OmnRdrEbWGUMdG6Z2tID8UiSSyxLCQpX3QaSfUhPac63BfGJnA
 Gcc19VFIQczEuudgwmlcunZjNm15sDD1rniEOSzwVSqQ55RKvms2iNZADh6r6JBvuu0By6TckW
 DUU=
Date:   Fri, 20 Jan 2023 17:49:04 +0000
From:   Joseph Myers <joseph@codesourcery.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
CC:     <libc-alpha@sourceware.org>, Alejandro Colomar <alx@kernel.org>,
        <linux-man@vger.kernel.org>,
        =?ISO-8859-15?Q?Bastien_Roucari=E8s?= <rouca@debian.org>,
        Eric Blake <eblake@redhat.com>,
        Zack Weinberg <zack@owlfolio.org>,
        Stefan Puiu <stefan.puiu@gmail.com>,
        Igor Sysoev <igor@sysoev.ru>
Subject: Re: [PATCH v2] socket: Implement sockaddr_storage with an anonymous
 union
In-Reply-To: <20230120134043.10247-1-alx@kernel.org>
Message-ID: <aa5ff22-b919-ce0-f16-f9857bbe1f7d@codesourcery.com>
References: <20230120134043.10247-1-alx@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: svr-ies-mbx-13.mgc.mentorg.com (139.181.222.13) To
 svr-ies-mbx-11.mgc.mentorg.com (139.181.222.11)
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_MED,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, 20 Jan 2023, Alejandro Colomar via Libc-alpha wrote:

> This patch fixes sockaddr_storage to remove UB on its uses and make it
> that structure that everybody should be using.  It also allows removing
> many casts in code that needs to pass a sockaddr as a side effect.

This patch only changes the fallback version of bits/socket.h that would 
be used by a new OS port that doesn't have its own, not either of the 
versions that any current glibc port actually uses 
(sysdeps/unix/sysv/linux/bits/socket.h and 
sysdeps/mach/hurd/bits/socket.h).

-- 
Joseph S. Myers
joseph@codesourcery.com
