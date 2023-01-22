Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BDE52677245
	for <lists+linux-man@lfdr.de>; Sun, 22 Jan 2023 21:18:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229980AbjAVUSM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Jan 2023 15:18:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229807AbjAVUSL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 Jan 2023 15:18:11 -0500
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2B8113DCC
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 12:18:10 -0800 (PST)
Received: by mail-oi1-x234.google.com with SMTP id r132so8746629oif.10
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 12:18:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=32t3kh2Fiw8fuTxnV8R+JlQbP4JKHISZafFyQoFEMyY=;
        b=bOqqxhneonNyC3WYKN0sdpeuKqHggqLVnCNJM1+YdzagkwQ0dWsV0dFzdgVCT40oP9
         ymSl5ieXUTiupqpO94exwVSAiy+9W3KDABIWHmaeZwER/ENJWQjY+4c2FE4uGehspIST
         8Rk0JZdPXFaV/ju8ONRjkdq+3D3PAZejB+qL3z03D+eZbJt8ku4szxRdHnq7uXOHbF8b
         etqUupRb8D6Esw1Y+8h9mlbnTX0joVHx2MiKFNVso/XFi3ihUt9+lMAxMuQOBfJns8WL
         7mgPTZD2tL/cOSZqFNSbqtQdyQzeMPBK7cyLxhyK/cNVovjjvHLM0afGfXyT/9rjyNpK
         twfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=32t3kh2Fiw8fuTxnV8R+JlQbP4JKHISZafFyQoFEMyY=;
        b=L58yvL0zEZKpZNAkmLJVKnjDrbF0O3C5BrJwdzuPgTVfmUGNfn6eJoV9y0ZAoXwAEQ
         KKmA8cGD6nf9ig3fSdq3CTDcscFvbb/e3no8NYws43NY1xJOo9AtOysHRp4PVvmrTUL0
         y9lq7/hsD5okaHZoEtPdaH/vwi18/QLqXaRQ2UDola42GR7MI68xxR0pTGpSdpiUR538
         ZDBoQbisp8PfAWxY3y+5LBAhiSdAFhG+Md46QfG1euxKsSInY6RqchZazK60Ps6W+dfX
         orIkmvEKAFpiWUjBFfzynHU6IIba8dPFRGasMblvJZnJA3+eOoBGFgeh+rn+lEF1WXVx
         nV+A==
X-Gm-Message-State: AFqh2kp88oU+T+rQN7w65JH+9+G+Sp+l5/ozX0BH4yZwx9IZchOUXvjh
        vhJYnGlQQu53OQ9A9DhMiAKEoq85oRE=
X-Google-Smtp-Source: AMrXdXsTt843JrVzttcaLV6TiP2Yu+YFmP2dss5tYtgc7iL0SPG8sD51D510DDiB9kV+yI9vxlEF+g==
X-Received: by 2002:a05:6808:5d3:b0:364:5b7a:7c79 with SMTP id d19-20020a05680805d300b003645b7a7c79mr7537132oij.55.1674418690134;
        Sun, 22 Jan 2023 12:18:10 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id g6-20020a9d6186000000b006864749f39csm9071341otk.36.2023.01.22.12.18.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Jan 2023 12:18:09 -0800 (PST)
Date:   Sun, 22 Jan 2023 14:18:08 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     alx.manpages@gmail.com, mario.blaettermann@gmail.com,
        linux-man@vger.kernel.org
Subject: Re: Issue in man page mount_namespaces.7
Message-ID: <20230122201808.2eyaslkw5id2sfr4@illithid>
References: <20230122193125.GA28817@Debian-50-lenny-64-minimal>
 <20230122195410.2ke5fk3dunh75vip@illithid>
 <20230122200133.GA30353@Debian-50-lenny-64-minimal>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="jf53a4qysfnxp2hf"
Content-Disposition: inline
In-Reply-To: <20230122200133.GA30353@Debian-50-lenny-64-minimal>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--jf53a4qysfnxp2hf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Helge,

At 2023-01-22T21:01:33+0100, Helge Kreutzmann wrote:
> This is the represenation we see (like B<> for bold, I<> for italics).
> It most likely does not look like this in groff.

Thanks for the quick follow up.  I wondered about this but since I
didn't see "\n" in any of your other reports, I thought that you thought
this character sequence was appearing literally in the man page sources.

> > 1ae6b2c7b8 (Alejandro Colomar   2022-03-18 20:25:09 +0100 1016) .I util=
\-linux
> > b324e17d32 (Alejandro Colomar   2022-12-04 20:38:06 +0100 1017)  2.27) =
in turn reverses the step performed by
>=20
> At this point I see a hard line break as well when I read the english=20
> page in man.

Yes!  This is a good catch.  Beginning a text line with space characters
forces a break (a new output line) in *roff.  That is clearly a mistake
and should be corrected.

+1 for sure.

> > That is why I suspect a problem with your tool.
>=20
> I can mark it as such, i.e. a po4a problem.

Since so much of a report is automatically generated, perhaps a glossary
would be helpful.  Your reporting dialect seems to be drawn from
Perl::Pod, but I'm not clear on whether it's a _strict_ subset or if you
have your own conventions as well.

Something like:

B<foo>		foo is in boldface
I<bar>		bar is in italics or an oblique face
\n		indicates each break when breaking is surprising

Regards,
Branden

--jf53a4qysfnxp2hf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPNmf8ACgkQ0Z6cfXEm
bc4EQQ/+OZsa9u9lg/qI/mIliXtUTFJGc7yewML8QOcsYIyzuClWzM0ZKdjgTw8i
Bea4pX2KFW/x0+lHxg43p0FhONh/c8UfMHGTysyDj5Y4OpwjvtFlaYTL6uFvxTGX
HuOnnZ8AQhfZIFSNSMwNFExHoSFv/RKYwsqf6flD+P8vNCvLQJaFPPMB1/evd5n0
hD46X1vTTTwJbQgcO2+30vYl1ul4rYM8jxcjh+e4hcRKpbWKX8PBGMg3ZbXjwisX
J4GEEXEL74cUdwefOO+Gba29IK+DBfEpNDozPpLZ8K8X0BtklKmQEa5g47Innq7t
QKO8zmC6Tpj+nhwjFNgNfrEgj7x0BwyMfLancCdBn+Q23rAgft1um8MfKZbAZaFA
NKaMo7MxmiY16TNZGK+xcoHyXmQ3YiGG7l+c2f9/XwCmgV0S2yGj04SsENMaWp/G
H9ujZXX9FBhx5is1Dd1A7azpKULbi7uzvDxWeaY+P+rzfbdX6oU2OCxOni6bHLdG
Zh23COdVFfMj7zIp6ZkSxZjJ5tCkUaPUkLMeEGUnudNIeLuQxJKAVrLVtTuFTWvc
iOromygvJj9vBErPM3hs4zNJE3BTJ1xX8DNEA4rrAKhw9GDHTefsqytv18iU1eRa
LgQQBEZfXTFELDiBj5xjM92Lmg82V6Q+bXm2JB2osUAqVpKHteI=
=RhOT
-----END PGP SIGNATURE-----

--jf53a4qysfnxp2hf--
