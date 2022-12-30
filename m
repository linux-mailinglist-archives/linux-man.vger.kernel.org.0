Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F22E7659B84
	for <lists+linux-man@lfdr.de>; Fri, 30 Dec 2022 19:50:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235423AbiL3Sud (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Dec 2022 13:50:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235426AbiL3Sub (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Dec 2022 13:50:31 -0500
Received: from esa2.mentor.iphmx.com (esa2.mentor.iphmx.com [68.232.141.98])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C8C81B1C2
        for <linux-man@vger.kernel.org>; Fri, 30 Dec 2022 10:50:29 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.96,288,1665475200"; 
   d="scan'208";a="92113658"
Received: from orw-gwy-02-in.mentorg.com ([192.94.38.167])
  by esa2.mentor.iphmx.com with ESMTP; 30 Dec 2022 10:50:29 -0800
IronPort-SDR: sKfjtQmaTjkgZW50HeQ7qb2JKLwI8mSRQXyKXm70X9nCjs6ZglXHiwzkMsCiT8N9hUGuWpY8lN
 9QgwuXHPW0/NzvZEPlDCn4fCOKFua1GJRtDPWgYt9uRjDuHiYUortHt/IVUeyHVwUE0pnjQGUf
 ATgI8x6XW2bh4FaRupyYe6UXSUpoGUDoDz463+vA01+wZlv0xd4jlBDkXhZxUv2LIPPS07CypR
 NhHZHv2+YyOJ01Dg/2w5EWRbZimBMSBR9I+u2ydUAUn3ryl8htJ9y19ZLKgKlFVDG1ExoFhD1U
 Fjw=
Date:   Fri, 30 Dec 2022 18:50:24 +0000
From:   Joseph Myers <joseph@codesourcery.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
CC:     =?ISO-8859-15?Q?Cristian_Rodr=EDguez?= <crrodriguez@opensuse.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Jonny Grant <jg@jguk.org>, Florian Weimer <fweimer@redhat.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>
Subject: Re: [PATCH] Add example to rand.3
In-Reply-To: <e7c6da15-c5ef-e5b8-1225-23126aa54c76@gmail.com>
Message-ID: <6df5ca5f-5a51-5922-be72-354aa8a29a7@codesourcery.com>
References: <105835f5-359c-2646-f609-e73459ee2d3b@jguk.org> <92e5ad68-d013-43f5-cc3e-459daea93a83@gmail.com> <CAPBLoAeLFYtzVP7ZqkThdT4Pan9aoW=YPqHDM9Wbh6Fn+tki7w@mail.gmail.com> <8bd20ea2-2031-173a-5b09-f6a74473ef8f@gmail.com> <20221228000010.iyrekqdj6fi5sf7d@illithid>
 <8d7b59a0-c068-93ec-7c8b-4a12d9f412e9@gmail.com> <CAPBLoAcatosY7Rqpd1Vj96j3dwnR2D4giMSzZ6e16LjF7PQ0Wg@mail.gmail.com> <2fc0ab18-7052-abf2-6487-f9c86d19138c@codesourcery.com> <e7c6da15-c5ef-e5b8-1225-23126aa54c76@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: svr-ies-mbx-14.mgc.mentorg.com (139.181.222.14) To
 svr-ies-mbx-10.mgc.mentorg.com (139.181.222.10)
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_MED,RCVD_IN_MSPIKE_H2,
        SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, 30 Dec 2022, Alejandro Colomar via Libc-alpha wrote:

> > I expect to implement these functions in due course for glibc (not GCC,
> > since these are library functions, with the usual requirements for
> > definitions with external linkage, though most would also have inline
> > header implementations based on existing longstanding built-in functions).
> 
> Is there any builtin for stdc_bit_ceil()?  I've tried to search for it, but
> didn't find it.  I came to the conclusion that I need to write the ugly code
> around __builtin_clz().

I don't think there's such a built-in function, so yes, the inline 
function would need to use __builtin_clz.  (Even the stdc_leading_zeros 
inline functions will need to do more than just call __builtin_clz - they 
need to check for zero, since the standard functions have a defined result 
for a zero argument whereas __builtin_clz doesn't.)

-- 
Joseph S. Myers
joseph@codesourcery.com
