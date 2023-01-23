Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B78206785D8
	for <lists+linux-man@lfdr.de>; Mon, 23 Jan 2023 20:11:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230205AbjAWTLY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 23 Jan 2023 14:11:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49672 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229777AbjAWTLX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 23 Jan 2023 14:11:23 -0500
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com [IPv6:2607:f8b0:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F4D63586
        for <linux-man@vger.kernel.org>; Mon, 23 Jan 2023 11:11:22 -0800 (PST)
Received: by mail-ot1-x329.google.com with SMTP id d6-20020a056830138600b0068585c52f86so7914065otq.4
        for <linux-man@vger.kernel.org>; Mon, 23 Jan 2023 11:11:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=B2up5NR5p2nMSn26ez6BkPdPBeTUtC6fd85QdWMciZ4=;
        b=ipNjI/sacJC42Kxb7Gy5Yys+AcvMGzmo6N2SQdVWJEV5gky5e9ZQk2eHFIDnwhgYu7
         0U3PNkWOww/fzi4mEoDm/AHn8xelJqM+8pvs93g+8DiUg4yn1snuxm0w8V3jzXa+KEqs
         wQ54jjJ6GStfJTh5JO5DTvkjYtNEfeV3RXgKf+z9R7wCMZjtrtkqAf8rg3vXWkoOv7SE
         S85smtNrYfPk2ma/xz+/rwvXP4Qx9iH9h9HYD4PMj7F8pqhhOKrKnAXt8oTKHxxgBu6X
         vkoFTw/mLzAW9iwWrNiq8Nxve6mLNjmWtG7Vya1XYztF8sI7tO37yDcw0qDRU/MALSwm
         Soow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B2up5NR5p2nMSn26ez6BkPdPBeTUtC6fd85QdWMciZ4=;
        b=Vm6998uUCq4hLn4OlyJPp3Y2aVZbOmgsRIn52WhXF+LNMZxJVJkFPMFJCMCJDid/aL
         wPI77KI994755Ewhjh5SXyDxhY9tvE7poncRi5DndNKBboKs8T3HnWL+iqeMBKTpALo1
         deIo7QYH/FBi6JQg1SG/nPwLlrswMed3ChyI9OM0ZVBbYN5DJsHv2sEaKp6wwaVEkiYn
         sufFwDSHcHmWVYh1vhjgtZPVyozvYaMIHc/eA3mN7MM46TMz00flkQ/k3A1h534sxeQi
         JZ7OYh3ytMx+qAhMO3EmmA6w4O80z5+wMHhKliz1Y/CCnfQjGE8s3ZC1L6tHOX/Zfv/g
         jFxA==
X-Gm-Message-State: AFqh2kqjQAn7Zo0+hQG8GvrXNV5Rrk8XRSwNci/4a2RFPO5DUzMhyPCd
        KnC8AQRE1bSj33GeIvkLDHk=
X-Google-Smtp-Source: AMrXdXunyLeqFBebVa6+BvVaXqojebk+BcMcJaAEjW92pfMwbU75FWJ0Z+6GPHL1Mc7O0XGu3Muonw==
X-Received: by 2002:a9d:6b19:0:b0:66e:9542:3b1c with SMTP id g25-20020a9d6b19000000b0066e95423b1cmr13625125otp.34.1674501081860;
        Mon, 23 Jan 2023 11:11:21 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id y18-20020a0568302a1200b0066f7e1188f0sm25468865otu.68.2023.01.23.11.11.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 11:11:21 -0800 (PST)
Date:   Mon, 23 Jan 2023 13:11:19 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page boot.7
Message-ID: <20230123191119.mx2mkgxik2deec2n@illithid>
References: <20230122193132.GA29262@Debian-50-lenny-64-minimal>
 <623dc3a0-e6d1-e8cf-9e69-06721c4fcbcd@gmail.com>
 <20230123065423.ih7jblasf2frt6bz@illithid>
 <20230123174741.GB32751@Debian-50-lenny-64-minimal>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="hfoxhg7djzqwfczp"
Content-Disposition: inline
In-Reply-To: <20230123174741.GB32751@Debian-50-lenny-64-minimal>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--hfoxhg7djzqwfczp
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Helge,

At 2023-01-23T18:47:42+0100, Helge Kreutzmann wrote:
> On Mon, Jan 23, 2023 at 12:54:23AM -0600, G. Branden Robinson wrote:
> > At 2023-01-22T22:22:02+0100, Alejandro Colomar wrote:
> > > On 1/22/23 20:31, Helge Kreutzmann wrote:
> > > > Without further ado, the following was found:
> > > >=20
> > > > Issue 1:  runlevel 2 =E2=86=92 run-level 2
> >=20
> > > I believe the fix would be to use runlevel everywhere.  run-level is
> > > not correct under any point of view, if I'm correct.
>=20
> > I therefore recommend "run level".
>=20
> I'm fine with either version. Currently, it is mixing both, so it
> should "just" be unifrom (at least throught linux man pages).

Agreed.  Fortunately, it appears that boot(7) is the only page in the
Linux man-pages project that needs revision; no other document uses the
term in the forms I checked for.

$ git grep 'run level' || echo no matches
no matches
$ git grep 'runlevel' || echo no matches
man7/boot.7:.BR runlevel (8).
man7/boot.7:runlevel 2.
man7/boot.7:.BR runlevel (8),
$ git grep 'run.level' || echo no matches
man7/boot.7:program is instructed to enter a particular \fIrun-level\fR, gi=
ving
man7/boot.7:for some usage; each run-level is associated with a set of serv=
ices
man7/boot.7:(for example, run-level \fBS\fR is \fIsingle-user\fR mode,
man7/boot.7:and run-level \fB2\fR entails running most network services).
man7/boot.7:run-level via
man7/boot.7:and query the current run-level via
man7/boot.7:To make specific scripts start/stop at specific run-levels and =
in a
man7/boot.7:To define the starting or stopping order within the same run-le=
vel,
man7/boot.7:To manage these links is to manage the boot order and run-level=
s;

The cross reference to the systemd "runlevel" man page of course should
be kept as-is.

Regards,
Branden

--hfoxhg7djzqwfczp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPO29cACgkQ0Z6cfXEm
bc6Abg//aph3liHxoJfmOYT7F2wM3oDhnUgb6u+VIypORJYQUsckC8lCsFIUD8i4
2Bi/EqmpBr8q4/QhteITBCAoV6EmrvN+h6X8ffSrw8EJ4akg1A9EdC87BIMNpr0S
Udiw9ifmvc7tdx7RsKHNE3b6BOumwgSex9qORqfOmL0F0Lg9paKDxH2mDRut6L//
Y2xpNEy+9JVK+zbB/KGntPD5WhTzGoJCHJXJX0EUFjeo27pEBfN0tzOq0gMkVL4/
qHpnwH7tsprlzgxwbt+nsC2HeYvR43rovoexFrDeVHrZyEbQFaBgRakBKI6Q90nW
LVO4+xAzcYeZUd7vr0lktGSVpXh4BJ9k+kRte9mk0LHMPYPChJjlgbPMtE984v5N
81zJ5JZw7puf4I6Ld5FbxXRu+kTisa4OvAgRyqiTlkdAhy/nhYtVEdcbhrdAsehh
LXpWI+kVUvY863EZZjxTHI0HiG8W1f69L+lDSZd3RiKZEbJIzDSEzr34LkwTlpjR
MM15PrgoDctifn32dKtUw7Hqmxp8sRSfVF4dEF4XxQDWFHJVZiQG7g+rhfPJ3KIE
z/c7TPQhrB4PW3JbVzpWk+lxD0JswHVCEqyLcCVufOkMsKivVnyMnq/aLAeqpNqw
gYKgOze35z9u0YAE4LCKcqMxrIRmacp8YFsbpGHjgV3la1SfHcE=
=/CKT
-----END PGP SIGNATURE-----

--hfoxhg7djzqwfczp--
