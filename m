Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 95F4357EEC4
	for <lists+linux-man@lfdr.de>; Sat, 23 Jul 2022 12:29:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234840AbiGWK3H (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 23 Jul 2022 06:29:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234789AbiGWK3G (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 23 Jul 2022 06:29:06 -0400
X-Greylist: delayed 309 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sat, 23 Jul 2022 03:29:05 PDT
Received: from relay05.pair.com (relay05.pair.com [216.92.24.67])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5092F13D
        for <linux-man@vger.kernel.org>; Sat, 23 Jul 2022 03:29:05 -0700 (PDT)
Received: from orac.inputplus.co.uk (unknown [84.51.159.66])
        by relay05.pair.com (Postfix) with ESMTP id 0B0281A268F;
        Sat, 23 Jul 2022 06:23:55 -0400 (EDT)
Received: from orac.inputplus.co.uk (orac.inputplus.co.uk [IPv6:::1])
        by orac.inputplus.co.uk (Postfix) with ESMTP id F050322157;
        Sat, 23 Jul 2022 11:23:53 +0100 (BST)
To:     linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: [PATCH] NULL.3def: Add documentation for NULL
From:   Ralph Corderoy <ralph@inputplus.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
In-reply-to: <20220722153127.14528-1-alx.manpages@gmail.com>
References: <20220722153127.14528-1-alx.manpages@gmail.com>
Date:   Sat, 23 Jul 2022 11:23:53 +0100
Message-Id: <20220723102353.F050322157@orac.inputplus.co.uk>
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro,

> As hinted in recent mails to groff@ and linux-man@,
> I'm going to inaugurate a new [sub]section for constants.

This seems a bad idea.  They're quite at home in section 3.

> I think it should contain constants, normally represented by
> object-like macros in C.  But it should also contain other forms of
> constants in other languages (e.g., C++'s constexpr variables), so I'm
> not convinced by the name 3def.

3const was seem more in line with how you keep referring to it.

> I'm (very) tempted to inaugurate section 11 for this

That's seems a worse idea.  They're far too trivial to deserve their own
section.

> The initial page for this section is non other than NULL ;)

It seems a bit simple to be worthy of its own man page.

> +.TH NULL 3def 2022-07-22 Linux "Linux Programmer's Manual"
> +.SH NAME
> +NULL \- null pointer constant

It's one of them.  An integer constant expression with the value 0 is
also a null pointer constant.

> +.SH SYNOPSIS
> +.nf
> +.B "#define NULL  ((void *) 0)"

Does the reader need to know the definition of a macro?
Are you intending to do this for all macros and constants?

> +A null pointer is one that doesn't point to a valid object.

...or function.

> +When it is necessary to set a pointer variable to a null pointer,
> +it is not enough to use
> +.IR "memset(&p, 0, sizeof(p))" ,
> +since ISO C and POSIX don't guarantee that a bit pattern of all
> +.BR 0 s
> +would represent a null pointer.

‘p = 0’ would suffice there; it may be better to give the typical case
where the pointer is part of a struct.

Also, sizeof is an operator, not a function as the parenthesis and lack
of space suggest.  ‘memset(&p, 0, sizeof p)’ is clearer.  Perhaps you're
following some house style.

> +.SH SEE ALSO
> +.BR memset (3),
> +.BR void (3type)

More importantly, see also stddef.h(0p), as the man page hasn't yet told
me how to obtain NULL's definition.  Am I to copy the definition into my
code?

POSIX has a man page per standard header; that seems a good level to
cover all the little things which each header file is defined to
provide.  If you really want to create work, consider a man page which
tables NULL, EOF, etc., and the header-file man-page to read.

-- 
Cheers, Ralph.
