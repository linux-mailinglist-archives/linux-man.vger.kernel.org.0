Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 43E2976EFDA
	for <lists+linux-man@lfdr.de>; Thu,  3 Aug 2023 18:44:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234465AbjHCQop (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 3 Aug 2023 12:44:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234956AbjHCQoo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 3 Aug 2023 12:44:44 -0400
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id B3FB4E77
        for <linux-man@vger.kernel.org>; Thu,  3 Aug 2023 09:44:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202305; t=1691081080;
        bh=DClhtbw0Ue/kzadCWhtqt7zT1ZO3pgwybjLk12wxRRA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=T6uG+nUe0naj9hMvtEcwLywF115uep8pOetKvxQa3RMovQe8axdhNW9pAFiP62TDr
         wCIFB6gMzd6YzdQVZg6lL94Mw4sc47GFb1d/FMA55JheiHDX4c+HYrxCHXJmZdYfsV
         4lA+ByP+9mkiIE1KyT9iMpABoorD9K9wHq3SgyMw0seAlHll7iVqI/8+E8U4571gOV
         jDkEEjeHQboj5tPEj0wYirETHWEn5SEuVDbrKaX2HM6+rZy8lwW+1GIM47Kqiddk4C
         +HemaFkQH7Ig0wWp8tEQQNlb1WoWmE4F+RJCHO9/O5cBDAYrY3aJiGHp6w+yV8MyVq
         ZlwzQYz7W4gmQ==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 8FEB94CE6;
        Thu,  3 Aug 2023 18:44:40 +0200 (CEST)
Date:   Thu, 3 Aug 2023 18:44:39 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Sam James <sam@gentoo.org>
Cc:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH] fsync.2: no writability requirements, must operate on
 directories
Message-ID: <chpbqb5rjeb5whr62vvwzhngjq6j67wxrv65itkyxtstjadpv5@7zertid7f2wr>
References: <oc67sum2hk73gl7oim7kitbqac6gcursqcxf6j2qjxzzdzgbxq@afirbuozty2f>
 <87y1isnm7w.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="b3zrpjhky36gymsc"
Content-Disposition: inline
In-Reply-To: <87y1isnm7w.fsf@gentoo.org>
User-Agent: NeoMutt/20230517
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SCC_BODY_URI_ONLY,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE,URI_HEX
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--b3zrpjhky36gymsc
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 03, 2023 at 05:07:00PM +0100, Sam James wrote:
> =D0=BD=D0=B0=D0=B1 <nabijaczleweli@nabijaczleweli.xyz> writes:
> > Kill the FUD that says that some UNIXes require the fd to be writable:
> > they /must not/ and this confuses users:
> >   https://101010.pl/@eater@cijber.social/110824211348995583
> Must not, or need not be?
Mustn't require writability, since they needn't be writable.
Admittedly, this is probably sub-optimal phrasing.

--b3zrpjhky36gymsc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmTL2XUACgkQvP0LAY0m
WPFNEg/8DDkQeSOWyz/3FefuKbKRm5ajqb7QHS1SVXLwFATxr8z81qjckLUZETkI
z2YyJpwKkaImKHE70mQfQf/wQfId6YGex5tY+xnDpp4ErLzzwTLJaEaUpQ+cFaS4
VfpyVtBowhgh+oZ4khdZ5b40w3CyeWY7A25LN11/PZC8nE5Qjj36oCoYBwUE6pSB
PanzrKyx9xO+Gg3ykpDZHxJouRAiE4cMY7sldYkxDHvWZptp12imkk7kaqXy96yc
n2h496h2upaa7w6wzvjJrOwcDbHb4kCwEZGTOjGE/5izByX9HOvVfIIvC60dBvfE
JQd4PIyx2H2fZrbM8AGysxPlwYqzPJhysy93fO3bXrBD0DwBMxSylavUc3ZeqQVT
eL4hA7GY91qHWe3trZZ+OUoM1ii4LTebesejEOqcbMVWloWsGwC1qUBTrbo+L/e/
r3tw+v+WmUBpNkF2A5qEfR5kBokfYgQJjof353v/lPW07xKRbmK0M3L1H7MUBdB2
+eu8okZZwKz7b6W67nTEOz2c87kRD+YxAbLwAq1obxUxOdsounLbABGB2IbZY/TX
l3sYTuYyJYZDznWzWlTvbBozFtlt5C4f7Mlkavhu3K8yT84Qd2mWmMElhrOLCPfG
3IvQVfdRPR/K1wg3Lqsdfr4L+S7JvSxwgvVkEj6I9Aes37hGzA8=
=2rZ7
-----END PGP SIGNATURE-----

--b3zrpjhky36gymsc--
