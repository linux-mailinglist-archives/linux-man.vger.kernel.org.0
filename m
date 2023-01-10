Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9D53366476C
	for <lists+linux-man@lfdr.de>; Tue, 10 Jan 2023 18:30:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230138AbjAJRaZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 10 Jan 2023 12:30:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234308AbjAJR2d (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 10 Jan 2023 12:28:33 -0500
X-Greylist: delayed 400 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 10 Jan 2023 09:28:31 PST
Received: from mail.ljabl.com (mail.ljabl.com [IPv6:2a01:4f8:173:2dd8::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B08E7479F7
        for <linux-man@vger.kernel.org>; Tue, 10 Jan 2023 09:28:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ljabl.com; s=20220906;
        t=1673371309;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=AcWEIGzCDChpPSQg7WDVyHon6fS0tRgSVyAsbTxZJ+U=;
        b=aNMDzgdJ/DsaMau/3Bcxc4+FaYBiptf5c6QVTve/yElHZ3lWSMy02cyIx4lJrrXPwrxDPy
        sgb6m2RMD5PWbXdz/Bb3GGzBXqBtEz2/GgxYf29SzHnrpewfjqepB4kjV3JzZNgxJIZ5ms
        6vt3XhfJfcG4DMl0Y6tf7oxiB9RJwuY=
Received: by ljabl.com (OpenSMTPD) with ESMTPSA id b3e9b4e1 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
        Tue, 10 Jan 2023 17:21:49 +0000 (UTC)
Received: from localhost (beryllium [local])
        by beryllium (OpenSMTPD) with ESMTPA id 0e32f11c;
        Tue, 10 Jan 2023 18:21:55 +0100 (CET)
Date:   Tue, 10 Jan 2023 17:21:54 +0000
From:   Lennart Jablonka <vol@ljabl.com>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
Cc:     groff <groff@gnu.org>, linux-man <linux-man@vger.kernel.org>
Subject: Re: Manual page sections shouting
Message-ID: <Y72esggaPZ5jy8Z3@beryllium>
Mail-Followup-To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>, groff <groff@gnu.org>,
        linux-man <linux-man@vger.kernel.org>
References: <4ab3e3aa-9b05-765a-ba44-06bf39994d81@gmail.com>
 <20230107101752.p66xbjbojut4azes@illithid>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230107101752.p66xbjbojut4azes@illithid>
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_20,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Quoth G. Branden Robinson:
>_If_ we added yet another groff extension to man(7), analogous to
>mdoc(7)'s `Sx`, we could support hyperlinks directly to man page
>sections and subsections.  (On terminals, we'd still need a way to mark
>locations in the page text as link targets, and for it to be practically
>useful, pagers would have to grow more features.  Given the amount of
>idiocy, particularly from people who think that a URL in a terminal
>window is a security risk in some way that a URL on a web page isn't,
>that Egmont Koblinger has had to put up with in promulgating OSC 8, I
>would not count on the infrastructure for this materializing soon.)  But
>for PDF all the pieces are in place; they just need some glue in the
>groff man(7) package.

Surely man(1) and man(7) could coorperate to produce a tags file that 
could be used by a pager.  On OpenBSD, you can use less(1)’s :t to jump 
to a bunch of stuff in a man page.

-- 
Lennart
