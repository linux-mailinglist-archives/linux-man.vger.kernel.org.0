Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C3E2766104B
	for <lists+linux-man@lfdr.de>; Sat,  7 Jan 2023 17:53:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231533AbjAGQx2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Jan 2023 11:53:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229632AbjAGQx1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Jan 2023 11:53:27 -0500
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com [IPv6:2607:f8b0:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8875D3AA87
        for <linux-man@vger.kernel.org>; Sat,  7 Jan 2023 08:53:26 -0800 (PST)
Received: by mail-ot1-x32d.google.com with SMTP id p17-20020a9d6951000000b00678306ceb94so2682620oto.5
        for <linux-man@vger.kernel.org>; Sat, 07 Jan 2023 08:53:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=W1arkv414C+GdAAvGBoyDftgQBJ5LbyFdKWI4T4u+tw=;
        b=l9GO9EiGD7cGFLiTNHqZb1cEpQHDa64WuGnFv0GpOCNasg3Q5tDq6wcmuP9M+i7DmJ
         TcG3rTcfCMNuRf8A0rp7lGjqN26uaW8f97fNhFZy4CkwS8Uu++GmJfTAXBOYzfXzj/Pm
         QvJZ2q3Gq8i50K2gAcfM8T94uEFP3bznzyBqVeGW/em+zxTcW1cdR6wLsYyaMjvMYWWg
         8A0GpW/7dwrsZOVYfMUuxfGNKF/73VOTkSPlvFqjp7iF3CKgATN1/a+c8kQ/qcAYFKG6
         Xfir0oBGmfMzTzSF797KaDMCAib1f0xpcrZgXNA3KSf3/GLedkHrf0wU1WmfhjEhvj0r
         f7rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W1arkv414C+GdAAvGBoyDftgQBJ5LbyFdKWI4T4u+tw=;
        b=nB4ksj5mEMmTjtOV6oo7TKY2HPyrWkrzhGdgyyBtyM1So7moRGcmoQ6G07eo4w3Iqy
         hEeNnmbaTGyh/sIXDxVHUigJuMSwmfKUvFD1Qw+5PPzXbK9Os2tQ+ZpYQtyvTaWPqzqM
         5YUAaQIFhSVRa09Q3sonIduVuhixPvUdw18APW8bXNeNlHVKWhHICu93tS+P0EUIEU1/
         4uD8aTXfqc6ENxWXPGaMIw5JLLUWhqworD6NblIAO5VOmOqwXSoAzncC0xkj7n+xkD+P
         O/+H8AYdKu/tk33RP9yn+Bez0Z9kkoDBJazaIcHXEyP7Sz6dn2ru5eMAX09tRNdxTLRK
         c+OQ==
X-Gm-Message-State: AFqh2kqLhgMIw97AY7vnuETANNciSFJVlcxvejF6hcKpV2jy1wBLoDQ2
        sFIrEQUzNgmcHN8SmEV+O6TVzruFIqM=
X-Google-Smtp-Source: AMrXdXvlv1eFtfV7+k2gyDsMsKjx+DO1ZPzHDTFANds7LUiW5K8/onWUSyob5xRTyEQ6G35X8Vx8AA==
X-Received: by 2002:a9d:6048:0:b0:67d:6d15:640c with SMTP id v8-20020a9d6048000000b0067d6d15640cmr28038801otj.12.1673110405933;
        Sat, 07 Jan 2023 08:53:25 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id w18-20020a056830411200b00670747b88c9sm1972755ott.39.2023.01.07.08.53.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Jan 2023 08:53:25 -0800 (PST)
Date:   Sat, 7 Jan 2023 10:53:24 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH v4 02/10] ldconfig.8: Revise and update for glibc 2.32
Message-ID: <20230107165324.c2t2senoh3loyof4@illithid>
References: <20230107095422.44loq4pzsfjktvpz@illithid>
 <43a8427b-4038-054e-cea1-c54417bf65bb@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="6f53loq6u3ifl3zg"
Content-Disposition: inline
In-Reply-To: <43a8427b-4038-054e-cea1-c54417bf65bb@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--6f53loq6u3ifl3zg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

At 2023-01-07T14:10:12+0100, Alejandro Colomar wrote:
> > * Expand description of "ld.so.conf" file to discuss "include" and
> >   "hwcap" features.  Describe these as "directives" (though the
> >   latter died upstream in glibc 2.32 before we got around to
> >   documenting it).  Document ld.so.conf's comment syntax.
>=20
> I think ld.so.conf(4) might be a good manual page on its own, and
> ldconfig(1) refer to it.

s/1/8;s/4/5

That seems reasonable.  Can I tackle that _after_ the current batch is
off my plate?  :-O

> And maybe also for ld.so.cache(4).

(assuming s/4/5)

Here I don't agree.  The format of the cache file is an internal
implementation detail; the user can select a format (possibly for
file-sharing purposes[1]), but beyond the name of each format ("old",
"compat", "new"), these are opaque.

In my opinion a file format need be documented in section 5 only if it
is (deliberately) exposed to manipulation by other tools.

Regards,
Branden

--6f53loq6u3ifl3zg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO5o4QACgkQ0Z6cfXEm
bc555BAApIlc2kJ8z861FhQFK9cCkNfguHbLBC35H+GgRxrGiPSvTAypmWDeyrU9
T0e95tXpKjZU5/zB+Qjt/cWr/4l2mx32aJ073YrQ/uu77b+rCOkaTceMpLaTuXHh
QXlGeYUUa7Jj7qxhjilBAffxL24XOHqw/6TyG8ti2V1IaqSzyqzQ2ezWfqtlAn+L
zdgny4Goir+IKcLEYgv+LKmL9uBzjW9qfxehJpQnS/at2zjLYxrv/joJeKKM38Fy
Yzr6ksaPm1UB3AJF9Q/SDGyZZNS9cSVabFfasJp/H3pcqQKe2TvtOy200SNfXejv
Vi+tyj4JY9tx7kqGPbbi7fNWOdoZhXwXrw1jEvyJn1JMxYh74dsTV7qmU3vsDLY6
eO0vLWu+RxQatBuMzVC5CWOqZF5VdZw1+Kb+qlSc00DUjjQtfWAW97CM5L0DMJQ/
Q3AIGXmmSM6SS4YX+v+v8UOdpUmYA76xpsN8gn/CLkZksc0LBD9b5/AoApP8+x87
TPaKg34YBDMTa2/dHaB47r/nLF8jefZQmpjaHdwvIJfrb/tKh9JgzZrw2JRR9fIz
l/iuJQHgysmXwpxFFMpr394maUt78nwSztN4i4/64yAOY+f8VIcHzqDUORhPQ14x
7EFsq2G/1PgoMHHW2YucYDumokruKOZ+2vUSaUt9KmciDwIhsWA=
=dlc0
-----END PGP SIGNATURE-----

--6f53loq6u3ifl3zg--
