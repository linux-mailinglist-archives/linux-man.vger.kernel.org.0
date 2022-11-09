Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD174622F80
	for <lists+linux-man@lfdr.de>; Wed,  9 Nov 2022 16:58:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229910AbiKIP6L (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Nov 2022 10:58:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229588AbiKIP6K (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Nov 2022 10:58:10 -0500
Received: from smtp.gentoo.org (woodpecker.gentoo.org [IPv6:2001:470:ea4a:1:5054:ff:fec7:86e4])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 923D811C36
        for <linux-man@vger.kernel.org>; Wed,  9 Nov 2022 07:58:08 -0800 (PST)
Received: by smtp.gentoo.org (Postfix, from userid 559)
        id E1262340E62; Wed,  9 Nov 2022 15:58:05 +0000 (UTC)
Date:   Wed, 9 Nov 2022 22:58:03 +0700
From:   Mike Frysinger <vapier@gentoo.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx@kernel.org>,
        Mike Frysinger <vapier@chromium.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Stefan Puiu <stefan.puiu@gmail.com>
Subject: Re: [PATCH] INSTALL, Makefile, cmd.mk, lint-man.mk: Lint about '\"
 t' comment for tbl(1)
Message-ID: <Y2vOC3VJWAg3K141@vapier>
Mail-Followup-To: Alejandro Colomar <alx.manpages@gmail.com>,
        Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx@kernel.org>,
        Mike Frysinger <vapier@chromium.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Stefan Puiu <stefan.puiu@gmail.com>
References: <20221109151812.58365-1-alx@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="JSqPxdEGGDmsA6it"
Content-Disposition: inline
In-Reply-To: <20221109151812.58365-1-alx@kernel.org>
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--JSqPxdEGGDmsA6it
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On 09 Nov 2022 16:18, Alejandro Colomar wrote:
> --- a/lib/lint-man.mk
> +++ b/lib/lint-man.mk

i guess not a new issue, but it feels like writing lint logic in Makefiles
is not the best use of time.  this logic is really hairy.

> +$(_LINT_man_tbl): $(_LINTDIR)/%.lint-man.tbl.touch: $(MANDIR)/% | $$(@D)/.
> +	$(info LINT (tbl)	$@)
> +	if $(GREP) '^\.TS$$' <$< >/dev/null && ! $(HEAD) -n1 <$< | $(GREP) '\\" t$$' >/dev/null; then \

POSIX grep has a -q option so you don't have to redirect to /dev/null.
	if $(GREP) -q '^\.TS$$' <$< && ...

also, is there a reason you're using a redirect instead of just passing the
file to grep ?  the redirect works, but it seems to contribute to general
"this code is hard for humans to read".  i don't think you really need to
be concerned with files starting with dashes ...
	if $(GREP) -q '^\.TS$$' $< && ...

or more completely:
	if $(GREP) -q '^\.TS$$' $< && ! $(HEAD) -n1 $< | $(GREP) -q '\\" t$$'; then

> +	fi;

don't need this trailing semi-colon
-mike

--JSqPxdEGGDmsA6it
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEuQK1JxMl+JKsJRrUQWM7n+g39YEFAmNrzgsACgkQQWM7n+g3
9YF0XA//X9MxUDGfvjxrQmJRp9SvbjtHXNEO/K9svTYPV3AHD4K7oBclwUZDYEz6
CS0dEEX4D0LvzcLAiRi+0sbvvJ0K1ZM6di/6ExUcEsocM2+IZ8w7qjCFge5T9b6e
XcUe/0nlavSM8ubRunZYw+DYpIoe8nGL1R+5JJLpEgfudCx52kQsKXc/jDM+g9ID
3HEq7iOonzKkogbKRxY92zqtbehzcJKQ4uKEfjXAoSwsmzQGnat6iMnCJ9cXQzt1
hK6gsOCXCOcQdwZ13MzuhwhZbPqJHRx/FKUhGckXefrcdnjyOK+jowDBocAiG7u/
2s2PoiWzaqP/C4YQR79E1lzu+BQwWlH+sx3HDv83AwM+Nr3uc9QfjR+Y1K4fqfBG
2v6kQkvZ7Iwfz5VmGkYUamXXSWhZH8VMG29N/ZaagR/G01S7TvS2D0kqdtQ+yux5
iMZztQpFPZMnn1kgfy1rxTfQ+kkEbUl5UjShP8koUFhiclpgwooyNu+tl1eWB3EM
yYJrFQH2UE0mblvkdh6HE/GoB1pGrD2ukVolDCGCSWppd3UvSTNgTz9H81ggJ5RH
pDymcRNJVauHNGJVqcf/focDIznMVGwZHuDJHLyXlc64XtfM6LfUzenlf8JbUEU7
B5yuUxTuirfVD8qXQ8n/ZG0+9kPDg/vsr6U3YfL+/2Ufxmmoq1I=
=5sMH
-----END PGP SIGNATURE-----

--JSqPxdEGGDmsA6it--
