Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 21C83768649
	for <lists+linux-man@lfdr.de>; Sun, 30 Jul 2023 17:45:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229652AbjG3Ppp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 30 Jul 2023 11:45:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229579AbjG3Ppp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 30 Jul 2023 11:45:45 -0400
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com [IPv6:2607:f8b0:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AFC61DF
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 08:45:43 -0700 (PDT)
Received: by mail-ot1-x32c.google.com with SMTP id 46e09a7af769-6bc9811558cso790752a34.0
        for <linux-man@vger.kernel.org>; Sun, 30 Jul 2023 08:45:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690731943; x=1691336743;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=X395WTuXv/w3wFOZAJXbVhXByWfgfqWuB4nnwSU7T7g=;
        b=gKdEiyGhlQOy8YqTZg4HudCD12H/7eCM3NAVGL1f2y8j36IyDtou8gTkCIrnHU9S+c
         Z4ctc/AriVGt34sJ/s0vsIsWtm4djeMLmlMj08pdnb9ancs5F6fZxav7AerLrrQ81k7O
         aAjsz6OBOF2/IhXGpDbTMN8ujxcfgZMaCU5Y1JZ93yhP/gKqg0xTcAFxq/qQhTixwERy
         L0yDpR4bWuM4NKAfhNgehh7WYdbvg4RHDP7HhDaiNd/yfttAAQ54PUyvNmRAReis3hbR
         lSXxiw9Fn6zCoieDDo1Dc7UC/5ezEeOdXr7bRc39eerlh6lATfRyftrZlGvXdTTVStfX
         IVTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690731943; x=1691336743;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X395WTuXv/w3wFOZAJXbVhXByWfgfqWuB4nnwSU7T7g=;
        b=gZL+6BcNQpdT3ZSnZKbpqb/bgeUXtFtup6SSqA2xpy1K9eVnG3eHpc1HMgyRgZLRWC
         eQHq7iTkZBe1nWHYFoW1QBTDUnjvG0PLOwtPp+NYzbzPObyBCl4j/WuSw2+jU+39dfoF
         bdl4/GjL2Gcyd8P2EJ5ck+ZP7HigNxGV8tL5+U0BtqlqJFawi/1x1/oiSK93nfTqYVCB
         gyxUg9ZC70E8lf2gnYAJLIpvqnTMYewNe+dZFvNeWqHKiA0CAibOkRLJj6m4m25CiLW6
         EDc+51+S2A2+Dy09ZNvmdBvJhsJqjgEpcwDDA1xHnx1iziXH2iilY5KyYnXIzaEzygKf
         21gQ==
X-Gm-Message-State: ABy/qLaaKi67kCUNjSK3C7WbvayZ9ILUeNkC+kdLPdnb0GM3jtQwULmp
        oKAE303HO2zZQRGH4xekN7fjxHCsEXe5fw==
X-Google-Smtp-Source: APBJJlEKmmuBF7cCareWIFMdgxMo7h1R5IaFVMaHaBsFruefShXmw25ZQlchJvVVZgfp5v0jyVpSOA==
X-Received: by 2002:a05:6830:1246:b0:6b9:db92:9bd3 with SMTP id s6-20020a056830124600b006b9db929bd3mr7145597otp.13.1690731942840;
        Sun, 30 Jul 2023 08:45:42 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id y1-20020a056830108100b006b8c87551e8sm3355145oto.35.2023.07.30.08.45.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Jul 2023 08:45:42 -0700 (PDT)
Date:   Sun, 30 Jul 2023 10:45:41 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v3] time.1: ffix
Message-ID: <20230730154541.uitln7ioq4bw6xkq@illithid>
References: <20230730152149.ajvi7zhskzzsp5jz@illithid>
 <76ee749c-6220-81e3-3c2d-af52da823ba4@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="ymovqyo3bmgcvg4x"
