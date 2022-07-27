Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0A17A582378
	for <lists+linux-man@lfdr.de>; Wed, 27 Jul 2022 11:50:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229625AbiG0Jub (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 27 Jul 2022 05:50:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230319AbiG0Jua (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 27 Jul 2022 05:50:30 -0400
Received: from scc-mailout-kit-01.scc.kit.edu (scc-mailout-kit-01.scc.kit.edu [IPv6:2a00:1398:9:f712::810d:e751])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A29D3E03E
        for <linux-man@vger.kernel.org>; Wed, 27 Jul 2022 02:50:27 -0700 (PDT)
Received: from hekate.asta.kit.edu ([2a00:1398:5:f401::77])
        by scc-mailout-kit-01.scc.kit.edu with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (envelope-from <schwarze@usta.de>)
        id 1oGdgP-000lcv-FE; Wed, 27 Jul 2022 11:50:25 +0200
Received: from login-1.asta.kit.edu ([2a00:1398:5:f400::72])
        by hekate.asta.kit.edu with esmtp (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1oGdgO-006rnS-VT; Wed, 27 Jul 2022 11:50:24 +0200
Received: from schwarze by login-1.asta.kit.edu with local (Exim 4.92)
        (envelope-from <schwarze@usta.de>)
        id 1oGdgO-0000lz-Ue; Wed, 27 Jul 2022 11:50:24 +0200
Date:   Wed, 27 Jul 2022 11:50:24 +0200
From:   Ingo Schwarze <schwarze@usta.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     g.branden.robinson@gmail.com, linux-man@vger.kernel.org,
        groff@gnu.org, Ralph Corderoy <ralph@inputplus.co.uk>
Subject: Re: [PATCH v4] NULL.3const: Add documentation for NULL
Message-ID: <YuEKYAhun0SKZAmw@asta-kit.de>
References: <20220724191931.15683-1-alx.manpages@gmail.com>
 <20220726124800.108850-1-alx.manpages@gmail.com>
 <20220726155451.fhsp4dmesqyb76gf@illithid>
 <b3d990c2-c1be-3202-930d-f8c44be2a5e2@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b3d990c2-c1be-3202-930d-f8c44be2a5e2@gmail.com>
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

Alejandro Colomar wrote on Tue, Jul 26, 2022 at 08:47:59PM +0200:
> On 7/26/22 17:54, G. Branden Robinson wrote:
>> Alejandro Colomar wrote:

>>> +.SH NOTES
>>> +The following headers also provide
>>> +.BR NULL :
>>> +.IR <locale.h> ,
>>> +.IR <stdio.h> ,
>>> +.IR <stdlib.h> ,
>>> +.IR <string.h> ,
>>> +.IR <time.h> ,
>>> +.IR <unistd.h> ,
>>> +and
>>> +.IR <wchar.h> .

>> Not exactly on topic (sorry), but apropos of our concurrent discussion
>> on man pages for constants with external linkage and data types, the
>> foregoing is an excellent counterexample of what I contend is good
>> practice: document them in the man page for the header file.

> For countering that, I'd point you to tm(3type).
> If I document in such detail every type and constant in <time.h>, the 
> page will become an unreadable mess, IMO.
> 
> NULL(3const) is also a good example.  stddef(0posix) has 2 lines + a 
> blank for NULL.
> 
> Now consider a page that documents NULL, offsetof(), ptrdiff_t, size_t 
> (all of them already documented, so you can take a look at their pages 
> to get an idea of their docs), + wchar_t (yet undocumented).
> 
> stddef.h(0posix) is very short about them, and IMO, it's quite 
> incomplete.  But I could live with it if I had link pages to it (it 
> would be suboptimal to my needs, but I could certainly live with it).

For once, i agree.  Manual pages for header files (like stddef.h(3))
are an even worse idea than manual pages for preprocessor constants
and data types.  The main reason is that almost every header file
includes so much material that such pages would become unreasonably
large, just as Alejandro explains above.  Besides, the material in
a typical header file is not so closely related among itself that
it should share a manual page.  And in fact, documentation for
almost every header file is already split up into many manual
pages: one for each group of closely related functions.

[...]
>> POSIX supplements to the standard C library, and other libraries for C,
>> will not typically have this difficulty, and will have one definition
>> site only for their constants with external linkage.

> Oh, no.  Check ssize_t(3type)!

Indeed.

Then again, while NULL and size_t are exceptional in so far as they
are so widely used that there is no clear place for documenting them,
most types are better documented together with the most typical
function using them.

For example, document  struct tm  in  localtime(3)  and
                       ssize_t    in  read(2).

Besides, almost nothing needs to be said where ssize_t is documented.
In particular, documentation of %zd belongs with printf(3), not with
ssize_t(3type).

Yours,
  Ingo
