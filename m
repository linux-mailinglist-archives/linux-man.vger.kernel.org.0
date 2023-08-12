Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 56DAC77A1EE
	for <lists+linux-man@lfdr.de>; Sat, 12 Aug 2023 21:11:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229684AbjHLTLb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Aug 2023 15:11:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229475AbjHLTLa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Aug 2023 15:11:30 -0400
X-Greylist: delayed 354 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sat, 12 Aug 2023 12:11:32 PDT
Received: from out-65.mta1.migadu.com (out-65.mta1.migadu.com [95.215.58.65])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22BC7171C
        for <linux-man@vger.kernel.org>; Sat, 12 Aug 2023 12:11:32 -0700 (PDT)
Date:   Sun, 13 Aug 2023 05:05:10 +1000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
        t=1691867136;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=5t1ydpeT1PBRUCiJBLgwHYFeLcNn5kmdIvhn2VFTf7k=;
        b=bVgKAKyQUjkuLZDEpkQ+SBFMTWo/Yw8r3QFrZKwShtSkBGRJOUn1hgoMigyzQyGCcF53Yl
        gKm26+ljPuG7pX18NQRp/jK0Ob49RPWTU8G4EPm1Jeat/6yBKGFx/a1y/PqttxM0HNdJO1
        7i5XQ3H8RoIJy0JJB5RFsNEsrz6zmcrJIKCLuUjmufBnLl3XPl/R10/ft+bAJYjvD4+QNS
        57tQKzIuY9LvURBJvWrmUwZf6Sk80yFZDKh3fStDzf9MNjIyYChpXK3vYTg769t8guyCan
        Iq1dNykuXTfBO2LQ4s/gx+8ih8ANlZ7VvHsJuvjx3BMYMZKEA9m2x/39V0EZFg==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From:   John Watts <contact@jookia.org>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     Sargun Dhillon <sargun@sargun.me>, linux-man@vger.kernel.org
Subject: Re: [PATCH] clone.2: Fix the erroneous statement about CLONE_NEWPID
Message-ID: <ZNfX5ilXYK3Ut8Tr@titan>
References: <20230810022603.947583-1-sargun@sargun.me>
 <69c6a263-3578-2d1e-23c0-6a8e9c35602f@kernel.org>
 <923b82cd-9bfe-44bd-1d8b-26fa35799d64@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <923b82cd-9bfe-44bd-1d8b-26fa35799d64@kernel.org>
X-Migadu-Flow: FLOW_OUT
X-Spam-Status: No, score=-0.7 required=5.0 tests=BAYES_05,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sat, Aug 12, 2023 at 07:51:43PM +0200, Alejandro Colomar wrote:
> Does this depend on any recent kernel version?  In my system,
> the assertion fails.
> 
> 
> $ cat clone.c 
> ...
> 
> $ cc -Wall -Wextra clone.c 
> $ ./a.out 
> main program:  pid: 18783, and ppid: 18703
> a.out: clone.c:24: main: Assertion `ret != -1' failed.
> Aborted

On my systerm I get the same result. strace says this:

clone3({flags=CLONE_PARENT|CLONE_NEWPID, exit_signal=0, stack=NULL, stack_size=0}, 88) = -1 EPERM (Operation not permitted)

However when running as root it works.

John.