Content-Disposition: inline
In-Reply-To: <76ee749c-6220-81e3-3c2d-af52da823ba4@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ymovqyo3bmgcvg4x
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-07-30T17:35:06+0200, Alejandro Colomar wrote:
> That's the reason to use a non-breaking space over a breaking space.
> However, I'd also like to see justification for using a non-breaking
> space over no space at all.

Readability.

Consider the synopsis of groff(1) itself.

        groff [-abcCeEgGijklNpRsStUVXzZ] [-d cs] [-d name=3Dstring]
              [-D enc] [-f fam] [-F dir] [-I dir] [-K enc] [-L arg]
              [-m name] [-M dir] [-n num] [-o list] [-P arg] [-r cn]
              [-r reg=3Dexpr] [-T dev] [-w name] [-W name] [file ...]

Pasting into this email, it's stripped of all its formatting, a scenario
we can imagine affects some number of users, especially those confused
by the old overstriking convention and who employ crude tools.

        groff [-abcCeEgGijklNpRsStUVXzZ] [-dcs] [-d name=3Dstring]
              [-Denc] [-ffam] [-Fdir] [-Idir] [-Kenc] [-Larg]
              [-mname] [-Mdir] [-nnum] [-olist] [-Parg] [-rcn]
              [-rreg=3Dexpr] [-Tdev] [-wname] [-Wname] [file ...]

Is that as easy to make sense of?  Maybe it is for some people,
especially if they already know that groff doesn't ever use a single
dash as a prefix for a long option name.  But there are conventions
other than GNU's.

    xclock [ -help ] [ -analog | -digital ] [ -brief ] [ -chime ] [ -hd
    color ] [ -hl color ] [ -update seconds ] [ -strftime format ] [
    -twelve | =E2=80=90twentyfour | =E2=80=90utime ] [ -padding number ] [ =
-norender ] [
    -render ] [ -sharp ] [ -face pattern ]

That actually proves to be a better example of bad formatting than I had
hoped for--look at all those problems!  Anyway, an expert can figure out
that "-utime" doesn't refer to an option "-u" that takes a metasyntactic
"time" as an argument.  But we shouldn't write man pages only for the
attention of experts.

Regards,
Branden

--ymovqyo3bmgcvg4x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTGhZ0ACgkQ0Z6cfXEm
bc5oYA//fM+4+5Rx11du6a/Eaqec1GNd8uMmq7f0zRvqgF9yzdpC0dg3IV7boYu2
77z21fC9iZ8rZrdop4Ie16CJQ5YDRmSCNoBX07BSHOumH3k6NNWU2he3G/mn+D8M
tWY9YKL1b0ue/IUyh4lhu/TBH6XDUL9fZunfa8CyiQwRkC+irajWpSfJLwlQU30q
mibLhfhAaUe0QNFmAwCJhFy8HL4xmGkQAimo8uB4ZBF5GxqU/RNDiSzidjDOgCcr
v7w3oDVKI7tcHOO9RPh7gTqCMEMG2TfdbZledx+1jtAxpkKKr2arHdWQzpDVfoWe
kK23QGWCFx55t7arzM9CZnkVrGdKP4G/73mByHOcvZVxQg+OHT41acjzebpdVxwb
xEde3O0kLS5sy2xSs5jizplKWWX0fqqzNeEKzui+Sns2C/ITbP0+TUFxiHUQkP8P
0t+46GVBCSNqvrLvgbC9llq8Mdk7crbSgkVFKFSMmctIhZxNapb+azbh2euMGIbT
tReKMlQ5mT79fvBXBxdIkaxNIMuijwa4GnY/gLZB+Z6OTYVxoRxXx07s/nJakEGJ
xR0VzW2n9746uKsFGD2cApJWoQyt5PZGDRGGe0pXcNk/XnCYAcdUyC+CFjfHB50o
rRPmVITetWctdZE43ro5JwwoVMuygtYuvi1/5+KdzGFM1n1oIFk=
=uY4T
-----END PGP SIGNATURE-----

--ymovqyo3bmgcvg4x--
