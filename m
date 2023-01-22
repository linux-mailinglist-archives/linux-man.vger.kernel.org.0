Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E21AC67727B
	for <lists+linux-man@lfdr.de>; Sun, 22 Jan 2023 21:56:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229989AbjAVU40 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 22 Jan 2023 15:56:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229566AbjAVU4Z (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 22 Jan 2023 15:56:25 -0500
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E8381CF65
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 12:56:25 -0800 (PST)
Received: by mail-oi1-x233.google.com with SMTP id s66so8812353oib.7
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 12:56:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZBpeql0GQ47qB+mrZhk+EAWV9nuqs7kClNRimEfwxus=;
        b=cWU+eFNF7EAiCcmeZ1LLhgzk9ue4tgvRsuMx0NkQDPKvKU0SdesqzM2mdurZf2u7H3
         1AvuUzjfggNXAsp6pIu4Yexbw5lPpD5xT3oa6qBURlfoQGc+O53hWZXdzgGWTCP7vX1e
         V78m9yZ/GTC05cpm55uvBS0kP+J4YgVgG+mV2PpyavcAFnenC4IhS7PB+AbTbETQSUjL
         ydcm65Yll3ejx7AHO0n8z3yY7/5GMBAEjx5/EWHYKBcB1F6kIwZC4bKAr2YQFRHogSsL
         Zrqt9uLmqQ1T83djc1X5Qqz0kC6HT2OGDvnATfQWoacZjDnN5MfSX0t/eWuOgLzwUS57
         Uq6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZBpeql0GQ47qB+mrZhk+EAWV9nuqs7kClNRimEfwxus=;
        b=Dxwwhhtj2exv98aHzY8C58xCSmLaYCYGPk45+fIu2VtvnTIR9rQxZ9MQceQQ/5RVSc
         ubbxXqyX4WVWYZCFjqMf5mLuSvfXhO3plzlWGFWRp5hp3FvYfv6VoFRNJkhPxA4uZyai
         8dwbT3ZaR15Pht79FCNpDwkezIfQUVTVKQb5wf8JUv3cSZUlh2rh/6wpsEeZCRMUiafk
         jrTQDy55wyahaASGa5u286eNToT7H0P88p1fD6Xsmzh1PBbmEJRo++J/WhjelYeTNfoN
         kIvlRWF+lEHfrmnCdJuCkM8g3kUZHMi3CEZRx5XN5EvFg4VBGrr02vToepf+UEmJYYQd
         PpNQ==
X-Gm-Message-State: AFqh2koHqXJd0mycuzDuAGpzRetgtOY608MdgKF6NOkAkehc6VwwUNS4
        6D9VboOWlo3JFIDz6iUoFBaG3sgqY+A=
X-Google-Smtp-Source: AMrXdXs7bMzEdmlP2uyhX6oFaN/56qJsAu0gMQOzEt2aBxGTusDjbIxL2Muc9vrgaHeoa/Xb6ym7vA==
X-Received: by 2002:aca:3c02:0:b0:36e:be2f:e2f8 with SMTP id j2-20020aca3c02000000b0036ebe2fe2f8mr4056153oia.4.1674420984544;
        Sun, 22 Jan 2023 12:56:24 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id y16-20020a544d90000000b00367080ab4casm9774652oix.35.2023.01.22.12.56.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Jan 2023 12:56:24 -0800 (PST)
Date:   Sun, 22 Jan 2023 14:56:22 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Helge Kreutzmann <debian@helgefjell.de>,
        mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page session-keyring.7
Message-ID: <20230122205622.nos2kiscektdpqcf@illithid>
References: <20230122193129.GA29087@Debian-50-lenny-64-minimal>
 <20230122200844.au2yezkhalgk44n7@illithid>
 <1fdc5117-5858-9c8b-d64b-340a53fb8ea3@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="nsh4ef3s7pnb2nvm"
Content-Disposition: inline
In-Reply-To: <1fdc5117-5858-9c8b-d64b-340a53fb8ea3@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--nsh4ef3s7pnb2nvm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

At 2023-01-22T21:52:34+0100, Alejandro Colomar wrote:
> Hi Branden, Helge:
> P.S.: The colon in the salutation is the standard way in Spanish :)

And in English, too, for business correspondence.

For less formal or more collegial contexts, a comma is used.

Regards,
Branden

--nsh4ef3s7pnb2nvm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPNou4ACgkQ0Z6cfXEm
bc425A//fb8lKekoWVyLg3Mp0xaPASLv1dX57A13E/Uo7KNWfdA6lDu9eEk8GhI5
mW0SATEZjS6oNuCGuut8sCClcZNu/qcgxMoALjjzc6o8d1MRQnya624+oehrrUQW
Ic7EcJymDVLlvpi8YIVSuzXmzPpywhqMieg1Ak/i1nmt1Svr2ODsiJZuxggnjmCm
oeIHt9fOEfnz3xK8t7KYSp3HYwBtWFGITUNCNtMGkUG4B5/yLzpDfdMbg5cFU/Zc
cztKJvrPqWVEsatx2e5v4rKscI8hNvCGHwX437HypotZKISJivqLknZGPAAWM9Xo
kxeDH2ESECwTfGL0KR2dIqbXgw4Y+JPiF3dmkD3DNU7ezmyiAXKvqJaddOAWSyR+
9ZzgqZEioA0gDM8WEc9yHfODLSGFLPuVSp8gYm5QI2HoxfSszqZZWO/yfkxW4T5S
hRcBKf5FS2xrdyfDd48VJdTvwaNKA2XhxqaXCcAz3OxG9RMQ2BRp+xBq5Wv5IOeL
ottRplQkZqRKshqjJe4n7c6spi8J1Qprh+S34LRYGVRFODwcroIfeJvT19YleH82
0bQRXlgxASxWqM0TedTUhdlZnUSBETDAUPCwxMmq/VwMO5Wpn1yYEuXWoQP/Zjqu
X99zGE2SYWpGLXBMwY4QWpKHQNdRndgo3qoBDWG/yKDQtLvIXIo=
=+Nlj
-----END PGP SIGNATURE-----

--nsh4ef3s7pnb2nvm--
