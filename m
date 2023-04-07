Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E99516DADA3
	for <lists+linux-man@lfdr.de>; Fri,  7 Apr 2023 15:32:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230474AbjDGNcm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Apr 2023 09:32:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43196 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230363AbjDGNcm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Apr 2023 09:32:42 -0400
Received: from mout-p-103.mailbox.org (mout-p-103.mailbox.org [IPv6:2001:67c:2050:0:465::103])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5638846B7
        for <linux-man@vger.kernel.org>; Fri,  7 Apr 2023 06:32:40 -0700 (PDT)
Received: from smtp202.mailbox.org (smtp202.mailbox.org [IPv6:2001:67c:2050:b231:465::202])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-103.mailbox.org (Postfix) with ESMTPS id 4PtK6q0WJZz9sT0;
        Fri,  7 Apr 2023 15:32:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aarsen.me; s=MBO0001;
        t=1680874355;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=frR7TUX0fsleki9IVXwRILOARqVupqAiV8D0h8ReMnw=;
        b=Pm8piLOFDE5usYOtyZKkfIjk+nyChNWjK2nv3ZX6mA/higbnPEIitGGl2KZhRFxAZumeYg
        O1pQhoWRpD0/NmGysLExK0EhpQvK9g3RL9OYOnZ10j2n5z6jWEo4rY5YkSd0U4UaGQMPZE
        cW5ycWSusBZvyDSnTMYQaZZu1s10MfIGQlh35IDO3bojjbbCgTzev31DxkmYCnNVWhAziu
        ipQFLNe5Htf98LFlLA4TSe4ARMsE5ns6Xp7ZNJUYAu/FbM52s0ALL4Jc3SNv7AKWC7HMgt
        nlYJ1DEV5RwBfBhjCXp9295uVES2f7xN0rn3DB9l/zqIvAUxDIwyZrTWbj91Pw==
References: <ghileoo9dk.fsf@gouders.net> <ghbkkgo8x8.fsf@gouders.net>
 <073413e2-7d35-f0d7-26eb-f66908d7af6a@gmail.com>
 <ghedoy8x5y.fsf@gouders.net> <87y1n6o1b3.fsf@aarsen.me>
 <ghpm8iyzqj.fsf@gouders.net> <83zg7mqha4.fsf@gnu.org>
 <865yaa81ru.fsf@aarsen.me> <83r0sxqvg6.fsf@gnu.org>
From:   Arsen =?utf-8?Q?Arsenovi=C4=87?= <arsen@aarsen.me>
To:     Eli Zaretskii <eliz@gnu.org>
Cc:     GavinSmith0123@gmail.com, dirk@gouders.net, alx.manpages@gmail.com,
        linux-man@vger.kernel.org, help-texinfo@gnu.org
Subject: Re: A less presumptive .info? (was: Re: Playground pager lsp(1))
Date:   Fri, 07 Apr 2023 15:14:03 +0200
In-reply-to: <83r0sxqvg6.fsf@gnu.org>
Message-ID: <87fs9bu8b5.fsf@aarsen.me>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
        micalg=pgp-sha512; protocol="application/pgp-signature"
X-Rspamd-Queue-Id: 4PtK6q0WJZz9sT0
X-Spam-Status: No, score=-0.9 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


Eli Zaretskii <eliz@gnu.org> writes:

> Gavin will tell, but AFAIU our plan is to develop js as the means
> towards the goals you mentioned.  That will allow using HTML browsers
> to read Texinfo documentation without losing the functionalities of
> the Info readers we value.  HTML rendering reflows as integral part of
> its workings, so that problem is not an issue if this plan succeeds.

Sure, but how will this work with the standalone and/or Emacs viewers?

In Emacs, doing so places a strain on the HTML generator to work around
eww, and presuming we choose to do that, it requires the user to have
Emacs.

In the non-Emacs case, it requires that the implementor implement at
least a subset of HTML, or places a demand on the user to have a web
browser (in which, there are two extremes: either the 'underimplemented
and insufficient' ones for which JS as glue won't work, or full browsers
which aren't accessible in many scenarios).

On the other hand, having a more advanced format based on s-exprs for
info at rest storage could let us have complete information about the
intended markup of the text to be displayed with only two syntactic
elements (lists and strings).  That should be rather easy to parse.

I don't see it as very viable to replace an implementable info storage
format with only HTML for that reason.

I have TODO.HTML open on my workstation to take a look through some of
those when I get back home.  I do believe that it's a high priority
target, as it is very important to newcommers to GNU who are viewing GNU
documentation from remote servers, but I doubt it can replace a native
Info format.
=2D-=20
Arsen Arsenovi=C4=87

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iIYEARYKAC4WIQT+4rPRE/wAoxYtYGFSwpQwHqLEkwUCZDAbbhAcYXJzZW5AYWFy
c2VuLm1lAAoJEFLClDAeosSTuuIBAPwKIhJMVhjRDQMWmGlQ8upHFXO52qfolZpU
XLCVJKPEAQDGaoBD8V4UehlOSI/hatmF3/Xip6nMARo4usP6UBY1DQ==
=nKqW
-----END PGP SIGNATURE-----
--=-=-=--
