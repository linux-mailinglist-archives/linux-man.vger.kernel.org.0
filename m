Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 609D06F2554
	for <lists+linux-man@lfdr.de>; Sat, 29 Apr 2023 18:01:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229977AbjD2QBI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 29 Apr 2023 12:01:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229844AbjD2QBH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 29 Apr 2023 12:01:07 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 671C519A5
        for <linux-man@vger.kernel.org>; Sat, 29 Apr 2023 09:01:05 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-3f09b4a156eso4906695e9.3
        for <linux-man@vger.kernel.org>; Sat, 29 Apr 2023 09:01:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682784064; x=1685376064;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vkddKfF9y5SUIbGzzKBknsstvkSde29vs/QS+ctET6s=;
        b=MC0BZdXLM281Pd/kl2/1CH6ysw31hh6UF1eEabSEiZmuAkCJr4ej0SRNgrg86yEt7R
         R8Y4dqYbjZaI+wZaYOJgmol7IKaJQF1A7PtgLY3XWA2v7dXlrxznLJUIF/eoAMULBc9q
         0jDODq0XrQ9mF5ZS3GSL/nlG+iHvhYtmbwW6r8zUj8yNooL5mgG7VL2ytdoTRoai6teq
         P1S94NGcENWcODXgmzVzy0XJBiRryv2EDLkBgwsXE1MMLOc4J7ZHXckOubTF274OLktR
         /xybKfijRRUQsLS6k3kXS2qw1CDgP5FmQSQLoYo028ANXd+jxxssuNbxMUpURFRJaW7n
         sC3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682784064; x=1685376064;
        h=in-reply-to:from:content-language:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vkddKfF9y5SUIbGzzKBknsstvkSde29vs/QS+ctET6s=;
        b=QbcRbTnhSPXu/MBFetGoxk/JYmEaWV5oFkc0yng8zv66iE2tEGnukiAOllYm0+MeMW
         F46DIKJX8FeVf7fLmckviUEgCF9guowz1LyAbiq6hDQdZ26DB0BQb8I1yb4AETpUtLXC
         1/1cCqYUkLI7GXQ+t59Dg0mzSvTP1ZZ7QQiojqDhnnsEu5HATosWuanKRMs5hFe4yZDF
         yQ9DT+tvWAX1sQD6voEGSRjnzW+pucdfpLn9m/R+ZyMUif/c9xW5JBcDUTdbygEWc8nP
         vZPOdRHofyChkGxJko2x816eN8+84TXNg5SjMVS9RoxCe+JRlz1nxMLO+dlwdjerKP90
         TrZg==
X-Gm-Message-State: AC+VfDza/DWontPvEblVnR+lvWYy/bI2VWEz1MDbhYWaXepI8oU3E/iZ
        5jD2ugA0HPSxsCg1ZLKXeqE=
X-Google-Smtp-Source: ACHHUZ66qQiZKK6RtddQgCd3jw0rmvWGic2X/rV/qeyaWYtW/PYdHO49/9v7zyrIwuCYFcYEXellKA==
X-Received: by 2002:a05:600c:2199:b0:3f1:70e8:c1ac with SMTP id e25-20020a05600c219900b003f170e8c1acmr7451102wme.8.1682784063706;
        Sat, 29 Apr 2023 09:01:03 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id hg7-20020a05600c538700b003f1940fe278sm24149116wmb.7.2023.04.29.09.01.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 29 Apr 2023 09:01:02 -0700 (PDT)
