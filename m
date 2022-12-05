Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E716F642893
	for <lists+linux-man@lfdr.de>; Mon,  5 Dec 2022 13:36:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230385AbiLEMgq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Dec 2022 07:36:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39268 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230084AbiLEMgp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Dec 2022 07:36:45 -0500
Received: from mail-oa1-x34.google.com (mail-oa1-x34.google.com [IPv6:2001:4860:4864:20::34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F6F817AA3
        for <linux-man@vger.kernel.org>; Mon,  5 Dec 2022 04:36:44 -0800 (PST)
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-1322d768ba7so13255284fac.5
        for <linux-man@vger.kernel.org>; Mon, 05 Dec 2022 04:36:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+oMcDY2PgC9gHzH1gti0qDRDLfUiUPWSlBU3yOwNNQw=;
        b=cn+QsF2XaMZFbS3NJlHDLw6HfBHlxYssCPo3ussE/VbMsCae8G1bibarufBOm0KMaC
         C6XTox3JyqO7ttEni6E7jz6XNAORxV5hLoxzDIcred1aZLuWkvSteq56P8IJDKe6EEmz
         Nq/Q41wB01TQXVU1DYwv699V4r4/PqYSnoSMLjR1pCEU8sUc8NEKWNHn24cbgJ9ZMKEP
         dpTSe+RwcpSZoShXrKUakJi+V8+BzmdG/sL8eQJbnXXxPzALTS3nbX7uVU67kHf/4Y7o
         onbknT7WREJ7C+I29bjFD1mmA4rNskqjuzT+/k5wQtgY2wVWeJx28q60YznK+8pQDp5z
         iqnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+oMcDY2PgC9gHzH1gti0qDRDLfUiUPWSlBU3yOwNNQw=;
        b=F4FQDs//ZaAbX05nGXDwf6i6pY7QaaNdh1w7P+a1OrFNJ471rxETBBRAVMvXU6AG9q
         ysDRW4E0wmFYd8Lh1zNlKyhnnF0PgCTKmTx3NQGBI9HNsPLLYQ1oiGxHs1eXdCXodkHu
         y083zSJ7dgyyC6IiGMetwyN8CT1Ivs/HT4nAO2YpGwyhGsx61/ZhgPuLcJHkVp5+Z52v
         h380CZNAJ7Hn8I+2buo12DchK1V33Z8g0vud5vba3QeLDvw8TGJOMZGZ18h8h3WivDEt
         crQIbz3rxr2TFEfS62mcTgdQQ4Y5rVhB4Ak2DkVVHiX4vNOnp1U3M2WANARhtLDvnqoc
         UkxA==
X-Gm-Message-State: ANoB5pmGx4N582efB/QTOBfN7J+xyY4HaLc96uGHjfRjV2cTfNzYw/Lo
        EFN5GsbnUel0tsLlDLcrG/+CkinPjRQ=
X-Google-Smtp-Source: AA0mqf7nbDplxOPRxQudjubfE0A7Twhw6E+HI7VFmnOt88ApF7KXJhdsZTBTnwEuhFNJ1R50qfyEhQ==
X-Received: by 2002:a05:6870:f299:b0:144:7991:54d3 with SMTP id u25-20020a056870f29900b00144799154d3mr3975126oap.149.1670243803656;
        Mon, 05 Dec 2022 04:36:43 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id x60-20020a9d20c2000000b0066eac100e8esm2708198ota.62.2022.12.05.04.36.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Dec 2022 04:36:43 -0800 (PST)
Date:   Mon, 5 Dec 2022 06:36:41 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Helge Kreutzmann <debian@helgefjell.de>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Mario =?utf-8?Q?Bl=C3=A4ttermann?= <mario.blaettermann@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: Issue in man page mount_namespaces.7
Message-ID: <20221205123641.3ctrtk7cnyzkotyn@illithid>
References: <20221204090710.GA324@Debian-50-lenny-64-minimal>
 <20221205120305.htc2sd7r5qtvte5m@jwilk.net>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="eadggsoo5hgmacfi"
Content-Disposition: inline
In-Reply-To: <20221205120305.htc2sd7r5qtvte5m@jwilk.net>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--eadggsoo5hgmacfi
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

At 2022-12-05T13:03:05+0100, Jakub Wilk wrote:
> * Helge Kreutzmann <debian@helgefjell.de>, 2022-12-04 10:07:
> > Issue:    mount or unmount =E2=86=92 mount or umount
>=20
> The system call and the command line tool are written without "n" for
> historical reasons, but it's spelled "unmount" otherwise.
>=20
> > "This mount shares events with members of a peer group.  Mount and unmo=
unt "
> > "events immediately under this mount will propagate to the other mounts=
 that "
> > "are members of the peer group.  I<Propagation> here means that the sam=
e "
> > "mount or unmount will automatically occur under all of the other mount=
s in "
> > "the peer group.  Conversely, mount and unmount events that take place =
under "
> > "peer mounts will propagate to this mount."

Yes, let us please not entrench Thompson spelling reforms to English in
ordinary prose, lest we creat more problems than we solve.

Regards,
Branden

--eadggsoo5hgmacfi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmON5dkACgkQ0Z6cfXEm
bc5neBAAqtfCGMejO27tENsE3c79/qwUjs8M6rw7RzpIE48S44oKx0hCyLr3dfBS
BpNnQ0O+mym0wnyyDx1rUgCxmr+7SF9CWwZJ0409lFnU9D+bTJxkhemvnJEKYRYV
pV9QArdtyo9E7EVnfFnnnHVEFaT6oW2rJtS1u8/EqSB4GGZW+ElIzccZZtB6E4+v
B4OIWEa1TQhkoeoiK4rq3eCUa7GizXSNhWy1G4r7La7xn2iYYLXNNJwMVzBM8F2T
++GdpYstiQFyKuhxBP+lLzT5qREQ0LWPuxAc4AfoXikQbwlT5EM762BiXdoUt3gS
duBL56/1SDRTPXC1osK2/ax7SkRDe5CQI1ZIpyXcIyS3F3COoo0NW0RAgwbW1AY5
VBdpMxTid7UBYjhf1Z34fP8GnPyNmFEiFsU7W1Tp94VT2eV3UeyG8m28Dw32WzG/
g7THDcc9PV8X19A5+UWAPlqjXmq1pVV51R+6BvLLUw6CwxK+pgUXbbjqAiaBDdvA
ouxH0TxFa63DbvLnMqVYLfyrK3Ho+IQHnGcM5Xhy0kU9g+cXoYB3vZDAQIiJp5pN
72PZPc7tovlHwmu8RNASZQPh/CuYCXKtKOpQ9fF/dRIVFeJWWW0Zp8k07/52M0B7
WHqOgxWCxmpm6PC6VUiBxjvSK0UQ4LwubjmCSxBGy0xTTXtHYS8=
=oSp2
-----END PGP SIGNATURE-----

--eadggsoo5hgmacfi--
