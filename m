Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B00DE6BE9E3
	for <lists+linux-man@lfdr.de>; Fri, 17 Mar 2023 14:14:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229516AbjCQNOh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Mar 2023 09:14:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229562AbjCQNOg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Mar 2023 09:14:36 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09CAA41087
        for <linux-man@vger.kernel.org>; Fri, 17 Mar 2023 06:14:32 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id t15so4384734wrz.7
        for <linux-man@vger.kernel.org>; Fri, 17 Mar 2023 06:14:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679058870;
        h=subject:from:to:content-language:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=9xHJX2Dnf7DwzeHqiXCaz5/VuEA7KmPBVK0Mqtin75Y=;
        b=ZJ37QvMRuO0I0XzwpVlQ0IdmfA5tfoBKubISouhDqCpyEPg+kTGtmboo3wcHCzyVDE
         68fSMyxhEWN4z1HN3FFhntRQXe4VuqLM/xOFxfgZbW6XeKjC/UiShjZYAoEsqs1J93O/
         fMg+TVvddUsSVoE2lbDA8rMB+8ElnKXLTqRBWktHRnWOron2FLUqscupmqMuN//e7dIb
         mMd2NEna3wttuJS3PggGQOwDX4WiefYcqBeB6KUshGSwP9GgctihJ9sfhQ8VM7oj5AAY
         Kkrt6JeM4hE+V9pjGy05ksWPWFBJkogmDqPT6DlZDY0YgWO6R1x59FzD/SpsvBKRGs86
         U25A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679058870;
        h=subject:from:to:content-language:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9xHJX2Dnf7DwzeHqiXCaz5/VuEA7KmPBVK0Mqtin75Y=;
        b=qaYQXPuYDOSUhHgkp/kkSWhQGgoLDMz8mRwjDXp1S2mUOScZZvfSAAtPjvvbHFN1sU
         sUKhriM+RL9MeVS63xqqa1CCWx8W6jEjhUkH+vV9M+LTZrCJDvrH6Z21gpLgRTcP2Xx3
         Ds1JxHV59CXIPA53+wVrFEo4pt8IZI/UFfIVgEn/yn09JsvUrrOVDIKmlGXU2vbjM00w
         PSWZM/YCZVExiMMpT+LzfL79wXaUdQGWqhm9mgv3z1u6LImlu16f/2s/G81T7bhtosW7
         zj7T6lI3xv7Yhm8a6u7xzvydhn43NECjpl737VYdG5mv2jE8aiPl5LW1hp+bFWA6XIJl
         C4zg==
X-Gm-Message-State: AO0yUKWkVzr+9NgNP89uuVmAL2tvef3TIPgqdtdDC0AkmppUTJ/a/ND9
        iBkzn22ESsMbCe8MLEAYusms9KHdMPI=
X-Google-Smtp-Source: AK7set/+iMPJ+qcVD1TR2ZjcVOSdvmcbFmhu/Gy6w+fteMpniocuGNq0u7DnauFPxJbyI6pFWEtJ2g==
X-Received: by 2002:a5d:5964:0:b0:2ce:a6a9:bd58 with SMTP id e36-20020a5d5964000000b002cea6a9bd58mr6620225wri.26.1679058870141;
        Fri, 17 Mar 2023 06:14:30 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id t10-20020a05600c450a00b003e7c89b3514sm7992113wmo.23.2023.03.17.06.14.29
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Mar 2023 06:14:29 -0700 (PDT)
Message-ID: <99d0a14b-41f0-8392-6558-add8091cbd9a@gmail.com>
Date:   Fri, 17 Mar 2023 14:14:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To:     linux-man <linux-man@vger.kernel.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
Subject: Order of sections VERSIONS, ATTRIBUTES, STANDARDS, and HISTORY
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------1vtH40C4H1X8jUxBK131liX3"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------1vtH40C4H1X8jUxBK131liX3
Content-Type: multipart/mixed; boundary="------------xGIk2R5IhLsn3KUPO7aLPxX7";
 protected-headers="v1"
From: Alejandro Colomar <alx.manpages@gmail.com>
To: linux-man <linux-man@vger.kernel.org>
Message-ID: <99d0a14b-41f0-8392-6558-add8091cbd9a@gmail.com>
Subject: Order of sections VERSIONS, ATTRIBUTES, STANDARDS, and HISTORY

--------------xGIk2R5IhLsn3KUPO7aLPxX7
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

man-pages(7) has the following order:

              NAME
              ...
              VERSIONS         [Normally only in Sections 2, 3]
              ATTRIBUTES       [Normally only in Sections 2, 3]
              STANDARDS
              ...
              SEE ALSO

There's no HISTORY, which I'm going to add, right after STANDARDS,
since it's very related.  I'm not convinced by attributes being
between VERSIONS and STANDARDS, since those two are also very related
but have nothing in common with ATTRIBUTES.

I propose changing to the following order:

    ATTRIBUTES, VERSIONS (moved), STANDARDS, HISTORY (new).

So that the three related sections are together.  Any opinions?

Thanks,
Alex

--=20
<http://www.alejandro-colomar.es/>
GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5

--------------xGIk2R5IhLsn3KUPO7aLPxX7--

--------------1vtH40C4H1X8jUxBK131liX3
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmQUZ64ACgkQnowa+77/
2zJW6A/+P5Z5lNwOSE9ge/vqGTwqH+YWHXSdhSiqRJUbMo91s6FZvjiUJ88eknBv
EWBX88246UMCeyg6/tu7Aykc9Yy0UcpGpDeBRfoltajlhBpW683JR7SV1qRKxp7p
1nKKi6YCaQWpmjcxyIPCfm+6Hp38EAJoDhFAllK+NNebYemuZsQSVr+HfoyvxHqv
YHJH7aqAIehdNZL9vDjaqfr1X3YQgviZaAUtzUnMLVY6vodIA/vjYXpa3Wvhi6Qz
c0R282KyB5j0VmFUAwJpYdPEgPdl0d68MvOT8GbSPNuWRkb96wU9dsImD6gOOfeH
/7TPrXiwFojE6gWdgRMa9CstamX6Z3LhKxIJINaUMEEY0LxkZbOPJUJ5+zDbBYx5
S2rFsinlPY2pVvACGed3g7D3gO4j8Y5SoM6BePfKQYTJsiQWUFY1rHzxdgSdnVOi
xrR3PCreeJUNjoLFCETpRplzF1IWXgQoj+bf9uKHf7kkDfHcsELJ8PEiAyy2EW46
WMCkzi2gLCZSKijevOvIF3WzVNs5CgDYBzuisqv2PIo3ILgiijVZE4TS69Zi30Yw
ZWkwr52alL2t+Bm/ATLzRYu6eqnMPDm550H0Lj3gtRz10MTHDt6O5XJ1yfY8blCk
mCkTQYuFI/wY45/YAdZFvflDgnMjXyFZ8kF/3pJhBdf2FgATgqg=
=DWxY
-----END PGP SIGNATURE-----

--------------1vtH40C4H1X8jUxBK131liX3--
