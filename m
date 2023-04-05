Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 670516D71B2
	for <lists+linux-man@lfdr.de>; Wed,  5 Apr 2023 02:50:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236585AbjDEAu3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 4 Apr 2023 20:50:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236245AbjDEAu1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 4 Apr 2023 20:50:27 -0400
Received: from smtp.gentoo.org (dev.gentoo.org [IPv6:2001:470:ea4a:1:5054:ff:fec7:86e4])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66EA1423B
        for <linux-man@vger.kernel.org>; Tue,  4 Apr 2023 17:50:26 -0700 (PDT)
References: <87lej9u4g4.fsf@gentoo.org>
User-agent: mu4e 1.10.1; emacs 29.0.60
From:   Sam James <sam@gentoo.org>
To:     Sam James <sam@gentoo.org>
Cc:     linux-man <linux-man@vger.kernel.org>
Subject: Re: make check failure with man-pages-6.04?
Date:   Wed, 05 Apr 2023 01:49:25 +0100
In-reply-to: <87lej9u4g4.fsf@gentoo.org>
Message-ID: <87sfdfqhj6.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
        micalg=pgp-sha512; protocol="application/pgp-signature"
X-Spam-Status: No, score=-2.0 required=5.0 tests=RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS,TO_EQ_FM_DIRECT_MX autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--=-=-=
Content-Type: text/plain


Sam James <sam@gentoo.org> writes:

> [[PGP Signed Part:Undecided]]
> Hi all,
>
> Congratulations on the new release :)
>
> With `make check`, I get the following:
> ```
> # make check
> GREP    .tmp/man/man1/memusage.1.check-catman.touch
> .tmp/man/man1/memusage.1.cat.grep:130:           Memory usage summary: heap total: 45200, heap peak: 6440, stack peak: 224
> .tmp/man/man1/memusage.1.cat.grep:133:           realloc|        4044800             0  (nomove:40, dec:19, free:0)
> make: *** [lib/check-catman.mk:36:
> .tmp/man/man1/memusage.1.check-catman.touch] Error 1
> ```
>
> I'll be honest and say I have no idea how to interpret this, if it
> matters, or how to give more info (so let me know how if I need to!)

Also, if you can't get to fixing it, that's no problem obviously, but
it'd help a bunch if someone could let me know if this is severe or not
- or if I can just disable tests temporarily in our packaging for now if
it's not a big deal.

>
> best,
> sam

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iOUEARYKAI0WIQQlpruI3Zt2TGtVQcJzhAn1IN+RkAUCZCzFvV8UgAAAAAAuAChp
c3N1ZXItZnByQG5vdGF0aW9ucy5vcGVucGdwLmZpZnRoaG9yc2VtYW4ubmV0MjVB
NkJCODhERDlCNzY0QzZCNTU0MUMyNzM4NDA5RjUyMERGOTE5MA8cc2FtQGdlbnRv
by5vcmcACgkQc4QJ9SDfkZD37AEAzu1woOHZT1DgpLpiGihiAj94zD723kGKGInO
ijUHM90BANUDgfPBskqUThHbMx75FNeGx89sQf5q0yvNExrK0gEI
=4QDV
-----END PGP SIGNATURE-----
--=-=-=--
