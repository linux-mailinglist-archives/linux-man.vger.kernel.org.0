Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6A47567753D
	for <lists+linux-man@lfdr.de>; Mon, 23 Jan 2023 07:54:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230266AbjAWGya (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 23 Jan 2023 01:54:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230344AbjAWGy1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 23 Jan 2023 01:54:27 -0500
Received: from mail-oa1-x33.google.com (mail-oa1-x33.google.com [IPv6:2001:4860:4864:20::33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85BB41A496
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 22:54:26 -0800 (PST)
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-1442977d77dso12985246fac.6
        for <linux-man@vger.kernel.org>; Sun, 22 Jan 2023 22:54:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jxalqmAQunRNO+yqzvVcvP4wVkQitI2XJUBPiCLudHA=;
        b=B675ZCPFq7xIj6xoa59b0n8LQngbrfNYF6DXtcAYkgXwR5opATI9iBEOYAhFn0uUXJ
         /D3vDgseCD1z9IK4YYhzrV8Uvz6lIOOA7mCGjr+z5twXw+gOIa2Unpv4B0l1Vo8iA7FT
         xoi4KiTNXFZhOywGt6DlXBSmCFqY5e/lKvOwMgvrfSfXhmj9f5AoHGMO4y4iMCElAr+G
         PkdnXitiPH2JA371/n2vkILv98czWGJkWI8zdkMF/MysfRpUyWSdJwpqUtuoZXICIb3o
         39bSz47Vrb5ilYnnu+2iViAvxC7RuQ9pRxXuVqMDv9WwARwCvQoX/HEj7x/+aN5iVS53
         i6SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jxalqmAQunRNO+yqzvVcvP4wVkQitI2XJUBPiCLudHA=;
        b=P4bBzSyJL2BB+Vkg+S5s4GmcQthVZmYeeBvqqlSiMns9D7EpT5rVQul/cfPArprfoT
         R8Vmwt0qte3LD2QEQnUJ601wG1C7UfuuDPYUg2kDueDfkcZqj8T7Kz2l2ghbOxsKGK8M
         AkiY3/d5P3psPfhAJKdFNmuopRnsQWiCR3LXKJ6jP0SR86SZ2slPgr0ssSGaTRnuXMZ3
         NsYR9Bcpfh33P/yUB364TD2dKIb/0ZOg42c7bOEpgxLyU8NCXUYC8QLVpLGE2eJPmA4E
         WmIIEd/1oOYhXJ4bU4FHC453rVyTPcmVxzL0mAjgdyVtzeSWvKGcO76tx3V7uYal0bkS
         DiLQ==
X-Gm-Message-State: AFqh2kqR47m3BMPh/21rSlH92QKiv78WK9ebiV81WoMRe8pcWs9JSihL
        IFcbTu0SNQA+xZiw3uRFIIRTr2aVUfw=
X-Google-Smtp-Source: AMrXdXtkABo7trHtfRz7dPvtoKomORGUfThlnGpxbE2RTCp2Q5wQWofO5vB54qbnqyMUKnsBbBuwMQ==
X-Received: by 2002:a05:6870:81a:b0:15e:ad43:9ae1 with SMTP id fw26-20020a056870081a00b0015ead439ae1mr13692811oab.8.1674456865854;
        Sun, 22 Jan 2023 22:54:25 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id z2-20020a4ade42000000b004fca8a11c61sm6422150oot.3.2023.01.22.22.54.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Jan 2023 22:54:25 -0800 (PST)
Date:   Mon, 23 Jan 2023 00:54:23 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Helge Kreutzmann <debian@helgefjell.de>,
        mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page boot.7
Message-ID: <20230123065423.ih7jblasf2frt6bz@illithid>
References: <20230122193132.GA29262@Debian-50-lenny-64-minimal>
 <623dc3a0-e6d1-e8cf-9e69-06721c4fcbcd@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="otso62722iuid4yy"
Content-Disposition: inline
In-Reply-To: <623dc3a0-e6d1-e8cf-9e69-06721c4fcbcd@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--otso62722iuid4yy
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-01-22T22:22:02+0100, Alejandro Colomar wrote:
> On 1/22/23 20:31, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue 1:  runlevel 2 =E2=86=92 run-level 2

> I believe the fix would be to use runlevel everywhere.  run-level is
> not correct under any point of view, if I'm correct.

It would be correct if it were used attributively, to modify a
subsequent noun, for example.  "I was able to gain root with some
run-level shenanigans," for example.

> It should be runlevel for a new term formed specifically for
> programming purposes, or run level for normal English.
>=20
> Branden, can you confirm?

Only the latter half of that.  There are no rules in English grammar for
forming terms specifically for programming purposes.

You may be thinking of programming languages that don't permit spaces in
identifiers (for good reason).

For example,

int runlevel;

is fine.  To drop this variable name as-is into prose is to mistake the
implementation for the concept, or to confuse the map with the
territory, as the saying goes.

Man pages are _in_ normal English, except for quotations or displayed
examples of code.

I therefore recommend "run level".

Regards,
Branden

--otso62722iuid4yy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPOLxUACgkQ0Z6cfXEm
bc5cVw/7BSsnS0Lwlr826nvxoVvWD6hPouVrdspNNRnSnO9X76eftWRbLqBasEYd
no1TingtBxaVjJ7iy6sZYJVETx8yIa0DEDRnSpN9MuLziVkbkY8sf2YpJPVL8b4z
NNYaaAwQD2IQMO7yMSwmLeYnMWGw35nMSeyNb3/QRiu+9Mub+wGGtKv73OqG8Dqx
GpYigjH4UH30MyDY9WwIQfNRn1gKZ6uWWOtdfLxgoiw5rBPqtRMZZ2hjLh3DlQ67
93rlBfs9RfKNpAxOE+TNTA2c4+LDiFl+x9pplZz9V9urNmVpBOVtDQFgz4XgVYwr
Q1mIZXpmRfufeL30VGew3z7IlfTvV6r1tIoUZsamPEjSsTRWL3NPofTSBItIFxXS
ADmvRSJ+1DXaakvU5i9axWNS9rZxE8GF4TM1PfYfzEGjO09fdYU6+kFw1Tm2l1EE
qb3zbuW21hgSfjDUMeUepaHS/52hFlYGIbMzxN7NVESdsrwj9SuDXDXXfmMnOcz6
8X2LjEQapkxL7RGf4QDIY4T1l/OTLMTkNjC4TJ9qd1aR6XqXJ9TfQv9kdOxdm/dA
/wGO9nSEmsPB4u2lmjWYuhE8cUhPFovK1fui8Yu+5cKUUIedYl24KbcnkL9GnU9r
+ML3Ilyif3QUCyRX7iYgb7p6WBbfxjLN8Vgna+YebK1orzL1E/E=
=Cco9
-----END PGP SIGNATURE-----

--otso62722iuid4yy--
