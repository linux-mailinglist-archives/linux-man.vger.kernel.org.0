Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 892026C5B7D
	for <lists+linux-man@lfdr.de>; Thu, 23 Mar 2023 01:41:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229949AbjCWAli (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 22 Mar 2023 20:41:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229990AbjCWAlg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 22 Mar 2023 20:41:36 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DC871632D
        for <linux-man@vger.kernel.org>; Wed, 22 Mar 2023 17:41:34 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id i5so33156278eda.0
        for <linux-man@vger.kernel.org>; Wed, 22 Mar 2023 17:41:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679532092;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mCYW8ehvwEsdycEOaUPfk7OcERrYu/GOI4dA0jZOZX8=;
        b=hbMvgLKzSBpLMeuXFegpbcbq7yHzsVxoiHwovWMaMbU12N7RCZd0/R6h0ObvD4UTDC
         4Jp+ev2lXPJV6rV2CTof+4AbYmLfg80gSvApzvtcw2rOjZNobh/TXjlOVIHmOBiHGjcR
         wRcSv6ji2ZMiImNofNPZdE8yB66heWhloSm2ZXuK5N3iixHU/GEO1px7bZCNRDYUnQhd
         GvsEpS+5kakg55wEO+qnXBUpNydO+8wjp8y7ENjaHjSEeiUHWksgWvgvoANUKcgiOHqk
         GeHCKpa7BfkK4UW8vDccKUCqUxhbwnb0fpPaTj8665rpl+GkgRg1jHxlSwqaqXeLJKb6
         CU4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679532092;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mCYW8ehvwEsdycEOaUPfk7OcERrYu/GOI4dA0jZOZX8=;
        b=C/jJuNP2oYNL6iWpfBM9TrubCrvveWG8+dP1hMrUQaukDP2AkNuEJFZ2gru5RxIxQM
         S9rRu93yBSUwZB4mCn0yDU5Jzc5+1B1h2+NEPBF926EYdrrzxa0JxLnxE50FYsTMjHQa
         nplspkK/x4XYHms0xJpASDc/uLVPylnTY9wAd814GQqV42AxKHP2KtFN3oq9rKQtj2h+
         bYW5TrJf1q3bGLjAfsX36nQNESs5SdjfYtMljAPL9LnO5nZE4BpIRml6LJX5WifGpdvp
         g8MIL7iuHRRSOa7Gx87HKTqG5EwPFhjhvMVy8O0rr1ZcLLQ29qmlj2voA2PfldikBuUy
         PpxQ==
X-Gm-Message-State: AO0yUKV19k9d3p8IYHMOEfBMpfJT3d9QYANg93oVpoae/hF1Ch4YrAPv
        ZCFRF0jXXNQwINHkkSPkA1w=
X-Google-Smtp-Source: AK7set+2XAFpq6SPK4Z+DB5j7lqtbJSZ5SiCobs23pbwAj+zM9eorNRFgtVCMYen78spgOqxjcHdlw==
X-Received: by 2002:a17:906:538e:b0:926:7d96:9434 with SMTP id g14-20020a170906538e00b009267d969434mr8548792ejo.51.1679532092543;
        Wed, 22 Mar 2023 17:41:32 -0700 (PDT)
Received: from dj3ntoo (87.sub-72-108-136.myvzw.com. [72.108.136.87])
        by smtp.gmail.com with ESMTPSA id v2-20020a170906292200b009321cd80e15sm7538585ejd.73.2023.03.22.17.41.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Mar 2023 17:41:31 -0700 (PDT)
Date:   Wed, 22 Mar 2023 19:41:25 -0500
From:   Oskari Pirhonen <xxc3ncoredxx@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Matt Jolly <Matt.Jolly@footclan.ninja>,
        Brian Inglis <Brian.Inglis@Shaw.ca>,
        Guillem Jover <guillem@hadrons.org>,
        Tom Schwindl <schwindl@posteo.de>, Sam James <sam@gentoo.org>,
        Marcos Fouces <marcos@debian.org>
Subject: Re: stdc: search function prototypes in ISO C documents
Message-ID: <ZBugNRxIVbL15tTN@dj3ntoo>
Mail-Followup-To: Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        Matt Jolly <Matt.Jolly@footclan.ninja>,
        Brian Inglis <Brian.Inglis@Shaw.ca>,
        Guillem Jover <guillem@hadrons.org>,
        Tom Schwindl <schwindl@posteo.de>, Sam James <sam@gentoo.org>,
        Marcos Fouces <marcos@debian.org>
References: <28c1d825-0ef5-7363-6822-f2c876bf73d4@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="nSR+qZGqyxvhGnJE"
Content-Disposition: inline
In-Reply-To: <28c1d825-0ef5-7363-6822-f2c876bf73d4@gmail.com>
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--nSR+qZGqyxvhGnJE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Mar 22, 2023 at 20:49:39 +0100, Alejandro Colomar wrote:
> Gidday!
>=20
> I created a git repository for the stdc(1) script, and created a signed
> tag v0.1 for it.
>=20

Awesome!

> It's yet undocumented, but I plan to add a man page for it.  Anyway,
> being a bash(1) script, I guess it's quite readable to anyone here.
>=20
> Please suggest any improvements that you can think of =3D).
>=20

I've got a few, should I send a patch here or what is the best way?

- Oskari

--nSR+qZGqyxvhGnJE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQQfOU+JeXjo4uxN6vCp8he9GGIfEQUCZBugMAAKCRCp8he9GGIf
ETo8AP4kca7xiN8Sdc19Y+sJqwdeFD68YBvuxwOEMhQSogI02QEAjeAm4n+VI3k2
DSOu9yb0208OapH3B0YQQnqnmXbrNQI=
=QKal
-----END PGP SIGNATURE-----

--nSR+qZGqyxvhGnJE--
