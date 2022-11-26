Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 84D8D6393C0
	for <lists+linux-man@lfdr.de>; Sat, 26 Nov 2022 04:30:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229881AbiKZDai (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Nov 2022 22:30:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229514AbiKZDah (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Nov 2022 22:30:37 -0500
X-Greylist: delayed 586 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 25 Nov 2022 19:30:29 PST
Received: from haven.eyrie.org (haven.eyrie.org [166.84.7.159])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 374B412D21
        for <linux-man@vger.kernel.org>; Fri, 25 Nov 2022 19:30:29 -0800 (PST)
Received: from lothlorien.eyrie.org (96-90-234-101-static.hfc.comcastbusiness.net [96.90.234.101])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by haven.eyrie.org (Postfix) with ESMTPS id 2FB38118593;
        Fri, 25 Nov 2022 19:20:39 -0800 (PST)
Received: by lothlorien.eyrie.org (Postfix, from userid 1000)
        id 029F4B40BFA; Fri, 25 Nov 2022 19:20:37 -0800 (PST)
From:   Russ Allbery <eagle@eyrie.org>
To:     Paul Eggert via tz <tz@iana.org>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Paul Eggert <eggert@cs.ucla.edu>,
        linux-man <linux-man@vger.kernel.org>, groff <groff@gnu.org>
Subject: Re: [tz] Doubts about a typo fix
In-Reply-To: <b91ea285-22f4-5f13-beb2-b0c74cc4db10@cs.ucla.edu> (Paul Eggert
        via tz's message of "Fri, 25 Nov 2022 18:18:46 -0800")
Organization: The Eyrie
References: <842adff8-8d8c-b189-8e6c-34be111b8b19@gmail.com>
        <20221123214019.6w2cv525fmr3akdr@illithid>
        <b91ea285-22f4-5f13-beb2-b0c74cc4db10@cs.ucla.edu>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
Date:   Fri, 25 Nov 2022 19:20:37 -0800
Message-ID: <87pmdaqu4a.fsf@hope.eyrie.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Paul Eggert via tz <tz@iana.org> writes:

> Thanks for the info about groff. You're right, tzdb man pages are supposed
> to be portable to both groff and traditional troff. For the latter I test
> with /usr/bin/nroff and /usr/bin/troff on Solaris 10, which is the oldest
> troff I know that is still supported.

[...]

> "\f(CW-\fP" is used instead of plain "-" because when the output is PDF,
> it is more clearly visible to humans as a hyphen-minus instead of as a
> hyphen (U+2010 HYPHEN).

You have to be very careful with the combination of \f(CW and \fP on
Solaris 10 nroff, and I suspect the construct you are using has nascent
bugs.  \f(CW doesn't produce a font change on Solaris 2.6 with nroff, so
if you write something like:

    \fBsomething\fP \f(CW-\fP something else

you will discover that "something else" is in bold because the second \fP
reverts to the "previous" font, which nroff thinks is \fB becuase \f(CW
was ignored.  (Just tested now on a Solaris 10 host.)  Pod::Man has fairly
elaborate workarounds for this bug.

>> I also note that "CW" is an old, AT&T device-independent
>> troff-compatible font name.[3] groff's preferred name for this face is
>> "CR", because for the past couple of decades a monospace font (often
>> Courier) has generally been available in all four styles (roman,
>> oblique, bold, and bold-oblique).

> Thanks, I didn't know that was preferred. I installed the attached patch
> into the tzdb development repository

Just be warned that \f(CR is not a valid font name in all *roff
implementations, which is why Pod::Man uses \f(CW by default.  Not sure
how much you care.  (And, to be honest, not sure how much anyone should
care about any implementations other than groff and mandoc these days.)

-- 
Russ Allbery (eagle@eyrie.org)             <https://www.eyrie.org/~eagle/>