Message-ID: <67fc8618-6f64-1b06-1d00-178374cce694@gmail.com>
Date:   Sat, 29 Apr 2023 18:00:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: fsmount, fspick etc manpages are still absent
To:     Askar Safin <safinaskar@gmail.com>, dhowells@redhat.com
Cc:     linux-man <linux-man@vger.kernel.org>
References: <CAPnZJGB4GkUUc7o_Fac1jjS8+jfsTUsOMpdCmAkn84ScQ-fpPg@mail.gmail.com>
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAPnZJGB4GkUUc7o_Fac1jjS8+jfsTUsOMpdCmAkn84ScQ-fpPg@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------xoByq5jyTWBwPQmLnnp3AV4O"
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------xoByq5jyTWBwPQmLnnp3AV4O
Content-Type: multipart/mixed; boundary="------------Bo0H8UPgfA0Kanp0zqfu0QOQ";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: Askar Safin <safinaskar@gmail.com>, dhowells@redhat.com
Cc: linux-man <linux-man@vger.kernel.org>
Message-ID: <67fc8618-6f64-1b06-1d00-178374cce694@gmail.com>
Subject: Re: fsmount, fspick etc manpages are still absent
References: <CAPnZJGB4GkUUc7o_Fac1jjS8+jfsTUsOMpdCmAkn84ScQ-fpPg@mail.gmail.com>
In-Reply-To: <CAPnZJGB4GkUUc7o_Fac1jjS8+jfsTUsOMpdCmAkn84ScQ-fpPg@mail.gmail.com>

--------------Bo0H8UPgfA0Kanp0zqfu0QOQ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Askar,

On 4/29/23 15:17, Askar Safin wrote:
> Hi. I look at https://git.kernel.org/pub/scm/docs/man-pages/man-pages.g=
it/tree/man2?id=3Dd52ff90035ceedfab4d34b4316b94519a0864e21
> (is the link correct?) and I see that manpages for new mount API
> (fsmount, fsconfig, fspick, etc) are still absent. When they will
> appear?
>=20
> I see drafts of the manpages here:
> https://lore.kernel.org/linux-man/159827188271.306468.16962617119460123=
110.stgit@warthog.procyon.org.uk/
> . When will they be ready?

Those patches date from around when I started contributing to this
project, and I wasn't involved at all in the review process, so I
can't tell you much.  If a new revision is sent, I'll review them.

Cheers,
Alex

>=20
> Please, CC me when answering
>=20

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------Bo0H8UPgfA0Kanp0zqfu0QOQ--

--------------xoByq5jyTWBwPQmLnnp3AV4O
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmRNPzMACgkQnowa+77/
2zJgtw//QmSzur86Z4HEo0DFa/QBofLYsQtuc//1/Qs4OGrOiX3wz4NX8wsyuT5g
d5elor4Ybhxw39mTTCr8XdZyh01UgYPvjHEwPsgmKxLVSbSAdsZPPujxzTtSUBRf
z04l3m6gkEq2RsvxD+i+lgFKtgG48J2/NjxoRDXLMtd263TgIBmZtOAwMkFqAZff
w9vAGZT6kOT8gMkg8amzpE4mzXdWF737qBIJ8gdqPcrbdLDR9F+noSQQHOSUGKFk
tDYVddoqihBi0KXryQMSr89OwQ3wm6Q2N8+dCDDxfObA6PzXVx3wcIIltay0cTxI
o/I564sNUzyhAqwwWI+HHDa8DsUDDFVuugvT1fG3aCc8LRedm9ijQZKQA1Xqhkve
02WfvTL3Ko9df5WmfIgk+5QYi8wiUh8hPQ/OGWjy1A6l2LHcTNEb4Iyk+xs9KRk1
xrv4YV2fdRS2CkG1WhJQKikSck1cl8IsXtUDZFXhAR2u1bR5IS2dANv285arN0XK
BqfF5Itre5uChR2RJamKNI3Po3OLbSqhfBjbTED8WablEG/+zsap0SiHNqkDr/cU
NzorDS4a9mEtpV+0U/PCJbpu20MgjoWRSEJLIo/CDAtjBTKpQyY09hSUQetl1HDF
KLW60p3XtwA753+A8fG36eczCNWMMBDrgv7zt01IGgBjPXc887g=
=/0YY
-----END PGP SIGNATURE-----

--------------xoByq5jyTWBwPQmLnnp3AV4O--
