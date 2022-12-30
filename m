Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ACF1E659C60
	for <lists+linux-man@lfdr.de>; Fri, 30 Dec 2022 22:09:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235542AbiL3VJG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Dec 2022 16:09:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235504AbiL3VJG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Dec 2022 16:09:06 -0500
Received: from esa1.mentor.iphmx.com (esa1.mentor.iphmx.com [68.232.129.153])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 657351C431
        for <linux-man@vger.kernel.org>; Fri, 30 Dec 2022 13:09:04 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.96,288,1665475200"; 
   d="scan'208";a="94792414"
Received: from orw-gwy-01-in.mentorg.com ([192.94.38.165])
  by esa1.mentor.iphmx.com with ESMTP; 30 Dec 2022 13:09:04 -0800
IronPort-SDR: wDpsjPW3OoylF1zOKq5eTmZUgwTe4Nplkwr7OzIUT6C6pj2ysKrxsrWeZ0u6aIGqmiDBnjEFrC
 FZNrPoNj6GP6++Er+mQuXm3USf4r06ccCkkVQ53l8iTmeL/HrsqDYz1o6v7LWj+aTVGTmPUScT
 cktQe7fKvdwWF5xXP6SLRQMRM6sucJHOnDqDr3IEAep9XVYpQ5uEZOR9ReFqRv2Vmjr1oNVrQd
 kcurtEFp6XOzTlxFUWpu/NkMZBh247Elc6xFKs1uNzWKKsNS6WwgoiQYj1rM1gp3pmFTFs1KaY
 bAE=
Date:   Fri, 30 Dec 2022 21:08:58 +0000
From:   Joseph Myers <joseph@codesourcery.com>
To:     =?ISO-8859-15?Q?Cristian_Rodr=EDguez?= <crrodriguez@opensuse.org>
CC:     Alejandro Colomar <alx.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Jonny Grant <jg@jguk.org>, Florian Weimer <fweimer@redhat.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>
Subject: Re: [PATCH] Add example to rand.3
In-Reply-To: <CAPBLoAcGH1jdcLj8piriw9d5WCiknHAf=6gBFQjJs71cYZtLxA@mail.gmail.com>
Message-ID: <db22324-e427-d9bb-f6ee-ec155c3ff33c@codesourcery.com>
References: <105835f5-359c-2646-f609-e73459ee2d3b@jguk.org> <92e5ad68-d013-43f5-cc3e-459daea93a83@gmail.com> <CAPBLoAeLFYtzVP7ZqkThdT4Pan9aoW=YPqHDM9Wbh6Fn+tki7w@mail.gmail.com> <8bd20ea2-2031-173a-5b09-f6a74473ef8f@gmail.com> <20221228000010.iyrekqdj6fi5sf7d@illithid>
 <8d7b59a0-c068-93ec-7c8b-4a12d9f412e9@gmail.com> <CAPBLoAcatosY7Rqpd1Vj96j3dwnR2D4giMSzZ6e16LjF7PQ0Wg@mail.gmail.com> <2fc0ab18-7052-abf2-6487-f9c86d19138c@codesourcery.com> <CAPBLoAcGH1jdcLj8piriw9d5WCiknHAf=6gBFQjJs71cYZtLxA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed;
        boundary="-1152306461-247208043-1672434538=:323665"
X-Originating-IP: [137.202.0.90]
X-ClientProxiedBy: svr-ies-mbx-12.mgc.mentorg.com (139.181.222.12) To
 svr-ies-mbx-10.mgc.mentorg.com (139.181.222.10)
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_MED,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

---1152306461-247208043-1672434538=:323665
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT

On Fri, 30 Dec 2022, Cristian Rodríguez via Libc-alpha wrote:

> On Fri, Dec 30, 2022 at 3:15 PM Joseph Myers <joseph@codesourcery.com> wrote:
> 
> > I expect to implement these functions in due course for glibc (not GCC,
> > since these are library functions, with the usual requirements for
> > definitions with external linkage, though most would also have inline
> > header implementations based on existing longstanding built-in functions).
> 
> Unless I am seriously missing something, the compiler is required to
> provide an implementation
> of them as it is a freestanding header..right ?

"freestanding" versus "hosted" isn't the right distinction for which 
component in a (compiler + library) implementation provides which pieces 
any more.  The actual distinction is closer to whether a feature involves 
library functions (with external linkage): if it does, it belongs in the 
library (glibc), whereas if a header doesn't involve such functions, it 
belongs in the compiler (GCC), along with the library support (in libgcc) 
for language features (i.e. library code that can be needed even by 
programs that don't include any standard library header or call any 
function from the standard library).  My list of things to be done for C2x 
in GCC includes updating the GCC documentation (standards.texi) to reflect 
this: that is, to say that GCC provides the compiler part of a 
freestanding or hosted implementation, and library support for language 
features and headers not involving external linkage functions, to be used 
together with a corresponding library implementation - not that it's a 
freestanding implementation by itself.

(It wasn't quite right for C11 either; GCC provides <stdatomic.h> and 
libatomic, and while there are a few atomic_* functions with external 
linkage, the bulk of the operations in <stdatomic.h> are only generic 
functions with no defined external-linkage functions underlying them, 
while it's been documented for a long time that a corresponding library is 
always needed to provided memcpy, memmove and memset as those may be 
generated from use of language features without being called explicitly by 
the user's code.  But C2x makes it a lot more visible that the previously 
documented rule of thumb for where a feature goes is no longer 
appropriate.)

-- 
Joseph S. Myers
joseph@codesourcery.com
---1152306461-247208043-1672434538=:323665--
