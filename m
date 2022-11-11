Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F38C9624EDA
	for <lists+linux-man@lfdr.de>; Fri, 11 Nov 2022 01:20:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230128AbiKKAUc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Nov 2022 19:20:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230377AbiKKAUb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Nov 2022 19:20:31 -0500
Received: from mu.digital-domain.net (mu.digital-domain.net [IPv6:2001:19f0:7402:15d6:5400:3ff:feab:f47a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BFE8D2ED
        for <linux-man@vger.kernel.org>; Thu, 10 Nov 2022 16:20:30 -0800 (PST)
Received: from kappa.digital-domain.net (kappa.digital-domain.net [IPv6:2001:8b0:36c:cc91:0:0:0:ac])
        (authenticated bits=0)
        by mu.digital-domain.net (8.17.1/8.17.1) with ESMTPSA id 2AB0KDvK060794
        (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
        Fri, 11 Nov 2022 00:20:14 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 mu.digital-domain.net 2AB0KDvK060794
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=digital-domain.net;
        s=dkim-1; t=1668126014;
        bh=VsOSnsZWCkYJCZhr0Ms+lEC149GZr7IfzM5T307TNTk=;
        h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
        b=Hfl+yhc6y+brkz/cjV9uX05DxSI9rtysdY7Xgx4FaUX+zDjS4q0N+bl586Mc+qFpB
         /w+4KJj7yl4JmGoeygerw6ijz4z5HPmnCoqG2mwzfifvu6CW7ImQVr5Xf4cUh+TFnx
         l5af0gFSMImdSjPuHRGEcJ1ueXaGpiEVOB4pkgbCwu+LSg9D0JCG8GLavuUsHPo936
         PvabEaTSe4XVnjY2fQYMTZVSlF0HIBnBjquAyH/F7KjfFbpj21I0zMR2ZH6sqrBOcK
         SQppu20QJ2a2UKXffDtpBf0dR3jAYFOCtRShfKmYj9V2RollFErad8M28H5xaTpbfL
         jf5ezScZKWPVQ==
Date:   Fri, 11 Nov 2022 00:20:11 +0000
From:   Andrew Clayton <andrew@digital-domain.net>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Alejandro Colomar <alx@kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        Andrew Clayton <andrew@digital-domain.net>
Subject: Re: [PATCH v2] memmem.3: Add list of known systems where this is
 available
Message-ID: <20221111002011.20d08ba8@kappa.digital-domain.net>
In-Reply-To: <486aa42b-48be-b556-55c6-6d837430e256@gmail.com>
References: <20221110001318.10696-1-andrew@digital-domain.net>
        <20221110233138.63585-1-andrew@digital-domain.net>
        <7c72c8b0-ddb1-ec66-3886-57f2f7ac192f@gmail.com>
        <20221111000440.0b4e08c9@kappa.digital-domain.net>
        <486aa42b-48be-b556-55c6-6d837430e256@gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.34; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/7Q1LWBRJZ2qJc17IiKQNaYb";
 protocol="application/pgp-signature"; micalg=pgp-sha256
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--Sig_/7Q1LWBRJZ2qJc17IiKQNaYb
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Fri, 11 Nov 2022 01:05:18 +0100
Alejandro Colomar <alx.manpages@gmail.com> wrote:

> >>> +but is present on a number of other systems,
> >>> +including: musl libc 0.9.7; FreeBSD 6.0, OpenBSD 5.4,
> >>> +NetBSD, and Illumos. =20

[...]

> > I guess the best thing then is to just break it on the semi-colon. =20
>=20
> Yeah, either semicolon or ':'.

Or maybe both?

Andrew

--Sig_/7Q1LWBRJZ2qJc17IiKQNaYb
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE6OI1RUD6ZXrSuiaOzxB5j4U6ioIFAmNtlTwACgkQzxB5j4U6
ioLktA//bOxKnm22qdG128vuZS+NFAWCNYn4QXYpKO/z8L8SVMLKVSkG2S7Q+4hw
4aTyTvkzwrLsbKVbM+iYxNhvdLm+VIobLBWD27UiCkVWSAtMkyJq7M+pZoTa6C46
HKpOWG33OoCrg4oJHtNPsUYveVcaB2tES5TX3CSiRhEPWFxXEv0Wm8DOvNYugm8R
YSpA0zUAeiOaO2SiyNYTp6gSmyGpkQINbCIBl+wT6gAJWdnJSb0gYp3WGzQTWkG/
WxAVJhJDHJIamZqK6Cbrj8EoT1pflPWtbTJAUlcWDbFg3fXuR/gFRY0emdcOG0xl
1lFRR9GTYlCFOAUYrSxet9br9yhZ+6JtLmaxmvSRHj3CItO3jF9D59o+vLgJRDY0
XI3A1O9uB1Ok0lOkQ3GE+nX9+gbRBPlwX778JDej1XIXLOHjVAcv3ikxeMi8SlHU
PhhzzO4a2WrknBSJmz0LBHACaobvhnQU9JcXLcjpCotUqrZTTd6OuHBS3m6Cz45w
Ao2vhL4U6zBcaUecXwRT55fSbTiZJojfmmpHhJ+c6w7egVLkR8x2TL88Mw0shn+w
kq8Z2nwvSjxB+dLN5lwCDwnLWKnE4DzEUhTjFh8VkGoAQCI/ZSjBwl0KjPxk5PST
GH9lfuJnb+CJLkjILnTWNytR6Q8lvtxOCvB/kKu672Fd722guI4=
=u1zC
-----END PGP SIGNATURE-----

--Sig_/7Q1LWBRJZ2qJc17IiKQNaYb--
