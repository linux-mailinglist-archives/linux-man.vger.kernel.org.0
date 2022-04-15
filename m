Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A9575502E67
	for <lists+linux-man@lfdr.de>; Fri, 15 Apr 2022 19:48:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245596AbiDORvC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 15 Apr 2022 13:51:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237028AbiDORu7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 15 Apr 2022 13:50:59 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 212EABCB40
        for <linux-man@vger.kernel.org>; Fri, 15 Apr 2022 10:48:31 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id t11so16409879eju.13
        for <linux-man@vger.kernel.org>; Fri, 15 Apr 2022 10:48:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:mime-version;
        bh=5J4H663GBPtanaEi718/e4gk8u5sOVJExIPpkhGpkBw=;
        b=mhk2FL8Ph4Y20FkYfS3z0imQxQ8+QcIKnbyFwhK0QhSBHR7dv4yYw1KRGgwgNWUztD
         buMQczyrRCWmaCE08FoOe0O0JbP7wWmZZtpJumzLakPnrnQLTjcek26zMvl17LbhWTue
         faRB8cODCVJsQetnGyVWbPrTdG+lbaYCtge5TsDywY2/VfjU1wummsDK89OfCZt9HpiC
         SH6kUXEbhUi4/WbgvV+CjkTsXKtoklV/FvnOayCBsZdXELEDzXV5D97YAb0kKyR6Vu4p
         DsLKA7UoouFjJplsaswogePG56w9p5wF9Yx3YPwfXViy9XHaah1ACiisS0YW0ok5YOez
         DKiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version;
        bh=5J4H663GBPtanaEi718/e4gk8u5sOVJExIPpkhGpkBw=;
        b=BhxW0xo0PoJyYHVaBhlGGyeNad5zp2om6jPylE19xr2kPq5q9H7izQ+nhKO9sCDtq6
         8r42C3QqAwg8gEVhkJlH6NTD3LXoUE0tSHPptwvq2xoPe/c5fu7eSqhe5sWjSDI4bjlA
         XbVs2Lk1XfKWwotw5bAkSuqjBfqtRyyCUde876auYcADyzQZtVNfbjL3JAVKHmDT56nI
         jOIe7Z+IixF3yXnOk3v9r0gGvcxVVkRV0KHU2gonF3jEJkP51CcsATKsLxeijuyXGGLF
         Xf0p65Ag17wA68Aqwglle/9BjFKUcbQVh/GHtnXcjgjUhHyCJ6TbBZPyfcvAEju7yrFc
         Tchw==
X-Gm-Message-State: AOAM530++hIAfyKC5hOfjOsE5fGp+rl3eXgdJQAqrGCoFBJeFhIRfXvQ
        GkeuTd6DLypZ+w5ihABwZak=
X-Google-Smtp-Source: ABdhPJwzjAn2naZl46b70uOvxM27hI5B7nRrgv2McoeCX3AtDEXnMpRJwAsd9m+7W8P46OOHkm5IYQ==
X-Received: by 2002:a17:907:2bf4:b0:6e8:93d4:46e9 with SMTP id gv52-20020a1709072bf400b006e893d446e9mr178200ejc.69.1650044909471;
        Fri, 15 Apr 2022 10:48:29 -0700 (PDT)
Received: from PC ([91.187.59.126])
        by smtp.gmail.com with ESMTPSA id n15-20020a1709062bcf00b006ee82143cfbsm1093662ejg.51.2022.04.15.10.48.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Apr 2022 10:48:29 -0700 (PDT)
Date:   Fri, 15 Apr 2022 19:48:19 +0200
From:   meator <meator.dev@gmail.com>
To:     mtk.manpages@gmail.com, alx.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: Request for clarification of O_PATH in open(2)
Message-ID: <20220415194819.5cb80c4b@PC>
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.33; x86_64-unknown-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/5Gh7HbzG7Vt8rjCOyIzJYQ3";
 protocol="application/pgp-signature"; micalg=pgp-sha256
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

--Sig_/5Gh7HbzG7Vt8rjCOyIzJYQ3
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hello. I was reading open(2) and I have noticed an interesting statement: "=
The argument flags must include one of the following access modes: O_RDONLY=
, O_WRONLY, or O_RDWR." Must one of these flags be specified when O_PATH is=
 in use?
O_PATH description says that "Opening a file or directory with the O_PATH f=
lag requires no permissions on the object itself (but does require execute =
permission on the directories in the path prefix)." I think that this can b=
e a little bit ambiguous. When I first read it, I have thought that this se=
ntence talks about filesystem permissions required on the file, not the acc=
ess modes.
O_PATH description states that: "When O_PATH is specified in flags, flag bi=
ts other than O_CLOEXEC, O_DIRECTORY, and O_NOFOLLOW are ignored." One coul=
d think that you must specify an access mode, but it will be ignored.
The O_PATH description actually mentions the O_RDONLY flag, but it compares=
 the difference of opening a file with O_PATH and opening it with (only) O_=
RDONLY, it doesn't mention the need of O_RDONLY flag when opening a file wi=
th O_PATH.
The only part of the manpage that clearly states that using access modes wi=
th O_PATH is not mandatory is the code sample included in the O_PATH descri=
ption, which calls open("some_prog", O_PATH); (but this code sample covers =
another aspect of O_PATH).

Maybe I'm just dumb and I misread some of the text, but I think this can be=
 ambiguous. I would have sent a patch fixing this, but I'm not a native Eng=
lish speaker and I don't actually know how open() works, so I don't want to=
 make a mistake when modifying its manpage.

Thanks in advance,
Meator

--Sig_/5Gh7HbzG7Vt8rjCOyIzJYQ3
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCAAdFiEEew9YpeDxouoRV4pzGhTLNGTL5b8FAmJZr+MACgkQGhTLNGTL
5b+VDgv/ZkJhes+Qvdj3qzGEc2a68ltU3Vc7tl3lgRvy3AI36daqSWYYB9dXDzAi
nQFqZlMZ/BAralyvZUPSENVNlcC5pPN0wFiXH+qPLRdKrmRpt/hc04kRdon+ltll
LsR4hbxt8MbYJx1fx/NP85jU/ekRyFlygJf8H2WmdtTCBURbblk2Mbkvdb44TuoL
Fy/vVvBK3Dnv73nK77JDmWVz8xJEaWT5lpMR0QFbVZSOSepzmHrWFXbJDYEGW+Ty
FCScFcOJRHHq4FDXlhqDU/8H44SVV9ZxXhM+efYlDXUBjXh9yTj9sMjVqKnbe3tg
ciPHgnmgseMntWurQjD7ldrT1BuKz/H0iAwbWWov8x3mPVE2qPSbXY7u8sKhlfgH
CWDgZdA1TN1L4Qw8jKOBWC9j6e0OmAY1pPXUeAFETUwMf1FX70SbL/PvD11OIpq3
IEn40pJ/tKH99haImJ+iFDbKvzonWyDJ1NeV1yQWuvrPTYZZ8LHcoMT1InYTwsRo
mBsg9pf9
=LGFk
-----END PGP SIGNATURE-----

--Sig_/5Gh7HbzG7Vt8rjCOyIzJYQ3--
