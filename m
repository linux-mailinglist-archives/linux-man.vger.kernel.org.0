Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6FECF767D82
	for <lists+linux-man@lfdr.de>; Sat, 29 Jul 2023 11:13:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231639AbjG2JN2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 29 Jul 2023 05:13:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41968 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231689AbjG2JNK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 29 Jul 2023 05:13:10 -0400
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4AF1C4EE6
        for <linux-man@vger.kernel.org>; Sat, 29 Jul 2023 02:12:12 -0700 (PDT)
Received: by mail-oi1-x233.google.com with SMTP id 5614622812f47-3a3fbfb616dso2120025b6e.3
        for <linux-man@vger.kernel.org>; Sat, 29 Jul 2023 02:12:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690621918; x=1691226718;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8FJQgOX+Tx2GcDRvKOzsD5T0AzI56iGTkhW8beLT1OI=;
        b=ip5NzFnPejs0qza5ZYihZR42O8GVtawFZVQZjesK3Ljq8qPvZsYNyq/eTFPBQugFpk
         bxEqD52hzucWPoBhYbKQWizEMRMyOXmznBjg25isfo1L3yLM3JLNpEODMrHFQmYGI4rP
         6lz3XaJiB/so+/cPzk+QOMJfbhuCzb5cwMP9ht3ONKaDkM360p2MTAs0k/KgBQRxaPvM
         tQbJ3SjE6qKSZHLdsYXQiDWst6mTq4Jw+loZSJvhsQnDhubjnjBfaBnfdaiyayqzMLPr
         p1p2RbakTGgtwMOY+n+U4OO8VtNWaGuPq4IhTytUfmIsjmfvoQD9qKgse753DXuwwMLR
         P8Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690621918; x=1691226718;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8FJQgOX+Tx2GcDRvKOzsD5T0AzI56iGTkhW8beLT1OI=;
        b=RyYEIcF+u7zEwnfFYjMr0syY+TfqdMrRIgJz69sikw3yN6mf9tPNkMI583AbmNv1MB
         ojNJfdRXRoTAW9Co5/9Wg7ThDJhFaGJWmzHa5I7GGhOEza6qY4qpAW/zYaqXKX922crf
         +QIKtvN24wKJNDThvHWvbBiWeORzebPGG+eD5bPStxpBDvY3SWIJCWVYrb9fgIVEQEI1
         WsrMg0r4Ttj3FwkqDuKMI6w+yPioGOwaEUtlKCLm8Lgam27tQhXDe4DUbRRhRqa9Ju0u
         WMMa5lIyK1opj9d/3YRSYxhAuV6i8oXmwPl/C1gbjLJ1V0405LRiQdO8XuUZSNUJAvI0
         40Dw==
X-Gm-Message-State: ABy/qLZyUZq610m/ZCwVXPzerd59ZUx8s9lS9OlVbheYCKpx8Me5BLDs
        tomay9TZH5WOQj54HhR0vEZ4+TtrGbw=
X-Google-Smtp-Source: APBJJlFhGYe4RhimT4jWqQNodd8I5ak/EEZs9ThrlsvuPw5p/jcoVTToylLCtIdyRo45uROv3bPJmg==
X-Received: by 2002:a05:6808:1909:b0:39e:a606:544e with SMTP id bf9-20020a056808190900b0039ea606544emr6385264oib.32.1690621918600;
        Sat, 29 Jul 2023 02:11:58 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id e13-20020aca130d000000b003a5a82ef032sm2451860oii.32.2023.07.29.02.11.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Jul 2023 02:11:57 -0700 (PDT)
Date:   Sat, 29 Jul 2023 04:11:56 -0500
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH 1/6] man.7: srcfix
Message-ID: <20230729091156.4c73m3p5g7cqph5x@illithid>
References: <20230728175718.v25t776r3xqzxbog@illithid>
 <e6e1d97c-e6c2-9cb2-0e7b-3944e2858a24@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="zxbogd6phsle2fxh"
Content-Disposition: inline
In-Reply-To: <e6e1d97c-e6c2-9cb2-0e7b-3944e2858a24@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--zxbogd6phsle2fxh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-07-28T22:56:10+0200, Alejandro Colomar wrote:
> On 2023-07-28 19:57, G. Branden Robinson wrote:
> > Clean up in preparation for "MR sed".
>=20
> Moved this into the commit message.

Thanks!

[...]
> I wonder why all this appears in your email body.  How did you
> generate it?  I bet not with git-format-patch(1), or that you modified
> it manually?

The latter.  It had been so long since I had submitted a series of
patches to this list that I forgot that I had a shell script to help me
with it.  I used it for v2 of the two remaining patches, so if those
are well-formed, all I have to do in the future is remember my script.

Regards,
Branden

--zxbogd6phsle2fxh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmTE19EACgkQ0Z6cfXEm
bc4YPA/+Ivx1WjxYKUuN6JPfIu4eMJ8vSPdDXQSXAevpND57nCEOgpWhMJ6pNHa8
S0rDiRdyfhMiyI8q7XgMAe4vEd8Ny6Dq/JzYQbuPDlqx+/O48DW1mmLd34A+LYlk
/pIl+CTfOyeIppRQ2iNKcZZgI8X7n3xai0qhN384Au9GCPMq3JQU33DdjqVCE4IS
zq2QDmyWC+t5B3lT40V5qBJOyjCY+FUOYAV/8Zv/2TcLcAtIzmBUQWBrDc8DD52y
wjCj1o0RnHOwGgI7eWEsFRYmNzBvgwH1zaX/ifGTtdVF3UaCjYl41N3FfeCJot0I
i0GUK9mvRVRftiBupqPKutFbfqHkbligdWrldFBv8kZhYc7jCqNsuet7O/jGm5i1
hwZIpIzfzp3kNqLguYe7wjGawyP/0EYQYgGy9qggTMFfZSD60uv0BdfCZa8I0cGT
AUg8tvtOIIiKI2ERA3FgK22Ku1MDkgK9WHHjb8YaniHU5z9LjtCGAP+8kp/LM1iO
jzmelQs8f/X8s+kOcbISgvg/17Ro0G754b6+tAs3eYQ2LmBciSt9ZScJLAUSJRUX
Gbji51bREDFenKZxxu2YO+s7E4KRzESPaCf8SD+GYuHNK62Ur7gIS5K1cTA57B+v
LL72xAtvCSbMW0tnxg411Iv7diBJ6RT5ccHYpYkkuStXMCoG6d4=
=aCZD
-----END PGP SIGNATURE-----

--zxbogd6phsle2fxh--
