Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B00BD65FBD8
	for <lists+linux-man@lfdr.de>; Fri,  6 Jan 2023 08:20:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229636AbjAFHUY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 6 Jan 2023 02:20:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229490AbjAFHUX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 6 Jan 2023 02:20:23 -0500
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com [IPv6:2607:f8b0:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD7616ECB6
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 23:20:22 -0800 (PST)
Received: by mail-oi1-x22d.google.com with SMTP id o66so484177oia.6
        for <linux-man@vger.kernel.org>; Thu, 05 Jan 2023 23:20:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qcZW7ewspwY9vWin4Y58nkG9rPq6bWZ7SCkabPrWWhw=;
        b=Mq3YAlog8AO9HE+ffXOkF/K1jvV5G0qT1VsOxmlj/GALvz6ySO/HUV5g10J/g11y3B
         +fQAtmwz6JjFv2tDlHxSbnyvaF9T4fedYLdqMCrefWLGANtrYS/aDb23k7M/e+5aTrb1
         mqSTC3o1JGaK9U+KE/QHDtu8qatPAwk+qmu55RRF4m4aq6AjRSI/XQO/e+NZWUYwdS4n
         AtvwRmYsPL+GeRm+EIlwQ8DsOmxomAkOL3rqpptQ2mgPot3tszWqytdAkcsnsgKEl9v8
         welIj8H3xtVuDGKQVNtCoMZjyfNW93KR0VIdBdzQPDUiuln0LUybPP4IZKlbIyCf7+CY
         WD8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qcZW7ewspwY9vWin4Y58nkG9rPq6bWZ7SCkabPrWWhw=;
        b=jHRQ40rOr1RVL3K0aw0sU3qZHltaGwFTkamNMZkrcy3X4hfroPJESky9+yussRwyKC
         IHIHeq3xrh44KaAe071LwKBQgwnkuahpapCfw/EAsMuPznQr+s811WirTpgRWw1ecwcP
         cr1GltkfPBly/7H7sKxyCkmbUoiMGzmqxCDy7t03sukd+DCDTdHdseFulo0Pmw5uIAoz
         cUxgvf3VOEGXhOCdN30Wod5ENDQ4ral2JmN9M9eAx3REPLYeyAQFWKXelWRxT4nx7dgU
         7ETPcnanX5RjjxvdNfaKpK+S1eMdGIJC73zitDEI9J0UmJRM56NnbvnZEoTvyUcAVmKn
         JQaA==
X-Gm-Message-State: AFqh2krgGonlGovEdAIaEo/Bt7fy/fBJQezQjVoQi7fgVZHL2ytqCTdH
        ltpYcdTEXuqYPi8kITkf/Zq0eHiWwlY=
X-Google-Smtp-Source: AMrXdXuqYH0pAcMXGA+YyDKkEFKCAbPxBen6orVMm2JUb1YQDJ8qFHXhOhLdB6VTwJfMEtyIDD838Q==
X-Received: by 2002:a54:4e85:0:b0:361:9:31b3 with SMTP id c5-20020a544e85000000b00361000931b3mr22962447oiy.6.1672989622089;
        Thu, 05 Jan 2023 23:20:22 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id v14-20020a9d4e8e000000b0066db09fb1b5sm232435otk.66.2023.01.05.23.20.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jan 2023 23:20:21 -0800 (PST)
Date:   Fri, 6 Jan 2023 01:20:20 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v3 05/13] ldconfig.8: Revise and update for glibc 2.32
Message-ID: <20230106072020.zpjzc2pk4kjhwotx@illithid>
References: <20230105225246.uid2pwwivc6testz@illithid>
 <2ef7c0b8-978e-7bc0-d5b9-88ea9348a677@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="3yzdqppxiilsu4pv"
Content-Disposition: inline
In-Reply-To: <2ef7c0b8-978e-7bc0-d5b9-88ea9348a677@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--3yzdqppxiilsu4pv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-01-06T02:21:27+0100, Alejandro Colomar wrote:
> On 1/5/23 23:52, G. Branden Robinson wrote:
> > * Comment out multiple paragraphs discussing libc4 and libc5 shared
> >    library support.  It was removed upstream in July; annotate
> >    commit.
[...]
> > +.\" Support for libc4 and libc5 dropped in
> > +.\" 8ee878592c4a642937152c8308b8faef86bcfc40 (2022-07-14) as "obsolete
> > +.\" for over twenty years".
>=20
> I prefer removing the code completely.  Since removing code is more
> delicate, and to help whoever may want to investigate history in the
> future, please do so in a separate commit.  I guess it will be better
> if that commit removing code goes before the general revision of the
> page.

Okay, will do.  I dithered over it because the withdrawn support is such
a recent change.  But on the other hand it will take time for man-pages
6.02 (or what have you) to percolate out to distributors just as glibc
2.32 will.

Regards,
Branden

--3yzdqppxiilsu4pv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO3y7QACgkQ0Z6cfXEm
bc7gjQ/+N1T874Wf4i730ZQufOgORL6IWMYlmYM1xnJM/mK8GWTPM0k0k24VWJ/k
aEXE74MBfQJMGyiiL6KHcXBzNsT1uduzxmSRH7Ncs6fhtc4x2SebGYfN/dxie8uo
YZEcFPCxSvn9WUDDCPminUXQhqTzy9B4lty4E+cKDuMQwHpGxWysbM+J3F/2yPMF
RebQy0U5BEctbL/kFGRCAdOvNA5Ejuw8YTX67J1Gsys/ANo9udKoQMjGRGNHTFTZ
2YItUnaQ3Qi20xBHck077Mk25aImjrIFXD4k0YXZ5knnqxPNAxchtPpTiEVUhRFA
dlSSCGsAPM4ekg/cxINo1Jc5gDDxzh69fPcsQxV92YiYv92sfB8Gry4Eytq6ewkF
8qjWXYa3ZjqqEiKqC6PwW9bMHADTPjhA+NQrD31h2pOTxsysQaBmUDrWq6zXmuQw
RfrRVbLkOJRNzZ37uKWHjLDS6D4xjYpBSu5FltEnLvwC82B2mfdKkFY7Ja+y7t3b
dyuF5lyptmkg+cfktpCR5Sd1w8kr69R69KC+Y30T0ObQCLJFzt6sFnCNc4D0wzv7
wF5Iul4qcLmFWtm6QBKdMdAon2YTDC2b3AawgMtBnl52Ux+dEkkX1vsDziKV6CGq
KUD81RPqKPrAMthEMYY9RU1MUkVC3f4SOVbbRijfnrPBoUNevQs=
=mPNJ
-----END PGP SIGNATURE-----

--3yzdqppxiilsu4pv--
