Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 46F596AFBC4
	for <lists+linux-man@lfdr.de>; Wed,  8 Mar 2023 02:08:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229553AbjCHBIj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Mar 2023 20:08:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229923AbjCHBIh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Mar 2023 20:08:37 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70550A616A
        for <linux-man@vger.kernel.org>; Tue,  7 Mar 2023 17:08:32 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id o11-20020a05600c4fcb00b003eb33ea29a8so226457wmq.1
        for <linux-man@vger.kernel.org>; Tue, 07 Mar 2023 17:08:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678237711;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FFslN3WDfxXcKmyLDSqLaD5hwYVSiIIuwgIcpyIGgZc=;
        b=D6a+rUepW5/gzhLlyqpUzB5Lya+xTRAipzSWGPFn8Sg7mcQW3RgKfS1REwjXJfWJ5J
         VwgIvqDIYh8GxBQmnMhOyx2mPTCjUEItYgKYQs2OnxbyeFjvlIxlxVolplAXrH0/qD7j
         tSiJzeZ++MbHGWeZ8pPIOKL2B6M1CMlumqT7b3Vszm5bFT+ZwruR3UQ+N1t0DZq4xDAc
         onEvKkbGlr8yH8EAjWbBbbXKqBeoUbF3MJCXHPlSXAPDjIyFDgNBNTPLpQ+ICamrQX/E
         8jFG2AbPO79PDiuuwyUqscKmko4sgR89YX7u0JsHJUarI4S4jXa0MOKbn2tufTqRf3Tn
         AS4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678237711;
        h=in-reply-to:references:cc:to:from:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FFslN3WDfxXcKmyLDSqLaD5hwYVSiIIuwgIcpyIGgZc=;
        b=qfXAF2bm4yCNz2q2ZY203HP/jsMf41tFtW9cBtItzlLkwe8btz9otaHcmWNXlrcTWu
         7ExvB/1LAByRH2mjlMvOGKAoGvR7TU3QQxiTG8Tj1H+JC0VL8m4++0wc6TB8KPEAI0+9
         hBKRtrY5DDN+5gc2XCqXzYTtszd2bdKkwgzDq1rYRo0XgeyVY65Tr+xhYGy0JuAHx3uK
         yxlMPZ7dY7mfW2pcWgC2yLV/LILI/3T8MwYsPM4CAFJVevWxWrBEfAMpMxx7SBmu9R13
         0KhLnz86DRuLRKAdVc506+he/+s3coTk0rZnKPbNsg+vDRg32iFT789mT/KDAYSsBr3D
         ZZTA==
X-Gm-Message-State: AO0yUKX/yH84izp/ZiMGn3tGs0H0HLKPbD9zE5kcuDz614JA+CT3WDHr
        MFY6DfvN1kv7FZntH2IwX4lR0XMcjH4=
X-Google-Smtp-Source: AK7set9sly5uwtX6muI8WNOiFhdmuWylKFQe8bjtEw2UPQMax9rj1899jwqMeTblrz9y+M8Fmvacjg==
X-Received: by 2002:a05:600c:3c9d:b0:3eb:4150:a476 with SMTP id bg29-20020a05600c3c9d00b003eb4150a476mr14287548wmb.0.1678237710855;
        Tue, 07 Mar 2023 17:08:30 -0800 (PST)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id t21-20020a1c7715000000b003e2096da239sm17548450wmi.7.2023.03.07.17.08.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Mar 2023 17:08:30 -0800 (PST)
Message-ID: <55f938eb-8f96-213a-2b24-e505d97e629f@gmail.com>
Date:   Wed, 8 Mar 2023 02:08:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] cmd.mk, install-man.mk: Allow installing link pages as
 symlinks
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     linux-man@vger.kernel.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx@kernel.org>,
        Marcos Fouces <marcos@debian.org>
References: <20230308010418.174517-1-alx@kernel.org>
In-Reply-To: <20230308010418.174517-1-alx@kernel.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------ANX9tTnybjtJbbY8RI5Ko9Gw"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------ANX9tTnybjtJbbY8RI5Ko9Gw
Content-Type: multipart/mixed; boundary="------------vJ5oDuLHnYV2z8Ky1V5EJ4JY";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: linux-man@vger.kernel.org,
 "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Alejandro Colomar <alx@kernel.org>, Marcos Fouces <marcos@debian.org>
Message-ID: <55f938eb-8f96-213a-2b24-e505d97e629f@gmail.com>
Subject: Re: [PATCH] cmd.mk, install-man.mk: Allow installing link pages as
 symlinks
References: <20230308010418.174517-1-alx@kernel.org>
In-Reply-To: <20230308010418.174517-1-alx@kernel.org>

