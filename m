Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B9A85659B53
	for <lists+linux-man@lfdr.de>; Fri, 30 Dec 2022 19:16:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235236AbiL3SQq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Dec 2022 13:16:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231449AbiL3SQo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Dec 2022 13:16:44 -0500
X-Greylist: delayed 62 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 30 Dec 2022 10:16:42 PST
Received: from esa4.mentor.iphmx.com (esa4.mentor.iphmx.com [68.232.137.252])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A56195FC3
        for <linux-man@vger.kernel.org>; Fri, 30 Dec 2022 10:16:42 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.96,288,1665475200"; 
   d="scan'208";a="91367356"
Received: from orw-gwy-02-in.mentorg.com ([192.94.38.167])
  by esa4.mentor.iphmx.com with ESMTP; 30 Dec 2022 10:15:40 -0800
IronPort-SDR: 0r9t3mGLI9BXKYSy92rQeNRxCUAkSHIJBiQvUhvyZkeEEMTpwzRlrSz9FuQ0x+x1k/wJ3LYQP2
 D7K0idaq/uC+cBFQViB0udml1u2LjSF+ELae6TzXxJSl8k/T6sAtx81dQlRcxG1ENZ29dSb6ZW
 e1eC42HsEFl0zs2SdnzWMXRgsFNsPni1tRLnaIfkSlCJK0xAlYCLY1b6CPR4wN55Cs1NiZs/Cm
 npO2vq29kJwHVIPJXexk8F+wo0WncrtKo58dmjlTBYoe2hf3b+HgqqJdYTP7UbzvPveao1OfW0
 2V0=
Date:   Fri, 30 Dec 2022 18:15:34 +0000
From:   Joseph Myers <joseph@codesourcery.com>
To:     =?ISO-8859-15?Q?Cristian_Rodr=EDguez?= <crrodriguez@opensuse.org>
CC:     Alejandro Colomar <alx.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Jonny Grant <jg@jguk.org>, Florian Weimer <fweimer@redhat.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>
Subject: Re: [PATCH] Add example to rand.3
In-Reply-To: <CAPBLoAcatosY7Rqpd1Vj96j3dwnR2D4giMSzZ6e16LjF7PQ0Wg@mail.gmail.com>
Message-ID: <2fc0ab18-7052-abf2-6487-f9c86d19138c@codesourcery.com>
References: <105835f5-359c-2646-f609-e73459ee2d3b@jguk.org> <92e5ad68-d013-43f5-cc3e-459daea93a83@gmail.com> <CAPBLoAeLFYtzVP7ZqkThdT4Pan9aoW=YPqHDM9Wbh6Fn+tki7w@mail.gmail.com> <8bd20ea2-2031-173a-5b09-f6a74473ef8f@gmail.com> <20221228000010.iyrekqdj6fi5sf7d@illithid>
 <8d7b59a0-c068-93ec-7c8b-4a12d9f412e9@gmail.com> <CAPBLoAcatosY7Rqpd1Vj96j3dwnR2D4giMSzZ6e16LjF7PQ0Wg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed;
        boundary="-1152306461-474231704-1672424134=:323665"
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: svr-ies-mbx-15.mgc.mentorg.com (139.181.222.15) To
 svr-ies-mbx-10.mgc.mentorg.com (139.181.222.10)
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_MED,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

---1152306461-474231704-1672424134=:323665
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT

On Wed, 28 Dec 2022, Cristian Rodríguez via Libc-alpha wrote:

> On Tue, Dec 27, 2022 at 9:41 PM Alejandro Colomar
> <alx.manpages@gmail.com> wrote:
> >
> > Hi Branden,
> >
> > On 12/28/22 01:00, G. Branden Robinson wrote:
> > > At 2022-12-28T00:33:13+0100, Alejandro Colomar wrote:
> 
> > (I used C23 syntax for rounding up to a power of 2, to avoid some magic macro.
> > That line is not necessary, but improves performance considerably for small
> > upper bounds.  I don't know if it's available already in GCC or Clang.)
> 
> at least current gcc13 does not implement N3022 yet :-| that actually
> a nice and looong needed addition (like 30 years late)

I expect to implement these functions in due course for glibc (not GCC, 
since these are library functions, with the usual requirements for 
definitions with external linkage, though most would also have inline 
header implementations based on existing longstanding built-in functions).

-- 
Joseph S. Myers
joseph@codesourcery.com
---1152306461-474231704-1672424134=:323665--
