Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AA4BE698039
	for <lists+linux-man@lfdr.de>; Wed, 15 Feb 2023 17:12:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229496AbjBOQMJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Feb 2023 11:12:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229646AbjBOQMI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Feb 2023 11:12:08 -0500
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FA353B0C6
        for <linux-man@vger.kernel.org>; Wed, 15 Feb 2023 08:12:07 -0800 (PST)
Received: from submission (posteo.de [185.67.36.169]) 
        by mout01.posteo.de (Postfix) with ESMTPS id E7504240364
        for <linux-man@vger.kernel.org>; Wed, 15 Feb 2023 17:12:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
        t=1676477525; bh=A8eFX6YSa5u2k9XUjcsKSiCqA0nSFJeMjEsME8dZQkc=;
        h=Date:Cc:Subject:From:To:From;
        b=R0atvL1VQqjvTuE2RPntLJmZZe5otjAAVfnU2bfPFynArDPZF2NNrWQN5zSZrUCdz
         ojSeUA3+adY/wAlw5ObEnyjRk38VKjocK70nB+d285IMzZU3xq4EkiWOgS96atBUuT
         YXXB9V9vkeywJwUgv338cJN1qveomHc9re4KQ2GT+vT05PyHddC1Nb1BxTbnYH1Nfs
         eawy5Ajdlc1CrqBkO6zbNuXymEroFeKIgf0GlnuB/ijxel4EbHAqU7Pwz8yAZS8UT/
         hyqI+qn00NTC74QrLTEjDPDmklhyxrsI49Cwhihx+R9LKN0bZW3SPk9JEaUOJsDLx8
         4uSy+blN0H1ug==
Received: from customer (localhost [127.0.0.1])
        by submission (posteo.de) with ESMTPSA id 4PH34N6lx9z6ts1;
        Wed, 15 Feb 2023 17:12:04 +0100 (CET)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date:   Wed, 15 Feb 2023 16:11:09 +0000
Message-Id: <CQJ9NXF0GW79.O9TXGIQJ1PRK@morphine>
Cc:     "Alejandro Colomar" <alx@kernel.org>, <linux-man@vger.kernel.org>
Subject: Re: [PATCH] memcmp.3: wfix
From:   "Tom Schwindl" <schwindl@posteo.de>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <20230215130750.30037-1-schwindl@posteo.de>
 <20230215151834.qorjvmvoqza2ddmr@illithid>
In-Reply-To: <20230215151834.qorjvmvoqza2ddmr@illithid>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed Feb 15, 2023 at 4:18 PM CET, G. Branden Robinson wrote:
> At 2023-02-15T13:07:50+0000, Tom Schwindl wrote:
> > -On Linux, it may be necessary to implement such a function oneself.
> > +On Linux, it may be necessary to implement such a function yourself.
>
> The existing language is sound.  What is the motivation for the change?
>
> Regards,
> Branden

From a formal perspective it's probably fine. But as a reader, I think it s=
ounds
wrong. Or at least strange. That may be because I'm not a native speaker, b=
ut
neither is the majority of the manpage readers.
I simply think that "yourself" sounds better in this context. That's also t=
he
reason for this patch. I've read the manpage and hesitated for a short mome=
nt
which, for me, indicates a poor choice of words. A `grep -i -r oneself` als=
o
only yields a single result, this manpage.

--=20
Best Regards,
Tom Schwindl
