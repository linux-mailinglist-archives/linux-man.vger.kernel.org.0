Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 605F3624EAD
	for <lists+linux-man@lfdr.de>; Fri, 11 Nov 2022 01:05:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229536AbiKKAFA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Nov 2022 19:05:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229463AbiKKAE7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Nov 2022 19:04:59 -0500
Received: from mu.digital-domain.net (mu.digital-domain.net [IPv6:2001:19f0:7402:15d6:5400:3ff:feab:f47a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFDAB49B52
        for <linux-man@vger.kernel.org>; Thu, 10 Nov 2022 16:04:57 -0800 (PST)
Received: from kappa.digital-domain.net (kappa.digital-domain.net [IPv6:2001:8b0:36c:cc91:0:0:0:ac])
        (authenticated bits=0)
        by mu.digital-domain.net (8.17.1/8.17.1) with ESMTPSA id 2AB04iRs060726
        (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT);
        Fri, 11 Nov 2022 00:04:44 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 mu.digital-domain.net 2AB04iRs060726
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=digital-domain.net;
        s=dkim-1; t=1668125084;
        bh=kmT6fgTUGeBmUjQsJVoip4go0whWxl+ZBhtciDKCMCo=;
        h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
        b=O8Vu1zXDeqdLPELEeW0NksLcC1tL8U89E4getZZRkIY18NUYtmYpdD4NqTX53/dzL
         zmLabzRl7t/QinwqNcYVZXx5QYndci03RXOgH9ixbRBkDoSxtkL4niEuNkYvNEd8TK
         PPV1F+p3ru8iswAgSUpq3uHWwHNWst8gE8ziZUSdKVPDX2DJAVE5wKObcGWA/HNI1y
         RM+IgyLWKRTqcQxucc6XQn8ENVKs+fNsLHx2j2uVNykdBeub2bEG6wgfgIxb+FuKjw
         m0T0EkOwGRT2VnRr/OVbFJ8KhbI8QTX1fTbmML7cBzY/kK5dF42hTX8EQDd7POd+oB
         YjliwthHFbs7Q==
Date:   Fri, 11 Nov 2022 00:04:40 +0000
From:   Andrew Clayton <andrew@digital-domain.net>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Alejandro Colomar <alx@kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        Andrew Clayton <andrew@digital-domain.net>
Subject: Re: [PATCH v2] memmem.3: Add list of known systems where this is
 available
Message-ID: <20221111000440.0b4e08c9@kappa.digital-domain.net>
In-Reply-To: <7c72c8b0-ddb1-ec66-3886-57f2f7ac192f@gmail.com>
References: <20221110001318.10696-1-andrew@digital-domain.net>
        <20221110233138.63585-1-andrew@digital-domain.net>
        <7c72c8b0-ddb1-ec66-3886-57f2f7ac192f@gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.34; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/NJG=S5Qz8exiM3fEJbU5H4M";
 protocol="application/pgp-signature"; micalg=pgp-sha256
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--Sig_/NJG=S5Qz8exiM3fEJbU5H4M
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, 11 Nov 2022 00:59:59 +0100
Alejandro Colomar <alx.manpages@gmail.com> wrote:

> > +but is present on a number of other systems,
> > +including: musl libc 0.9.7; FreeBSD 6.0, OpenBSD 5.4,
> > +NetBSD, and Illumos. =20
>=20
> I've been thinking about the line breaks.  I'm not sure how I'd split the=
m, but=20
> I'm not happy with the current suggestion.
>=20
> Please see man-pages(7) about semantic newlines, and see if you come up w=
ith=20
> something nicer.
>=20
> man-pages(7):
>     Use semantic newlines
>         In  the  source of a manual page, new sentences should be
>         started on new lines, long sentences should be split into
>         lines at clause breaks (commas, semicolons,  colons,  and
>         so on), and long clauses should be split at phrase bound=E2=80=90
>         aries.   This  convention,  sometimes  known as "semantic
>         newlines", makes it easier to see the effect of  patches,
>         which often operate at the level of individual sentences,
>         clauses, or phrases.

I guess the best thing then is to just break it on the semi-colon.

Andrew

--Sig_/NJG=S5Qz8exiM3fEJbU5H4M
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE6OI1RUD6ZXrSuiaOzxB5j4U6ioIFAmNtkZgACgkQzxB5j4U6
ioI82g/+P8/nj2DbDHdr/xhhGWGWz8hwv8Y+SU6v8a9ZMEpbPglSDJFLWi+kTyDo
Uz8suaQ2CQqpkEIvzlyDbw1uugGWhgRLEquY9Kj9hT8QMxHraoSzSpyLyeX591+3
vfIvuUKkjRb9DVLqb/Ga40aIfIsyJZ2plUhgneGlGfZn8lr0EBZM3Il8caSINB4m
NnmeW4M6nnulxIBPJYp40R1lpP+CNLZSEyQPSJpfXDc/ggQqz9XfFvyWkG5Fh8bY
yETou4SrBuQJrxAq5gRxE916kZSYubdKAlPl5hnPcO55PwMX4LMO8A8aE/BV+/os
eevD4ATRCUhL9II+p+WmNIE63RBpH2x7Rd0WAB8RCqhxyp0VcwZGjBvGofPZEik4
qk2Ay6yGxlN9p53ZqZo6oCxRu5sfQCePoi50of/UjLvEoHFmRHyFpFsNhhx/WFtB
SlfZSXcOvLwntXuaPVc9sW900Ku6iB2xdf//rI9CJlYbNKYWq6whyGhavRfPJcnp
SJQav/HnHQU1qsSsM6rhFqOy2SkAapyZ+svkEBsA6lotaPQBnhdbyCYZInE6KjHM
tgcFpogmqy2LlR9UlYIAd5ZNjUJiBUvKPhEU0V97BcBYz98ByKPlqIXjv60SN1/X
3+XT9e8Ic7uJVAd8AQBhTx0f76UDW1OwHSwqWLwddMPWKy/aY3U=
=EkDC
-----END PGP SIGNATURE-----

--Sig_/NJG=S5Qz8exiM3fEJbU5H4M--
