Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 224F85EEEBE
	for <lists+linux-man@lfdr.de>; Thu, 29 Sep 2022 09:19:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235148AbiI2HTT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Sep 2022 03:19:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44528 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235182AbiI2HTR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Sep 2022 03:19:17 -0400
X-Greylist: delayed 83023 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Thu, 29 Sep 2022 00:19:14 PDT
Received: from kiste.informatik.uni-erlangen.de (kiste.informatik.uni-erlangen.de [IPv6:2001:638:a000:4140::ffff:98])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC3F51166C3
        for <linux-man@vger.kernel.org>; Thu, 29 Sep 2022 00:19:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=sicherha.de; h=
 content-type:content-type:mime-version:references:in-reply-to
 :message-id:date:date:subject:subject:from:from; s=dkim20200822;
 t=1664435952; x=1665299953; bh=IxNkub08grntwyBWKY76GTdXTArHWxF6
 JS/1y/Jk0gA=; b=apptdrHZo5o6CMTM0vYJ1MMlOOGmMZZxkZJpk5+huJPmscwS
 ShZelmB2NDitg4FbySbmNtwglkJ3nXk5Xb96u1qqTH1bSRrSbiW/qSvm+yIdFUsm
 uWKIE0Uz07+jrlfs/lKVfzgmF4fllNahU8nXwgrTgHKOpX4UMB8bCYy1V0PPpc00
 euzaIgVzzyGId3gL6xiz2TjbLeLSFnPi3BAsWAaSsaKY0XUM2QCYYnmEIANjAubu
 xoGTMnBT3RbN4VwZyn5OMo79S/aqCNRZ75GmPvBwJdClv9AZZs9TZDq3akz8YwYf
 uSt5IWIXBvm8rRuRud3IIMs8Fbt3OyuETgBaJL5i6kLE5gcSbrzg5AMZC5DVNV1O
 t57FT9M+//U6r0J1tnubtNzE065uYpeRf0KTOH/5PBe6jmwvlXNvt/MK//QJyRFV
 f863smfbJlzvlEyJUuctszDEaRXHc0uUdUY1jHVrUy0XH5he4JSM5RVFzSAN1MAY
 u1ly5h5rxNNAYojzJs5p1IMZT2qTqSRuMU/UXJYiBCwhJ1XCuKcFeeDXgoPqo22n
 DAf+n2NHxehF5vGG4pV3B+Am+hEwUKnuT6FS66RuSASHQ6xrkOqe5ad61GLwmeG4
 XCy+HTfaZxddgQMBx6OrfDeIj12coDjpxdgtBqFBHFx81VREiZGmaRWV7ao=
X-Virus-Scanned: Debian amavisd-new at sicherha.de
Sender: christoph.erhardt@sicherha.de
From:   Christoph Erhardt <fedora@sicherha.de>
To:     linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: Re: Is man-pages-posix redistributable?
Date:   Thu, 29 Sep 2022 09:18:59 +0200
Message-ID: <21618857.EfDdHjke4D@terra>
In-Reply-To: <cc7fc498-f068-9f62-967b-743805298ebb@gmail.com>
References: <3765026.aeNJFYEL58@delle> <22845672.EfDdHjke4D@delle>
 <cc7fc498-f068-9f62-967b-743805298ebb@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart7433323.EvYhyI6sBW";
 micalg="pgp-sha256"; protocol="application/pgp-signature"
X-Spam-Status: No, score=-0.7 required=5.0 tests=BAYES_05,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--nextPart7433323.EvYhyI6sBW
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Christoph Erhardt <fedora@sicherha.de>
Subject: Re: Is man-pages-posix redistributable?
Date: Thu, 29 Sep 2022 09:18:59 +0200
Message-ID: <21618857.EfDdHjke4D@terra>
In-Reply-To: <cc7fc498-f068-9f62-967b-743805298ebb@gmail.com>
MIME-Version: 1.0

Thanks, Alex!

I have reached out to The Open Group via some contact form on their website; 
let's see if I'll get a reply from them.

On Wednesday, 28 September 2022 15:56:29 CEST Alejandro Colomar wrote:
> The person who could clarify this certainly is Michael Kerrisk.  I'm not 
> sure if he will have the time to read this, though.
> 
> I'm sorry I have no idea.  POSIX is too closed for my taste.  I tried 
> contacting them a long time ago regarding this, and I received no 
> answer, and their website is a labyrinth to me.
> 
> I encourage you to try to contact them with this problem, and ask that 
> they clarify it, and if possible, that they publish the source code 
> (hopefully the roff(7), not HTML) with whatever license they wish, so 
> that I can pick it easily.  I'm worried that if they don't do, I won't 
> be able to provide manual pages for the next revision of POSIX, if they 
> don't.
Hmm, that's a rather unsatisfying overall situation indeed. The description in
https://git.kernel.org/pub/scm/docs/man-pages/man-pages-posix.git/tree/README
is also vague on the details of how and where exactly to obtain the troff 
sources.

I'd really like to get back to a state where I can successfully type
`man pthread_cond_wait` into a terminal on Fedora.

Best,
Christoph
--nextPart7433323.EvYhyI6sBW
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEwp5/nkNlccrQ2UKH4yzDBS9Gs8IFAmM1RuMACgkQ4yzDBS9G
s8LYvBAAoHQFtI4ym1EJD0S1LhAs6oSHFp9yx/rtlv4L/pdffnz6YOR75RQ3Bi3R
eP50ebEDN3j/S5bskrdsovirt4KBfbKSrKdnQKe1AcxiHvD4JWnfY74AWZYhru0Z
LpYuBviDgPaNmdGLrdKX47DXlXZlTIayxPii5I/I4gKP0VQjprr0hSGp51ywaTOm
x0IYgHWlWM4EjiYsKEbuKZbm/Y7/znbk3SO5iVN5awbsJT1rHjMeGu+za8g8Fwes
4QGu5/BrXZBPiBz/vQISMW/Mm3e2PS4P4rGbkrVVPiIQ/KMe+f8HCfcEZWfs3aPx
btbwtAMCHHfJAwdg60606BoTZBbZL6tZ1mdu8kByY8rBKlNClXzG+u+yeWSd+hTM
1xdkDkwwo3JuQN8ra7ypEaqzxvXLKtkHYxpEPphr8LPj37qmZamHcgZU2WEenui+
C3AkcxSY8NC3Y2p3R5cG9LzJyaPORESVgKFv1bNDADG+ncZq6UjLmprQxfl/G9yi
UqUeR8pAxz0s6uQxKB6i+VJq6XlcY3W5XSYEful7zrH4elSZLk/yaj2q5mWxmm41
Ti35oTO9ZL8YH1gbvJvv5SJv1MeCugFUgeGTv4HL4h3si6ERTTxHM3qoHCREm2Fq
saX78M7XDKSJko/rnqgLXvVWFXlvK7g0uxockFiZZhp2XVecESE=
=mhBz
-----END PGP SIGNATURE-----

--nextPart7433323.EvYhyI6sBW--