--------------vJ5oDuLHnYV2z8Ky1V5EJ4JY
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 3/8/23 02:04, Alejandro Colomar wrote:
> We keep them as .so "includes" in our source code, but if some
> distribution wants to have them as symlinks in their filesystem, make i=
t
> easy for them to install as such, by specifying 'LINK_PAGES=3Dsymlink'.=

>=20
> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> ---
>=20
> Hi!
>=20
> I'm going to add support for installing link pages as symlinks.  Debian=

> installs them this way, so I think it makes sense to help distributors
> use our upstream build system to install in their preferred way, since
> otherwise, to be more useful.

to be more useful, since otherwise, our build system is something that on=
ly
we find useful, but nobody really uses.  :)

>=20
> Here's the implementation I came up with, but I'd like to hear comments=

> about the interface (the LINK_PAGES variable).  Would you make it
> different?
>=20
> Thanks!
>=20
> Alex
>=20
>=20
>  lib/cmd.mk         | 1 +
>  lib/install-man.mk | 9 +++++++++
>  2 files changed, 10 insertions(+)
>=20
> diff --git a/lib/cmd.mk b/lib/cmd.mk
> index 17f3a8ee5..9cd09fe89 100644
> --- a/lib/cmd.mk
> +++ b/lib/cmd.mk
> @@ -16,6 +16,7 @@ GREP       :=3D grep
>  GZIP       :=3D gzip
>  HEAD       :=3D head
>  INSTALL    :=3D install
> +LN         :=3D ln
>  LOCALE     :=3D locale
>  PKG-CONFIG :=3D pkg-config
>  SED        :=3D sed
> diff --git a/lib/install-man.mk b/lib/install-man.mk
> index 174f503ca..aaa545290 100644
> --- a/lib/install-man.mk
> +++ b/lib/install-man.mk
> @@ -12,6 +12,9 @@ include $(srcdir)/lib/install.mk
>  include $(srcdir)/lib/src.mk
> =20
> =20
> +LINK_PAGES :=3D so  # Alternatives: "so", "symlink"
> +
> +
>  mandir      :=3D $(datarootdir)/man
>  man1dir     :=3D $(mandir)/man1
>  man2dir     :=3D $(mandir)/man2
> @@ -147,6 +150,12 @@ $(_manpages):
>  		-e '/^\.so /s, man7/\(.*\)\.7$$, $(notdir $(man7dir))/\1$(man7ext),'=
 \
>  		-e '/^\.so /s, man8/\(.*\)\.8$$, $(notdir $(man8dir))/\1$(man8ext),'=
 \
>  		$@
> +ifeq ($(LINK_PAGES),symlink)
> +	if $(GREP) '^\.so ' <$@ >/dev/null; then \
> +		$(SED) 's,^\.so \(.*\),../\1,' <$@ \
> +		| $(XARGS) -I tgt $(LN) -fsT tgt $@; \
> +	fi
> +endif
> =20
>  $(_mandirs): %/.: | $$(dir %). $(_mandir)/.
> =20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------vJ5oDuLHnYV2z8Ky1V5EJ4JY--

--------------ANX9tTnybjtJbbY8RI5Ko9Gw
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQH4AYACgkQnowa+77/
2zJVtg/+OuLYsjVxcZwdnblEXZzR0WcAuU0eYJGJX5zU5k92aFzcrBwXmBmUbCso
nAJYZDilci3aFgwPtT0SwRZx0YqwVVekJqAYMS2uP2tYOMLtbZ1y5212J6s14Qtn
Ko+7q6b/uMOcEpnONrD2UuLNdW/tfu0A494TA4hhn1XX+uTl9YIHJowGneWLhBjz
F6KQO2Ib21VAkoMvcLFWzkKjOhXaTUQ7OEtVMYfgq06kiis5XQYycvWlimt6t0tx
n+WuWXZDQF4bACHqAn6y/H13F1vF3QldtgFI3n/iPkefPzg0MfqA73r3PVln7YTS
mjcMZ/z726/IU5NaPxV1D0lpRDBasP1oTBk2PYrdeJnmODudyoc+B0ENuyUqJZUh
6zTNE/wxS3plz9fJdcNiNp7HP7O5+blAWzoexUKbuRdIsdAwPXTe5s03oEF85zYC
yQdpv9SnhLR+poWj0pXAakYtffc4x7/cCb8DG2vzm4785ui6yywf95kME6iEzSbJ
hWSWtu3obJTNdOj/kQ28c6uvn1eVWuze1mugDfcawAx2/4vUQjuh9BKRfFRpqggs
zkP3YMMETCj77IG6+JZxmrGNwTA17JA5m5e49YNnORjBhaZJ5zxer/Tc1Y32g4Cv
oJU75iI3CBxm5ud2MGnYGL7MVAjvVbyxoiDZb65dzBd2zylyFFI=
=BbCW
-----END PGP SIGNATURE-----

--------------ANX9tTnybjtJbbY8RI5Ko9Gw--
