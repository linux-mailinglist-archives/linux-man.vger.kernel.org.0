Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C3EB2642F75
	for <lists+linux-man@lfdr.de>; Mon,  5 Dec 2022 18:51:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232782AbiLERv2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Dec 2022 12:51:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232801AbiLERvL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Dec 2022 12:51:11 -0500
Received: from haven.eyrie.org (haven.eyrie.org [166.84.7.159])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8288725C4C
        for <linux-man@vger.kernel.org>; Mon,  5 Dec 2022 09:48:44 -0800 (PST)
Received: from lothlorien.eyrie.org (96-90-234-101-static.hfc.comcastbusiness.net [96.90.234.101])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by haven.eyrie.org (Postfix) with ESMTPS id 77C2D1185B3;
        Mon,  5 Dec 2022 09:48:41 -0800 (PST)
Received: by lothlorien.eyrie.org (Postfix, from userid 1000)
        id 3488AB42950; Mon,  5 Dec 2022 09:48:40 -0800 (PST)
From:   Russ Allbery <eagle@eyrie.org>
To:     Alejandro Colomar via Libc-alpha <libc-alpha@sourceware.org>
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Alejandro Colomar <alx@kernel.org>
Subject: Re: [PATCH] strcat.3: SYNOPSIS: Fix the size of 'dest'
In-Reply-To: <20221205151102.13042-1-alx@kernel.org> (Alejandro Colomar via
        Libc-alpha's message of "Mon, 5 Dec 2022 16:11:03 +0100")
Organization: The Eyrie
References: <20221205151102.13042-1-alx@kernel.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
Date:   Mon, 05 Dec 2022 09:48:40 -0800
Message-ID: <87pmcx4u87.fsf@hope.eyrie.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Alejandro Colomar via Libc-alpha <libc-alpha@sourceware.org> writes:

> I'm continuing my indiscriminated shooting against broken functions.
> I don't remember if I ever used it, but it got me surprised for how much
> broken it is.

> Please kill this function in glibc.  The updated prototype using a bit
> of imagination to overextend VLA syntax to show how it behaves, shows
> how broken it is.

> It is impossible to use this function correctly (okay, it you try hard,
> you can, but only for the pleasure of using it without crashing, not for
> anything useful).

Hi Alejandro,

I'm just a bystander here, but I've seen a few proposals like this go by,
and I'm not sure anyone has yet said explicitly that these functions are
incredibly widely used in real C code out in the world.  They predate all
of the functions that you are recommending as replacements for them, so
they're common in old, portable C.

I think the work you're doing to document that they should never be used
for new code in the man pages is great; please continue!  Although it may
be useful to carry with that some caveats about portability; some of the
replacements you've mentioned are going to pose portability challenges.

I'm a bit more dubious about glibc marking these functions as formally
deprecated unless the C standard also deprecates them (as happened with
gets, which is probably the best precedent for what you're trying to
accomplish).

For the record, there is quite a lot of code out there that uses strcpy
and strcat safely, using a pattern where first the total length of the
resulting string is calculated, that much space is allocated, and then it
is assembled with strcpy and strcat.  This used to be the standard way to
assemble strings in C before strlcpy or asprintf existed (and neither of
those functions are all that portable even now; I would still hesittate to
use either without a configure probe and a replacement implementation).  I
think you're exaggerating the difficulty of using them safely a tiny bit,
but maybe that's just because I'm an old C programmer for whom that
pattern is a finger macro.

It's also probably worth saying explicitly that strlcpy and strlcat are
still quite dangerous functions and need to be used very carefully.  They
do solve the problem of buffer overflows when used properly, but they
replace that problem with silent truncation, which can also cause security
vulnerabilities in the right circumstances.

-- 
Russ Allbery (eagle@eyrie.org)             <https://www.eyrie.org/~eagle/>
