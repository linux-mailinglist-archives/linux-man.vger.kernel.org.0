Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6868E675E34
	for <lists+linux-man@lfdr.de>; Fri, 20 Jan 2023 20:41:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229446AbjATTlL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 20 Jan 2023 14:41:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229445AbjATTlK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 20 Jan 2023 14:41:10 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A93366EC2
        for <linux-man@vger.kernel.org>; Fri, 20 Jan 2023 11:41:09 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id DC500B82A52
        for <linux-man@vger.kernel.org>; Fri, 20 Jan 2023 19:41:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6344FC4339E;
        Fri, 20 Jan 2023 19:41:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1674243666;
        bh=NwvWCznRKwZNxXGoHKgNmmLVXNWOETKbATnfTUNvjFY=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=FtR3QwJGxA7d4rHUswGYdx/yk29r7ULJK+W9eXjRwnFfi66negFzQ8iTdiWDqYUtE
         HuiZZaHNDWc/Z3PjFUZgdMZsu1swrtfBhgMN1E0NU0EMbPWR6XbppLwEB8MIyc9+Yo
         i0x1YDppWmOKzpSEXa3f+yyW0GySJCA8/gDaHFtpAaeWt+OyJcMWX3q3SuW7/qk3OE
         uLqX7SbhyA4EEnt20ZZsZjHhTtnUBkSLJcrx9aZug9mUJZvX4qEvjrTzg2dotloyCC
         aR2LAdtq13NAC53DAXsPdEdRaOwQxH0Ajdjb666xGYe3fP7K6uBEHfGM9clrqzLP+i
         9T32evpqRh+FQ==
Date:   Fri, 20 Jan 2023 11:41:04 -0800
From:   Eric Biggers <ebiggers@kernel.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Ian Abbott <abbotti@mev.co.uk>, Zack Weinberg <zack@owlfolio.org>,
        linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx@kernel.org>
Subject: Re: [PATCH] scanf.3: Do not mention the ERANGE error
Message-ID: <Y8ruUIIh/9RdQfeU@sol.localdomain>
References: <20221208123454.13132-1-abbotti@mev.co.uk>
 <633629bd-753c-3097-9896-2491a0b0f1a2@gmail.com>
 <Y8oT53gEtkAOX0Zb@sol.localdomain>
 <b929eaed-0e8f-bb6c-87cb-8a36573c2769@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b929eaed-0e8f-bb6c-87cb-8a36573c2769@gmail.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, Jan 20, 2023 at 02:12:07PM +0100, Alejandro Colomar wrote:
> >  Is the undefined behavior here a real world issue
> > anywhere, or is this just a theoretical issue based on interpretation of the C
> > standard?
> 
> All implementations of sscanf(3) produce Undefined Behavior (UB), AFAIK.
> How much you consider UB to be a real-world issue differs for each
> programmer, but I tend to consider all UB to be as bad as nasal demons.  I'm
> not saying UB shouldn't exist, just that you shouldn't invoke it.  And a
> function that is used for scanning user input is one of those places where
> you really want to avoid invoking UB.

Well, according to the C standard, the behavior is undefined when the value
scanned by an integer conversion specifier does not fit in the type.  That's
clearly a bug in the standard.  Obviously, implementations need not implement
that bug, because it is stupid -- much stupider than other cases of UB in the
standard.  It's not unreasonable to focus on what implementations actually do.

In general, compilers optimize code assuming that undefined behavior never
occurs.  However, this specific type of undefined behavior is pretty obscure,
and it is hard to think of any compiler optimization that would apply to it.
I'm doubtful that any has been implemented.

UBSAN does not detect this as undefined behavior either.  (Tested with
'sscanf("99999999999999999999", "%d", &x' with gcc 12.2.0 and clang 14.0.6.)

The remaining question, then, would be whether any actual sscanf()
implementation would actually do something "bad" given one of these "undefined"
inputs.  I think the main pitfall would be that a naive implementation of %d and
other *signed* integer conversion specifiers would execute a signed integer
multiplication that overflows.  That's a more well established undefined
behavior.  Though, some implementations make that behavior defined too.

Unsigned specifiers such as %u should fare better, as unsigned integer overflow
has defined behavior.  I.e., it would be much harder to write an implementation
of %u that invokes undefined behavior due to the value being too large.

It might be fair to say that behavior here is de facto implementation-defined,
despite the standard saying undefined...

Anyway, if you do go the hard-line route of "undefined is undefined, so let's
deprecate", you need to make it clear (a) who is doing the deprecation, (b) what
the actual issue is, and (c) what the replacement is.

- Eric
