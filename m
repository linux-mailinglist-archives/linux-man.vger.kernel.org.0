Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E2C4E74BD36
	for <lists+linux-man@lfdr.de>; Sat,  8 Jul 2023 12:11:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229941AbjGHKLp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jul 2023 06:11:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229627AbjGHKLn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jul 2023 06:11:43 -0400
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E8CB10FF
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 03:11:42 -0700 (PDT)
Received: from submission (posteo.de [185.67.36.169]) 
        by mout02.posteo.de (Postfix) with ESMTPS id 79987240103
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 12:11:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
        t=1688811099; bh=7o8jqlsHTudixS7qJDSdEJLmH7esQY0JHJ7fTpc82FI=;
        h=Mime-Version:Content-Transfer-Encoding:Date:Message-Id:From:To:Cc:
         Subject:From;
        b=YhTImHcfLGUcB8BI9l7gXsXdIqU2inpql3cZBw1Hs2B4qhYUfXGv78QBfl3TysSVK
         hNkowBiw1Seq8GbyWnpB7//2i4eq0mKAMlyiBpwgYENmgMXbfgGR4CVSmD8sInial+
         cdG2Ragf70bWwOTIt9ud4j7AxE08dLu967fCRRZHyS/KzEauEfwHLisNNdH6JOEtPX
         Tal71aYIYqyX7JKzdkUhnECLTTQq76rdYWClzfTsjRJoC1nOIumtF/qf8OM1hFX5Ye
         +WOHE7xVAmYGYO4z8zHaILmgUEux4jUo2HpHeABH5DfRYgrhwc5arcfNPBWpdOKvjW
         75rVZfm7X1Qfw==
Received: from customer (localhost [127.0.0.1])
        by submission (posteo.de) with ESMTPSA id 4QymJV62m0z6txJ;
        Sat,  8 Jul 2023 12:11:38 +0200 (CEST)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date:   Sat, 08 Jul 2023 10:10:01 +0000
Message-Id: <CTWPJBPKXRDW.3KYB31EMTA2B5@morphine>
From:   "Tom Schwindl" <schwindl@posteo.de>
To:     =?utf-8?q?=D0=BD=D0=B0=D0=B1?= <nabijaczleweli@nabijaczleweli.xyz>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     <linux-man@vger.kernel.org>
Subject: Re: [PATCH] regex.3: "([^...])" is not an end of sentence
References: <cndmjlonfcjogtpy7fsrtouncxn335fu52u35poylcwtxihztd@hq2fb3sqvizd>
In-Reply-To: <cndmjlonfcjogtpy7fsrtouncxn335fu52u35poylcwtxihztd@hq2fb3sqvizd>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

On Sat Jul 8, 2023 at 5:11 AM CEST, =D0=BD=D0=B0=D0=B1 wrote:
> Caused a double space before "not".
>
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>
> ---
>  man3/regex.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/man3/regex.3 b/man3/regex.3
> index 13e540b22..630c0369d 100644
> --- a/man3/regex.3
> +++ b/man3/regex.3
> @@ -109,7 +109,7 @@ .SS Compilation
>  Match-any-character operators don't match a newline.
>  .IP
>  A nonmatching list
> -.RB ( [\[ha]...] )
> +.RB ( [\[ha]...\&] )
>  not containing a newline does not match a newline.
>  .IP
>  Match-beginning-of-line operator

I cannot reproduce this on my system; only one space is rendered.
After applying the patch, there are no visible changes. So if there really =
are
issues for some people, your patch at least doesn't break anything.

--=20
Best Regards,
Tom Schwindl
